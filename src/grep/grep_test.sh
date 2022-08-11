#!/bin/bash

out1=s21_GrepTest.txt
out2=GrepTest.txt
num=0
pattern=the
pattern_file=pattern1.txt
file2=text8.txt

echo "----|TESTS FOR ONE FILES|----"
for flag in e i v c l n h s o
do
    ((num++))
    echo "----------------------------------------"
    echo "Test  #$num  flags:  -$flag"
    echo "Template: $pattern"
    echo "----------------------------------------"
    for file in text1.txt text4.txt text8.txt
    do
        ./s21_grep -$flag $pattern $file > $out1
        grep -$flag $pattern $file > $out2
    done
    diff -s $out1 $out2
done

echo "   "
echo "----|TESTS FOR SEVERAL FILES|----"
for flag in e i v c l n h s
do
    ((num++))
    echo "----------------------------------------"
    echo "Test  #$num  flags:  -$flag"
    echo "Template: $pattern"
    echo "----------------------------------------"
    for file in text1.txt text4.txt
    do
        ./s21_grep -$flag $pattern $file $file2 > $out1
        grep -$flag $pattern $file $file2 > $out2
    done
    diff -s $out1 $out2
done

echo "   "
echo "----|TEST FLAG F FOR ONE FILES|----"
for flag in f
do
    ((num++))
    echo "----------------------------------------"
    echo "Test  #$num  flags:  -$flag"
    echo "Template: $pattern_file"
    echo "----------------------------------------"
    for file in text1.txt text4.txt text8.txt
    do
        ./s21_grep -$flag $pattern_file $file > $out1
        grep -$flag $pattern_file $file > $out2
    done
    diff -s $out1 $out2
done

echo "   "
echo "----|TEST FLAG F FOR SEVERAL FILES|----"
for flag in f
do
    ((num++))
    echo "----------------------------------------"
    echo "Test  #$num  flags:  -$flag"
    echo "Template: $pattern_file"
    echo "----------------------------------------"
    for file in text1.txt text4.txt
    do
        ./s21_grep -$flag $pattern_file $file $file2 > $out1
        grep -$flag $pattern_file $file $file2 > $out2
    done
    diff -s $out1 $out2
done