#!/bin/bash

set -e;

day=$(find . -name 'day-*' | sort -V | tail -n 1 | sed 's/[^0-9]//g');

day=$((day+1));

daydir="day-${day}";

mkdir "${daydir}";

cp main.liss.tmpl "${daydir}/main.liss";
cp Makefile.tmpl "${daydir}/Makefile";

touch "${daydir}/INPUT";
touch "${daydir}/INPUT-TST";

echo "new day folder created: ${daydir}";

cd "${daydir}"
