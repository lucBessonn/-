program project1;
const n=2;
type ta=array[1..n,1..n] of integer;
var i,k,j:integer;
  A,B,C:ta;
  procedure mat(var M:ta);
  begin
    i:=length(M);
    j:=length(M[1]);
    begin
    for i:=1 to n
 do for j:=1 to n
    do
     begin
      write('M[',i,',',j,']=');
      readln(M[i,j]);
     end;
  end;


      end;

      begin
          writeln('enter A');
          mat(A);
          writeln('enter B');
          mat(B);
           for i:=1 to n
 do for j:=1 to n
    do
     begin
      for k:=1 to n
         do  C[i,j]:=C[i,j]+A[i,k]*B[k,j];

     end;
for i:=1 to n
 do for j:=1 to n
    do
     begin
      write('C[',i,',',j,']=',C[i,j],' ');

     end;
          readln;
  end.

