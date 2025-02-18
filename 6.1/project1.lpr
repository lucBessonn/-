program project1;
 var k:integer;
   x:extended;
      procedure f1(x:extended);
      begin
            writeln('f1(',x,')=',2*x+5);
      end;
procedure f2(x:extended);
      begin
            writeln('f2(',x,')=',x-3*x-7);
      end;
procedure f3(x:extended);
      begin
            writeln('f3(',x,')=',x*sin(2*x+5)/7+1);
      end;
procedure f4(x:extended);
      begin
            writeln('f4(',x,')=',sqrt(x));
      end;

begin
      k:=1;
      while k>0
               do
            begin
                  writeln(' ');
                  writeln(' ');
                  writeln('enter x');
                  readln(x);
                   f1(x);
                   f2(x);
                   f3(x);
                   f4(x);


            end;


        end.


