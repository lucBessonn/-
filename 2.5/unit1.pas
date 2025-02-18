unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
   Memo1.Lines.Clear;
  if (CheckBox1.checked) then
       Memo1.Lines.Add('Checkbox1 checked')
  else
       Memo1.Lines.Add('Checkbox1 not checked');
  if (CheckBox2.checked) then
       Memo1.Lines.Add('Checkbox2 checked')
  else
       Memo1.Lines.Add('Checkbox2 not checked');
  if (CheckBox3.checked) then
       Memo1.Lines.Add('Checkbox3 checked')
  else
       Memo1.Lines.Add('Checkbox3 not checked');

  Memo1.Lines.Add('');

  if (RadioButton1.checked) then
       Memo1.Lines.Add('Radiobutton1 checked')
  else
       Memo1.Lines.Add('Radiobutton1 not checked');
  if (RadioButton2.checked) then
       Memo1.Lines.Add('Radiobutton2 checked')
  else
       Memo1.Lines.Add('Radiobutton2 not checked');
  if (RadioButton3.checked) then
       Memo1.Lines.Add('Radiobutton3 checked')
  else
       Memo1.Lines.Add('Radiobutton3 not checked');
  Memo1.Lines.Add('');
  radiogroup1.Items.;
  Memo1.Lines.Add('RadioGroup1.ItemIndex = ' + FloatTostr(RadioGroup1.ItemIndex));
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin

end;

end.

