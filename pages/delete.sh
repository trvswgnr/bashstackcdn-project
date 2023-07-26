
cd data
git add "${FORM_DATA[file]}" &> /dev/null
git commit -m "removed ${FORM_DATA[file]}" &> /dev/null
git push &> /dev/null
