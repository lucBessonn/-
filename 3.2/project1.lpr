program project1;
var r:extended; n,j:integer;
      begin
 write('enter n');
      readln(n);
      r:=1;
      j:=1;
      while j<=n
            do
             begin
            r:=r*j;
            j:=j+1 ;
            end;
      writeln(n,'!=', r);
      readln(n);
end.
