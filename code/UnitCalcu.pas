unit UnitCalcu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TFrmCalculadora = class(TForm)
    EdtN1: TEdit;
    GroupBox1: TGroupBox;
    Img1: TImage;
    Img2: TImage;
    Img4: TImage;
    Img3: TImage;
    Img7: TImage;
    Img5: TImage;
    Img8: TImage;
    Img6: TImage;
    Img9: TImage;
    ImgMoL: TImage;
    ImgDot: TImage;
    Img0: TImage;
    ImgEnd: TImage;
    GroupBox2: TGroupBox;
    ImgPls: TImage;
    ImMns: TImage;
    ImgMtp: TImage;
    ImgDvi: TImage;
    GroupBox3: TGroupBox;
    ImgSqr: TImage;
    ImgSqrt: TImage;
    ImgX_1: TImage;
    ImgPct: TImage;
    ImgM: TImage;
    ImgL: TImage;
    GroupBox4: TGroupBox;
    LblAux: TLabel;
    LblOP: TLabel;
    LblN1: TLabel;
    ImgC: TImage;
    Image1: TImage;
    procedure EdtN1KeyPress(Sender: TObject; var Key: Char);
    procedure Img1Click(Sender: TObject);
    procedure Img2Click(Sender: TObject);
    procedure Img3Click(Sender: TObject);
    procedure Img4Click(Sender: TObject);
    procedure Img5Click(Sender: TObject);
    procedure Img6Click(Sender: TObject);
    procedure Img7Click(Sender: TObject);
    procedure Img8Click(Sender: TObject);
    procedure Img9Click(Sender: TObject);
    procedure Img0Click(Sender: TObject);
    procedure ImgDotClick(Sender: TObject);
    procedure ImgEndClick(Sender: TObject);
    procedure ImgPlsClick(Sender: TObject);
    procedure ImMnsClick(Sender: TObject);
    procedure ImgDviClick(Sender: TObject);
    procedure ImgMtpClick(Sender: TObject);
    procedure ImgSqrClick(Sender: TObject);
    procedure ImgSqrtClick(Sender: TObject);
    procedure ImgX_1Click(Sender: TObject);
    procedure ImgPctClick(Sender: TObject);
    procedure ImgLClick(Sender: TObject);
    procedure ImgMClick(Sender: TObject);
    procedure ImgMoLClick(Sender: TObject);
    procedure ImgCClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalculadora: TFrmCalculadora;
  N1, Aux, N2, OP: string;
  Result: Real;


implementation

{$R *.dfm}

