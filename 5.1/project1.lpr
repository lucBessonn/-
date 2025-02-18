program project1;

var a,b,z,a1,b1,z1,n,sum,eps:extended;
  i:integer;
  function ryad(a,b,z,eps:extended):extended;
begin
z1:=z;
a1:=a;
b1:=b;
repeat begin
sum:=sum+a1/b1*z1/n;
a1:=a1*(a+i);
b1:=b1*(b+i);
z1:=z1*z;
n:=n*(i+1);
i:=i+1;
//writeln(sum);
end
until abs(sum-exp(z))<eps;
result:=sum;
end;


begin
sum:=1;
n:=1;
i:=1;
write('a=');
readln(a);
write('b=');
readln(b);
write('z=');
readln(z);
write('eps=');
readln(eps);
writeln('f=',ryad(a,b,z,eps));
writeln('i=',i);
 writeln('e^z=',exp(z));
 readln;
end.
