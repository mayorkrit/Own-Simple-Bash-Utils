#include "s21_grep.h"

int main(int argc, char *argv[]) {
    struct forms new;
    init(&new);
    int flag = 0;
    // printf("%d\n", argc);
    // for (int i = 0; i < argc; i++) {
    //     printf("%s\n", argv[i]);
    // }
    if (argc > 1) {
        Parserflag(argc, argv, &new);
        if (Parsfile(argc, argv, &new) == 1) {
            flag = 1;
        }
    } else {
        flag = 1;
    }
    // printf("%d\n", new.amount_files);
    // printf("flag_e = %d\n", new.flag_e);
    // printf("flag_i = %d\n", new.flag_i);
    // printf("flag_v = %d\n", new.flag_v);
    // printf("flag_c = %d\n", new.flag_c);
    // printf("flag_l = %d\n", new.flag_l);
    // printf("flag_n = %d\n", new.flag_n);
    // printf("flag_h = %d\n", new.flag_h);
    // printf("flag_s = %d\n", new.flag_s);
    // printf("flag_f = %d\n", new.flag_f);
    // printf("flag_o = %d\n", new.flag_o);
    // printf("flag_error = %d\n", new.error);
    return flag;
}
