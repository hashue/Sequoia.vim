hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = "sequoia"

hi clear

let s:color = {
\ 'Base'        : '#0f1014',
\ 'Blue'        : '#8eb6f5',
\ 'Indigo'      : '#c58fff',
\ 'Pink'        : '#f58ee0',
\ 'Orange'      : '#ffbb88',
\ 'Stone'       : '#9898a6',
\ 'Metal'       : '#fdfdfe',
\ 'Interface'   : '#111216',
\ 'Overlay'     : '#131317',
\ 'Soft'        : '#4344D',
\ 'Slight'      : '#575861',
\ 'Text'        : '#868690',
\ 'FocusLow'    : '#121216',
\ 'FocusMedium' : '#1a1b1f',
\ 'FocusHigh'   : '#1f1f24',
\ }

function! Def(group,bg,fg,gui) abort
  exec(printf("hi %s guibg=%s guifg=%s gui=%s",a:group,a:bg,a:fg,a:gui))
endfunction

function! Link(to,from) abort
  exec(printf("hi! link %s %s",a:to,a:from))
endfunction


"--- Editor ---"
call Def('Normal',s:color['Base'],s:color['Text'],'NONE')
call Def('Cursor',s:color['Text'],s:color['Indigo'],'NONE')
call Def('Error','NONE',s:color['Pink'],'NONE')
call Def('Keyword' ,'NONE',s:color['Blue'],'NONE')
call Def('Function','NONE',s:color['Orange'],'NONE')
call Def('Visual','#bdbacc',s:color['Text'],'NONE')
call Def('Pmenu',s:color['Interface'],s:color['Text'],'NONE')
call Def('PmenuSel','#bdbacc',s:color['Text'],'NONE')

"--- Base ---"
call Def("Comment",'NONE',s:color['Soft'],'italic')
call Def("Constant",'NONE',s:color['Blue'],'NONE')
call Def("Directory",'NONE',s:color['Blue'],'NONE')
call Def("Number",'NONE',s:color['Orange'],'NONE')
call Def("Identifier",'NONE',s:color['Orange'],'NONE')
call Link("Statement",'Keyword')

"--- TypeScript ---"
call Link('typescriptImport','Keyword')
call Link('typescriptExport','Keyword')
call Link('typescriptMember','Identifier')
call Def('typescriptClassName','NONE',s:color['Indigo'],'NONE')

