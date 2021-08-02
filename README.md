# vimalā - Indic transliteration for Vim

Vimala adds toggle-able keybinds for easy romanization of Indic texts with support for LaTeX.

**Why?**

Because digraphs are unwieldy and custom keybinds are cumbersome to manage when you need to work with schemes that require extended latin characters.

## Table of Contents

- [vimalā - Indic transliteration for Vim](#vimal----indic-transliteration-for-vim)
  - [Quickstart](#quickstart)
  - [Standard Coverage](#standard-coverage)
  - [LaTeX](#latex)
  - [Bindings](#bindings)
  - [Links](#links)

## Quickstart

Install the plugin with your plugin manager of choice and add the following to your vimrc:

```vim
" Add plain bindings for text files"
nmap <leader><leader>i :call ToggleVimalaKolkataUTF8()<cr>
imap <leader><leader>i <esc>:call ToggleVimalaKolkataUTF8()<cr>a

" Add bindings for ASCII LaTeX source files
nmap <leader><leader>l :call ToggleVimalaKolkataLatexVanilla()<cr>
imap <leader><leader>l <esc>:call ToggleVimalaKolkataLatexVanilla()<cr>a
```
## Standard Coverage

**Currently Supported Standards:**
- ALA-LC/Kolkata [[Wikipedia](https://en.wikipedia.org/wiki/National_Library_at_Kolkata_romanisation)][[Site](https://www.loc.gov/catdir/cpso/roman.html)]  
  - [x] UTF8 Plaintext
  - [x] LaTeX (ASCII Source Files)
  - [ ] LaTeX (UTF8 Source Files)
  
**Planned:**
- ISO 15919 
  - [ ] UTF8 Plaintext
  - [ ] LaTeX (ASCII Source Files)
  - [ ] LaTeX (UTF8 Source Files)

## LaTeX

> TeX uses ASCII by default. But 128 characters is not enough to support non-English languages. TeX has its own way of doing that with commands for every > >diacritical marking (see Escaped codes). But if we want accents and other special characters to appear directly in the source file, we have to tell TeX that we >want to use a different encoding.
>
> There are several encodings available to LaTeX:
>
>  -  ASCII: the default. Only bare English characters are supported in the source file.  
>  -  ISO-8859-1 (a.k.a., Latin 1): 8-bits encoding. It supports most characters for Latin languages, but that's it.  
>  -  UTF-8: a Unicode multi-byte encoding. Supports the complete Unicode specification.

When the LaTeX ASCII mode is enabled, the mapped keys output latex commands instead of the characters themselves. Escape codes are used as far as possible to minimize the need to include additional packages but some diacritics require an additional package to be included. This is enabled by default but can be configured with the following in your .vimrc:

```vim
let g:vimala_missing_latex_provider="<YOUR PACKAGE HERE>"
```

**Currently needed packages**:
- `tips` (default) or `wsuipa` : For underrings (◌̥)


## Bindings

| Keystroke | ALA-LC | Repr. Character |
|:---------:|:------:|:---------------:|
|     A     |    ā   |        आ        |
|     I     |    ī   |        ई        |
|     U     |    ū   |        ऊ        |
|     R     |    r̥   |        ऋ        |
|     ,R    |    r̥̄   |        ॠ        |
|     E     |    ē   |        ए        |
|     ae    |    ê   |        ॲ        |
|     O     |    ō   |        ओ        |
|    ,au    |    ô   |        ऑ        |
|     M     |    ṃ   |        अं        |
|     ,M    |    m̆   |         ੰ        |
|     H     |    ḥ   |        अः       |
|     Kh    |   ḵẖ   |        ख़        |
|     Gh    |   g̱ẖ   |        ग़        |
|     G     |    ṅ   |        ङ        |
|     J     |    ñ   |        ञ        |
|     T     |    ṭ   |        ट        |
|     D     |    ḍ   |        ड        |
|     N     |    ṇ   |        ण        |
|     ,T    |    ṯ   |      Note 1     |
|     ,n    |    ṉ   |        ன        |
|     Y     |    ẏ   |        য        |
|     ,r    |    ṟ   |        റ        |
|     Rh    |    ṛ   |      Note 2     |
|     L     |    ḷ   |        ळ        |
|     Z     |    ḻ   |        ழ        |
|     sh    |    ś   |        श        |
|     Sh    |    ṣ   |        ष        |  

Notes:
1. Used for ന്‌റ/ന്റ/ൻറ (nṯa) and റ്‌റ/റ്റ/ററ (ṯṯa)
2. Used for ड़ (ṛa) and ढ़ (ṛha)

## Links

- [The Comprehensive LaTeX Symbol List](https://sites.math.washington.edu/~reu/docs/latex_symbols.pdf)
- [Special Characters in LaTeX](https://en.wikibooks.org/wiki/LaTeX/Special_Characters#Extending_the_support)
