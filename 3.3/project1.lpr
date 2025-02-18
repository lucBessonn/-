program project1;

var a,b,z,a1,b1,z1,n,sum:extended;
  i:integer;
  function ryad(a,b,z:extended):extended;
begin
z1:=z;
a1:=a;
b1:=b;
for i:=1 to 3
do begin
sum:=sum+a1/b1*z1/n;
a1:=a1*(a+i);
b1:=b1*(b+i);
z1:=z1*z;
n:=n*(i+1);
end;
result:=sum;
end;


begin
sum:=1;
n:=1;
write('a=');
readln(a);
write('b=');
readln(b);
write('z=');
readln(z);
writeln('f=',ryad(a,b,z));
writeln('i=',i);
 writeln('e^z=',exp(z));
 readln;
end.
