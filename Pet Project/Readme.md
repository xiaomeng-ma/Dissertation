##Data Cleaning

1. Base data: ids-analysis (18347 tokens): https://github.com/cjkvi/cjkvi-ids

2. select UNICODE 4E00–9FFF https://en.wikipedia.org/wiki/CJK_Unified_Ideographs

3. structure encoding - based on the last letter in unicode character number https://en.wikipedia.org/wiki/Chinese_character_description_languages

4. delete 简体 (simplied chinese)

5. delete unrecognizable character

6. decode segment using u4e00-ufaff 

7. delete segments that can't be read in u4e00-ufaff

8. delete characters have more than 2 segments 卸

9. get pinyin using Mandarin.dat:https://github.com/lxyu/pinyin

10. delete characters can't find pinyin in Mandarin.dat

11. Clean data: saved2.csv (7724 tokens)

##Columns 
1. Index: index in ids-analysis.csv
2. Unicode_Character: The unicode for each charater
3. character: Chinese character (traditional only)
4. structure: total 12 structures (0-9, A, B) Ideographic description character structure correpondence to the character structure (up-down, left-right) reference:https://en.wikipedia.org/wiki/Chinese_character_description_languages
5. segment: the decomposition of the chinese character, e.g. 清 - segment: 氵青
6. pinyin: pinyin of the character, number represents the tone
7. segment1, 2: the first and second segment of the character, e.g. 清 - segment 1: 氵segment 2: 青
8. pinyin1, 2: the pinyin for first and second segment (some segment may not have a pinyin)
9. consonant, vowel, tone: the consonant, vowel and tone for the character's pinyin, e.g. 清, pinyin: qing1, consonant: q, vowel: ing, tone: 1
10. consonant1,2, vowel1,2, tone1,2: the consonant, vowel and tone for the segment 1' and 2's pinyin
11. segment1_sound: the comparison between segment1's and character's consonant, vowel, tone. 0 as not same, 1 as same. e.g. [0,0,0] means consonant, vowel, tone are all not same. [0,1,0] means consonant and tone are not same, vowel is the same.
12. segment2_sound: the comparison between segment2's and character's consonant, vowel, tone.
