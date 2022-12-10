
f:{[]
	l:raze each asc each "H"$"-"vs/:'"," vs/:read0`$":./4_1_input.txt";
	x1:l[;0];
	y1:l[;1];
	x2:l[;2];
	y2:l[;3];
	(sum(((x1<=x2)&y1>=y2))|(x1=x2)&y1<=y2;sum (x1<=x2)&x2<=y1)
	}

q)\ts:1000 f[]
1459 336704
