#include <stdio.h>
// #include <errno.h>
// #include <fcntl.h>
// #include <fcntl.h>
#include <stdlib.h>
#include <string.h>

#ifndef SRC_CAT_S21_CAT_H_
#define SRC_CAT_S21_CAT_H_

struct forms {
    int b;
    int e;
    int e_big;
    int s;
    int t;
    int t_big;
    int n;
    int v;
    int error;
};

void init(struct forms *p);
void Parserflag(int argc, char *argv[], struct forms *new);
int Readfile (int argc, char *argv[], struct forms *new);
void filter_print_file(FILE *file, struct forms *new);
void Output_symbol(int symbol, struct forms *new);

#endif  //  SRC_CAT_S21_CAT_H_
