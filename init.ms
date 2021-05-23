.AM
.so indice.ms
.so macros.ms
.EQ
include macros.eqn
.EN

.SH 1
Introduzione
.PP
Questo libro si pone l'obbiettivo di introddure l'algebra astratta in modo semplice e comprensibile, con raffigurazioni, immagini ed utilizzi dei concetti, senza però trascurare l'accuratezza delle informazioni, sfamare la curiosità del lettore, che si approccia per la prima volta alla materia rendendo concreti gli argomenti trattati.
.PP
Nel corso del libro costruiremo la "matematica" partendo da pochi elementi fondamentali, in particolare in
.ds CostruzioneNumeri \fB"Appendice A: Costruzione dei numeri"\fR
.de CR
\*[CostruzioneNumeri]
..
.CR CostruzioneNumeri
ci occuperemo d costire i numeri che usiamo ogni giorno.

.CA Insiemi, Relazioni e Funzioni
In questo primo capitolo introdurremmo alcuni concetti fondamentali, che poi useremo per costruire tutte le nostre
.I "strutture algebriche" .
Parleremo di insiemi, relazioni e funzioni.

.SA Insiemi
L'idea di isiemi viene introdotta a ciascuno di noi già da piccoli, un insieme è... un 'insieme' di oggetti, una collezione
.I "non ordinata"
di elementi di diverso tipo.
Non esiste infatti una definizione di insieme, questo è un concetto
.I primitivo
e quindi non derivabile da nessun altro concetto.

