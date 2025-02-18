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
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  a,b,c,d,r1,r2:double;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  a:=strToFloat(edit1.text);
  b:=strToFloat(edit2.text);
  Edit3.Text:=edit1.text;
  Edit4.Text:=edit2.text;
  r1:=a-b;
  Edit5.Text:=floattostr(r1);
  r2:=a+b;
  Edit6.Text:=floattostr(r2);
  c:=a/b;
  Edit7.Text:=floattostr(c);
  Memo1.lines.add('a=');
  Memo1.lines.add(edit3.text);
  Memo1.lines.add('b=');
  Memo1.lines.add(edit4.text);
  Memo1.lines.add('r1=');
  Memo1.lines.add(edit5.text);
  Memo1.lines.add('r2=');
  Memo1.lines.add(edit6.text);
  Memo1.lines.add('r3=');
  Memo1.lines.add(edit7.text);

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

end.

