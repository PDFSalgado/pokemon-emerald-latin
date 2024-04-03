#i/bin/bash

python3 ./calc_progress.py
python3 ./insert_text.py

echo "MAKING"
cd ../pokeemerald-master-translated/
make
echo "DONE"

cd ../text-translated
git add *

current="`date +'%Y-%m-%d'`"
msg="version: $current"
git commit -m "$msg"
