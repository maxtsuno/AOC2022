
q)\ts:1000 {[x;y]if[4=count distinct 4 sublist y _ x;:y+4];.z.s[x;y+1]}[first read0`:./6_1_input.txt;0]
1584 150000
q)\ts:1000 {{[x;y]$[14=count distinct 14 sublist y _ x;:(`success;y+14);y=count x;:(`fail;y);.z.s[x;y+1]]}[x;0]}each 1000 cut t
3262 86944
