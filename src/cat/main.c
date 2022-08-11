// Copyright 2022 bastionm
#include "s21_cat.h"

int main(int argc, char* argv[]) {
    struct forms new;   // declaration struct "new"
    init(&new);         // nullificaction struct "new"
    int flag = 0;       // 1 - error; 0 - good
    if (argc > 1) {
        Parserflag(argc, argv, &new);
        // printf("asdasd");
        if (Readfile(argc, argv, &new) == 1) {
            flag = 1;
        }
    } else {
        flag = 1;
    }
    return flag;
}
