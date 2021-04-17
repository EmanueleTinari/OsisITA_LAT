Se nel testo del capitolo scelto è presente un brano cosidetto poetico, la formattazione delle parole segue il codice seguente (puoi anche tu confrontare i versetti 27-28 del capitolo 1 della Genesi):

```xml
<lg>
<verse sID="Gen.1.27" osisID="Gen.1.27"/>
<l level="1"><note type="x-footnote" n="3">Cfr. <reference osisRef="Matt.19.4">Mt 19,4</reference>; <reference osisRef="Mark.10.6">Mc 10,6</reference>.</note>Dio creò l`uomo a sua immagine;</l>
<l level="1">a immagine di Dio lo creò;</l>
<l level="1">maschio e femmina li creò.</l>
<verse eID="Gen.1.27"/>
<verse sID="Gen.1.28" osisID="Gen.1.28"/>
<l level="1">Dio li benedisse e disse loro:</l>
<l level="1">"Siate fecondi e moltiplicatevi,</l>
<l level="1">riempite la terra;</l>
<l level="1">soggiogatela e dominate sui pesci del mare</l>
<l level="1">e sugli uccelli del cielo</l>
<l level="1">e su ogni essere vivente,</l>
<l level="1">che striscia sulla terra".</l>
<verse eID="Gen.1.28"/>
</lg>
```

Nello spezzone di capitolo si può notare che il brano poetico inizia con il TAG ```<lg>```, ovvero Line Group, gruppo allineato.

Ogni riga poi comincia invece col TAG ```<l level="1">```, ovvero Linea, seguito da un level="1" che è come dire rientra rispetto al corpo principale del paragrafo di una tabulazione. Si può anche avere un  level="2" che è il rientro di due tabulazioni.

Nello spezzone di capitolo in esempio, vi è anche una nota all'inizio del verso, che va inserita subito dopo il primo ```<l level="1">```.

Nella seguente foto uno screenshot di come lo spezzone di brano viene visualizzato in BpBible.

![Qui](https://github.com/EmanueleTinari/EmanueleTinari/blob/OSIS_ITA_and_LAT_books/immagini/SpezzoneTestoPoetico.jpg)
