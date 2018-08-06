unit UnitTime;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmTime = class(TForm)
    GroupBox1: TGroupBox;
    ChcBxH: TCheckBox;
    ChcBxM: TCheckBox;
    ChcBxS: TCheckBox;
    GroupBox2: TGroupBox;
    EdtH: TEdit;
    EdtM: TEdit;
    EdtS: TEdit;
    LblH: TLabel;
    LblM: TLabel;
    LblS: TLabel;
    Pnl1: TPanel;
    LblFinal: TLabel;
    BtnConv: TButton;
    Lbl1: TLabel;
    ChcBxT: TCheckBox;
    EdtT: TEdit;
    LblT: TLabel;
    procedure BtnConvClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTime: TFrmTime;
  Hour, Min, Sec, Aux, Thos: Integer;
  HourA, MinA, SecA, ThosA: Real;

implementation

{$R *.dfm}

procedure TFrmTime.BtnConvClick(Sender: TObject);
begin
  {
  HORA-MINUTO-SEGUNDO(X)
  HORA-MINUTO(X)
  HORA-SEGUNDO(X)
  MINUTO-SEGUNDO(X)
  HORA()
  MINUTO()
  SEGUNDO()
  }
  Hour:= StrToInt(EdtH.Text);
  Min:= StrToInt(EdtM.Text);
  Sec:= StrToInt(EdtS.Text);
  Thos:= StrToInt(EdtT.Text);

  Aux:= (Hour*3600000)+(Min*60000)+(Sec*1000)+Thos;

  if ((ChcBxH.Checked = True) and (ChcBxM.Checked = True) and (ChcBxS.Checked = True) and (ChcBxT.Checked = True))then
    begin
     Hour:= Aux div 3600000;
     Min:= (Aux mod 3600000) div 60000;
     Sec:= ((Aux mod 3600000) mod 60000) div 1000;
     Thos:= ((Aux mod 3600000) mod 60000) mod 1000;

     LblFinal.Caption:= IntToStr(Hour)+' Hour'+#13+
                      IntToStr(Min)+' Minutes'+#13+
                      IntToStr(Sec)+' Seconds'+#13+
                      IntToStr(Thos)+' Thousandth';
    end
  else
    begin
      if ((ChcBxH.Checked = True) and (ChcBxM.Checked = True) and (ChcBxS.Checked = True)) then
        begin
          Hour:= Aux div 3600000;
          Min:= (Aux mod 3600000) div 60000;
          SecA:= ((Aux mod 3600000) mod 60000) / 1000;

          LblFinal.Caption:= IntToStr(Hour)+' Hour'+#13+
                           IntToStr(Min)+' Minutes'+#13+
                           FloatToStr(SecA)+' Seconds';

        end
      else
        begin
          if ((ChcBxH.Checked = True) and (ChcBxS.Checked = True) and (ChcBxT.Checked = True)) then
            begin
              Hour:= Aux div 3600000;
              Sec:= (Aux mod 3600000) div 1000;
              Thos:= (Aux mod 3600000) mod 1000;

              LblFinal.Caption:= IntToStr(Hour)+' Hour'+#13+
                               IntToStr(Sec)+' Seconds'+#13+
                               IntToStr(Thos)+' Thousandth';

            end
          else
            begin
              if ((ChcBxH.Checked = True) and (ChcBxM.Checked = True) and (ChcBxT.Checked = True)) then
                begin
                  Hour:= Aux div 3600000;
                  Min:= (Aux mod 3600000) div 60000;
                  ThosA:= ((Aux mod 3600000) mod 60000) / 1000;

                  LblFinal.Caption:= IntToStr(Hour)+' Hour'+#13+
                                   IntToStr(Min)+' Minutes'+#13+
                                   FloatToStr(ThosA)+' Thousandth';

                end
              else
                begin
                  if ((ChcBxM.Checked = True) and (ChcBxS.Checked = True) and (ChcBxT.Checked = True)) then
                    begin
                      Min:= Aux div 60000;
                      Sec:= (Aux mod 60000) div 1000;
                      Thos:= (Aux mod 60000) mod 1000;

                      LblFinal.Caption:= IntToStr(Min)+' Minutes'+#13+
                                       IntToStr(Sec)+' Seconds'+#13+
                                       IntToStr(Thos)+' Thousandth';

                    end
                  else
                    begin
                      if ((ChcBxH.Checked = True) and (ChcBxM.Checked = True))  then
                        begin
                          Hour:= Aux div 3600000;
                          Min:= (Aux mod 3600000) div 60000;
                          ThosA:= (Aux mod 3600000) mod 60000;

                          LblFinal.Caption:= IntToStr(Hour)+' Hour'+#13+
                                           IntToStr(Min)+','+FloatToStr(ThosA)+' Minutes';

                        end
                      else
                        begin
                          if ((ChcBxH.Checked = True) and (ChcBxS.Checked = True)) then
                            begin
                              Hour:= Aux div 3600000;
                              SecA:= (Aux mod 3600000) / 1000;

                              LblFinal.Caption:= IntToStr(Hour)+' Hour'+#13+
                                               FloatToStr(SecA)+' Seconds';

                            end
                          else
                            begin
                              if ((ChcBxH.Checked = True) and (ChcBxT.Checked = True)) then
                                begin
                                  Hour:= Aux div 3600000;
                                  Thos:= (Aux mod 3600000);

                                  LblFinal.Caption:= IntToStr(Hour)+' Hour'+#13+
                                                   IntToStr(Thos)+' Thousandth';

                                end
                              else
                                begin
                                  if ((ChcBxM.Checked = True) and (ChcBxS.Checked = True)) then
                                    begin
                                      Min:= Aux div 60000;
                                      SecA:= (Aux mod 60000) / 1000;

                                      LblFinal.Caption:= IntToStr(Min)+' Minutes'+#13+
                                                       FloatToStr(SecA)+' Seconds';

                                    end
                                  else
                                    begin
                                      if ((ChcBxM.Checked = True) and (ChcBxT.Checked = True)) then
                                        begin
                                          Min:= Aux div 60000;
                                          Thos:= Aux mod 60000;

                                          LblFinal.Caption:= IntToStr(Min)+' Minutes'+#13+
                                                           IntToStr(Thos)+' Thousandth';
                                        end
                                      else
                                        begin
                                          if ((ChcBxS.Checked = True) and (ChcBxT.Checked = True)) then
                                            begin
                                              Sec:= Aux div 1000;
                                              Thos:= Aux mod 1000;

                                              LblFinal.Caption:= IntToStr(Sec)+' Seconds'+#13+
                                                               IntToStr(Thos)+' Thousandth';
                                            end
                                          else
                                            begin
                                              if (ChcBxH.Checked = True) then
                                                begin
                                                  HourA:= Aux / 3600000;

                                                  LblFinal.Caption:= FloatToStr(HourA)+' Hour';

                                                end
                                              else
                                                begin
                                                  if (ChcBxM.Checked = True) then
                                                    begin
                                                      MinA:= Aux / 60000;

                                                      LblFinal.Caption:= FloatToStr(MinA)+' Minutes';

                                                    end
                                                  else
                                                    begin
                                                      if (ChcBxS.Checked = True) then
                                                        begin
                                                          SecA:= Aux / 1000;

                                                          LblFinal.Caption:= FloatToStr(SecA)+' Seconds';

                                                        end
                                                       else
                                                        begin
                                                          if (ChcBxT.Checked = True) then
                                                            begin
                                                              LblFinal.Caption:= FloatToStr(Aux) +' Thousandth';

                                                            end
                                                          else
                                                            begin
                                                              LblFinal.Caption:= 'no conversion measures selected';

                                                            end;

                                                        end

                                                    end

                                                end;

                                            end;

                                        end;

                                    end;

                                end;

                            end;

                        end;

                    end

                end;
            end;


        end;


    end;



end;


end.




