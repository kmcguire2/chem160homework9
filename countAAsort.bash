#!/usr/local/bin/bash

if [ $# -ne 1 ]
then
echo "This script require a protein file"
exit 1

elif [ ! -f $1 ]
then
echo "Cannot find protein file"
exit 1
fi

touch temp.txt

for i in ALA ARG ASN ASP CYS GLU GLN GLY HIS ILE LEU LYS MET PHE PRO SER THR TRP TYR VAL
do
num=$(grep $i $1 | grep CA | wc | colrm 10)
echo $i $num >> temp.txt
done

sort -k 2nr temp.txt

rm temp.txt
