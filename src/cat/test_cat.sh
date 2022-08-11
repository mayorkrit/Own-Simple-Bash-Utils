#!/bin/bash

echo "Compare CatTest.txt & s21_CatTest.txt -------- without flag"
cat text1.txt > CatTest.txt
./s21_cat text1.txt > s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat text2.txt >> CatTest.txt
./s21_cat text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat text3.txt >> CatTest.txt
./s21_cat text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat text4.txt >> CatTest.txt
./s21_cat text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat text5.txt >> CatTest.txt
./s21_cat text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat text6.txt >> CatTest.txt
./s21_cat text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -n"
cat -n text1.txt > CatTest.txt
./s21_cat -n text1.txt > s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -n text2.txt >> CatTest.txt
./s21_cat -n text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -n text3.txt >> CatTest.txt
./s21_cat -n text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -n text4.txt >> CatTest.txt
./s21_cat -n text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -n text5.txt >> CatTest.txt
./s21_cat -n text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -n text6.txt >> CatTest.txt
./s21_cat -n text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -b"
cat -b text1.txt > CatTest.txt
./s21_cat -b text1.txt > s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -b text2.txt >> CatTest.txt
./s21_cat -b text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -b text3.txt >> CatTest.txt
./s21_cat -b text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -b text4.txt >> CatTest.txt
./s21_cat -b text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -b text5.txt >> CatTest.txt
./s21_cat -b text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -b text6.txt >> CatTest.txt
./s21_cat -b text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -v"
cat -v text1.txt > CatTest.txt
./s21_cat -v text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -v text2.txt >>CatTest.txt
./s21_cat -v text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -v text3.txt >> CatTest.txt
./s21_cat -v text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -v text4.txt >> CatTest.txt
./s21_cat -v text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -v text5.txt >> CatTest.txt
./s21_cat -v text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -v text6.txt >> CatTest.txt
./s21_cat -v text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -e"
cat -e text1.txt > CatTest.txt
./s21_cat -e text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -e text2.txt >>CatTest.txt
./s21_cat -e text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -e text3.txt >> CatTest.txt
./s21_cat -e text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -e text4.txt >> CatTest.txt
./s21_cat -e text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -e text5.txt >> CatTest.txt
./s21_cat -e text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -e text6.txt >> CatTest.txt
./s21_cat -e text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -t"
cat -t text1.txt > CatTest.txt
./s21_cat -t text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -t text2.txt >>CatTest.txt
./s21_cat -t text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -t text3.txt >> CatTest.txt
./s21_cat -t text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -t text4.txt >> CatTest.txt
./s21_cat -t text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -t text5.txt >> CatTest.txt
./s21_cat -t text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -t text6.txt >> CatTest.txt
./s21_cat -t text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -s"
cat -s text1.txt > CatTest.txt
./s21_cat -s text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -s text2.txt >>CatTest.txt
./s21_cat -s text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -s text3.txt >> CatTest.txt
./s21_cat -s text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -s text4.txt >> CatTest.txt
./s21_cat -s text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -s text5.txt >> CatTest.txt
./s21_cat -s text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -s text6.txt >> CatTest.txt
./s21_cat -s text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bv"
cat -bv text1.txt > CatTest.txt
./s21_cat -bv text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bv text2.txt >>CatTest.txt
./s21_cat -bv text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bv text3.txt >> CatTest.txt
./s21_cat -bv text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bv text4.txt >> CatTest.txt
./s21_cat -bv text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bv text5.txt >> CatTest.txt
./s21_cat -bv text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bv text6.txt >> CatTest.txt
./s21_cat -bv text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -be"
cat -be text1.txt > CatTest.txt
./s21_cat -be text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -be text2.txt >>CatTest.txt
./s21_cat -be text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -be text3.txt >> CatTest.txt
./s21_cat -be text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -be text4.txt >> CatTest.txt
./s21_cat -be text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -be text5.txt >> CatTest.txt
./s21_cat -be text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -be text6.txt >> CatTest.txt
./s21_cat -be text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bn"
cat -bn text1.txt > CatTest.txt
./s21_cat -bn text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bn text2.txt >>CatTest.txt
./s21_cat -bn text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bn text3.txt >> CatTest.txt
./s21_cat -bn text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bn text4.txt >> CatTest.txt
./s21_cat -bn text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bn text5.txt >> CatTest.txt
./s21_cat -bn text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bn text6.txt >> CatTest.txt
./s21_cat -bn text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bs"
cat -bs text1.txt > CatTest.txt
./s21_cat -bs text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bs text2.txt >>CatTest.txt
./s21_cat -bs text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bs text3.txt >> CatTest.txt
./s21_cat -bs text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bs text4.txt >> CatTest.txt
./s21_cat -bs text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bs text5.txt >> CatTest.txt
./s21_cat -bs text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bs text6.txt >> CatTest.txt
./s21_cat -bs text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bt"
cat -bt text1.txt > CatTest.txt
./s21_cat -bt text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bt text2.txt >>CatTest.txt
./s21_cat -bt text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bt text3.txt >> CatTest.txt
./s21_cat -bt text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bt text4.txt >> CatTest.txt
./s21_cat -bt text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bt text5.txt >> CatTest.txt
./s21_cat -bt text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bt text6.txt >> CatTest.txt
./s21_cat -bt text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -ve"
cat -ve text1.txt > CatTest.txt
./s21_cat -ve text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -ve text2.txt >>CatTest.txt
./s21_cat -ve text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ve text3.txt >> CatTest.txt
./s21_cat -ve text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ve text4.txt >> CatTest.txt
./s21_cat -ve text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ve text5.txt >> CatTest.txt
./s21_cat -ve text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ve text6.txt >> CatTest.txt
./s21_cat -ve text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -vn"
cat -vn text1.txt > CatTest.txt
./s21_cat -vn text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -vn text2.txt >>CatTest.txt
./s21_cat -vn text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vn text3.txt >> CatTest.txt
./s21_cat -vn text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vn text4.txt >> CatTest.txt
./s21_cat -vn text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vn text5.txt >> CatTest.txt
./s21_cat -vn text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vn text6.txt >> CatTest.txt
./s21_cat -vn text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -vs"
cat -vs text1.txt > CatTest.txt
./s21_cat -vs text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -vs text2.txt >>CatTest.txt
./s21_cat -vs text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vs text3.txt >> CatTest.txt
./s21_cat -vs text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vs text4.txt >> CatTest.txt
./s21_cat -vs text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vs text5.txt >> CatTest.txt
./s21_cat -vs text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vs text6.txt >> CatTest.txt
./s21_cat -vs text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -vt"
cat -vt text1.txt > CatTest.txt
./s21_cat -vt text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -vt text2.txt >>CatTest.txt
./s21_cat -vt text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vt text3.txt >> CatTest.txt
./s21_cat -vt text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vt text4.txt >> CatTest.txt
./s21_cat -vt text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vt text5.txt >> CatTest.txt
./s21_cat -vt text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vt text6.txt >> CatTest.txt
./s21_cat -vt text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -en"
cat -en text1.txt > CatTest.txt
./s21_cat -en text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -en text2.txt >>CatTest.txt
./s21_cat -en text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -en text3.txt >> CatTest.txt
./s21_cat -en text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -en text4.txt >> CatTest.txt
./s21_cat -en text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -en text5.txt >> CatTest.txt
./s21_cat -en text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -en text6.txt >> CatTest.txt
./s21_cat -en text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -es"
cat -es text1.txt > CatTest.txt
./s21_cat -es text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -es text2.txt >>CatTest.txt
./s21_cat -es text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -es text3.txt >> CatTest.txt
./s21_cat -es text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -es text4.txt >> CatTest.txt
./s21_cat -es text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -es text5.txt >> CatTest.txt
./s21_cat -es text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -es text6.txt >> CatTest.txt
./s21_cat -es text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -et"
cat -et text1.txt > CatTest.txt
./s21_cat -et text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -et text2.txt >>CatTest.txt
./s21_cat -et text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -et text3.txt >> CatTest.txt
./s21_cat -et text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -et text4.txt >> CatTest.txt
./s21_cat -et text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -et text5.txt >> CatTest.txt
./s21_cat -et text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -et text6.txt >> CatTest.txt
./s21_cat -et text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -ns"
cat -ns text1.txt > CatTest.txt
./s21_cat -ns text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -ns text2.txt >>CatTest.txt
./s21_cat -ns text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ns text3.txt >> CatTest.txt
./s21_cat -ns text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ns text4.txt >> CatTest.txt
./s21_cat -ns text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ns text5.txt >> CatTest.txt
./s21_cat -ns text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ns text6.txt >> CatTest.txt
./s21_cat -ns text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -nt"
cat -nt text1.txt > CatTest.txt
./s21_cat -nt text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -nt text2.txt >>CatTest.txt
./s21_cat -nt text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -nt text3.txt >> CatTest.txt
./s21_cat -nt text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -nt text4.txt >> CatTest.txt
./s21_cat -nt text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -nt text5.txt >> CatTest.txt
./s21_cat -nt text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -nt text6.txt >> CatTest.txt
./s21_cat -nt text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -st"
cat -st text1.txt > CatTest.txt
./s21_cat -st text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -st text2.txt >>CatTest.txt
./s21_cat -st text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -st text3.txt >> CatTest.txt
./s21_cat -st text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -st text4.txt >> CatTest.txt
./s21_cat -st text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -st text5.txt >> CatTest.txt
./s21_cat -st text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -st text6.txt >> CatTest.txt
./s21_cat -st text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bve"
cat -bve text1.txt > CatTest.txt
./s21_cat -bve text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bve text2.txt >>CatTest.txt
./s21_cat -bve text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bve text3.txt >> CatTest.txt
./s21_cat -bve text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bve text4.txt >> CatTest.txt
./s21_cat -bve text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bve text5.txt >> CatTest.txt
./s21_cat -bve text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bve text6.txt >> CatTest.txt
./s21_cat -bve text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -ben"
cat -ben text1.txt > CatTest.txt
./s21_cat -ben text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -ben text2.txt >>CatTest.txt
./s21_cat -ben text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ben text3.txt >> CatTest.txt
./s21_cat -ben text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ben text4.txt >> CatTest.txt
./s21_cat -ben text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ben text5.txt >> CatTest.txt
./s21_cat -ben text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ben text6.txt >> CatTest.txt
./s21_cat -ben text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bns"
cat -bns text1.txt > CatTest.txt
./s21_cat -bns text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bns text2.txt >>CatTest.txt
./s21_cat -bns text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bns text3.txt >> CatTest.txt
./s21_cat -bns text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bns text4.txt >> CatTest.txt
./s21_cat -bns text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bns text5.txt >> CatTest.txt
./s21_cat -bns text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bns text6.txt >> CatTest.txt
./s21_cat -bns text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bst"
cat -bst text1.txt > CatTest.txt
./s21_cat -bst text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bst text2.txt >>CatTest.txt
./s21_cat -bst text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bst text3.txt >> CatTest.txt
./s21_cat -bst text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bst text4.txt >> CatTest.txt
./s21_cat -bst text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bst text5.txt >> CatTest.txt
./s21_cat -bst text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bst text6.txt >> CatTest.txt
./s21_cat -bst text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bvn"
cat -bvn text1.txt > CatTest.txt
./s21_cat -bvn text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bvn text2.txt >>CatTest.txt
./s21_cat -bvn text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvn text3.txt >> CatTest.txt
./s21_cat -bvn text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvn text4.txt >> CatTest.txt
./s21_cat -bvn text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvn text5.txt >> CatTest.txt
./s21_cat -bvn text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvn text6.txt >> CatTest.txt
./s21_cat -bvn text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bvs"
cat -bvs text1.txt > CatTest.txt
./s21_cat -bvs text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bvs text2.txt >>CatTest.txt
./s21_cat -bvs text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvs text3.txt >> CatTest.txt
./s21_cat -bvs text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvs text4.txt >> CatTest.txt
./s21_cat -bvs text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvs text5.txt >> CatTest.txt
./s21_cat -bvs text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvs text6.txt >> CatTest.txt
./s21_cat -bvs text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bvt"
cat -bvt text1.txt > CatTest.txt
./s21_cat -bvt text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bvt text2.txt >>CatTest.txt
./s21_cat -bvt text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvt text3.txt >> CatTest.txt
./s21_cat -bvt text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvt text4.txt >> CatTest.txt
./s21_cat -bvt text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvt text5.txt >> CatTest.txt
./s21_cat -bvt text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvt text6.txt >> CatTest.txt
./s21_cat -bvt text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bes"
cat -bes text1.txt > CatTest.txt
./s21_cat -bes text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bes text2.txt >>CatTest.txt
./s21_cat -bes text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bes text3.txt >> CatTest.txt
./s21_cat -bes text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bes text4.txt >> CatTest.txt
./s21_cat -bes text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bes text5.txt >> CatTest.txt
./s21_cat -bes text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bes text6.txt >> CatTest.txt
./s21_cat -bes text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bet"
cat -bet text1.txt > CatTest.txt
./s21_cat -bet text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bet text2.txt >>CatTest.txt
./s21_cat -bet text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bet text3.txt >> CatTest.txt
./s21_cat -bet text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bet text4.txt >> CatTest.txt
./s21_cat -bet text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bet text5.txt >> CatTest.txt
./s21_cat -bet text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bet text6.txt >> CatTest.txt
./s21_cat -bet text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -ven"
cat -ven text1.txt > CatTest.txt
./s21_cat -ven text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -ven text2.txt >>CatTest.txt
./s21_cat -ven text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ven text3.txt >> CatTest.txt
./s21_cat -ven text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ven text4.txt >> CatTest.txt
./s21_cat -ven text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ven text5.txt >> CatTest.txt
./s21_cat -ven text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ven text6.txt >> CatTest.txt
./s21_cat -ven text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -ves"
cat -ves text1.txt > CatTest.txt
./s21_cat -ves text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -ves text2.txt >>CatTest.txt
./s21_cat -ves text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ves text3.txt >> CatTest.txt
./s21_cat -ves text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ves text4.txt >> CatTest.txt
./s21_cat -ves text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ves text5.txt >> CatTest.txt
./s21_cat -ves text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ves text6.txt >> CatTest.txt
./s21_cat -ves text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -vet"
cat -vet text1.txt > CatTest.txt
./s21_cat -vet text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -vet text2.txt >>CatTest.txt
./s21_cat -vet text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vet text3.txt >> CatTest.txt
./s21_cat -vet text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vet text4.txt >> CatTest.txt
./s21_cat -vet text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vet text5.txt >> CatTest.txt
./s21_cat -vet text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vet text6.txt >> CatTest.txt
./s21_cat -vet text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -vns"
cat -vns text1.txt > CatTest.txt
./s21_cat -vns text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -vns text2.txt >>CatTest.txt
./s21_cat -vns text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vns text3.txt >> CatTest.txt
./s21_cat -vns text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vns text4.txt >> CatTest.txt
./s21_cat -vns text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vns text5.txt >> CatTest.txt
./s21_cat -vns text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vns text6.txt >> CatTest.txt
./s21_cat -vns text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -vnt"
cat -vnt text1.txt > CatTest.txt
./s21_cat -vnt text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -vnt text2.txt >>CatTest.txt
./s21_cat -vnt text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vnt text3.txt >> CatTest.txt
./s21_cat -vnt text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vnt text4.txt >> CatTest.txt
./s21_cat -vnt text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vnt text5.txt >> CatTest.txt
./s21_cat -vnt text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vnt text6.txt >> CatTest.txt
./s21_cat -vnt text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -vst"
cat -vst text1.txt > CatTest.txt
./s21_cat -vst text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -vst text2.txt >>CatTest.txt
./s21_cat -vst text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vst text3.txt >> CatTest.txt
./s21_cat -vst text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vst text4.txt >> CatTest.txt
./s21_cat -vst text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vst text5.txt >> CatTest.txt
./s21_cat -vst text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vst text6.txt >> CatTest.txt
./s21_cat -vst text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -ens"
cat -ens text1.txt > CatTest.txt
./s21_cat -ens text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -ens text2.txt >>CatTest.txt
./s21_cat -ens text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ens text3.txt >> CatTest.txt
./s21_cat -ens text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ens text4.txt >> CatTest.txt
./s21_cat -ens text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ens text5.txt >> CatTest.txt
./s21_cat -ens text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ens text6.txt >> CatTest.txt
./s21_cat -ens text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -ent"
cat -ent text1.txt > CatTest.txt
./s21_cat -ent text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -ent text2.txt >>CatTest.txt
./s21_cat -ent text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ent text3.txt >> CatTest.txt
./s21_cat -ent text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ent text4.txt >> CatTest.txt
./s21_cat -ent text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ent text5.txt >> CatTest.txt
./s21_cat -ent text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -ent text6.txt >> CatTest.txt
./s21_cat -ent text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -est"
cat -est text1.txt > CatTest.txt
./s21_cat -est text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -est text2.txt >>CatTest.txt
./s21_cat -est text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -est text3.txt >> CatTest.txt
./s21_cat -est text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -est text4.txt >> CatTest.txt
./s21_cat -est text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -est text5.txt >> CatTest.txt
./s21_cat -est text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -est text6.txt >> CatTest.txt
./s21_cat -est text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -nst"
cat -nst text1.txt > CatTest.txt
./s21_cat -nst text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -nst text2.txt >>CatTest.txt
./s21_cat -nst text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -nst text3.txt >> CatTest.txt
./s21_cat -nst text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -nst text4.txt >> CatTest.txt
./s21_cat -nst text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -nst text5.txt >> CatTest.txt
./s21_cat -nst text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -nst text6.txt >> CatTest.txt
./s21_cat -nst text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bven"
cat -bven text1.txt > CatTest.txt
./s21_cat -bven text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bven text2.txt >>CatTest.txt
./s21_cat -bven text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bven text3.txt >> CatTest.txt
./s21_cat -bven text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bven text4.txt >> CatTest.txt
./s21_cat -bven text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bven text5.txt >> CatTest.txt
./s21_cat -bven text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bven text6.txt >> CatTest.txt
./s21_cat -bven text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bens"
cat -bens text1.txt > CatTest.txt
./s21_cat -bens text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bens text2.txt >>CatTest.txt
./s21_cat -bens text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bens text3.txt >> CatTest.txt
./s21_cat -bens text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bens text4.txt >> CatTest.txt
./s21_cat -bens text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bens text5.txt >> CatTest.txt
./s21_cat -bens text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bens text6.txt >> CatTest.txt
./s21_cat -bens text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bnst"
cat -bnst text1.txt > CatTest.txt
./s21_cat -bnst text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bnst text2.txt >>CatTest.txt
./s21_cat -bnst text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bnst text3.txt >> CatTest.txt
./s21_cat -bnst text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bnst text4.txt >> CatTest.txt
./s21_cat -bnst text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bnst text5.txt >> CatTest.txt
./s21_cat -bnst text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bnst text6.txt >> CatTest.txt
./s21_cat -bnst text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bvsn"
cat -bvsn text1.txt > CatTest.txt
./s21_cat -bvsn text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bvsn text2.txt >>CatTest.txt
./s21_cat -bvsn text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvsn text3.txt >> CatTest.txt
./s21_cat -bvsn text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvsn text4.txt >> CatTest.txt
./s21_cat -bvsn text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvsn text5.txt >> CatTest.txt
./s21_cat -bvsn text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvsn text6.txt >> CatTest.txt
./s21_cat -bvsn text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bvnt"
cat -bvnt text1.txt > CatTest.txt
./s21_cat -bvnt text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bvnt text2.txt >>CatTest.txt
./s21_cat -bvnt text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvnt text3.txt >> CatTest.txt
./s21_cat -bvnt text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvnt text4.txt >> CatTest.txt
./s21_cat -bvnt text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvnt text5.txt >> CatTest.txt
./s21_cat -bvnt text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvnt text6.txt >> CatTest.txt
./s21_cat -bvnt text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bves"
cat -bves text1.txt > CatTest.txt
./s21_cat -bves text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bves text2.txt >>CatTest.txt
./s21_cat -bves text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bves text3.txt >> CatTest.txt
./s21_cat -bves text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bves text4.txt >> CatTest.txt
./s21_cat -bves text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bves text5.txt >> CatTest.txt
./s21_cat -bves text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bves text6.txt >> CatTest.txt
./s21_cat -bves text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bvet"
cat -bvet text1.txt > CatTest.txt
./s21_cat -bvet text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bvet text2.txt >>CatTest.txt
./s21_cat -bvet text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvet text3.txt >> CatTest.txt
./s21_cat -bvet text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvet text4.txt >> CatTest.txt
./s21_cat -bvet text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvet text5.txt >> CatTest.txt
./s21_cat -bvet text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvet text6.txt >> CatTest.txt
./s21_cat -bvet text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -vens"
cat -vens text1.txt > CatTest.txt
./s21_cat -vens text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -vens text2.txt >>CatTest.txt
./s21_cat -vens text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vens text3.txt >> CatTest.txt
./s21_cat -vens text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vens text4.txt >> CatTest.txt
./s21_cat -vens text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vens text5.txt >> CatTest.txt
./s21_cat -vens text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vens text6.txt >> CatTest.txt
./s21_cat -vens text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -vent"
cat -vent text1.txt > CatTest.txt
./s21_cat -vent text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -vent text2.txt >>CatTest.txt
./s21_cat -vent text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vent text3.txt >> CatTest.txt
./s21_cat -vent text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vent text4.txt >> CatTest.txt
./s21_cat -vent text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vent text5.txt >> CatTest.txt
./s21_cat -vent text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vent text6.txt >> CatTest.txt
./s21_cat -vent text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -vest"
cat -vest text1.txt > CatTest.txt
./s21_cat -vest text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -vest text2.txt >>CatTest.txt
./s21_cat -vest text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vest text3.txt >> CatTest.txt
./s21_cat -vest text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vest text4.txt >> CatTest.txt
./s21_cat -vest text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vest text5.txt >> CatTest.txt
./s21_cat -vest text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vest text6.txt >> CatTest.txt
./s21_cat -vest text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -vnst"
cat -vnst text1.txt > CatTest.txt
./s21_cat -vnst text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -vnst text2.txt >>CatTest.txt
./s21_cat -vnst text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vnst text3.txt >> CatTest.txt
./s21_cat -vnst text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vnst text4.txt >> CatTest.txt
./s21_cat -vnst text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vnst text5.txt >> CatTest.txt
./s21_cat -vnst text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -vnst text6.txt >> CatTest.txt
./s21_cat -vnst text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -enst"
cat -enst text1.txt > CatTest.txt
./s21_cat -enst text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -enst text2.txt >>CatTest.txt
./s21_cat -enst text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -enst text3.txt >> CatTest.txt
./s21_cat -enst text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -enst text4.txt >> CatTest.txt
./s21_cat -enst text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -enst text5.txt >> CatTest.txt
./s21_cat -enst text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -enst text6.txt >> CatTest.txt
./s21_cat -enst text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bvens"
cat -bvens text1.txt > CatTest.txt
./s21_cat -bvens text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bvens text2.txt >>CatTest.txt
./s21_cat -bvens text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvens text3.txt >> CatTest.txt
./s21_cat -bvens text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvens text4.txt >> CatTest.txt
./s21_cat -bvens text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvens text5.txt >> CatTest.txt
./s21_cat -bvens text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvens text6.txt >> CatTest.txt
./s21_cat -bvens text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -benst"
cat -benst text1.txt > CatTest.txt
./s21_cat -benst text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -benst text2.txt >>CatTest.txt
./s21_cat -benst text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -benst text3.txt >> CatTest.txt
./s21_cat -benst text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -benst text4.txt >> CatTest.txt
./s21_cat -benst text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -benst text5.txt >> CatTest.txt
./s21_cat -benst text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -benst text6.txt >> CatTest.txt
./s21_cat -benst text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -venst"
cat -venst text1.txt > CatTest.txt
./s21_cat -venst text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -venst text2.txt >>CatTest.txt
./s21_cat -venst text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -venst text3.txt >> CatTest.txt
./s21_cat -venst text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -venst text4.txt >> CatTest.txt
./s21_cat -venst text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -venst text5.txt >> CatTest.txt
./s21_cat -venst text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -venst text6.txt >> CatTest.txt
./s21_cat -venst text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt
echo "                                                      "
echo "Compare CatTest.txt & s21_CatTest.txt -------- flag -bvenst"
cat -bvenst text1.txt > CatTest.txt
./s21_cat -bvenst text1.txt > s21_CatTest.txt
diff  CatTest.txt s21_CatTest.txt
cat -bvenst text2.txt >>CatTest.txt
./s21_cat -bvenst text2.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvenst text3.txt >> CatTest.txt
./s21_cat -bvenst text3.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvenst text4.txt >> CatTest.txt
./s21_cat -bvenst text4.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvenst text5.txt >> CatTest.txt
./s21_cat -bvenst text5.txt >> s21_CatTest.txt
diff CatTest.txt s21_CatTest.txt
cat -bvenst text6.txt >> CatTest.txt
./s21_cat -bvenst text6.txt >> s21_CatTest.txt
diff -s CatTest.txt s21_CatTest.txt