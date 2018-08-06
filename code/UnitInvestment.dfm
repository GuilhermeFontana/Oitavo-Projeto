object FrmInvestment: TFrmInvestment
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Interest Calculator'
  ClientHeight = 152
  ClientWidth = 209
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object LblFVal: TLabel
    Left = 81
    Top = 132
    Width = 9
    Height = 13
    Caption = '   '
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 209
    Height = 121
    Caption = 'Please Inform the Items Below'
    TabOrder = 0
    object LblVal: TLabel
      Left = 8
      Top = 24
      Width = 26
      Height = 13
      Caption = 'Value'
    end
    object LblMonth: TLabel
      Left = 8
      Top = 51
      Width = 30
      Height = 13
      Caption = 'Month'
    end
    object LblPer: TLabel
      Left = 8
      Top = 78
      Width = 55
      Height = 13
      Caption = 'Percentage'
    end
    object LblPorc: TLabel
      Left = 193
      Top = 81
      Width = 3
      Height = 13
    end
    object EdtVal: TEdit
      Left = 43
      Top = 21
      Width = 158
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object EdtMonth: TEdit
      Left = 47
      Top = 48
      Width = 154
      Height = 21
      TabOrder = 1
      Text = '1'
    end
    object ScBarPorc: TScrollBar
      Left = 69
      Top = 78
      Width = 118
      Height = 16
      PageSize = 0
      TabOrder = 2
      OnChange = ScBarPorcChange
    end
    object CkBoxPorc: TCheckBox
      Left = 69
      Top = 100
      Width = 118
      Height = 17
      Caption = 'Juro maior que 100%'
      TabOrder = 3
      OnClick = CkBoxPorcClick
    end
  end
  object BtnCalc: TButton
    Left = 0
    Top = 127
    Width = 75
    Height = 25
    Caption = 'Calculate'
    TabOrder = 1
    OnClick = BtnCalcClick
  end
end
