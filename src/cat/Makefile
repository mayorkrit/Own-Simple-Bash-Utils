
FLAGS = -Wall -Wextra -Werror -std=c11
all: s21_cat
s21_cat:
	gcc $(FLAGS) -c s21_cat.c -o s21_cat.o
	gcc $(FLAGS) -c main.c -o main.o
	gcc s21_cat.o main.o -o s21_cat
test: s21_cat
	chmod +x test_cat.sh
	./test_cat.sh
clean:
	rm -rf *.o *.a *.out s21_cat *.cfg *.gcda *.py

#---Check_program---
linter:
	echo "-----the beauty of the code-----"
	cp ../../materials/linters/CPPLINT.cfg ./
	cp ../../materials/linters/cpplint.py ./
	python3 ../../materials/linters/cpplint.py --extensions=c main.c s21_cat.c s21_cat.h
leaks:
	echo "--------Leaks Checking--------"
	leaks -atExit -- ./s21_cat
cppcheck:
	echo "--------Static Code Checking--------"
	cppcheck --enable=all --suppress=missingIncludeSystem ./
# sanitize:
# 	gcc -Wall -Werror -Wextra -fsanitize=address -fsanitize=undefined \
# 	-fno-sanitize-recover=all -fsanitize=float-divide-by-zero -fsanitize=float-cast-overflow \
# 	-fno-sanitize=null -fno-sanitize=alignment -g main.c s21_sat.c \
# 	-lcheck -lm -lpthread -fprofile-arcs && ./a.out