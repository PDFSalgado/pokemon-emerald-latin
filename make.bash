#!/bin/bash

python3 insert_text.py

cd ../pokeemerald-master-translated/
make

cd ../text-translated
git add *
git commit -m "version: `date +'%Y-%m-%d'`"