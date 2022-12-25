enl:enlist
f:{[x;i](|/)(min')each{[x;y;z;f]x[z]>x y where f[y;z]}[x;i]'[i]'[(>;<)]}
f3:{[x;i]{[e;x;y;z]if[z in e;:1b];min(|/')z cut x[z]>x y except z}[(min;max)@\:i;x;i]'[i]}
v:{[f;input]
    sum sum f[;i]'[input]|flip f[;i:til count first input] each flip input
    }

/
q)\ts:1000 v[f] read0`:./8_1_input.txt
36677 65456
\ 


g:{[x;i]
    e:max i;
    m:{[x;y;z;f]f[1][x[z]>x y where f[0][y;z]]}[x;i]'[i except (0;e)];
    (*/)e&1|({$[not[all x]&((c:count[x]>1)&max[x til r])|(1b=x 1+r:?[x;0b]);1+r;r]}')each(m@[(>;::)];m@[(<;reverse)])
    }

w:{[f;input]
    r:(z0,'f[;i]'[input],'z0)*z,(flip f[;i:til count first input]'[flip input]),z:enl z0:(count input)#0;
    max max each r
    }

/
q)\ts:1000 w[g]read0`:./8_1_input.txt
86228 321472
\