syn region  djangotagmarkers start="{{" end="}}"
syn region  djangovariablemarkers start="{%" end="%}"
command! -nargs=+ HiLink hi def link <args>
HiLink djangotagmarkers PreProc
HiLink djangovariablemarkers PreProc
delcommand HiLink
set tabstop=4
set softtabstop=4
set shiftwidth=4
