" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" inform C syntax that the file was included from cpp.vim
let b:filetype_in_cpp_family = 1

" Read the C syntax to start with
runtime! syntax/c.vim
unlet b:current_syntax

syntax keyword monkeyCStatement and me new return self using
syntax keyword monkeyCKeyword as const function module native
syntax keyword monkeyCLabel case default
syntax keyword monkeyCException catch finally throw try
syntax keyword monkeyCBoolean false true
syntax keyword monkeyCOperator has instanceof
syntax keyword monkeyCStorageClass hidden private protected public static
syntax keyword monkeyCStructure class enum extends
syntax keyword monkeyCConstant NaN null
syntax keyword monkeyCType var

syntax match monkeyCComment "\v//.*$"

highlight link monkeyCStatement Statement
highlight link monkeyCKeyword Keyword
highlight link monkeyCLabel Label
highlight link monkeyCException Exception
highlight link monkeyCBoolean Boolean
highlight link monkeyCOperator Operator
highlight link monkeyCStorageClass StorageClass
highlight link monkeyCStructure Structure
highlight link monkeyCConstant Constant
highlight link monkeyCType Type
highlight link monkeyCComment Comment

let b:current_syntax = "monkey-c"
