# vimalā - Indic transliteration for Vim

Vimala adds toggle-able keybinds for easy romanization of Indic texts.

**Why?**  

Because digraphs are unwieldy and custom keybinds are cumbersome to manage when you need to work with schemes that require extended latin characters.

**Currently Supported Standards:**
* ALA-LC/Kolkata [[Wikipedia](https://en.wikipedia.org/wiki/National_Library_at_Kolkata_romanisation)] [[Site](https://www.loc.gov/catdir/cpso/roman.html)]

**Planned:**
* ISO 15919 

## Quickstart

Vimala provides functions for each transliteration scheme that can be called with your own keybinds or manually.
To get started install the plugin with your plugin manager of choice and add the following to your vimrc:

```vim
nm <leader><leader>i :call ToggleKolkata()<CR>
imap <leader><leader>i <esc>:call ToggleKolkata()<CR>a
```

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
|     Rh    |    ṛ   |         ड़      |
|     L     |    ḷ   |        ळ        |
|     Z     |    ḻ   |        ழ        |
|     sh    |    ś   |        श        |
|     Sh    |    ṣ   |        ष        |  

**Notes:**  
1. Used for ന്‌റ/ന്റ/ൻറ (nṯa) and റ്‌റ/റ്റ/ററ (ṯṯa)
