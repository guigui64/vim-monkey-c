if exists("b:current_syntax")
    finish
endif

syntax keyword monkeyCStatement and break continue me new or return self using
syntax keyword monkeyCKeyword as const function module native
syntax keyword monkeyCConditional if else switch
syntax keyword monkeyCLabel case default
syntax keyword monkeyCRepeat do for while
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
highlight link monkeyCConditional Conditional
highlight link monkeyCLabel Label
highlight link monkeyCRepeat Repeat
highlight link monkeyCException Exception
highlight link monkeyCBoolean Boolean
highlight link monkeyCOperator Operator
highlight link monkeyCStorageClass StorageClass
highlight link monkeyCStructure Structure
highlight link monkeyCConstant Constant
highlight link monkeyCType Type
highlight link monkeyCComment Comment

let b:current_syntax = "monkey-c"
