""
" vimala - Indic Transliteration for vim
" File:         kolkata.vim
" Description:  ALA-LC Bindings for UTF8 plaintext files.
" Author:       Ayush Shenoy <masala-man@protonmail.com>
" Repository:   https://www.github.com/masala-man/vimala
" Version:      0.1
" License:      GNU GPL v3
""

" Define variables
let g:vimala_kolkata_utf8_on=0

" Define function to toggle bindings
function! ToggleVimalaKolkataUTF8()
	if !g:vimala_kolkata_utf8_on
		call VimalaKolkataUTF8()
	else
		call VimalaKolkataUTF8Off()
	endif
endfunction

" Define mappings
function! VimalaKolkataUTF8()
	echo "ALA-LC (UTF8) macros activated"
	let g:vimala_kolkata_utf8_on=1
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

" Unmap bindings
function! VimalaKolkataUTF8Off()
	echo "ALA-LC (UTF8) macros off."
	let g:vimala_kolkata_utf8_on=0
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

