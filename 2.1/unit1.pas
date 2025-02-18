unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);

    procedure Edit1Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);

    procedure Label11Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);

    procedure Label1Click(Sender: TObject);

    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);

    procedure Memo1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  a1,r1,b1,r2,r3:extended;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label1Click(Sender: TObject);
begin

end;





procedure TForm1.Label5Click(Sender: TObject);
begin

end;

procedure TForm1.Label6Click(Sender: TObject);
begin

end;

procedure TForm1.Label7Click(Sender: TObject);
begin

end;





procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  a1:=strToFloat(edit1.text);
  b1:=pi/2-a1;
  r2:=cos(a1);
  r3:=sin(b1);
  Edit3.Text:=floattostr(b1);
  Edit4.Text:=floattostr(r2);
  Edit5.Text:=floattostr(r3);
  Edit6.Text:=floattostr(r2-r3);
  Edit7.Text:=floattostr(r2*r2-r3*r3);

end;



procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Edit3Change(Sender: TObject);
begin

end;



procedure TForm1.Label11Click(Sender: TObject);
begin

end;

procedure TForm1.Label12Click(Sender: TObject);
begin

end;





end.

