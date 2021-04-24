RIGA 1:

```xml
<div type="book" bookTitle="@@@@" osisID="####" canonical="true">
```

**--** Tra le virgolette di bookTitle (4@@@@), dovrà essere messo **TUTTO IN MAIUSCOLO** il nome del libro in formato completo, non la sua abbreviazione, come indicato nella colonna
Libro, colonna **D** del [foglio di Google Sheet](https://docs.google.com/spreadsheets/d/1Uge8LUyCOSvNaqvxR5Uss9EsBBgO8DgnApFgWN5Nt_8/edit?usp=sharing) dal quale hai scelto il capitolo.

Esempi: (Atti degli Apostoli **devi** mettere *ATTI DEGLI APOSTOLI*) - (Vangelo secondo Marco **devi** mettere *VANGELO SECONDO MARCO*) ecc...

**--** Tra le virgolette di osisID (4####), dovrà essere inserito il nome del libro, in forma di ABBREVIAZIONE, e secondo la terminologia INGLESE.
Naturalmente per facilitarti il lavoro ho inserito nel [foglio di Google Sheet](https://docs.google.com/spreadsheets/d/1Uge8LUyCOSvNaqvxR5Uss9EsBBgO8DgnApFgWN5Nt_8/edit?usp=sharing) una colonna (colonna **E**) con le abbreviazioni in INGLESE di tutti
i libri della Bibbia italiana, pertanto basta vedere nella colonna **E** Abbreviazione Inglese il libro il cui capitolo hai scelto.

Esempi: (Atti degli Apostoli **devi** mettere *Acts*) - (Vangelo secondo Marco **devi** mettere *Mark*) ecc...

RIGA 3:

```xml
<title type="main">@@@@</title>
```

Qui al posto delle 4@ dovrai mettere **TUTTO IN MAIUSCOLO** il nome del libro in formato completo, come avevi fatto poco sopra per il bookTitle.

Ora, se hai scelto il primo capitolo di un libro, dovrai inserire anche la sua relativa introduzione come puoi ben vedere dal sito della CEI.

DALLA RIGA 5 ALLA RIGA 13 COMPRESA: **Introduzione valida SOLO per il primo capitolo di un libro**

```xml
	<div type="section">
		<title osisID="Intro_@@@@">Introduzione</title>
		<hi type="italic">
			<p> </p>
		</hi>
	</div>
```

Qui sono da riempire il campo Intro_ mettendo al posto dei 4@ il nome del libro, in forma di ABBREVIAZIONE, e secondo la terminologia INGLESE,
come precedentemente poso sopra fatto per l'osisiD.

Tra le due

```xml
    <p> e </p>
```

dovrà essere copiato ed incollato **tutto e solo** il testo dell'introduzione, esclusa la dicitura Introduzione.

Se nell'introduzione nel sito della CEI ci sono più **capoversi** (punto e a capo) dovrai appena dopo il punto, prima

dell'"a capo" chiudere il TAG <p> così:

```xml
    </p>
```

e all'inizio del capoverso riaprirlo così:

```xml
    <p>
```

Questo perchè così facendo il testo si formatta "andando a capo", mentre un punto con testo che segue senza andare a capo

non va formattato in alcuna maniera e il testo risulterà continuo.

In caso di presenza di riferimenti nel testo dell'introduzione, questi dovranno essere formattati come segue:

(per semplificare ed aiutarti ho creato la scheda Modulo x riferimenti nel [Foglio di Google](https://docs.google.com/spreadsheets/d/1Uge8LUyCOSvNaqvxR5Uss9EsBBgO8DgnApFgWN5Nt_8/edit?usp=sharing). Le istruzioni per come usare tale foglio sono indicate nel file [08_Il Modulo_x_Riferimenti]().

## Formattazione di un riferimento di un capitolo, un versetto ##

```xml
    (<reference osisRef="@@@@.n.n">#### n,n-n</reference>) un unico riferimento
```

Esempio: bla bla bla. Cfr. 1Pt 1,1
Ovvero confronta Prima lettera di Pietro capitolo 1 versetto 1.

verrà così formattato:

```xml
    Cfr. (<reference osisRef="1Pet".1.1">1Pt 1,1</reference>)
```

Dunque al posto delle 4@@@@ verrà messa l'ABBREVIAZIONE in inglese del libro del riferimento (**attenzione** sicuramente è un altro libro a cui si fa riferimento, 
non necessariamente quello che stai elaborando) trova la relativa abbreviazione inglese nella colonna **E** del [foglio di Google](https://docs.google.com/spreadsheets/d/1Uge8LUyCOSvNaqvxR5Uss9EsBBgO8DgnApFgWN5Nt_8/edit?usp=sharing)
poi un punto, il numero del capitolo del riferimento, ancora un punto e il numero del versetto del riferimento.

Invece tra > e < verrà messa : al posto delle 4####, l'abbreviazione in italiano del libro del riferimento (**attenzione** sicuramente è un altro libro a cui si fa riferimento, 
non necessariamente quello che stai elaborando) trova la relativa abbreviazione italiana nella colonna **C** del [foglio di Google](https://docs.google.com/spreadsheets/d/1Uge8LUyCOSvNaqvxR5Uss9EsBBgO8DgnApFgWN5Nt_8/edit?usp=sharing)
poi uno spazio, il numero di capitolo, una virgola, e il numero del versetto.

## Formattazione di un riferimento, stesso capitolo, due o più versetti CONTIGUI ##

```xml
    (<reference osisRef="@@@@.n.n-n">#### n,n-n</reference>) un riferimento, stesso capitolo, due o più versetti
```

Altro esempio: bla bla bla . Cfr. Mc 2,3-6
Ovvero confronta Vangelo di Marco capitolo 2, versetti da 3 a 6 compresi.

verrà così formattato:

```xml
    Cfr. (<reference osisRef="Mark.2.3-6">Mc 2,3-6</reference>)
```

Dunque al posto delle 4@@@@ verrà messa l'ABBREVIAZIONE in inglese del libro del riferimento (**attenzione** sicuramente è un altro libro a cui si fa riferimento, 
non necessariamente quello che stai elaborando) trova la relativa abbreviazione inglese nella colonna **E** del [foglio di Google](https://docs.google.com/spreadsheets/d/1Uge8LUyCOSvNaqvxR5Uss9EsBBgO8DgnApFgWN5Nt_8/edit?usp=sharing)
poi un punto, il numero del capitolo del riferimento, ancora un punto e i numeri dei versetti separati da un trattino (il segno meno) se questi sono contigui.

Invece tra > e < verrà messa: al posto delle 4####, l'abbreviazione in italiano del libro del riferimento (**attenzione** sicuramente è un altro libro a cui si fa riferimento, 
non necessariamente quello che stai elaborando) trova la relativa abbreviazione italiana nella colonna **C** del [foglio di Google](https://docs.google.com/spreadsheets/d/1Uge8LUyCOSvNaqvxR5Uss9EsBBgO8DgnApFgWN5Nt_8/edit?usp=sharing)
poi uno spazio il numero di capitolo, una virgola, e i numeri dei versetti contigui a cui ci si sta riferendo.

## Formattazione di un riferimento, stesso capitolo, due o più versetti NON contigui ##

```xml
    (<reference osisRef="@@@@.n.n; @@@@.n.n">#### n,n.n</reference>) un riferimento, stesso capitolo, due o più versetti
```

Altro esempio: bla bla bla . Cfr. 2Pt 2,4.9
Ovvero confronta seconda lettera di Pietro capitolo 2, versetti 4 e 9.

verrà così formattato:

```xml
    Cfr. (<reference osisRef="2Pet.2.4; 2Pet.2.9">2Pt 2,4.9</reference>)
```

Dunque al posto delle 4@@@@ verrà messa l'ABBREVIAZIONE in inglese del libro del riferimento (**attenzione** sicuramente è un altro libro a cui si fa riferimento, 
non necessariamente quello che stai elaborando) trova la relativa abbreviazione inglese nella colonna **E** del [foglio di Google](https://docs.google.com/spreadsheets/d/1Uge8LUyCOSvNaqvxR5Uss9EsBBgO8DgnApFgWN5Nt_8/edit?usp=sharing)
poi un punto, il numero del capitolo del riferimento, ancora un punto e il numero del primo versetto.
Poi un punto e virgola, uno spazio, ancora l'abbreviazione inglese, un punto, il numero di capitolo, un punto, il numero del secondo versetto in questione: è come quindi
se si trattasse di due riferimenti a ben vedere.

Invece tra > e < verrà messa l'abbreviazione in italiano del libro del riferimento (**attenzione** sicuramente è un altro libro a cui si fa riferimento, 
non necessariamente quello che stai elaborando) trova la relativa abbreviazione italiana nella colonna **C** del [foglio di Google](https://docs.google.com/spreadsheets/d/1Uge8LUyCOSvNaqvxR5Uss9EsBBgO8DgnApFgWN5Nt_8/edit?usp=sharing)
poi uno spazio il numero di capitolo, una virgola, e i numeri dei versetti a cui ci si sta riferendo separati da un punto.

Tutto chiaro fino a questo punto? Spero di si, io comunque sono disponibilissimo fin da ora a fornirti ogni spiegazione che vorrai chiedermi.

Naturalmente le spiegazioni qui sopra sono valide **per ogni riferimento, anche quelli che troverai nel capitolo inserite nelle note di piè pagina !**

DALLA RIGA 15 ALLA RIGA 17

```xml
			<chapter sID="@@@@.n" osisID="@@@@.n" chapterTitle="CAPITOLO n."/>

			<title type="chapter">Capitolo n</title>
```

Il sID e l'osisID sono entrambi uguali.
Al posto delle 4@@@@ devi mettere l'abbreviazione del libro in inglese, un punto, e il numero di capitolo che stai elaborando.

Esempio: Luke.3 per il capitolo numero 3 del Vangelo di Luca.

Nel campo chapterTitle va messo solo il numero del capitolo al posto della lettera n. Molto facile, direi.

Ora veniamo al codice valido per ogni versetto, di ogni capitolo, di ogni libro, della Bibbia. Codice che è quello che segue:

```xml
				<verse sID="@@@@.n.n" osisID="@@@@.n.n"/><verse eID="@@@@.n.n"/>
```

Al posto delle 4@@@@ devi mettere l'abbreviazione del libro in inglese, un punto, e il numero di capitolo che stai elaborando, un punto
e il numero di versetto. Quindi sono da ripetere per 3 volte le stesse informazioni.

Esempio: Versetto 4 del primo capitolo della lettera di Giuda.

```xml
        <verse sID="Jude.1.4" osisID="Jude.1.4"/><verse eID="Jude.1.4"/>
```

Io suggerisco una volta scelto il capitolo da sviluppare, di leggere sul sito della CEI il numero di versetti di cui è composto.
Usare Excel o altro foglio di calcolo dove incollare il codice VUOTO del versetto.
Poi copiare ed incollare tante volte quanti sono i versetti.
Ancora meglio usare le funzioni di testo presenti in Excel per "creare" il codice completo della riga del versetto formattata.
Una volta competato questo passaggio è possibile dal sito della CEI copiare ed incollare versetto per versetto le righe di testo, mettendo lo stesso
tra > e <.

Una volta finito si otterrà una cosa così. Questo esempio è del versetto 4 del primo capitolo della lettera di Giuda:

```xml
    <verse sID="Jude.1.4" osisID="Jude.1.4"/>Si sono infiltrati infatti tra voi alcuni individui - i quali sono già stati segnati da tempo per questa condanna - empi che trovano pretesto alla loro dissolutezza nella grazia del nostro Dio, rinnegando il nostro unico padrone e signore Gesù Cristo.<verse eID="Jude.1.4"/>
```

Potete confrontare dal sito CEI il testo, naturalmente!

Ultima cosa. Presenza di un titolo di sezione all'interno del capitolo.
Riprendiamo nuovamente in considerazione la lettera di Giuda.
Dal sito della CEI vediamo che subito prima del versetto 3 c'è scritto in grassetto: Scopo della lettera.
Notiamo anche che prima del versetto 5 c'è un nuovo titolo di sezione, essendoci scritto sempre in grassetto: I falsi dottori.

Quindi possiamo ben dire che la sezione "Scopo della lettera" va dal versetto 3 al versetto 4 compreso.

Bene. A livello di codice xml avremmo quanto segue:

```xml
			<div type="section">

				<title>####.</title>

				<verse sID="@@@@.n.n" osisID="@@@@.n.n"/><verse eID="@@@@.n.n"/>
				<verse sID="@@@@.n.n" osisID="@@@@.n.n"/><verse eID="@@@@.n.n"/>

			</div>
```

Allora al posto delle 4#### metterai il testo in grassetto del titolo di sezione, nell'esempio qui sopra di Giuda 1,3-4 avremo:

```xml
			<div type="section">

				<title>Scopo della lettera.</title>

				<verse sID="@@@@.n.n" osisID="@@@@.n.n"/><verse eID="@@@@.n.n"/>
				<verse sID="@@@@.n.n" osisID="@@@@.n.n"/><verse eID="@@@@.n.n"/>

			</div>
```
Raccomando il PUNTO alla fine del titolo di sezione !

Mentre il codice completo, senza testo dei versetti sarà:

```xml
			<div type="section">

				<title>Scopo della lettera.</title>

				<verse sID="Jude.1.3" osisID="Jude.1.3"/><verse eID="Jude.1.3"/>
				<verse sID="Jude.1.4" osisID="Jude.1.4"/><verse eID="Jude.1.4"/>

			</div>
```

Altra cosa che raccomando sono le tabulazioni. Per questo fate riferimento al file [base.xml](https://github.com/EmanueleTinari/EmanueleTinari/blob/OSIS_ITA_and_LAT_books/base.xml) e [Tabulazioni](https://github.com/EmanueleTinari/EmanueleTinari/blob/OSIS_ITA_and_LAT_books/tabulazioni.md) qui su Github.

Se non hai un editor nel tuo pc e vuoi utilizzare il servizio gratuito di [jsonformatter](https://jsonformatter.org/xml-editor), al [punto 04](https://github.com/EmanueleTinari/EmanueleTinari/blob/OSIS_ITA_and_LAT_books/04_Quattro_parole_su_Jsonformatter.md) ti spiego quattro cose su come usarlo.

Vuoi, invece, tornare all'elenco delle cartelle e dei file del progetto? Clicca [QUI](https://github.com/EmanueleTinari/EmanueleTinari)