procedure TFrmCalculadora.EdtN1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key='+' then
    begin
      if (LblAux.Caption = '') then
        begin
          OP := '+';
          Aux := EdtN1.Text;
          EdtN1.Text := '';
          LblAux.Caption := Aux;
          LblOP.Caption := '+ ';
          LblN1.Caption := ''
        end;

      if ((LblOP.Caption = '^2') or (LblOP.Caption = '²√') or (LblOP.Caption = '1/x')) then
        begin
          OP := '+';
          Aux := EdtN1.Text;
          EdtN1.Text := '';
          LblAux.Caption := Aux;
          LblOP.Caption := '+ ';
          LblN1.Caption := ''
        end;


      if not(EdtN1.Text = '') and (LblN1.Caption = '') then
        begin
          N1:= EdtN1.Text;

          if (Op = '+') then
            begin
              Result:= StrToFloat(N1)+StrToFloat(Aux);
              Aux:= FloatToStr(Result);
              LblN1.Caption := '';
              LblAux.Caption := (Aux);
              Op:= '+';
              LblOP.Caption := (Op);

              EdtN1.Text:= ''
            end
          else
            begin
              if (Op = '-') then
                begin
                  Result:= StrToFloat(Aux)-StrToFloat(N1);
                  Aux:= FloatToStr(Result);
                  LblN1.Caption := '';
                  LblAux.Caption := (Aux);
                  Op:= '+';
                  LblOP.Caption := (Op);

                  EdtN1.Text:= ''
                end
              else
                begin
                  if (Op = '*') then
                    begin
                      Result:= StrToFloat(Aux)*StrToFloat(N1);
                      Aux:= FloatToStr(Result);
                      LblN1.Caption := '';
                      LblAux.Caption := (Aux);
                      Op:= '+';
                      LblOP.Caption := (Op);

                      EdtN1.Text:= ''
                    end
                  else
                    begin
                      if (Op = '/') then
                        begin
                          Result:= StrToFloat(Aux)/StrToFloat(N1);
                          Aux:= FloatToStr(Result);
                          LblN1.Caption := '';
                          LblAux.Caption := (Aux);
                          Op:= '+';
                          LblOP.Caption := (Op);

                          EdtN1.Text:= ''
                        end;
                    end;
                end;
             end;
        end;

      if not(LblN1.Caption='') and not(LblAux.Caption='') then
        begin
          Aux:= FloatToStr(Result);
          LblAux.Caption:= Aux;
          N1:= '';
          LblN1.Caption:= '';
          EdtN1.Text:= '';

          if Key='+' then
            begin
              Op:= '+';
              LblOP.Caption:= OP
            end
          else
            begin
              if Key='-' then
                begin
                  Op:= '+';
                  LblOp.Caption:= Op;
                end
              else
                begin
                  if Key='*' then
                   begin
                    Op:= '*';
                    LblOp.Caption:= Op;
                   end
                  else
                   begin
                    Op:= '/';
                    LblOp.Caption:= Op;
                   end;
                end;
            end;
        end;

    end;

  if Key='-' then
    begin
      if LblAux.Caption = '' then
        begin
          OP := '-';
          Aux := EdtN1.Text;
          EdtN1.Text := '';
          LblAux.Caption := Aux;
          LblOP.Caption := '- ';
          LblN1.Caption := ''
        end;

      if ((LblOP.Caption = '^2') or (LblOP.Caption = '²√') or (LblOP.Caption = '1/x')) then
        begin
          OP := '-';
          Aux := EdtN1.Text;
          EdtN1.Text := '';
          LblAux.Caption := Aux;
          LblOP.Caption := '- ';
          LblN1.Caption := ''
        end;


      if not(EdtN1.Text = '') and (LblN1.Caption = '') then
        begin
          N1:= EdtN1.Text;

          if (Op = '+') then
            begin
              Result:= StrToFloat(N1)+StrToFloat(Aux);
              Aux:= FloatToStr(Result);
              LblN1.Caption := '';
              LblAux.Caption := (Aux);
              Op:= '-';
              LblOP.Caption := (Op);

              EdtN1.Text:= ''
            end
          else
            begin
              if (Op = '-') then
                begin
                  Result:= StrToFloat(Aux)-StrToFloat(N1);
                  Aux:= FloatToStr(Result);
                  LblN1.Caption := '';
                  LblAux.Caption := (Aux);
                  Op:= '-';
                  LblOP.Caption := (Op);

                  EdtN1.Text:= ''
                end
              else
                begin
                  if (Op = '*') then
                    begin
                      Result:= StrToFloat(Aux)*StrToFloat(N1);
                      Aux:= FloatToStr(Result);
                      LblN1.Caption := '';
                      LblAux.Caption := (Aux);
                      Op:= '-';
                      LblOP.Caption := (Op);

                      EdtN1.Text:= ''
                    end
                  else
                    begin
                      if (Op = '/') then
                        begin
                          Result:= StrToFloat(Aux)/StrToFloat(N1);
                          Aux:= FloatToStr(Result);
                          LblN1.Caption := '';
                          LblAux.Caption := (Aux);
                          Op:= '-';
                          LblOP.Caption := (Op);

                          EdtN1.Text:= ''
                        end;
                    end;
                end;
             end;
        end;

      if not(LblN1.Caption='') and not(LblAux.Caption='') then
        begin
          Aux:= FloatToStr(Result);
          LblAux.Caption:= Aux;
          N1:= '';
          LblN1.Caption:= '';
          EdtN1.Text:= '';

          if Key='+' then
            begin
              Op:= '+';
              LblOP.Caption:= OP
            end
          else
            begin
              if Key='-' then
                begin
                  Op:= '+';
                  LblOp.Caption:= Op;
                end
              else
                begin
                  if Key='*' then
                   begin
                    Op:= '*';
                    LblOp.Caption:= Op;
                   end
                  else
                   begin
                    Op:= '/';
                    LblOp.Caption:= Op;
                   end;
                end;
            end;
        end;

    end;

  if (Key='*') then
    begin
      if  LblOP.Caption = '^2'  then
        begin
          OP := '*';
          Aux := EdtN1.Text;
          EdtN1.Text := '';
          LblAux.Caption := Aux;
          LblOP.Caption := '* ';
          LblN1.Caption := '';
        end;

      if ((LblOP.Caption = '^2') or (LblOP.Caption = '²√') or (LblOP.Caption = '1/x')) then
        begin
          OP := '*';
          Aux := EdtN1.Text;
          EdtN1.Text := '';
          LblAux.Caption := Aux;
          LblOP.Caption := '* ';
          LblN1.Caption := '';
        end;


      if not(EdtN1.Text = '') and (LblN1.Caption = '') then
          begin
            N1:= EdtN1.Text;

            if (Op = '+') then
              begin
                Result:= StrToFloat(N1)+StrToFloat(Aux);
                Aux:= FloatToStr(Result);
                LblN1.Caption := '';
                LblAux.Caption := (Aux);
                Op:= '*';
                LblOP.Caption := (Op);

                EdtN1.Text:= ''
              end
            else
              begin
                if (Op = '-') then
                  begin
                    Result:= StrToFloat(Aux)-StrToFloat(N1);
                    Aux:= FloatToStr(Result);
                    LblN1.Caption := '';
                    LblAux.Caption := (Aux);
                    Op:= '*';
                    LblOP.Caption := (Op);

                    EdtN1.Text:= ''
                  end
                else
                  begin
                    if (Op = '*') then
                      begin
                        Result:= StrToFloat(Aux)*StrToFloat(N1);
                        Aux:= FloatToStr(Result);
                        LblN1.Caption := '';
                        LblAux.Caption := (Aux);
                        Op:= '*';
                        LblOP.Caption := (Op);

                        EdtN1.Text:= ''
                      end
                    else
                      begin
                        if (Op = '/') then
                          begin
                            Result:= StrToFloat(Aux)/StrToFloat(N1);
                            Aux:= FloatToStr(Result);
                            LblN1.Caption := '';
                            LblAux.Caption := (Aux);
                            Op:= '*';
                            LblOP.Caption := (Op);

                            EdtN1.Text:= ''
                          end;
                      end;
                  end;
               end;
          end;

      if not(LblN1.Caption='') and not(LblAux.Caption='') then
        begin
          Aux:= FloatToStr(Result);
          LblAux.Caption:= Aux;
          N1:= '';
          LblN1.Caption:= '';
          EdtN1.Text:= '';

          if Key='+' then
            begin
              Op:= '+';
              LblOP.Caption:= OP
            end
          else
            begin
              if Key='-' then
                begin
                  Op:= '+';
                  LblOp.Caption:= Op;
                end
              else
                begin
                  if Key='*' then
                   begin
                    Op:= '*';
                    LblOp.Caption:= Op;
                   end
                  else
                   begin
                    Op:= '/';
                    LblOp.Caption:= Op;
                   end;
                end;
            end;
        end;

    end;


  if Key='/' then
    begin
      if LblAux.Caption = '' then
        begin
          OP := '/';
          Aux := EdtN1.Text;
          EdtN1.Text := '';
          LblAux.Caption := Aux;
          LblOP.Caption := '/ ';
          LblN1.Caption := ''
        end;

      if ((LblOP.Caption = '^2') or (LblOP.Caption = '²√') or (LblOP.Caption = '1/x')) then
        begin
          OP := '/';
          Aux := EdtN1.Text;
          EdtN1.Text := '';
          LblAux.Caption := Aux;
          LblOP.Caption := '/ ';
          LblN1.Caption := ''
        end;

        if not(EdtN1.Text = '') and (LblN1.Caption = '') then
          begin
            N1:= EdtN1.Text;

            if (Op = '+') then
              begin
                Result:= StrToFloat(N1)+StrToFloat(Aux);
                Aux:= FloatToStr(Result);
                LblN1.Caption := '';
                LblAux.Caption := (Aux);
                Op:= '/';
                LblOP.Caption := (Op);

                EdtN1.Text:= ''
              end
            else
              begin
                if (Op = '-') then
                  begin
                    Result:= StrToFloat(Aux)-StrToFloat(N1);
                    Aux:= FloatToStr(Result);
                    LblN1.Caption := '';
                    LblAux.Caption := (Aux);
                    Op:= '/';
                    LblOP.Caption := (Op);

                    EdtN1.Text:= ''
                  end
                else
                  begin
                    if (Op = '*') then
                      begin
                        Result:= StrToFloat(Aux)*StrToFloat(N1);
                        Aux:= FloatToStr(Result);
                        LblN1.Caption := '';
                        LblAux.Caption := (Aux);
                        Op:= '/';
                        LblOP.Caption := (Op);

                        EdtN1.Text:= ''
                      end
                    else
                      begin
                        if (Op = '/') then
                          begin
                            Result:= StrToFloat(Aux)/StrToFloat(N1);
                            Aux:= FloatToStr(Result);
                            LblN1.Caption := '';
                            LblAux.Caption := (Aux);
                            Op:= '/';
                            LblOP.Caption := (Op);

                            EdtN1.Text:= ''
                          end;
                      end;
                  end;
               end;
          end;

      if not(LblN1.Caption='') and not(LblAux.Caption='') then
        begin
          Aux:= FloatToStr(Result);
          LblAux.Caption:= Aux;
          N1:= '';
          LblN1.Caption:= '';
          EdtN1.Text:= '';

          if Key='+' then
            begin
              Op:= '+';
              LblOP.Caption:= OP
            end
          else
            begin
              if Key='-' then
                begin
                  Op:= '+';
                  LblOp.Caption:= Op;
                end
              else
                begin
                  if Key='*' then
                   begin
                    Op:= '*';
                    LblOp.Caption:= Op;
                   end
                  else
                   begin
                    Op:= '/';
                    LblOp.Caption:= Op;
                   end;
                end;
            end;
        end;

    end;

  if Key=#13 then
    begin
      N1:= EdtN1.Text;

      if (N1 = '') then
        begin
          EdtN1.Text:= Aux;
          LblAux.Caption := '';
          LblOP.Caption := '';
        end
      else
        begin
          if (Op = '+') then
            begin
              Result:= StrToFloat(N1)+StrToFloat(Aux);
              LblN1.Caption := EdtN1.Text;
              LblAux.Caption := (Aux);
              LblOP.Caption := '+';

              EdtN1.Text:= FloatToStr(Result)
            end
          else
            begin
              if (Op = '-') then
                begin
                  Result:= StrToFloat(Aux)-StrToFloat(N1);
                  LblN1.Caption := EdtN1.Text;

                  EdtN1.Text:= FloatToStr(Result)
                end
              else
                begin
                  if (Op = '*') then
                    begin
                      Result:= StrToFloat(N1)*StrToFloat(Aux);
                      LblN1.Caption := EdtN1.Text;

                      EdtN1.Text:= FloatToStr(Result)
                    end
                  else
                    begin
                      if (Op = '/') then
                        begin
                          Result:= StrToFloat(Aux) / StrToFloat(N1);
                          LblN1.Caption := EdtN1.Text;

                          EdtN1.Text:= FloatToStr(Result)
                        end;
                    end;
                 end;
              end;
        end;
    end;

  if Key='.' then
    begin
      if EdtN1.Text = '' then
        begin
          EdtN1.Text:= '0,'
        end
      else
        begin
          EdtN1.Text := EdtN1.Text+',';
        end;
    end;

  if (Key='C') then
    begin
      N1:= '';
      Aux:= '';
      LblN1.Caption:= '';
      LblAux.Caption := '';
      LblOP.Caption := '';
      EdtN1.Text:= '';
    end;

  if Key='c' then
    begin
      EdtN1.Text:= '';
    end;

  if ((Key='B') or (Key='b')) then
    begin
      N1:= '';
      Aux:= '';
      LblN1.Caption:= '';
      LblAux.Caption := '';
      LblOP.Caption := '';
      EdtN1.Text:= '';

      FrmCalculadora.Close;
    end;

    if not(OP='') and (EdtN1.Text='') and not(LblAux.Caption='') then
      begin
          if Key='+' then
          begin
            Op:='+';
            LblOP.Caption:= Op;
          end
        else
          begin
            if Key='-' then
              begin
                Op:='-';
                LblOP.Caption:= Op;
              end
            else
               begin
                  if Key='*' then
                    begin
                      Op:='*';
                      LblOP.Caption:= Op;
                    end
                  else
                   begin
                    if Key='+' then
                      begin
                        Op:='+';
                        LblOP.Caption:= Op;
                      end;
                    end;
               end;
          end;
      end;
