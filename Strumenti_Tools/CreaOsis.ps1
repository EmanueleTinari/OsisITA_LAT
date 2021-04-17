#[ITA] Necessario per i MessageBox.
#[ENG] Necessary for MessageBoxes.
Add-Type -AssemblyName PresentationCore,PresentationFramework

#[ITA] Nella variabile $Culture viene richiesta la lingua dell'interfaccia.
#[ENG] $Culture ask for the GUI language.
$Culture = Get-Culture

#[ITA] Nella variabile $Language è contenuto il nome della lingua: IT-IT per italiano, EN-US per inglese americano, ad esempio.
#[ENG] $Language contains the language name: EN-US for american english, EN-GB for english of Great Britain, for example.
$Language = $Culture.Name

#[ITA] La variabile work contiene il percorso della cartella coi files originali.
#[ENG] $work variable contains the path of the folder with the original files.
$work = "D:\Documents\Downloads\Emule-Incoming\osis"

#[ITA] Questa cartella deve contenere i file (aggiungerli qui nel commento e sotto nell'array se aumentano):
#[ENG] This folder must contain the files (adds here in the comment and down in the array if they increase):
#[ITA-ENG] cei1974.osis.xlm
#[ITA-ENG] mod2imp.exe
#[ITA-ENG] icudt51.dll
#[ITA-ENG] icuin51.dll
#[ITA-ENG] icuuc51.dll
#[ITA-ENG] libsword.dll

#[ITA] L'array $FileNecessari contiene i nomi dei file necessari a far funzionare lo script.
#[ENG] $FileNecessari Array contains the names of files requested to the script.
$FileNecessari = @('cei1974.osis.xml', 'mod2imp.exe', 'icudt51.dll', 'icuin51.dll', 'icuuc51.dll', 'libsword.dll')

#[ITA] Ciclo degli elementi presenti nell'array. Se tutti i file richiesti non sono presenti, lo script termina.
#[ENG] Loop for Array's elements. If all requested files aren't in $work dir, this script will terminate.
foreach ($element in $FileNecessari)
    {
        if(![System.IO.File]::Exists("$work\$element"))
        {
        if ($Language -eq "IT-IT")
            {
                $msgBody = "$element assente!`nLo script verrà terminato."
                $msgTitle = "A T T E N Z I O N E !!!"
            }
        else
            {
                $msgBody = "$element not present!`nScript'll be terminated."
                $msgTitle = "A T T E N T I O N !!!"
            }
            $msgButton = 'Ok'
            $msgImage = 'Error'
            [System.Windows.MessageBox]::Show($msgBody, $msgTitle, $msgButton, $msgImage)
            exit
        }
    }

#[ITA] La variabile $bpc contiene il percorso di destinazione dei file CONF per BPBiblePortable.
#[ENG] $bpc variable contains the path of destination of CONF files for BPBiblePortable.
$bpc = "D:\Documents\Downloads\Emule-Incoming\BPBiblePortable\App\BPBible\resources\mods.d\"

#[ITA] La variabile $xic contiene il percorso di destinazione dei file CONF per xiphos.
#[ENG] $xic contains the path of destination of CONF files for xiphos.
$xic = "C:\Users\Emanuele\AppData\Roaming\Sword\mods.d\"

#[ITA] La variabile $bpo contiene il percorso di destinazione dei file OSIS per BPBiblePortable.
#[ENG] $bpo contains the path of destination of OSIS files for BPBiblePortable.
$bpo = "D:\Documents\Downloads\Emule-Incoming\BPBiblePortable\App\BPBible\resources\modules\texts\rawtext\"

#[ITA] La variabile $xio contiene il percorso di destinazione dei file OSIS per xiphos.
#[ENG] $xio variable contains the path of destination of OSIS files for xiphos.
$xio = "C:\Users\Emanuele\AppData\Roaming\Sword\modules\texts\rawtext\"

#[ITA] L'array $Confile contiene i nomi dei file .conf.
#[ENG] $Confile Array contains the names of .conf files.
$Confile = @('cei1971.conf', 'cei1974.conf', 'cei2008.conf', 'tilc.conf', 'novav.conf')

foreach ($element in $Confile)
    {
        Copy-Item -Path $work\$element -Destination $bpc
        $wshell = New-Object -ComObject Wscript.Shell
        $count = 1
        $result = 0 
        While ($result -eq 0)
            {
                if ($Language -eq "IT-IT")
                    {
                        $result = $wshell.Popup("Copiato in $bpc",1,"$element",0)            
                    }
                else
                    {
                        $result = $wshell.Popup("Copied in $bpc",1,"$element",0)    
                    }
                $count += 1
                Write-Host $count
                if($count -eq 10)
                    {
                        Exit
                    }
            }
        Copy-Item -Path $work\$element -Destination $xic
        $wshell = New-Object -ComObject Wscript.Shell
        $count = 1
        $result = 0 
        While ($result -eq 0)
            {
                if ($Language -eq "IT-IT")
                    {
                        $result = $wshell.Popup("Copiato in $xic",1,"$element",0)            
                    }
                else
                    {
                        $result = $wshell.Popup("Copied in $xic",1,"$element",0)    
                    }
                $count += 1
                Write-Host $count
                if($count -eq 10)
                    {
                        Exit
                    }
            }
    }

#[ITA] Ora creo i 4 files Osis.
#[ENG] Now It's building 4 Osis's files.
$eseguibile = "osis2mod.exe"
$outFolder = "$work\"
$OsisDoc = "$work\cei1974.osis.xml"
& $PSScriptRoot\$eseguibile $outFolder $OsisDoc
Start-Sleep -Seconds 2

#[ITA] L'array $Osisfile contiene i nomi dei file Osis.
#[ENG] $Osisfile Array contains the names of Osis files.
$Osisfile = @('ot*', 'nt*')

#[ITA] Copio i 4 file Osis nelle relative cartelle .\modules\texts\rawtext\cei1974 dei programmi.
#[ENG] Copy 4 Osis's files into .\modules\texts\rawtext\cei1974 folder of the programs.
foreach ($element in $Osisfile)
    {
        Copy-Item -Path $work\$element -Destination $bpo\cei1974\
        $wshell = New-Object -ComObject Wscript.Shell
        $count = 1
        $result = 0 
        While ($result -eq 0)
            {
                if ($Language -eq "IT-IT")
                    {
                        $result = $wshell.Popup("Copiato in $bpo",1,"$element",0)            
                    }
                else
                    {
                        $result = $wshell.Popup("Copied in $bpo",1,"$element",0)    
                    }
                $count += 1
                if($count -eq 10)
                    {
                        Exit
                    }
            }
        Copy-Item -Path $work\$element -Destination $xio\cei1974\
        $wshell = New-Object -ComObject Wscript.Shell
        $count = 1
        $result = 0 
        While ($result -eq 0)
            {
                if ($Language -eq "IT-IT")
                    {
                        $result = $wshell.Popup("Copiato in $xio",1,"$element",0)            
                    }
                else
                    {
                        $result = $wshell.Popup("Copied in $xio",1,"$element",0)    
                    }
                $count += 1
                if($count -eq 10)
                    {
                        Exit
                    }
            }
        #[ITA] Elimino i 4 file Osis nelle cartella di origine.
        #[ENG] Delete 4 Osis's files into origin folder.
        Remove-Item -Path $work\$element
    }