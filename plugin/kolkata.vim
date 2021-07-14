let g:KolkataOn=0

function! ToggleKolkata()
	if !g:KolkataOn
		call Kolkata()
	else
		call KolkataOff()
	endif
endfunction

function! Kolkata()
	echo "ALA-LC macros activated"
	let g:KolkataOn=1
	" Vowels
	imap A ā
	imap I ī
	imap U ū
	imap R r̥
	imap ,R r̥̄
	imap E ē
	imap ae ê
	imap O ō
	imap ,au ô
	" Yogavahas
	imap M ṃ
	imap ,M m̆
	imap H ḥ
	" Gutturals
	imap Kh ḵẖ
	imap Gh g̱ẖ
	imap G ṅ
	" Palatals
	imap J ñ
	" Cerebrals
	imap T ṭ
	imap D ḍ
	imap N ṇ
	imap ,T ṯ
	" Dentals
	imap ,n ṉ
	" Semivowels
	imap Y ẏ
	imap ,r ṟ
	imap Rh ṛ
	imap L ḷ
	imap Z ḻ
	" Sibilants
	imap sh ś
	imap Sh ṣ
endfunction

function! KolkataOff()
	echo "ALA-LC macros off."
	let g:KolkataOn=0
	" Vowels
	iunmap A
	iunmap I
	iunmap U
	iunmap R
	iunmap ,R
	iunmap E
	iunmap O
	" Yogavahas
	iunmap M
	iunmap ,M
	iunmap H
	" Gutturals
	iunmap Kh
	iunmap Gh
	iunmap G
	" Palatals
	iunmap J
	" Cerebrals
	iunmap T
	iunmap D
	iunmap N
	iunmap ,T
	" Dentals
	iunmap ,n
	" Semivowels
	iunmap Y
	iunmap ,r
	iunmap Rh
	iunmap L
	iunmap Z
	" Sibilants
	iunmap sh
	iunmap Sh
endfunction

" As of yet unimplemented:
" Sindhi
" Santhali
" Kashmiri
" Urdu
" Telugu Ardhasunna s/a Bengali+Assamese chandrabindu s/a hindi anunasima n̐/m̐
" Assamese extra dental ta ৎ 
" Kannada ೞ l̤a 
" Hindi alt retrofelx Ta [t̤a] 
" hindi alt sa [s̤a]
" hindi alt ha [h̤a]
" Sanskrit Upadhmaniya
" Sanskrit Ununasika 
" Sanskrit Jihvamuliya
" Tamil akku -> ḵ
" Malayalam obsolete l̥
" Malayalam Virama ȧ