end;

procedure TFrmCalculadora.ImgMoLClick(Sender: TObject);
  var Test: real;
begin
  Test:= StrToFloat(EdtN1.Text);

      if ((Test > 0) or (EdtN1.Text = '')) then
        begin
          EdtN1.Text:= '-'+EdtN1.Text
        end;
      if Test < 0  then
        begin
          EdtN1.Text:= FloatToStr(StrToFloat(EdtN1.Text)*-1)
        end;


end;

procedure TFrmCalculadora.ImgDotClick(Sender: TObject);
begin
  if EdtN1.Text = '' then
    begin
      EdtN1.Text:= '0,'
    end
  else
    begin
      EdtN1.Text := EdtN1.Text+',';
    end;
end;

procedure TFrmCalculadora.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LblAux.Caption:='';
  LblOP.Caption:='';
  LblN1.Caption:='';
  N1:= '';
  Aux:= '';
  N2:= '';
  OP:= '';
  Result:= 0
end;

procedure TFrmCalculadora.Image1Click(Sender: TObject);
begin
  EdtN1.Text:= '';
end;

procedure TFrmCalculadora.Img0Click(Sender: TObject);
begin
  EdtN1.Text := EdtN1.Text+'0';
end;

procedure TFrmCalculadora.ImgEndClick(Sender: TObject);
begin
  N1:= EdtN1.Text;

  if (N1 = '') then
    begin
      EdtN1.Text:= Aux;
      LblAux.Caption := '';
      LblOP.Caption := '';
    end
  else
    begin
      if (Op = '+') then
        begin
          Result:= StrToFloat(N1)+StrToFloat(Aux);
          LblN1.Caption := EdtN1.Text;
          LblAux.Caption := (Aux);
          LblOP.Caption := '+';

          EdtN1.Text:= FloatToStr(Result)
        end
      else
        begin
          if (Op = '-') then
            begin
              Result:= StrToFloat(Aux)-StrToFloat(N1);
              LblN1.Caption := EdtN1.Text;

              EdtN1.Text:= FloatToStr(Result)
            end
           else
           begin
            if (Op = '*') then
              begin
                Result:= StrToFloat(N1)*StrToFloat(Aux);
                LblN1.Caption := EdtN1.Text;

                EdtN1.Text:= FloatToStr(Result)
              end
            else
              if (Op = '/') then
                begin
                  Result:= StrToFloat(Aux) / StrToFloat(N1);
                  LblN1.Caption := EdtN1.Text;

                  EdtN1.Text:= FloatToStr(Result)
                end;


           end;
        end;
     end;
end;

procedure TFrmCalculadora.ImgPlsClick(Sender: TObject);
begin
  if (LblAux.Caption = '') then
    begin
      OP := '+';
      Aux := EdtN1.Text;
      EdtN1.Text := '';
      LblAux.Caption := Aux;
      LblOP.Caption := '+ ';
      LblN1.Caption := ''
    end;

  if ((LblOP.Caption = '^2') or (LblOP.Caption = '²√') or (LblOP.Caption = '1/x')) then
    begin
      OP := '+';
      Aux := EdtN1.Text;
      EdtN1.Text := '';
      LblAux.Caption := Aux;
      LblOP.Caption := '+ ';
      LblN1.Caption := ''
    end;


  if not(EdtN1.Text = '') and (LblN1.Caption = '') then
    begin
      N1:= EdtN1.Text;

      if (Op = '+') then
        begin
          Result:= StrToFloat(N1)+StrToFloat(Aux);
          Aux:= FloatToStr(Result);
          LblN1.Caption := '';
          LblAux.Caption := (Aux);
          Op:= '+';
          LblOP.Caption := (Op);

          EdtN1.Text:= ''
        end
      else
        begin
          if (Op = '-') then
            begin
              Result:= StrToFloat(Aux)-StrToFloat(N1);
              Aux:= FloatToStr(Result);
              LblN1.Caption := '';
              LblAux.Caption := (Aux);
              Op:= '+';
              LblOP.Caption := (Op);

              EdtN1.Text:= ''
            end
          else
            begin
              if (Op = '*') then
                begin
                  Result:= StrToFloat(Aux)*StrToFloat(N1);
                  Aux:= FloatToStr(Result);
                  LblN1.Caption := '';
                  LblAux.Caption := (Aux);
                  Op:= '+';
                  LblOP.Caption := (Op);

                  EdtN1.Text:= ''
                end
              else
                begin
                  if (Op = '/') then
                    begin
                      Result:= StrToFloat(Aux)/StrToFloat(N1);
                      Aux:= FloatToStr(Result);
                      LblN1.Caption := '';
                      LblAux.Caption := (Aux);
                      Op:= '+';
                      LblOP.Caption := (Op);

                      EdtN1.Text:= ''
                    end;
                end;
            end;
         end;
    end;

    if not(OP='') and (EdtN1.Text='') and not(LblAux.Caption='') then
      begin
        Op:='+';
        LblOP.Caption:= Op;
      end;

