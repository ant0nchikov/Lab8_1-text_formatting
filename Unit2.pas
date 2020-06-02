unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label6: TStaticText;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure ComboBox1Change(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  Counter:integer;
  StrAr,NewStrAr: array of String;
  fl:textfile;
  WS:string;


implementation

{$R *.dfm}

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
if (ComboBox1.ItemIndex=0) then
begin
 Label1.Caption:='��� �����. ������� �����, � ������� ��� ������������� ����.';
end;

if (ComboBox1.ItemIndex=1) then
begin
 Label1.Caption:='� ������ ��� ����� ���������� � ��������� ����. ��������� ������� ���� ����������� � ����� �������, ����� ��������� ����� ������� ����� ��������� � ������ ������ ���������� �����.';
end;
end;

procedure TForm2.Memo1KeyPress(Sender: TObject; var Key: Char);
begin

if GetAsyncKeyState(VK_BACK) <> 0 then
begin
Counter:=Counter-1;
if (Counter <= 0) then
begin
Counter:=0;
end;

end else
begin
inc(Counter);
end;

if (Counter>0) then
begin
Label6.Caption:=inttostr(Counter);
end else
begin
Label6.Caption:='0';
end;
end;

procedure TForm2.RadioButton1Click(Sender: TObject);
var
i,j,a,b,k:integer;
OneTaskText:string;
del:boolean;
begin
OneTaskText:=Memo1.Text;
a:=1;
   Repeat
      b:=a;
      del:=true;
      For j:=a to Length(OneTaskText) do
         If OneTaskText[j]=' ' then
            Break else
            b:=j;
      For j:=a to b do
         For k:=j+1 to b do
            If OneTaskText[j]=OneTaskText[k] then
            begin
               del:=false;
               Break;
            end;
      If del then
         Delete(OneTaskText,a,b-a+2) else
         a:=b+2;
   Until a>=Length(OneTaskText);
Memo2.Text:=OneTaskText;
end;


procedure TForm2.RadioButton2Click(Sender: TObject);
var
i,j,q,len,CountWord:integer;
TwoTaskText,Word,BackSpace:string;
nach, kon: char;
begin
TwoTaskText:=Memo1.Text;
len:=Length(TwoTaskText);
CountWord:=0;
BackSpace:= ' ';
WS:='';
for i:=0 to len do
begin
if TwoTaskText[i] = ' ' then CountWord:=CountWord+1;
end;
CountWord:=CountWord+1;

setlength(StrAr,CountWord);
setlength(NewStrAr,CountWord);

    q:=0;
    i:= 0;

    while i <= len do
        if (((lowercase(TwoTaskText[i]) >= 'a')) and (lowercase(TwoTaskText[i]) <= 'z')) or (((lowercase(TwoTaskText[i]) >= 'A')) and (lowercase(TwoTaskText[i]) <= 'Z')) or (((lowercase(TwoTaskText[i]) >= '�')) and (lowercase(TwoTaskText[i]) <= '�')) or (((lowercase(TwoTaskText[i]) >= '�')) and (lowercase(TwoTaskText[i]) <= '�')) then begin
            Word := lowercase(TwoTaskText[i]);
            i := i + 1;
            while (i <= len) and (((lowercase(TwoTaskText[i]) >= 'a')) and (lowercase(TwoTaskText[i]) <= 'z')) or (((lowercase(TwoTaskText[i]) >= 'A')) and (lowercase(TwoTaskText[i]) <= 'Z')) or (((lowercase(TwoTaskText[i]) >= '�')) and (lowercase(TwoTaskText[i]) <= '�')) or (((lowercase(TwoTaskText[i]) >= '�')) and (lowercase(TwoTaskText[i]) <= '�')) do begin
                Word := Word + lowercase(TwoTaskText[i]);
                i := i + 1;
            end;
            j := 0;
            while (j <= q) and (Word<>StrAr[j]) do
                j := j + 1;
            if j > q then begin
                StrAr[q] := Word;
                q := q + 1;
            end;
        end
        else
            i := i + 1;

NewStrAr[0] := StrAr[0];
  StrAr[0] := '';

  for i := 0 to CountWord-2 do
  begin
   if (NewStrAr[i]<>'') then
   begin
    kon := NewStrAr[i][length(NewStrAr[i])];
    for j := 1 to CountWord-1 do
    begin
      if length(StrAr[j]) > 0 then
      begin
        nach := StrAr[j,1];
        if nach = kon then
        begin
          NewStrAr[i + 1] := StrAr[j];
          StrAr[j] := '';
          break;
        end;
      end;
    end;
    end;
  end;

  for i:=0 to CountWord-1 do
  begin
  WS:= WS + NewStrAr[i] + BackSpace;
  end;

  Memo2.Text:=WS;

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
Counter:=0;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
var
inputfile:textfile;
str,str1:string;
begin
if opendialog1.Execute then
AssignFile(inputfile, openDialog1.FileName);
reset (inputfile);
while not Eof(inputfile) do
begin
readln (inputfile,str);
str1:=str1 + str + ' ';
end;

Memo1.Text:=str1;

end;

procedure TForm2.BitBtn2Click(Sender: TObject);
var output:textfile;
    i:integer;
begin
 if savedialog1.Execute then
 begin
 assignfile (output,savedialog1.FileName);
 Rewrite(output);
 Writeln(output, WS);
 closefile(output);
 end;

end;

end.
