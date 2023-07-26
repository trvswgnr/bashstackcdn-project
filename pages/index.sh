
source config.sh

htmx_page << EOF
<h1>travvy cdn - don't touch!</h1>
<form id='form' hx-encoding='multipart/form-data' hx-post='/upload'  hx-indicator='#spinner' hx-target='#files' hx-swap='beforeend'>
    <input type='file' name='file'>
    <button>Upload <img style="float: right;" width="16" height="16" id="spinner" class="htmx-indicator" src="https://htmx.org/img/bars.svg"/></button>
</form>
$(component '/list')
EOF
