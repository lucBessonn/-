unit Figures;

{$mode delphi}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs;
type
    tFigure=
      class
           x,y: integer;
           procedure show();virtual;
           procedure hide();virtual;
           procedure moveTo(newX,newY:Integer);
           constructor create(x,y:Integer);
           destructor destroy(); override;
      end;

    tDot=
      class(tFigure)
           procedure show();override;
           procedure hide();override;
      end;

    tCircle=
      class(tFigure)
           r: integer;
           procedure show();override;
           procedure hide();override;
           constructor create(x,y,r:Integer);
      end;

implementation
procedure tFigure.show();
begin
  showMessage('figure show');
end;

procedure tFigure.hide();
begin
  showMessage('figure hide');
end;


procedure tFigure.moveTo(newX,newY:Integer);
begin
  hide();
  self.x:=newX;
  self.y:=newY;
  show();
  showMessage('move to newx newy');
end;

procedure tDot.show();
begin
  showMessage('Dot show');
end;

procedure tDot.hide();
begin
     showMessage('dot hide');
end;


procedure tCircle.show();
begin
     showMessage('circle show');
end;

procedure tCircle.hide();
begin
     showMessage('circle hide')
end;

constructor tFigure.create(x,y:Integer);
begin
  inherited create();
  self.x:=x;
  self.y:=y;
end;

constructor tCircle.create(x,y,r:integer);
begin
   inherited create(x,y);
  self.r:=r;
end;

destructor tFigure.destroy();
begin
  hide;
  inherited;
end;

end.
