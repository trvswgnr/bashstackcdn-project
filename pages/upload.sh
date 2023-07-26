# allow-uploads


mv "${FILE_UPLOADS[file]}" "data/${FILE_UPLOAD_NAMES[file]}"

# echo "<pre>"
cd data
git add "${FILE_UPLOAD_NAMES[file]}" && git commit -m "uploaded ${FILE_UPLOAD_NAMES[file]}" 1>&2
git push 1>&2
# don't need this anymore!
rm "${FILE_UPLOAD_NAMES[file]}"
# echo "https://cdn.jsdelivr.net/gh/trvswgnr/bashstackcdn/${FILE_UPLOAD_NAMES[file]}"
# echo "</pre>"

cat << EOF
<li>
    <button hx-swap="delete" hx-confirm="Are you sure you wish to delete that file?" hx-target="closest li" hx-delete="/delete" hx-vals='{"file": "${FILE_UPLOAD_NAMES[file]}"}'>x</button>&nbsp;
    <a href="https://cdn.jsdelivr.net/gh/trvswgnr/bashstackcdn/${FILE_UPLOAD_NAMES[file]}">${FILE_UPLOAD_NAMES[file]}</a>
</li>
EOF