end;

procedure TFrmCalculadora.ImMnsClick(Sender: TObject);
begin
  if LblAux.Caption = '' then
    begin
      OP := '-';
      Aux := EdtN1.Text;
      EdtN1.Text := '';
      LblAux.Caption := Aux;
      LblOP.Caption := '- ';
      LblN1.Caption := ''
    end;

  if ((LblOP.Caption = '^2') or (LblOP.Caption = '²√') or (LblOP.Caption = '1/x')) then
    begin
      OP := '-';
      Aux := EdtN1.Text;
      EdtN1.Text := '';
      LblAux.Caption := Aux;
      LblOP.Caption := '- ';
      LblN1.Caption := ''
    end;


  if not(EdtN1.Text = '') and (LblN1.Caption = '') then
    begin
      N1:= EdtN1.Text;

      if (Op = '+') then
        begin
          Result:= StrToFloat(N1)+StrToFloat(Aux);
          Aux:= FloatToStr(Result);
          LblN1.Caption := '';
          LblAux.Caption := (Aux);
          Op:= '-';
          LblOP.Caption := (Op);

          EdtN1.Text:= ''
        end
      else
        begin
          if (Op = '-') then
            begin
              Result:= StrToFloat(Aux)-StrToFloat(N1);
              Aux:= FloatToStr(Result);
              LblN1.Caption := '';
              LblAux.Caption := (Aux);
              Op:= '-';
              LblOP.Caption := (Op);

              EdtN1.Text:= ''
            end
          else
            begin
              if (Op = '*') then
                begin
                  Result:= StrToFloat(Aux)*StrToFloat(N1);
                  Aux:= FloatToStr(Result);
                  LblN1.Caption := '';
                  LblAux.Caption := (Aux);
                  Op:= '-';
                  LblOP.Caption := (Op);

                  EdtN1.Text:= ''
                end
              else
                begin
                  if (Op = '/') then
                    begin
                      Result:= StrToFloat(Aux)/StrToFloat(N1);
                      Aux:= FloatToStr(Result);
                      LblN1.Caption := '';
                      LblAux.Caption := (Aux);
                      Op:= '-';
                      LblOP.Caption := (Op);

                      EdtN1.Text:= ''
                    end;
                end;
            end;
         end;
    end;

    if not(OP='') and (EdtN1.Text='') and not(LblAux.Caption='') then
      begin
        Op:='-';
        LblOP.Caption:= Op;
      end;
