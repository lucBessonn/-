unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls, Figures;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  x,y,newX,newY,r:integer;
  figure1:tFigure;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
    figure1.destroy();
    Form1.Label1.Caption:='фигура уничтожена';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  x:=1;
  y:=1;
  r:=1;
  figure1:=tDot.create(x,y);
  Form1.Label1.Caption:='фигура создана ('+FloatToStr(x)+','+FloatToStr(y)+')';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  figure1.show();
  Form1.Label1.Caption:='точка находится в '+FloatToStr(x)+','+FloatToStr(y);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  figure1.hide();
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  newX:=StrToInt(Edit1.text);
  newY:=StrToInt(Edit2.text);
  figure1.moveTo(newX,newY);
  Form1.Label1.Caption:='точка перемещена в '+Edit1.text+' '+Edit2.text;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  x:=0;
  y:=0;
  figure1:=tCircle.create(x,y,r);
  Form1.Label1.Caption:='фигура создана ('+FloatToStr(x)+','+FloatToStr(y)+')';
end;

end.

