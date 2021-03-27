\" Macros file

\" Font
.fp 10 M DJVM

\" Strings
.ds TOC Indice

\" Cite
\" - Start
.de CS
.in +0.3i
.B1
..
\" - End
.de CE
.in -0.3i
.RD
\(em \\$1
.DE
.B2
..


\" Foot
.de FT
\**
.FS
..

\" Bulletted list
.de LI
.IP \(bu
..

\" Heading
.de CA
.bp
.NH 1
\\$*
.XS
\\$*
.XE
.PP
..

.de SA
.NH 2
\\$*
.XS
\(mi \\$*
.XE
.PP
..

