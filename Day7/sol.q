/

Here, there are four directories: / (the outermost directory), a and d (which are in /), and e (which is in a). These directories also contain files of various sizes.

Since the disk is full, your first step should probably be to find directories that are good candidates for deletion. To do this, you need to determine the total size of each directory. The total size of a directory is the sum of the sizes of the files it contains, directly or indirectly. (Directories themselves do not count as having any intrinsic size.)

The total sizes of the directories above can be found as follows:

The total size of directory e is 584 because it contains a single file i of size 584 and no other directories.
The directory a has total size 94853 because it contains files f (size 29116), g (size 2557), and h.lst (size 62596), plus file i indirectly (a contains e which contains i).
Directory d has total size 24933642.
As the outermost directory, / contains every file. Its total size is 48381165, the sum of the size of every file.
To begin, find all of the directories with a total size of at most 100000, then calculate the sum of their total sizes. In the example above, these directories are a and e; the sum of their total sizes is 95437 (94853 + 584). (As in this example, this process can count files more than once!)

Find all of the directories with a total size of at most 100000. What is the sum of the total sizes of those directories?
\ 

getnumstr:{x where x in "0123456789"}
getnum:{"I"$getnumstr x}
chk:{[e;x]x,$[any m:e like x,"*";string 1i+max getnum each string e where m;"0"]}
total:{
    tot:$[0b=max m:-6h=type each x;0;sum x where m];
    if[count a:x where not m;tot+:sum .z.s each dirs a];
    tot
    }
f:{[input]
    dirs::1#.q; / Set up global
    {   if[".."~k:5_first x;:()];
        k:chk[d:key dirs;k];
        dirs[nk]:{[e;nk;x]$["dir"~3#x;`$chk[e,nk;4_x];getnum x]}[d;nk:`$k]each 2_x
        }each where[input like"$ cd*"]cut input;

    total each 2_dirs
    }
f1:{[input]sum r where 100000>=(`$"/0")_r:f input}


    
    