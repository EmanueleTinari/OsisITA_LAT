[ITA] **CreaOsis.ps1** è uno script per Powershell che compie alcune operazioni sulla cartella di lavoro.

Tutti i frammenti di codice qui estratti provengono dallo script CreaOsis.ps1

Per renderlo compatibile alle tue necessità, è necessario modificarlo in alcune sue parti:

## RIGA 15: ##

```powershell
$work = "D:\Documents\Downloads\Emule-Incoming\osis"
```

Qui metti il percorso della directory di lavoro, quella dove hai i files .osis.xlm e conf che stai editando, ESCLUSO lo

slash finale prima della chiusura delle virgolette.

## RIGA 28: ##

```powershell
$FileNecessari = @('cei1974.osis.xml', 'mod2imp.exe', 'icudt51.dll', 'icuin51.dll', 'icuuc51.dll', 'libsword.dll')
```

Qui invece c'è l'array che controlla se sono presenti tutti i files elencati.

Puoi aggiungerne o eliminarne. Attenzione che gli eseguibili e le .dll sono necessari per formattare i file .osis.xml

secondo lo standard richiesto dai programmi di lettura/studio biblico.

## RIGA 55: ##

```powershell
$bpc = "D:\Documents\Downloads\Emule-Incoming\BPBiblePortable\App\BPBible\resources\mods.d\"
```

Qui metti il percorso della directory mods.d di BPBiblePortable (se lo hai installato), INCLUSO lo

slash finale prima della chiusura delle virgolette.

## RIGA 59: ##

```powershell
$xic = "C:\Users\Emanuele\AppData\Roaming\Sword\mods.d\"
```

Qui metti il percorso della directory mods.d di Xiphos (se lo hai installato), INCLUSO lo

slash finale prima della chiusura delle virgolette.

## RIGA 63: ##

```powershell
$bpo = "D:\Documents\Downloads\Emule-Incoming\BPBiblePortable\App\BPBible\resources\modules\texts\rawtext\"
```

Qui metti il percorso della directory rawtext di BPBiblePortable (se lo hai installato), INCLUSO lo

slash finale prima della chiusura delle virgolette. Se questa cartella od altre superiori, fino a giungere a modules,

non sono presenti, creale. Dentro rawtext poi è necessario creare la cartella cei1974.

Rispetta le maiuscole e minuscole, sempre!

## RIGA 67: ##

```powershell
$xio = "C:\Users\Emanuele\AppData\Roaming\Sword\modules\texts\rawtext\"
```

Qui metti il percorso della directory rawtext di Xiphos (se lo hai installato), INCLUSO lo

slash finale prima della chiusura delle virgolette. Se questa cartella od altre superiori, fino a giungere a modules,

non sono presenti, creale. Dentro rawtext poi è necessario creare la cartella cei1974.

Rispetta le maiuscole e minuscole, sempre!






[ENG] **CreaOsis.ps1** is a Powershell script to automate some operations in working dir.

For your compatibility, it is necessary you modify it in some parts:















