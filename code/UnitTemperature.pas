unit UnitTemperature;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmTemperature = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Edt1: TEdit;
    RdBtnC: TRadioButton;
    RdBtnF: TRadioButton;
    RdBtnK: TRadioButton;
    ChcBxC: TCheckBox;
    ChcBxF: TCheckBox;
    Lbl1: TLabel;
    ChcBxK: TCheckBox;
    BtnConv: TButton;
    LblC: TLabel;
    LblF: TLabel;
    LblK: TLabel;
    procedure BtnConvClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTemperature: TFrmTemperature;
  C, F, K: Real;

implementation

{$R *.dfm}

procedure TFrmTemperature.BtnConvClick(Sender: TObject);
begin
  if (RdBtnC.Checked = True) then
    begin
      C:= StrToFloat(Edt1.Text);

      F:= (C*1.8)+32;
      K:= C+273;

      if ChcBxC.Checked = True then
        begin
          LblC.Caption:= FloatToStr(C)+' °C'
        end
      else
        begin
          LblC.Caption:= '';
        end;

      if ChcBxF.Checked = True then
        begin
          LblF.Caption:= FloatToStr(F)+' °F'
        end
      else
        begin
          LblF.Caption:= '';
        end;

      if ChcBxK.Checked = True then
        begin
          LblK.Caption:= FloatToStr(K)+' K'
        end
      else
        begin
          LblK.Caption:= '';
        end;

    end
  else
    begin
      if RdBtnF.Checked = True then
        begin
          F:= StrToFloat(Edt1.Text);

          C:= (F-32)/1.8;
          K:= C+273;

          if ChcBxC.Checked = True then
            begin
             LblC.Caption:= FloatToStr(C)+' °C'
            end
          else
            begin
             LblC.Caption:= '';
            end;

          if ChcBxF.Checked = True then
            begin
             LblF.Caption:= FloatToStr(F)+' °F'
            end
          else
            begin
             LblF.Caption:= '';
            end;

          if ChcBxK.Checked = True then
            begin
              LblK.Caption:= FloatToStr(K)+' K'
            end
          else
            begin
              LblK.Caption:= '';
            end;
        end
      else
        begin
          if RdBtnK.Checked = True then
            begin
              K:= StrToFloat(Edt1.Text);

              C:= K-273;
              F:= (C-32)/1.8;

              if ChcBxC.Checked = True then
                begin
                  LblC.Caption:= FloatToStr(C)+' °C'
                end
              else
                begin
                  LblC.Caption:= '';
                end;

              if ChcBxF.Checked = True then
                begin
                  LblF.Caption:= FloatToStr(F)+' °F'
                end
              else
                begin
                  LblF.Caption:= '';
                end;

              if ChcBxK.Checked = True then
                begin
                  LblK.Caption:= FloatToStr(K)+' K'
                end
              else
                begin
                  LblK.Caption:= '';
                end;
            end;
        end;
    end;
end;

procedure TFrmTemperature.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Edt1.Text:='';
  LblC.Caption:='';
  LblF.Caption:='';
  LblK.Caption:='';
  C:= 0;
  F:= 0;
  K:= 0;
end;

end.
