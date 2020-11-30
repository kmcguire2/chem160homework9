#!/bin/bash

cd stock_data

for i in ??_$1_??
do
	cat $i | grep aapl* | colrm 21 55 | colrm 1 14
done

cd ..