end;

procedure TFrmCalculadora.ImgMtpClick(Sender: TObject);
begin
  if  LblOP.Caption = '^2'  then
    begin
      OP := '*';
      Aux := EdtN1.Text;
      EdtN1.Text := '';
      LblAux.Caption := Aux;
      LblOP.Caption := '* ';
      LblN1.Caption := '';
    end;

  if ((LblOP.Caption = '^2') or (LblOP.Caption = '²√') or (LblOP.Caption = '1/x')) then
    begin
      OP := '*';
      Aux := EdtN1.Text;
      EdtN1.Text := '';
      LblAux.Caption := Aux;
      LblOP.Caption := '* ';
      LblN1.Caption := '';
    end;


  if not(EdtN1.Text = '') and (LblN1.Caption = '') then
      begin
        N1:= EdtN1.Text;

        if (Op = '+') then
          begin
            Result:= StrToFloat(N1)+StrToFloat(Aux);
            Aux:= FloatToStr(Result);
            LblN1.Caption := '';
            LblAux.Caption := (Aux);
            Op:= '*';
            LblOP.Caption := (Op);

            EdtN1.Text:= ''
          end
        else
          begin
            if (Op = '-') then
              begin
                Result:= StrToFloat(Aux)-StrToFloat(N1);
                Aux:= FloatToStr(Result);
                LblN1.Caption := '';
                LblAux.Caption := (Aux);
                Op:= '*';
                LblOP.Caption := (Op);

                EdtN1.Text:= ''
              end
            else
              begin
                if (Op = '*') then
                  begin
                    Result:= StrToFloat(Aux)*StrToFloat(N1);
                    Aux:= FloatToStr(Result);
                    LblN1.Caption := '';
                    LblAux.Caption := (Aux);
                    Op:= '*';
                    LblOP.Caption := (Op);

                    EdtN1.Text:= ''
                  end
                else
                  begin
                    if (Op = '/') then
                      begin
                        Result:= StrToFloat(Aux)/StrToFloat(N1);
                        Aux:= FloatToStr(Result);
                        LblN1.Caption := '';
                        LblAux.Caption := (Aux);
                        Op:= '*';
                        LblOP.Caption := (Op);

                        EdtN1.Text:= ''
                      end;
                  end;
              end;
           end;
      end;

      if not(OP='') and (EdtN1.Text='') and not(LblAux.Caption='') then
      begin
        Op:='*';
        LblOP.Caption:= Op;
      end;

