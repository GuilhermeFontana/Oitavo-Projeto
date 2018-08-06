program PrjOitavo;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FrmPrincipal},
  UnitCalcu in 'UnitCalcu.pas' {FrmCalculadora},
  UnitMoney in 'UnitMoney.pas' {FrmMoney},
  UnitTemperature in 'UnitTemperature.pas' {FrmTemperature},
  UnitTime in 'UnitTime.pas' {FrmTime},
  UnitInvestment in 'UnitInvestment.pas' {FrmInvestment};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCalculadora, FrmCalculadora);
  Application.CreateForm(TFrmMoney, FrmMoney);
  Application.CreateForm(TFrmTemperature, FrmTemperature);
  Application.CreateForm(TFrmTime, FrmTime);
  Application.CreateForm(TFrmInvestment, FrmInvestment);
  Application.Run;
end.
