// Copyright 2022 bastionm
#include "s21_grep.h"


/*----------------------------
    Global regular expresions print (GREP)
----------------------------*/


/*----------------------------
Make null for all variables of stucture
----------------------------*/
void init(struct forms *p) {
    p -> flag_e = 0;
    p -> flag_i = 0;
    p -> flag_v = 0;
    p -> flag_c = 0;
    p -> flag_l = 0;
    p -> flag_n = 0;
    p -> flag_h = 0;
    p -> flag_s = 0;
    p -> flag_f = 0;
    p -> flag_o = 0;
    p -> error = 0;
    p -> amount_files = 0;
    memset(p -> template, 0, MAX_LEN_TEMPLATE);  //  Make null for array
}

/*----------------------------
Parser flags 
----------------------------*/
void Parserflag(int argc, char *argv[], struct forms *new) {
    int count_flags = 0;  //  count_patterns = 0;
    for (int i = 1; i < argc; i++) {
        if (argv[i][0] == '-' && argv[i][1] != '-') {
            // Here can paired flag. And we count as 1 flag (-iv).
            count_flags++;
            int len_argv_i = strlen(argv[i]);
            for (int i_sub = 1; i_sub < len_argv_i; i_sub++) {
                if (argv[i][i_sub] == 'e') {
                    new -> flag_e = 1;
                } else if (argv[i][i_sub] == 'i') {
                    new -> flag_i = 1;
                } else if (argv[i][i_sub] == 'v') {
                    new -> flag_v = 1;
                } else if (argv[i][i_sub] == 'c') {
                    new -> flag_c = 1;
                } else if (argv[i][i_sub] == 'l') {
                    new -> flag_l = 1;
                } else if (argv[i][i_sub] == 'n') {
                    new -> flag_n = 1;
                } else if (argv[i][i_sub] == 'h') {
                    new -> flag_h = 1;
                } else if (argv[i][i_sub] == 's') {
                    new -> flag_s = 1;
                } else if (argv[i][i_sub] == 'f') {
                    new -> flag_f = 1;
                } else if (argv[i][i_sub] == 'o') {
                    new -> flag_o = 1;
                } else {
                    new -> error = 1;
                }
                snprintf(new->template, sizeof(new->template), "%s", argv[i+1]);
            }
        } else if (argv[i][0] == '-' && argv[i][1] == '-') {
            count_flags++;
            if (strcmp(argv[i], "--regexp=patterns") == 0) {
                new -> flag_e = 1;
            } else if (strcmp(argv[i], "--ignore-case") == 0) {
                new -> flag_i = 1;
            } else if (strcmp(argv[i], "--invert-match") == 0) {
                new -> flag_v = 1;
            } else if (strcmp(argv[i], "--count") == 0) {
                new -> flag_c = 1;
            } else if (strcmp(argv[i], "--file-with_match") == 0) {
                new -> flag_l = 1;
            } else if (strcmp(argv[i], "--line-number") == 0) {
                new -> flag_n = 1;
            } else if (strcmp(argv[i], "--no-filename") == 0) {
                new -> flag_h = 1;
            } else if (strcmp(argv[i], "--no-massage") == 0) {
                new -> flag_s = 1;
            } else if (strcmp(argv[i], "--file") == 0) {
                new -> flag_f = 1;
            } else if (strcmp(argv[i], "--only-matching") == 0) {
                new -> flag_o = 1;
            } else {
                new -> error = 1;
            }
            snprintf(new->template, sizeof(new->template), "%s", argv[i+1]);
        }
        // printf("\t|||%c\n", argv[i][0]);
    }
    // printf("\t||%s\n", new->template);
    // printf("\t||%c\n", '\"');
    if (count_flags == 0) {
        snprintf(new->template, sizeof(new->template), "%s", argv[1]);
        // printf("\t|||%s\n", argv[1]);
    }
    // printf("\t||%s\n", new->template);
    // 1 - template and 1 - "grep"
    new->amount_files = argc - 1 - 1 - count_flags;
    // printf("\t||%d\n", new->amount_files);
}


/*----------------------------
Parser file. 1 Step: open fle
----------------------------*/
int Parsfile(int argc, char *argv[], struct forms *new) {
    int flag = 0;
    const char *namefile = NULL;
    FILE *file = NULL;
    if (new->error != 1) {
        for (int length = argc - new->amount_files; \
        length < argc; length++) {
            // printf("\t%d\n", length);
            if ((file=fopen(argv[length], "rt")) != NULL) {
                namefile = argv[length];
                if (filtertextfile(file, namefile, new) == 1) {
                    break;
                }
                // printf("%s\n", namefile);
                fclose(file);
            } else if (!new->flag_s) {
                fprintf(stderr, "s21_grep %s: No such file or directory\n", \
                argv[length]);
                flag = 1;
                break;
            }
        }
    } else if (!new->flag_s) {
        fprintf(stderr, "grep: invalid option\n");
        flag = 1;
    }
    return flag;
}