end;

procedure TFrmCalculadora.ImgDviClick(Sender: TObject);
begin
  if LblAux.Caption = '' then
    begin
      OP := '/';
      Aux := EdtN1.Text;
      EdtN1.Text := '';
      LblAux.Caption := Aux;
      LblOP.Caption := '/ ';
      LblN1.Caption := ''
    end;

  if ((LblOP.Caption = '^2') or (LblOP.Caption = '²√') or (LblOP.Caption = '1/x')) then
    begin
      OP := '/';
      Aux := EdtN1.Text;
      EdtN1.Text := '';
      LblAux.Caption := Aux;
      LblOP.Caption := '/ ';
      LblN1.Caption := ''
    end;

    if not(EdtN1.Text = '') and (LblN1.Caption = '') then
      begin
        N1:= EdtN1.Text;

        if (Op = '+') then
          begin
            Result:= StrToFloat(N1)+StrToFloat(Aux);
            Aux:= FloatToStr(Result);
            LblN1.Caption := '';
            LblAux.Caption := (Aux);
            Op:= '/';
            LblOP.Caption := (Op);

            EdtN1.Text:= ''
          end
        else
          begin
            if (Op = '-') then
              begin
                Result:= StrToFloat(Aux)-StrToFloat(N1);
                Aux:= FloatToStr(Result);
                LblN1.Caption := '';
                LblAux.Caption := (Aux);
                Op:= '/';
                LblOP.Caption := (Op);

                EdtN1.Text:= ''
              end
            else
              begin
                if (Op = '*') then
                  begin
                    Result:= StrToFloat(Aux)*StrToFloat(N1);
                    Aux:= FloatToStr(Result);
                    LblN1.Caption := '';
                    LblAux.Caption := (Aux);
                    Op:= '/';
                    LblOP.Caption := (Op);

                    EdtN1.Text:= ''
                  end
                else
                  begin
                    if (Op = '/') then
                      begin
                        Result:= StrToFloat(Aux)/StrToFloat(N1);
                        Aux:= FloatToStr(Result);
                        LblN1.Caption := '';
                        LblAux.Caption := (Aux);
                        Op:= '/';
                        LblOP.Caption := (Op);

                        EdtN1.Text:= ''
                      end;
                  end;
              end;
           end;
      end;

      if not(OP='') and (EdtN1.Text='') and not(LblAux.Caption='') then
      begin
        Op:='/';
        LblOP.Caption:= Op;
      end;

