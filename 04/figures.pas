unit Figures;

{$mode delphi}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs;
type

    tListOfFigures = class;




    tFigure=
      class
           x,y,x2,y2: integer;
           canvas:tCanvas;
           owningList:tListOfFigures;
           procedure show();virtual;abstract;
           procedure hide();virtual;abstract;
           procedure moveTo(newX,newY,newX2,newY2:Integer);
           constructor create(x,y:Integer; canvas:tCanvas; owningList:tListOfFigures);
           destructor destroy(); override;
      end;

    tDot=
      class(tFigure)
           procedure show();override;
           procedure hide();override;
      end;
    tLine=
      class(tFigure)
           procedure show();override;
           procedure hide();override;
           constructor create(x,y,x2,y2:Integer; canvas:tCanvas; owningList:tListOfFigures);
      end;

    tCircle=
      class(tFigure)
           r: integer;
           procedure show();override;
           procedure hide();override;
           constructor create(x,y,r:Integer; canvas:tCanvas; owningList:tListOfFigures);
      end;
    tSquare=
      class(tFigure)
           r: integer;
           procedure show();override;
           procedure hide();override;
           constructor create(x,y,r:Integer; canvas:tCanvas; owningList:tListOfFigures);
      end;

    tRectangle=
      class(tFigure)
           x2,y2:integer;
           procedure show();override;
           procedure hide();override;
           constructor create(x,y,x2,y2:Integer; canvas:tCanvas; owningList:tListOfFigures);
      end;
    tEllipse=
    class(tFigure)
           x2,y2:integer;
           procedure show();override;
           procedure hide();override;
           constructor create(x,y,x2,y2:integer; canvas:tCanvas; owningList:tListOfFigures);
    end;

    tpNode=^tNode;

    tNode = record
    figure:tFigure;
    pPrevious:tpNode;
    end;

   tListOfFigures=
      class
           numberOfFigures:Integer;
           pLastNode:tpNode;
           canvas:tCanvas;
           constructor create(canvas:tCanvas);
           destructor destroy();
           procedure add(fig:tFigure);
           procedure delete();
      end;








implementation


procedure tFigure.moveTo(newX,newY,newX2,newY2:Integer);
begin
  hide();
  self.x:=newX;
  self.y:=newY;
  self.X2:=X2;
  self.y2:=Y2;
  show();
  showMessage('move to newx newy');
end;

procedure tDot.show();
begin
  canvas.Pixels[x,y]:=clBlack;
end;

procedure tDot.hide();
begin
     canvas.Pixels[x,y]:=clWhite;
end;


procedure tCircle.show();
begin
  canvas.Brush.Color:=clBlack;
  canvas.Pen.Color:=clBlack;
  canvas.Ellipse(x-r,y-r,x+r,y+r);
end;

procedure tCircle.hide();
begin
  canvas.Brush.Color:=clWhite;
  canvas.Pen.Color:=clWhite;
  canvas.Ellipse(x-r,y-r,x+r,y+r);
end;

constructor tFigure.create(x,y:Integer; canvas:tCanvas; owningList:tListOfFigures);
begin
  inherited create();
  self.x:=x;
  self.y:=y;
  self.canvas:=canvas;
  self.owningList:=owningList;
  owningList.add(self);
end;

constructor tCircle.create(x,y,r:integer; canvas:tCanvas; owningList:tListOfFigures);
begin
   inherited create(x,y,canvas, owningList);
  self.r:=r;
end;

constructor tLine.create(x,y,x2,y2:integer; canvas:tCanvas; owningList:tListOfFigures);
begin
  inherited create(x,y,canvas, owningList);
  self.x2:=x2;
  self.y2:=y2;
end;

procedure tLine.show();
begin
  canvas.Brush.Color:=clBlack;
  canvas.Pen.Color:=clBlack;
  canvas.Line(x,y,x+x2,y+y2);
end;


procedure tLine.hide();
begin
  canvas.Brush.Color:=clWhite;
  canvas.Pen.Color:=clWhite;
  canvas.Line(x,y,x+x2,y+y2);
end;

constructor tEllipse.create(x,y,x2,y2:integer; canvas:tCanvas; owningList:tListOfFigures);
begin
  inherited create(x,y,canvas, owningList);
  self.x2:=x2;
  self.y2:=y2;
end;


procedure tEllipse.show();
begin
  canvas.Brush.Color:=clBlack;
  canvas.Pen.Color:=clBlack;
  canvas.Ellipse(x,y,x2,y2);
end;


procedure tEllipse.hide();
begin
  canvas.Brush.Color:=clWhite;
  canvas.Pen.Color:=clWhite;
  canvas.Ellipse(x,y,x2,y2);
end;

constructor tSquare.create(x,y,r:integer; canvas:tCanvas; owningList:tListOfFigures);
begin
  inherited create(x,y,canvas, owningList);
  self.r:=r;
end;

procedure tSquare.show();
begin
  canvas.Brush.Color:=clBlack;
  canvas.Pen.Color:=clBlack;
  canvas.rectangle(x-r,y-r,x+r,y+r);
end;

procedure tSquare.hide();
begin
  canvas.Brush.Color:=clWhite;
  canvas.Pen.Color:=clWhite;
  canvas.rectangle(x-r,y-r,x+r,y+r);
end;

constructor tRectangle.create(x,y,x2,y2:integer; canvas:tCanvas; owningList:tListOfFigures);
begin
  inherited create(x,y,canvas, owningList);
  self.x2:=x2;
  self.y2:=y2;
end;

procedure tRectangle.show();
begin
  canvas.Brush.Color:=clBlack;
  canvas.Pen.Color:=clBlack;
  canvas.rectangle(x,y,x2,y2);
end;

procedure tRectangle.hide();
begin
  canvas.Brush.Color:=clWhite;
  canvas.Pen.Color:=clWhite;
  canvas.rectangle(x,y,x2,y2);
end;


destructor tFigure.destroy();
begin
  hide();
  inherited;
end;


constructor tListOfFigures.create(canvas:tCanvas);
begin
  inherited create();
  self.canvas:=canvas;
  pLastNode:=nil;
  canvas.Brush.Color:=clwhite;
  numberOfFigures:=0;
end;

procedure tListOfFigures.add(fig:tFigure);
  var pCurrent:tpNode;
  begin
       pCurrent:=new(tpNode);
       pCurrent^.figure:=fig;
       fig.owningList:=self;
       pCurrent^.pPrevious:=pLastNode;
       pLastNode:=pCurrent;
       fig.show();
numberOfFigures:=numberOfFigures+1;
end;

procedure tListOfFigures.delete();
var lastNode:tNode;
begin
lastNode:=pLastNode^;
lastNode.figure.destroy();
dispose(pLastNode);
pLastNode:=lastNode.pPrevious;
numberOfFigures:=numberOfFigures-1;
end;

destructor tListOfFigures.destroy();
var pCurrent:tpNode;
begin
while pLastNode<>nil do
begin
pCurrent:=pLastNode;
pCurrent^.figure.destroy();
pLastNode:=pCurrent^.pPrevious;
dispose(pCurrent);
end;
inherited;
end;







end.
