/ stk:4#s:read0`:./sample.txt;
/stack:reverse each("I"$"  "vs last stk)!l@' where each not null l:l where any each (l:flip[-1_stk])in .Q.A;
/ t:flip`c`s`t!flip"I"$(" "vs/:5_s)[;1 3 5];

f:{
	stk:9#s:read0`:./5_1_input.txt;
	stack:reverse each("I"$"  "vs last stk)!l@' where each not null l:l where any each (l:flip[-1_stk])in .Q.A;
	t:flip`c`s`t!flip"I"$(" "vs/:10_s)[;1 3 5];

	({[stack;dir] stack[s,t]:(n _ st;stack[t:dir`t],reverse(n:neg dir`c)#st:stack s:dir[`s]);stack}/[stack;t];
		{[stack;dir] stack[s,t]:(n _ st;stack[t:dir`t],(n:neg dir`c)#st:stack s:dir[`s]);stack}/[stack;t])
	}

q)\ts:1000 f[]
1276 211072