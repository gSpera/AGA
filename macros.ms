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
\\$*
..

\" Heading
.de CA
.bp
.NH 1
\\$*
.ds CA \\$*
.XS
\\$*
.XE
.PP
.nr EquationCounter 1
..

.de SA
.NH 2
\\$*
.ds CA \\$*
.XS
\(mi \\$*
.XE
.PP
..

.de ST
.SM
\\$1
.LG
\h`-1.2n`
\\$2
.nr EquationCounter 1
..

\" Equation
.nr EquationCounter 1
.de NumberedEquation
.ds EquationString (\*(SN\\n[EquationCounter])
.nr EquationCounter +1
.ds Eq\\$1 \\*[EquationString]
..
