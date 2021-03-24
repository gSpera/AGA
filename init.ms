.so macros.ms

.CA Introduzione
.PP
Questo testo si pone l'obbiettivo di introddure l'algebra astratta in modo semplice e comprensibile, con raffigurazioni, immagini ed esercizi dei concetti, senza però trascurare l'accuratezza delle informazioni.
L'obbiettivo principale è quello di safamare la curiosità dei lettori, che si approcciano per la prima volta a questa materia rendendo concreti gli argomenti trattati.

.CA Insiemi
In questo primo capitolo introdurremmo alcuni concetti fondamentali, che poi useremo per costruire tutte le nostre
.I "strutture algebriche" .

.SA Insiemi
L'idea di isiemi viene introdotta a ciascuno di noi già da piccoli, un insieme è... un 'insieme' di oggetti, una collezione
.I "non ordinata"
di elementi di diverso tipo.
Un insieme di fatti puù essere costituito da qualsiasi cosa, facciamo un esempio:
\fB
.ps +4
.PS
spline from (0,0) then right 0.2 down 1.1\
	then left 1.7 down 0.3\
	then left 0.2 up 0.5\
	then left 0.5 up 0.7\
	to (0,0)
"A" at (0.3, -0.7)
"1" at (-0.7, -0.3)
"\(dg" at (-0.8, -0.9)
.PE
Questo è un insieme formato dalla lettera 'A', dal numero\**
.FS
Diamo il concetto di 'numero' per scontato, ma questo può essere costruito tramite strumenti che avremo tra poco, si faccia riferimento all'Appendice A
.FE
 '1' e dal simbolo '\(dg', possiamo anche scriverlo come:
.EQ
{ 'A', 1, \(dg }
.EN

.PP
Convenzionalmente chiameremo gli insiemi con una lettera latina
.I maiuscola . 
Definiamo quindi 
.I 'I' :
.EQ
I = { 'A', 1, \(dg }
.EN

.PP
Lavoreremo principalmente con insiemi numerici, formati, cioè, solamente da numeri, e in molti casi di insiemi aventi infiniti elementi.
Dobbiamo quindi introdurre un nuovo modo di definire un insieme, un modo più formale che permette di includere infiniti elementi.

Consideriamo, per esempio, di voler avere un insieme formato da tutti i numeri primi, essendo questi infiniti non possiamo elencarli tutti, tantomeno rappresentarli tutti graficamente come prima:
.EQ
P = { forall x in NN / x è primo }
.EN

