
cd data
files=$(git ls-files)
if [[ "$files" == "\n" ]]; then
    return $(status_code 200)
fi
htmx_page << EOF
<ul id="files">
  $(echo -n "$files" | awk '{ print "<li><button hx-swap=\"delete\" hx-confirm=\"Are you sure you wish to delete that file?\" hx-target=\"closest li\" hx-delete=\"/delete\" hx-vals='\''{\"file\": \""$0"\"}'\''>x</button> <a href=\"https://cdn.jsdelivr.net/gh/trvswgnr/bashstackcdn/"$0"\">"$0"</a></li>" }')
</ul>
EOF
