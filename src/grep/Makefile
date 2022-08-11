OBJ_grep = s21_grep.o
OBJ_main = main.o
RESOURCE_grep = s21_grep.c
RESOURCE_main = main.c
GOAL = s21_grep
FLAGS = -Wall -Wextra -Werror -std=c11 -D_GNU_SOURCE

all: s21_grep
s21_grep:
	gcc $(FLAGS) -c $(RESOURCE_grep) -o $(OBJ_grep)
	gcc $(FLAGS) -c $(RESOURCE_main) -o $(OBJ_main)
	gcc $(OBJ_grep) $(OBJ_main) -o $(GOAL)
grep_test: s21_grep
	chmod +x grep_test.sh
	./grep_test.sh
clean: 
	rm -rf *.o *.a *.out $(GOAL) *.py *.cfg

#----Checking files----
linter:
	echo "------Linter Cpplint.py------"
	cp ../../materials/linters/cpplint.py ../../src/grep/cpplint.py
	cp ../../materials/linters/CPPLINT.cfg ../../src/grep/CPPLINT.cfg
	python3 ../../materials/linters/cpplint.py --extensions=c $(RESOURCE_grep) s21_grep.h
	python3 ../../materials/linters/cpplint.py --extensions=c $(RESOURCE_main) s21_grep.h
leaks:
	echo "------Leaks Checking------"
	leaks -atExit -- ./grep_test.sh
cppcheck:
	echo "------Code Checking------"
	cppcheck --enable=all --suppress=missingIncludeSystem ./