#!/bin/bash

#questions to chrisbgp@gmail.com

echo -e "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
echo -e "<d:dictionary xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:d=\"http://www.apple.com/DTDs/DictionaryService-1.0.rng\">\n"

for manpage in `apropos . |iconv -f ISO-8859-1 -t UTF-8|cut -d"(" -f1 |grep -v ":"|grep -v " " |uniq` ; do echo -e "\n<d:entry id=\""$manpage"\">\n<d:index d:value=\""$manpage"\" d:title=\""$manpage"\"/>" && man "$manpage" |man2html -bare -nodepage|fmt -w 160 && echo -e "\n</d:entry>"; done

echo -e "\n</d:dictionary>"
