unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, Figures;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  x,y,newX,newY,newX2,newY2,r,x2,y2:integer;
  figure1:tFigure;
  owningList:tListOfFigures;
  numberOfDot:Integer;
numberOfCircle:Integer;
numberOfEllipse:Integer;
numberOfSquare:Integer;
numberOfRectangle:Integer;
numberOfLine:Integer;
listOfFigures:tListOfFigures;


implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
    figure1.destroy();

end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  figure1:=tEllipse.create(x,y,x2,y2,Form1.Canvas, owningList);
  numberOfEllipse:=numberOfEllipse+1;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  figure1:=tDot.create(x,y,Form1.Canvas, owningList);
  numberOfDot:=numberOfDot+1;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  figure1.show();
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  figure1.hide();
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  newX:=StrToInt(Edit1.text);
  newY:=StrToInt(Edit2.text);
  newX2:=StrToInt(Edit3.text);
  newY2:=StrToInt(Edit4.text);
  figure1.moveTo(newX,newY,newX2,newY2);

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  figure1:=tCircle.create(x,y,r,Form1.Canvas, owningList);
  numberOfCircle:=numberOfCircle+1;

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  figure1:=tLine.create(x,y,x2,y2,Form1.Canvas, owningList);
  numberOfLine:=numberOfLine+1
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  figure1:=tSquare.create(x,y,r,Form1.Canvas, owningList);
  numberOfSquare:=numberOfSquare+1;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  figure1:=tRectangle.create(x,y,x2,y2,Form1.Canvas, owningList);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Edit3Change(Sender: TObject);
begin

end;

procedure TForm1.Label4Click(Sender: TObject);
begin

end;

procedure TForm1.Button12Click(Sender: TObject);
begin
     listOfFigures:=tListOfFigures.create(form1.Canvas);
     numberOfDot:=1;
     numberOfCircle:=1;
     numberOfEllipse:=1;
     numberOfSquare:=1;
     numberOfRectangle:=1;
end;




end.

