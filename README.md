# Own-Simple-Bash-Utils


# Simple Bash Utils

Разработка утилит Bash по работе с текстом: cat, grep в рамках проекта Школы 21.

## Contents

1. [Chapter I](#chapter-i) \
    1.1. [Introduction](#introduction)
2. [Chapter II](#chapter-ii) \
    2.1. [Information](#information)
    3.1. [Part 1](#работа-с-утилитой-cat)  
    3.2. [Part 2](#part-2-работа-с-утилитой-grep)  
    3.3. [Part 3](#part-3-реализация-некоторых-флагов-утилиты-grep)  
    3.4. [Part 4](#part-4-реализация-комбинаций-флагов-утилиты-grep) 



## Chapter I

## Introduction

В этом проекте предстоит познакомиться ближе и разработать базовые утилиты Bash по работе с текстами на языке программирования Си. Эти утилиты (cat и grep) достаточно часто используются при работе в терминале Linux. В рамках этого проекта предполагается знакомство с организацией утилит Bash и закрепление структурного подхода.  


## Chapter II

## Information


### cat Использование

Cat - одна из наиболее часто используемых команд в Unix-подобных операционных системах. Команда имеет три взаимосвязанные функции в отношении текстовых файлов: отображение, объединение их копий и создание новых.

`cat [OPTION] [FILE]...`

### cat Опции

| № | Опции | Описание |
| ------ | ------ | ------ |
| 1 | -b (GNU: --number-nonblank) | нумерует только непустые строки |
| 2 | -e предполагает и -v (GNU only: -E то же самое, но без применения -v) | также отображает символы конца строки как $  |
| 3 | -n (GNU: --number) | нумерует все выходные строки |
| 4 | -s (GNU: --squeeze-blank) | сжимает несколько смежных пустых строк |
| 5 | -t предполагает и -v (GNU: -T то же самое, но без применения -v) | также отображает табы как ^I |


### grep Использование

`grep [options] template [file_name]`

### grep Опции

| № | Опции | Описание |
| ------ | ------ | ------ |
| 1 | -e | Шаблон |
| 2 | -i | Игнорирует различия регистра.  |
| 3 | -v | Инвертирует смысл поиска соответствий. |
| 4 | -c | Выводит только количество совпадающих строк. |
| 5 | -l | Выводит только совпадающие файлы.  |
| 6 | -n | Предваряет каждую строку вывода номером строки из файла ввода. |
| 7 | -h | Выводит совпадающие строки, не предваряя их именами файлов. |
| 8 | -s | Подавляет сообщения об ошибках о несуществующих или нечитаемых файлах. |
| 9 | -f file | Получает регулярные выражения из файла. |
| 10 | -o | Печатает только совпадающие (непустые) части совпавшей строки. |

- Для регулярных выражений можно использовать только библиотеки pcre или regex  

## Работа с утилитой cat

Утилита cat:
- С оддержкой всех флагов (включая GNU версии), указанных [выше](#cat-опции)

## Part 2. Работа с утилитой grep

Утилита grep:
- Поддержка следующих флагов: `-e`, `-i`, `-v`, `-c`, `-l`, `-n`



## Part 3. Реализация некоторых флагов утилиты grep


- Поддержка всех флагов, включая: `-h`, `-s`, `-f`, `-o`



## Part 4. Реализация комбинаций флагов утилиты grep

- Поддержка всех флагов, включая их _парные_ комбинации (например, `-iv`, `-in`)