/*----------------------------
filtertextfile. 2 Step: Check if there are any matches line by line
----------------------------*/
int filtertextfile(FILE* file, const char* namefile, struct forms* new) {
    int flag = 0;
    int reg_ignore_case = 0;  //  2 - True (ignore case differences)
    char read_string[MAX_LEN_STRING] = "";
    int count_strokes_number = 0;
    int how_many_find = 0;
    regex_t regexpression;
    if (new->flag_i) {
        reg_ignore_case = REG_ICASE;  //  REG_ICASE - ignore case in match.
    }
    // printf("??%d\n", reg_ignore_case);
    regcomp(&regexpression, new->template, reg_ignore_case);
    // printf("%s\n", regcomp);
    // Read line by line
    while (fgets(read_string, sizeof(read_string), file)) {
        count_strokes_number++;
        // looking for a match to the construction.
        // Return 0, if find. Not find, return REG_NOMATCH.
        int result_find_reg = regexec(&regexpression, read_string, 0, NULL, 0);
        // Wnen we found match and we need to print all line
        if (((!result_find_reg && !new->flag_l) || \
        (result_find_reg == REG_NOMATCH && new->flag_v)) &&
        !new->flag_f) {
            how_many_find++;
            PrintResult(read_string, &regexpression, \
            count_strokes_number, how_many_find, namefile, new);
        // Wnen we have flag_f and we need to read template from this file.
        } else if (new -> flag_f) {
            if (Print_flag_f(read_string, namefile, new) == 1) {
                flag = 1;
                break;
            }
        // When we need print only files where there are matches.
        } else if (new -> flag_l) {
            if (!result_find_reg) {
                printf("%s\n", namefile);
            }
            break;
        }
    }
    //  When we print only number of lines where there are matches
    if (new->flag_c) {
        if (new -> amount_files > 1 && !new->flag_h) {
            printf("%s:%d\n", namefile, how_many_find);
        } else {
            printf("%d\n", how_many_find);
        }
    }
    regfree(&regexpression);
    return flag;
}

/*----------------------------
PrintResult. 3 Step: If we need to printf all line. But with settings by flages.
----------------------------*/
void PrintResult(char* read_string, regex_t* regexpression, \
int count_strokes_number, int how_many_find, \
const char *namefile, struct forms* new) {
    int result_find_reg = 0;
    result_find_reg = regexec(regexpression, read_string, 0, NULL, 0);
    if (!new->flag_c && !new->flag_f && !new->flag_l) {
        if (new->flag_v) {
            if (result_find_reg == REG_NOMATCH) {
                if (new->amount_files > 1 && !new->flag_h) {
                    printf("%s:%s", namefile, read_string);
                } else {
                    printf("%s", read_string);
                }
            }
        } else if (new -> flag_n) {
            if (new -> amount_files > 1 && !new -> flag_h) {
                printf("%s:%d:%s", namefile, count_strokes_number, read_string);
            } else {
                printf("%d:%s", count_strokes_number, read_string);
            }
        } else if (new -> flag_o) {
            size_t nmatch = 2;
            regmatch_t temp[2];
            regoff_t length;
            // temp contain begin and end of line.
            // Just cut line as match and save it in read_string
            result_find_reg = regexec(regexpression, read_string, \
            nmatch, temp, 0);
            // Save the first match and save it to the pointer.
            char *ptr = read_string;
            // printf("||%s\n", read_string);
            while (result_find_reg != REG_NOMATCH) {
                if (ptr == read_string) {
                    how_many_find++;
                }
                length = temp[0].rm_eo - temp[0].rm_so;
                int length_int = length;
                if (new->amount_files > 1 && !new->flag_h && \
                ptr == read_string) {
                    printf("%s:%.*s\n", namefile, \
                    length_int, ptr + temp[0].rm_so);
                } else {
                    printf("%.*s\n", length_int, ptr + temp[0].rm_so);
                }
                ptr += temp[0].rm_eo;
                result_find_reg = regexec(regexpression, ptr, nmatch, temp, 0);
            }
        } else {
            if (new -> amount_files > 1 && !new -> flag_h) {
                printf("%s:%s", namefile, read_string);
            } else {
                printf("%s", read_string);
            }
        }
        // pasrser don't find "\n" in the last place of stroke -> we put it "\n"
        int last_symbol_in_stroke = strlen(read_string);
        if (((!result_find_reg && !new->flag_v) ||
            (result_find_reg == REG_NOMATCH && new -> flag_v)) &&
            read_string[last_symbol_in_stroke - 1] != '\n') {
            printf("\n");
        }
    }
}

int Print_flag_f(char* read_string, const char* namefile, struct forms* new) {
    // printf("||||||\n");
    FILE* file_template = NULL;
    int flag = 0;
    regex_t regexpr_from_file;

    if ((file_template =fopen(new -> template, "rt")) != NULL) {
        // printf("||||||\n");
        char read_template[MAX_LEN_STRING] = "";
        // Get template line by line from file
        while (fgets(read_template, sizeof(read_template), file_template)) {
            int length_of_template = strlen(read_template);
            if (read_template[length_of_template - 1] == '\n') {
                read_template[length_of_template] = '\0';
            }
            regcomp(&regexpr_from_file, read_template, 0);
            int result_find_reg = regexec(&regexpr_from_file, \
            read_string, 0, NULL, 0);
            if (!result_find_reg) {
                // printf("||||||\n");
                if (new->flag_c) {
                    if (new->amount_files > 1 && !new->flag_h) {
                        printf("%s:%s", namefile, read_string);
                    } else {
                        printf("%s", read_string);
                    }
                }
                int last_symbole_in_line = strlen(read_string);
                if (read_string[last_symbole_in_line - 1] != '\n') {
                    printf("\n");
                }
                break;
            }
            regfree(&regexpr_from_file);
        }
        fclose(file_template);
    } else if (!new -> flag_s) {
        fprintf(stderr, "s21_grep: %s: No such file or directory\n", \
        new -> template);
        flag = 1;
    }
    return flag;
}

