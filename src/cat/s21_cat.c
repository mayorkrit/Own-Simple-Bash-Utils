// Copyrigth 2022 bastionm
#include "s21_cat.h"

/*----------------------------
Make null for all variables of stucture
----------------------------*/
void init(struct forms *p) {
    p -> b = 0;
    p -> e = 0;
    p -> e_big = 0;
    p -> s = 0;
    p -> t = 0;
    p -> t_big = 0;
    p -> n = 0;
    p -> error = 0;
    p -> v = 0;
}
/*----------------------------
Parser flags 
----------------------------*/
void Parserflag(int argc, char *argv[], struct forms *new) {
    // int count = 0;
    // printf("%d\n", argc);
    for (int count = 1; count < argc; count++) {
        // printf("%s\n", argv[count]);
        if (argv[count][0] == '-' && argv[count][1] != '-') {
            for (int i = 1; i < (int) strlen(argv[count]); i++) {
                if (argv[count][i] == 'b') {
                    new->b = 1;
                } else if (argv[count][i] == 'v') {
                    new->v = 1;
                    // printf("\t|||%d\n", new->v);
                } else if (argv[count][i] == 'e') {
                    new->e = 1;
                } else if (argv[count][i] == 'E') {
                    new->e_big = 1;
                } else if (argv[count][i] == 's') {
                    new->s = 1;
                } else if (argv[count][i] == 't') {
                    new->t = 1;
                } else if (argv[count][i] == 'T') {
                    new->t_big = 1;
                } else if (argv[count][i] == 'n') {
                    new->n = 1;
                } else {
                    new->error = 1;
                }
            }
        } else {
            if (strcmp(argv[count], "--number-nonblank") == 0) {
                new->b = 1;
            }
            if (strcmp(argv[count], "--show-nonprinting") == 0) {
                new->v = 1;
            }
            if (strcmp(argv[count], "--show-ends") == 0) {
                new->e_big = 1;
            }
            if (strcmp(argv[count], "--number") == 0) {
                new->n = 1;
            }
            if (strcmp(argv[count], "--squeeze-blank") == 0) {
                new->s = 1;
            }
            if (strcmp(argv[count], "--show-tabs") == 0) {
                new->t_big = 1;
            }
        }
    }
}
/*----------------------------
Open file
----------------------------*/
int Readfile (int argc, char *argv[], struct forms *new) {
    int flag = 0;
    FILE *file = NULL;
    if (new->error != 1) {
        for (int count = 1; count < argc; count++) {
            if (argv[count][0] != '-') {
                if ((file = fopen(argv[count], "r")) != NULL) {
                    filter_print_file(file, new);
                    fclose(file);
                } else {
                    printf("s21_cat: %s: No such file of directory\n", argv[count]);
                    flag = 1;
                    break;
                }
            }
        }
    } else {
        printf("cat: invalid option\n Try 'cat --help' for more information\n");
        flag = 1;
    }
    return flag;
}
/*----------------------------
Looking on flags, Change lines 
----------------------------*/
void filter_print_file(FILE *file, struct forms *new) {
    int symbol = 0;
    // Read first symbol. EOF - end of file or error.
    if ((symbol = getc(file)) != EOF) {  //  return char in int type of next symbol
        // t-flag
        int symbol_of_file = symbol;
        if (new->t_big && symbol == '\t') {
            printf("^");
            symbol_of_file = 73;  //  ASCII -> 73 = 'I'
        }
        // n-flag and without b-flag. Numeric all lines.
        int line_number = 1;
        if (new->n && !new->b) {
            printf("%6d\t", line_number++);
        }
        // b-flag with oo without n-flag. Numeric only line with some symboles.
        if ((new->b && new->n) || (new->b)) {
            if (symbol != '\n') {
                printf("%6d\t", line_number++);
            }
        }
        // E-flag
        if (new->e_big) {
            if (symbol == '\n') printf("%c", 36);  //  ASCII -> 36 = '$'
        }
        // Iteration read symbol by symbol.
        int count_lines_with_nothing = 0;
        while ((symbol = getc(file)) != EOF) {
            // printf("|%c|", symbol);
            // Press empty
            if (new->s && symbol == '\n' && symbol_of_file == '\n') {
                while (symbol == '\n') {
                    symbol = fgetc(file);
                    count_lines_with_nothing++;
                }
                if (count_lines_with_nothing >= 1) {
                    fseek(file, -1, SEEK_CUR);  //  move the position pointer on -1 from current position
                    symbol = '\n';
                }
                count_lines_with_nothing = 0;
            }
            Output_symbol(symbol_of_file, new);
#ifdef __linux__
            if (new->n && !new->b) {
                if (symbol_of_file == '\n') {
                    printf("%6d\t", line_number++);
                }
            }
            if ((new->n && new->b) || new->b) {
                if (symbol_of_file == '\n' && symbol != '\n') {
                    printf("%6d\t", line_number++);
                }
            }
#elif __APPLE__
            int sign_of_show_nonprinting = 0;
            if (new->e || new->t || new->v) {
                sign_of_show_nonprinting = 1;
            }
            if (new->n && !new->b && !sign_of_show_nonprinting) {
                if (symbol_of_file == '\n') {
                    printf("%6d\t", line_number++);
                }
            }
            if (new->n && !new->b && sign_of_show_nonprinting) {
                if (symbol_of_file == '\n' || symbol_of_file == 138) {
                    printf("%6d\t", line_number++);
                }
            }
            if (((new->n && new->b) || (new->b)) && !sign_of_show_nonprinting) {
                if (symbol_of_file == '\n' && symbol != '\n') {
                    printf("%6d\t", line_number++);
                }
            }
            if (((new->n && new->b) || (new->b)) && sign_of_show_nonprinting) {
                if ((symbol_of_file == '\n' || symbol_of_file == 138) && symbol != '\n') {
                    printf("%6d\t", line_number++);
                }
            }
#endif
            if (new->e_big) {
                if (symbol == '\n') {
                    printf("%c", 36);  //  ASCII -> 36 = '$';
                }
            }
            if (new->t_big) {
                if (symbol == '\t') {
                    symbol = 73;  //  ASCII -> 73 = 'I'
                    printf("%c", 94);  //  ASCII -> 94 = '^'
                }
            }
            symbol_of_file = symbol;
        }
        Output_symbol(symbol_of_file, new);
    }
}

/*----------------------------
Print characters of the file
----------------------------*/
void Output_symbol(int symbol, struct forms *new) {
    // Arboytan suka
    // printf("|%c|", symbol);
    if (new->v || new->e || new->t) {
        if (new->e && symbol == '\n') {
            printf("%c", 36);
        }
        if (new->t && symbol == '\t') {
            symbol = 73;
            printf("%c", 94);
        }
        if (symbol >= 0 && symbol <= 31 && symbol != 10 && symbol != 9) {
            printf("^%c", symbol + 64);
        } else if (symbol == 127) {
            printf("^%c", symbol - 64);
        } else if (symbol >= 128 && symbol <= 159) {
            printf("M-^%c", symbol - 64);
        }
        #ifdef __linux__
        else if (symbol >= 160 && symbol < 255)
            printf("M-%c", symbol - 128);
        else if (symbol == 255)
            printf("M-^%c", symbol - 192);
        #endif
        else
            fprintf(stdout, "%c", symbol);
    } else {
        fprintf(stdout, "%c", symbol);
    }
}
