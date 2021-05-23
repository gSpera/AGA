.so indice.ms
.so macros.ms
.EQ
include macros.eqn
.EN

.CA Sistemi di Cramer
Un sistema con una sola soluzione viene chiamato
.I "Sistema di Cramer" .

Per risolvere questi sistemi utilizziamo la
.I "regola di Cramer" .

Dato un sistema lineare, per esempio:
.EQ
left [
matrix {
ccol { a sub 1,1 above a sub 2,1 above a sub 3,1 }
ccol { a sub 1,2 above a sub 2,2 above a sub 3,2 }
ccol { a sub 1,3 above a sub 2,3 above a sub 3,3 }
}
right ]

cdot

left (
matrix { ccol { x above y above z } }
right )
=
left (
matrix {
ccol { alpha above beta above gamma }
}
right )

.EN
La soluzione del sistema può essere espressa come:
.EQ
x =
{
 det
 left (
 left [
 matrix {
  ccol { alpha above beta above gamma }
  ccol { a sub 1,2 above a sub 2,2 above a sub 3,2 }
  ccol { a sub 1,3 above a sub 2,3 above a sub 3,3 }
 }
 right ]
 right )
}
over
{
 det
 left (
 left [
 matrix {
  ccol { a sub 1,1 above a sub 2,1 above a sub 3,1 }
  ccol { a sub 1,2 above a sub 2,2 above a sub 3,2 }
  ccol { a sub 1,3 above a sub 2,3 above a sub 3,3 }
 }
 right ]
 right )
}
,

y =
{
 det
 left (
 left [
 matrix {
  ccol { a sub 1,1 above a sub 2,1 above a sub 3,1 }
  ccol { alpha above beta above gamma }
  ccol { a sub 1,3 above a sub 2,3 above a sub 3,3 }
 }
 right ]
 right )
}
over
{
 det
 left (
 left [
 matrix {
  ccol { a sub 1,1 above a sub 2,1 above a sub 3,1 }
  ccol { a sub 1,2 above a sub 2,2 above a sub 3,2 }
  ccol { a sub 1,3 above a sub 2,3 above a sub 3,3 }
 }
 right ]
 right )
}
,
z =
{
 det
 left (
 left [
 matrix {
  ccol { a sub 1,1 above a sub 2,1 above a sub 3,1 }
  ccol { a sub 1,2 above a sub 2,2 above a sub 3,2 }
  ccol { alpha above beta above gamma }
 }
 right ]
 right )
}
over
{
 det
 left (
 left [
 matrix {
  ccol { a sub 1,1 above a sub 2,1 above a sub 3,1 }
  ccol { a sub 1,2 above a sub 2,2 above a sub 3,2 }
  ccol { a sub 1,3 above a sub 2,3 above a sub 3,3 }
 }
 right ]
 right )
}
.EN

.EQ
delim $$
.EN
In generale, e più coincisamente, data la matrice $A$ dei coefficenti, il vettore delle incognite $x vec$ e quello del risultato $y vec$:
.EQ
A cdot
left (
matrix { ccol { x sub 1 above x sub 2 above x sub 3 above ... } }
right )
=
left (
matrix { ccol { alpha above beta above gamma above ... }}
right )
.EN

Il risultato:
.EQ
x sub 1 = {det (B sub 1 )} over { det (A) },
x sub 2 = {det (B sub 1 )} over { det (A) },
x sub 3 = {det (B sub 1 )} over { det (A) },
...
.EN
.KS
Dove $B sub i$ è la matrice $A$ avente la colonna dei risultati $y vec$ al posto della colonna $i$.
.EQ
B sub 1 =
left [
matrix {
 ccol { alpha above beta above gamma }
 ccol { a sub 1,2 above a sub 2,2 above a sub 3,2 }
 ccol { a sub 1,3 above a sub 2,3 above a sub 3,3 }
}
right ]
, Space
B sub 1 =
left [
matrix {
 ccol { a sub 1,1 above a sub 2,1 above a sub 3,1 }
 ccol { alpha above beta above gamma }
 ccol { a sub 1,3 above a sub 2,3 above a sub 3,3 }
}
right ]
, Space
B sub 3 =
left [
matrix {
 ccol { a sub 1,1 above a sub 2,1 above a sub 3,1 }
 ccol { a sub 1,2 above a sub 2,2 above a sub 3,2 }
 ccol { alpha above beta above gamma }
}
right ]
, Space
...
.EN
.KE

.SE Graficamente
Vediamo graficamente come otteniamo la formula di Cramer
