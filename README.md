# vimalā - Indic transliteration for Vim

Vimala adds toggle-able keybinds for easy romanization of Indic texts.  

**Currently Supported Standards:**
* ALA-LC/Kolkata

**Planned:**
* ISO 15919 

## Quickstart

Install the plugin with your plugin manager of choice and add the following to your vimrc:

```vim
nm <leader><leader>i :call ToggleKolkata()<CR>
imap <leader><leader>i <esc>:call ToggleKolkata()<CR>a
```

## ALA-LC/Kolkata [[Wikipedia](https://en.wikipedia.org/wiki/National_Library_at_Kolkata_romanisation)][[Site](https://www.loc.gov/catdir/cpso/roman.html)]

### Bindings

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
