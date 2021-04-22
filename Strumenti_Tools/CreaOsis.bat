:: La variabile work contiene il percorso della cartella coi files originali
SET work=D:\Documents\Downloads\Emule-Incoming\osis\

:: La variabile bpc contiene il percorso di destinazione dei file CONF per BPBiblePortable
SET bpc=D:\Documents\Downloads\Emule-Incoming\BPBiblePortable\App\BPBible\resources\mods.d\

:: La variabile bpo contiene il percorso di destinazione dei file OSIS per BPBiblePortable
SET bpo=D:\Documents\Downloads\Emule-Incoming\BPBiblePortable\App\BPBible\resources\modules\texts\rawtext\

:: La variabile xic contiene il percorso di destinazione dei file CONF per xiphos
SET xic=C:\Users\Emanuele\AppData\Roaming\Sword\mods.d\

:: La variabile xio contiene il percorso di destinazione dei file OSIS per xiphos
SET xio=C:\Users\Emanuele\AppData\Roaming\Sword\modules\texts\rawtext\

cls
echo
rem copio il file cei1971.conf nella cartella .\mod.d del programma BPBiblePortable
copy /v /y %work%cei1971.conf %bpc%
rem
rem file cei1971.conf copiato in BPBiblePortable
rem
rem copio il file cei1971.conf nella cartella .\mod.d del programma xiphos
copy /v /y %work%cei1971.conf %xic%
rem
rem file cei1971.conf copiato in xiphos
rem
rem copio il file cei1974.conf nella cartella .\mod.d del programma BPBiblePortable
copy /v /y %work%cei1974.conf %bpc%
rem
rem file cei1974.conf copiato in BPBiblePortable
rem
rem copio il file cei1974.conf nella cartella .\mod.d del programma xiphos
copy /v /y %work%cei1974.conf %xic%
rem
rem file cei1974.conf copiato in xiphos
rem
rem copio il file cei2008.conf nella cartella .\mod.d del programma BPBiblePortable
copy /v /y %work%cei2008.conf %bpc%
rem file cei2008.conf copiato in BPBiblePortable
rem
rem copio il file cei2008.conf nella cartella .\mod.d del programma xiphos
copy /v /y %work%cei2008.conf %xic%
rem
rem file cei2008.conf copiato in xiphos
rem
rem copio il file tilc.conf nella cartella .\mod.d del programma BPBiblePortable
copy /v /y %work%tilc.conf %bpc%
rem
rem file tilc.conf copiato in BPBiblePortable
rem
rem copio il file tilc.conf nella cartella .\mod.d del programma xiphos
copy /v /y %work%tilc.conf %xic%
rem
rem file tilc.conf copiato in xiphos
rem
rem copio il file novav.conf nella cartella .\mod.d del programma BPBiblePortable
copy /v /y %work%novav.conf %bpc%
rem
rem file novav.conf copiato in BPBiblePortable
rem
rem copio il file tilc.conf nella cartella .\mod.d del programma xiphos
copy /v /y %work%novav.conf %xic%
rem
rem file novav.conf copiato in xiphos
rem
rem creo i file Osis
:: vecchio modo osis2mod %work% - < cei1974.osis.xml
osis2mod %work% cei1974.osis.xml -v Catholic
echo
echo Attendi 3 secondi... 
timeout /t 3 /nobreak
rem
rem file Osis creati
rem
rem copio i 4 file Osis nelle relative cartelle .\modules\texts\rawtext\cei1974 dei programmi
copy /v /y %work%nt.* %bpo%cei1974
copy /v /y %work%ot.* %bpo%cei1974
rem
rem file Osis copiati in %bpo%cei1974
rem
copy /v /y %work%nt.* %xio%cei1974
copy /v /y %work%ot.* %xio%cei1974
rem
rem file Osis copiati in %xio%cei1974
rem
rem cancello i due file Osis nella cartella di origine
rem
rem del /q %work%nt.*
rem del /q %work%ot.*
rem pause