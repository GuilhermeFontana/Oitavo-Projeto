unit UnitInvestment;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmInvestment = class(TForm)
    GroupBox1: TGroupBox;
    EdtVal: TEdit;
    EdtMonth: TEdit;
    LblVal: TLabel;
    LblMonth: TLabel;
    LblPer: TLabel;
    BtnCalc: TButton;
    LblFVal: TLabel;
    ScBarPorc: TScrollBar;
    LblPorc: TLabel;
    CkBoxPorc: TCheckBox;
    procedure BtnCalcClick(Sender: TObject);
    procedure ScBarPorcChange(Sender: TObject);
    procedure CkBoxPorcClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInvestment: TFrmInvestment;
  IVal, Percent, ValPer, Proc, FVal: Real;
  Month: Integer;

implementation

{$R *.dfm}

procedure TFrmInvestment.BtnCalcClick(Sender: TObject);
begin
  IVal:= StrToFloat(EdtVal.Text);
  Month:= StrToInt(EdtMonth.Text);
  ValPer:= ScBarPorc.Position;

  Proc:= (IVal*Month*ValPer);
  FVal:= Proc+IVal;

  LblFVal.Caption:= FloatToStr(FVal)


end;

procedure TFrmInvestment.CkBoxPorcClick(Sender: TObject);
var
  Aux: Integer;
begin
  if CkBoxPorc.Checked=true then
    begin
      Aux:= StrToInt(InputBox('Informe o percengtrual do juro','%',''));
      ScBarPorc.Max:=Aux;
      ScBarPorc.Position:= Aux
    end
  else
    begin
      ScBarPorc.Max:=100;
      ScBarPorc.Position:= 0
    end;

end;

procedure TFrmInvestment.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EdtVal.Text:='';
  EdtMonth.Text:='';
  CkBoxPorc.Checked:= false;
  IVal:= 0;
  Percent:= 0 ;
  ValPer:= 0;Proc:= 0;
  FVal:= 0;
end;

procedure TFrmInvestment.ScBarPorcChange(Sender: TObject);
begin
  LblPorc.Caption:= IntToStr(ScBarPorc.Position)+'%'

end;

end.
