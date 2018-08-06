unit UnitMoney;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmMoney = class(TForm)
    EdtV: TEdit;
    RdBtnR: TRadioButton;
    RdBtnD: TRadioButton;
    RdBtnE: TRadioButton;
    GroupBox2: TGroupBox;
    ChcBxR: TCheckBox;
    ChcBxD: TCheckBox;
    ChcBxE: TCheckBox;
    BtnCov: TButton;
    GroupBox3: TGroupBox;
    LblR: TLabel;
    LblD: TLabel;
    LblE: TLabel;
    GroupBox1: TGroupBox;
    LblV: TLabel;
    LblInf: TLabel;
    RdBtnBit: TRadioButton;
    ChcBxBit: TCheckBox;
    LblBit: TLabel;
    procedure BtnCovClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMoney: TFrmMoney;
  Eur, Dol, Rea, Bit: Real;

implementation

{$R *.dfm}

procedure TFrmMoney.BtnCovClick(Sender: TObject);
begin
  if RdBtnR.Checked = True then
    begin
      Rea:= StrToFloat(EdtV.text);


      Rea:= Rea;
      Dol:= Rea*3.68;
      Eur:= Rea*4.28;
      Bit:= Rea*0.00003580;


      if ChcBxR.Checked = True then
        begin
          LblR.Caption:= 'R$  '+FloatToStr(Rea)
        end
      else
        begin
          LblR.Caption:= '';
        end;

      if ChcBxD.Checked = True then
        begin
          LblD.Caption:= 'US$ '+FloatToStr(Dol)
        end
      else
        begin
          LblD.Caption:= '';
        end;

      if ChcBxE.Checked = True then
        begin
          LblE.Caption:= '€ '+FloatToStr(Eur)
        end
      else
        begin
          LblE.Caption:= '';
        end;

      if ChcBxBit.Checked = True then
        begin
          LblBit.Caption:= 'BTC '+FloatToStr(Bit);
        end
       else
        begin
          LblBit.Caption:= '';
        end;

    end
  else
    begin
      if RdBtnD.Checked = True then
        begin
          Dol:= StrToFloat(EdtV.text);


          Rea:= Dol*0.28;
          Dol:= Dol;
          Eur:= Dol*1.17;
          Bit:= Dol*0.000137;


          if ChcBxR.Checked = True then
            begin
              LblR.Caption:= 'R$  '+FloatToStr(Rea)
            end
          else
            begin
              LblR.Caption:= '';
            end;

          if ChcBxD.Checked = True then
            begin
              LblD.Caption:= 'US$ '+FloatToStr(Dol)
            end
          else
           begin
             LblD.Caption:= '';
           end;

          if ChcBxE.Checked = True then
            begin
              LblE.Caption:= '€ '+FloatToStr(Eur)
            end
          else
            begin
              LblE.Caption:= '';
            end;

          if ChcBxBit.Checked = True then
            begin
              LblBit.Caption:= 'BTC '+FloatToStr(Bit);
            end
          else
            begin
              LblBit.Caption:= '';
            end;

        end
      else
        begin
          if RdBtnE.Checked = True then
            begin
              Eur:= StrToFloat(EdtV.text);


              Rea:= Eur*0.24;
              Dol:= Eur*0.86;
              Eur:= Eur;
              Bit:= Eur*0.00016;

              if ChcBxR.Checked = True then
                begin
                  LblR.Caption:= 'R$  '+FloatToStr(Rea)
                end
              else
                begin
                  LblR.Caption:= '';
                end;

              if ChcBxD.Checked = True then
                begin
                  LblD.Caption:= 'US$ '+FloatToStr(Dol)
                end
              else
                begin
                  LblD.Caption:= '';
                end;

              if ChcBxE.Checked = True then
                begin
                  LblE.Caption:= '€ '+FloatToStr(Eur)
                end
              else
                begin
                  LblE.Caption:= '';
                end;

              if ChcBxBit.Checked = True then
                begin
                  LblBit.Caption:= 'BTC '+FloatToStr(Bit);
                end
              else
                begin
                  LblBit.Caption:= '';
                end;


            end
          else
            begin
              if RdBtnBit.Checked = True then
                begin
                  Bit:= StrToFloat(EdtV.text);

                  Bit:= Bit;
                  Rea:= Bit * 26615.45;
                  Eur:= Bit*6255.06;
                  Dol:= Bit*7270.00;

                  if ChcBxR.Checked = True then
                    begin
                      LblR.Caption:= 'R$  '+FloatToStr(Rea)
                    end
                  else
                    begin
                      LblR.Caption:= '';
                    end;

                  if ChcBxD.Checked = True then
                    begin
                      LblD.Caption:= 'US$ '+FloatToStr(Dol)
                    end
                  else
                    begin
                      LblD.Caption:= '';
                    end;

                  if ChcBxE.Checked = True then
                    begin
                      LblE.Caption:= '€ '+FloatToStr(Eur)
                    end
                  else
                    begin
                      LblE.Caption:= '';
                    end;

                  if ChcBxBit.Checked = True then
                    begin
                      LblBit.Caption:= 'BTC '+FloatToStr(Bit);
                    end
                  else
                    begin
                      LblBit.Caption:= '';
                    end;
                end;


            end;
        end;
    end;

end;

procedure TFrmMoney.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 LblV.Caption:='';
 EdtV.Text:='';
end;

initialization
Eur:= 0;
Dol:= 0;
Rea:= 0;
Bit:= 0;

end.