Un insieme di fatti può essere costituito da qualsiasi cosa, facciamo un esempio:
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
Questo è un insieme formato dalla lettera 'A', dal numero
.FT
'1' e dall'elemento \(dg.
Diamo il concetto di 'numero' per scontato, ma questo può essere costruito tramite strumenti che avremo tra poco, si faccia riferimento all'Appendice A
.FE
'1' e dal simbolo '\(dg', possiamo anche scriverlo come:
.EQ
mark txt "{" 'A', 1, \(dg txt "}"
.EN

.PP
Convenzionalmente chiameremo gli insiemi con una lettera latina
.I maiuscola . 
Definiamo quindi 
.I 'I' :
.EQ
I = lineup txt "{" 'A', 1, \(dg txt "}"
.EN

.PP
Lavoreremo principalmente con insiemi numerici, formati, cioè, solamente da numeri, e in molti casi di insiemi aventi infiniti elementi.
Dobbiamo quindi introdurre un nuovo modo di definire un insieme, un modo più formale che permette di includere infiniti elementi.

.PP
Consideriamo, per esempio, di voler avere un insieme formato da tutti i numeri primi, essendo questi infiniti non possiamo elencarli tutti, tantomeno rappresentarli tutti graficamente come prima, ma possiamo descriverli:
.EQ
P = txt "{" forall x in NN / x txt " è primo" txt "}"
.EN

Chiediamoci ora se, preso questo insieme possiamo svolgerci qualche 
.I operazione ,
per esempio, possiamo fare la somma tra due elementi di questo insieme, o dire quale sia il più grande?
.EQ
pile {
P = txt "{" 1, 2, 3, A, \(dg txt "}"
above 1, 2 in P
above 1+2 = 3
above 1 <= 2
}
.EN
Entrambe operazioni
.B "non hanno senso" ,
ora lavoriamo in
.I insiemi
e ne la somma ne il minore-uguale hanno alcun significato, è importante capire questo concetto,
distinguendo i numeri che noi conosciamo dalle strutture algebriche che andremo a costruire.

.SA Operazioni tra insiemi
Definiamo ora alcuni strumenti che sicuramente ci serviranno durante il nostro percorso, le operazioni di:
.LI Unione
.LI Intersezione
.LI Sottrazione tra insiemi
.LI Insieme delle Parti
.LI Prodotto cartesiano

.PP 
.B Unione "" L'
è un operazione tra due insiemi e che crea un nuovo insieme formato da tutti gli elementi compresi nei due insiemi:
.EQ
A Union B = txt "{" x / x in A OR x in B txt "}"
.EN
Si noti l'operatore logico "o"
.ST (Inclusivo) ,
basta quindi che valga
.I una
proposizione.

.PP 
.B Intersezione "" L'
è un operazione tra due insiemi e che crea un nuovo insieme formato da tutti gli elementi compresi in entrambi gli insiemi:
.EQ
A Intersection B = txt "{" x / x in A AND x in b txt "}"
.EN
Si noti l'operatore logico "e", cioè
.I entrambe
le proposizioni devono valere.

.PP
.B Sottrazione "" "La "
tra due insiemi è un operazione tra due insiemi e che crea un nuovo insieme formato da tutti gli elementi del primo insieme non contenuti nel secondo insieme:
.EQ
A \\ B = txt "{" x / x in A AND x notin B txt "}"
.EN
.PP
.B Sottoinsieme
Quando dati due insiemi, tutti gli elementi del primo appartengono anche al secondo allora il primo è 
.I sottoinsieme
del secondo insieme.
.EQ
A Subset B = txt"{" a in B, forall a in A txt"}"
.EN
Interessante notare che ogni insieme è sottoinsieme di se stesso.
.EQ
A Subset A Space forall A
.EN

.PP
.B "insieme delle parti" "" L'
è a sua volta un insieme formato a sua volta da tutti i sottonsiemi.
.EQ
A = txt"{" 1, bold A, \(dg txt"}"
.EN
.EQ
P(A) = txt"{" txt "{}", txt"{" 1 txt"}", txt"{" bold A txt"}", txt"{" \(dg txt"}", txt"{" 1, bold A txt"}", txt"{" bold A, \(dg txt"}", txt"{" 1, \(dg txt"}", txt"{" 1, bold A, \(dg txt"}" txt"}"
.EN
Notiamo come l'insieme nullo, così come l'insieme completo, appartengano entrambi all'insieme delle parti.
.EQ
lpile {
txt"{}" in P(A)
above
A in P(A)
}
.EN

.SA Tuple, Ennuple
.PP
Una coppia di valori è anche chiamata
.B Tupla
ed è un insieme
.I ordinato
di 2 elementi.
Ovviamente esistono triple, quadruple e così via, indichiamo con
.B Ennupla
un insieme ordinato di 
.I n
elementi. Indichiamo un singolo elemento della n-upla tramite l'indice:
.EQ
lpile {
A = (\(dg; bold A)
above
A sub 1 = \(dg
above
A sub 2 = bold A
}
.EN
Indichiamo l'elemento generico tramite l'indice
.I i
iterandolo per tutti i numeri necessari, indicheremo questo con:
.EQ
lpile {
i = 1,2,...,n
above
i = 1,2,...
above
i = 0,2,...10
}
.EN
Nel caso ci servisse possiamo iterare 
.I i
su tutti i numeri naturali, come nell'esempio.
L'incremento non deve essere di 1 necessariamente, ma può assumere qualsiasi valore necessario, nel terzo caso i numeri pari.

.PP
Il concetto di tupla non è primitivo di per se, ma la sua definizione non è banale a partire dagli insiemi.
Però è possibile definire una ennupla di qualsiasi dimensione partendo dal concetto di coppia ordinata.
.LP
\('E possibile infatti vedere, per esempio, una tripla come una tupla formata dal primo elemento e da una tupla composta dal secondo e dal terzo elemento:
.EQ
(a sub 1; a sub 2; a sub 3 ) = (a sub 1; (a sub 2 ; a sub 3 ))
.EN
Quindi una ennupla può essere vista come una tupla formata dal primo elemento della ennulpla stessa e da una tupla composta dal secondo elemento della tupla, così via fino ad n.
.EQ
(a sub 1 ; a sub 2; ... ; a sub n ) = ( a sub 1 ; ( a sub 2 ; ( ... ; a sub n ) ) )
.EN

Quindi per induzione definiamo una ennupla.

.SA Prodotto Cartesiano
.PP
.B "Prodotto Cartesiano" "" "Il "
è una delle operazioni più importanti, opera, a differenza di altre, su due insiemi per produrre l'insieme delle coppie
.I ordinate
formate dagli elementi del primo insieme e da quelli del secondo.

Facciamo un esempio per comprendere meglio:
.EQ
A = txt "{" 1, 2, txt "A", \(dg txt "}", Space B = txt "{" txt"A", txt"B", txt"C" txt"}"
.EN
.EQ
lpile {
A Times B = txt "{"
above
matrix {
ccol {Space ( 1; txt"A"), above Space ( 2; txt"A"), above Space ( txt"A"; txt"A"), above Space ( \(dg; txt"A"),}
ccol {( 1; txt"B"), above ( 2; txt"B"), above ( txt"A"; txt"B"), above ( \(dg; txt"B"),}
ccol {( 1; txt"C"), above ( 2; txt"C"), above ( txt"A"; txt"C"), above ( \(dg; txt"C"),}
}
above txt"}"
}
.EN
E' possibile estendere l'idea di prodotto cartesiano a più elementi, definiamo quindi una ennupla:
.EQ
A sub 1 Times A sub 2 Times ... Times A sub n
.EN

Usualmente andremo a fare il prodotto cartesiano di un insieme con se stesso n volte:
.EQ
A sup n = A Times A Times ... Times A
.EN
.SA Relazioni
.PP
.B relazioni , "Le "
che utilizzeremo per le funzioni sono una parte del prodotto cartesiano
.LP
Possiamo definire una relazione tra un solo insieme, per esempio
.EQ
A = txt"{ I lettori di questo libro }"
.EN
.EQ
R = txt"{ L'eta di " x > 18 / forall x in A txt"}"
.EN
Questa è una relazione.
.PP
Di solito però useremo relazioni binarie, quindi che usa il prodotto tra insiemi(o anche un insieme per se stesso).
.EQ
A = txt"{ I lettori di questo libro }"
.EN
.EQ
B = txt"{ Ragazzi studiosi }"
.EN
.EQ
R = txt"{ I ragazzi studiosi che leggono questo libro }"
.EN
.EQ
delim $$
.EN
Dati $A$ e $B$, due insiemi, una relazione è un sottoinsieme del prodotto cartesiano $A Times B$
