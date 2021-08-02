""
" vimala - Indic Transliteration for vim
" File:         kolkata_latex_vanilla.vim
" Description:  ALA-LC Bindings for Latex with ASCII source files
" Author:       Ayush Shenoy <masala-man@protonmail.com>
" Repository:   https://www.github.com/masala-man/vimala
" Version:      0.1
" License:      GNU GPL v3
""

" Provides ALA-LC keybindings for latex.
"
" You will need one of the following for some characters:
" 1. tipa
" 2. wsuipa
" 
" Refer to README for more information on configuration

" Define variables
let g:vimala_kolkata_latex_vanilla_on=0
let g:vimala_latex_missing_provider="tipa"

" Define function to toggle bindings
function! ToggleVimalaKolkataLatexVanilla()
	if !g:vimala_kolkata_latex_vanilla_on
		call VimalaKolkataLatexVanilla()
	else
		call VimalaKolkataLatexVanillaOff()
	endif
endfunction

" Define mappings
function! VimalaKolkataLatexVanilla()
	echo "ALA-LC (LaTeX ASCII) macros activated"
	let g:vimala_kolkata_latex_vanilla_on=1
	" Vowels
    imap A \={a}
    imap I \={i}
    imap U \={u}
	"imap R r̥
	"imap ,R r̥̄
    imap E \={e}
    imap ae \^{e}
    imap O \={o}
    imap ,au \^{o}
	" Yogavahas
    imap M \d{m}
    imap ,M \u{m}
    imap H \d{h}
	" Gutturals
    imap Kh \b{k}\b{h}
    imap Gh \b{g}\b{h}
    imap G \.{n}
	" Palatals
    imap J \~{n}
	" Cerebrals
    imap T \d{t}
	imap D \d{d}
	imap N \d{n}
    imap ,T \b{t}
	" Dentals
    imap ,n \b{n}
	" Semivowels
    imap Y \.{y}
    imap ,r \b{r}
    imap Rh \d{r}
    imap L \d{l}
    imap Z \b{l}
	" Sibilants
    imap sh \'{s}
    imap Sh \d{s}
    " Add mappings for characters that need extra packages
    if g:vimala_latex_missing_provider == "tipa"
        imap R \textsubring{r}
        imap ,R textipa{\={\r*{r}}} 
    elseif g:vimala_latex_missing_provider == "wsuipa"
        imap R \diatop[\underring|r]
        imap ,R \diatop{\diatop[\underring|r]|macron} 
    endif
endfunction

" Unmap bindings
function! VimalaKolkataLatexVanillaOff()
	echo "ALA-LC (LaTeX ASCII) macros off."
	let g:vimala_kolkata_latex_vanilla_on=0
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