end;

procedure TFrmCalculadora.ImgSqrClick(Sender: TObject);
begin
  Aux:= FloatToStr(sqr(StrToFloat(EdtN1.Text)));
  N1:= EdtN1.Text;
  EdtN1.Text:=(Aux);
  LblAux.Caption:= N1;
  Op:= '^2';
  LblOP.Caption:= Op;
  LblN1.Caption:= ' ';

end;

procedure TFrmCalculadora.ImgSqrtClick(Sender: TObject);
begin
  Aux:= FloatToStr(sqrt(StrToFloat(EdtN1.Text)));
  N1:= EdtN1.Text;
  EdtN1.Text:=(Aux);
  LblAux.Caption:= N1;
  Op:= '²√';
  LblOP.Caption:= Op;
end;

procedure TFrmCalculadora.Img1Click(Sender: TObject);
begin
  EdtN1.Text := EdtN1.Text+'1';
end;

procedure TFrmCalculadora.ImgX_1Click(Sender: TObject);
begin
  Aux:= FloatToStr(1 / StrToFloat(EdtN1.Text));
  N1:= EdtN1.Text;
  EdtN1.Text:=(Aux);
  LblAux.Caption:= N1;
  Op:= '1/x';
  LblOp.Caption:= Op;
end;

procedure TFrmCalculadora.ImgPctClick(Sender: TObject);
begin
  N1:= EdtN1.Text;
  Result:= StrToFloat(Aux)*(StrToFloat(N1) / 100);
  EdtN1.Text:= FloatToStr(Result);
  LblAux.Caption := (Aux+'*'+EdtN1.Text+'%');
  LblOP.Caption := '';
end;

procedure TFrmCalculadora.ImgMClick(Sender: TObject);
begin
  GroupBox3.Visible:= true;
  GroupBox2.Visible:= false;
  ImgM.Visible:= false;
  ImgL.Visible:= true
end;

procedure TFrmCalculadora.ImgLClick(Sender: TObject);
begin
  GroupBox3.Visible:= false;
  GroupBox2.Visible:= true;
  ImgM.Visible:= true;
  ImgL.Visible:= false
end;

procedure TFrmCalculadora.ImgCClick(Sender: TObject);
begin
  N1:= '';
  Aux:= '';
  LblN1.Caption:= '';
  LblAux.Caption := '';
  LblOP.Caption := '';
  EdtN1.Text:= '';
end;

procedure TFrmCalculadora.Img2Click(Sender: TObject);
begin
  EdtN1.Text := EdtN1.Text+'2';
end;

procedure TFrmCalculadora.Img4Click(Sender: TObject);
begin
  EdtN1.Text := EdtN1.Text+'4';
end;

procedure TFrmCalculadora.Img3Click(Sender: TObject);
begin
  EdtN1.Text := EdtN1.Text+'3';
end;

procedure TFrmCalculadora.Img7Click(Sender: TObject);
begin
  EdtN1.Text := EdtN1.Text+'7';
end;

procedure TFrmCalculadora.Img5Click(Sender: TObject);
begin
  EdtN1.Text := EdtN1.Text+'5';
end;

procedure TFrmCalculadora.Img8Click(Sender: TObject);
begin
  EdtN1.Text := EdtN1.Text+'8';
end;

procedure TFrmCalculadora.Img6Click(Sender: TObject);
begin
  EdtN1.Text := EdtN1.Text+'6';
end;

procedure TFrmCalculadora.Img9Click(Sender: TObject);
begin
  EdtN1.Text := EdtN1.Text+'9';
end;

Initialization


end.
