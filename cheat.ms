\" Cheat Sheet for MS macros
.so macros.ms
.AM
.ds LF Left Foot LF string
.ds CF Center Foot CF string
.ds RF Right Foot RF string %
.TL
Titolo .TL
.AU 
Author .AU

\".2C

.CA Title
Chapter: .CA Title

.SA Sub-chapter / Section
Section: .SA Title

.PP
Paragraph 
.I .PP
Indented
.LP
Paragraph
.I LP
.I Not "" (
indented)

.SA "Text empashis"
.PP
Text in
.B bold
with 
.I .B .
Text in
.I italic
with
.I .I .
Text in 
.UL underline
with
.I .UL .
Text in
.LG
Larger
.NL
with
.I .LG
and
.I .NL .
Text in
.SM
Smaller
.NL
with
.I .SM .
and
.I .NL .
Text in
.BX Box
with
.I .BX .
Text in
.CW "Costant width"
with
.I .CW .
Content in foot
.FT
This is the foot content.
.FE

.SA Cite
.PP
Lorem ipsum dolorm sit amet
Some posit the hopping
lunchroom to be less than unblessed. A conifer is a kitten from the right perspective. Unfortunately, that is wrong; on the contrary, an example is the subway of a banana.
.CS
In ancient times few can name a bosker server that isn't a dingbats zone. Those heights are nothing more than hills. Some posit the quaggy melody to be less than unversed. Authors often misinterpret the cause as an uptown form, when in actuality it feels more like a wizen Thursday.
.CE "Lorem Ipsum"
Few can name a yarer help that isn't a leachy dungeon. The errant date comes from an uncursed rise. In modern times a sarcoid cork is a badge of the mind. Ethiopias are folded menus. One cannot separate chives from sighted peaks.
.SA Bullet list
.PP
.IP \(bu 
Bullet list
.IP \(bu 
Use
.I ".IP [marker]" .
.IP \(bu
.I ".IP \e(bu"
bulletting lists.
.LI
Or use
.I ".LI"

.SA Align and decoration
.LP
.BD
Centered text, with
.I .BD
.DE

.RD
Right aligned text, with
.I .RD
.DE

.BD

.B1
Text in box 
.I .B1
and
.I .B2
.B2

.CA Graph
.LP
.CW
define point { circle rad 0.01 fill 1 $1 above }

circlerad = 0.15

Q1: circle "Circle" "+" "Q1" at (-1,0)
Q2: circle "-" at (1,0)
Q3: circle "-" at (0,1)

line "from Q1" "to Q2" from Q1 to Q2 chop
line from Q1 to Q3 chop
line from Q2 to Q3 chop

point("Point") at (0, 0.5)
.R

.PS
define point { circle rad 0.01 fill 1 $1 above }
circlerad = 0.15
Q1: circle "Circle" "+" "Q1" at (-1,0)
Q2: circle "-" at (1,0)
Q3: circle "-" at (0,1)
line "from Q1" "to Q2" from Q1 to Q2 chop
line from Q1 to Q3 chop
line from Q2 to Q3 chop

point("Point") at (0, 0.5)

.PE

.TC
