unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Imaging.jpeg, UnitCalcu, UnitMoney,
  UnitTemperature, UnitTime, UnitInvestment, Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    ImgCalcu: TImage;
    ImgTmp: TImage;
    ImgInvst: TImage;
    ImgMny: TImage;
    ImgTime: TImage;
    procedure ImgCalcuClick(Sender: TObject);
    procedure ImgMnyClick(Sender: TObject);
    procedure ImgTmpClick(Sender: TObject);
    procedure ImgTimeClick(Sender: TObject);
    procedure ImgInvstClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.ImgCalcuClick(Sender: TObject);
begin
  ShowMessage('INSTRUCTIONS'+#13+#13+
              '"B" close the calculator'+#13+
              '"C"(uppercase) clean the calculator'+#13+
              '"c" (lowercase) clean reported value');
  FrmCalculadora.show;
end;

procedure TFrmPrincipal.ImgTmpClick(Sender: TObject);
begin
  ShowMessage('INSTRUCTIONS'+#13+#13+
              '1º enter the value in the "Temperature" field'+#13+
              '2º select temperature scale currency'+#13+
              '3º select scales for conversion'+#13+
              '4º click in the "Convert" button');
  FrmTemperature.show;
end;

procedure TFrmPrincipal.ImgInvstClick(Sender: TObject);
begin
  ShowMessage('INSTRUCTIONS'+#13+#13+
              '1º enter the value in the "value" field'+#13+
              '2º please report the number of months'+#13+
              '3º enter the interest amount'+#13+
              '4º click in the "Calculate" button');
  FrmInvestment.Show
end;

procedure TFrmPrincipal.ImgMnyClick(Sender: TObject);
begin
  ShowMessage('INSTRUCTIONS'+#13+#13+
              '1º please enter currency value'+
              '2º select current currency'+#13+
              '3º select currencies for conversion'+#13+
              '4º click in the "Convert" button');
  FrmMoney.Show
end;

procedure TFrmPrincipal.ImgTimeClick(Sender: TObject);
begin
  ShowMessage('INSTRUCTIONS'+#13+#13+
              '1º enter the time in the field(s)'+#13+
              '2° select which time measurements you want to convert'+#13+
              '3º click in the "Convert" button');
  FrmTime.show;
end;

end.
