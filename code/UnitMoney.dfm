object FrmMoney: TFrmMoney
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Currency Converter'
  ClientHeight = 208
  ClientWidth = 353
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
  object LblV: TLabel
    Left = 0
    Top = 0
    Width = 36
    Height = 16
    Caption = 'Value'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblInf: TLabel
    Left = 160
    Top = 191
    Width = 193
    Height = 13
    Caption = '  values of the day 05-23-2018 at 22:55'
    WordWrap = True
  end
  object EdtV: TEdit
    Left = 42
    Top = 0
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 22
    Width = 163
    Height = 91
    Caption = 'Select Initial Currency'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object RdBtnR: TRadioButton
      Left = 16
      Top = 25
      Width = 49
      Height = 17
      Caption = 'Real'
      TabOrder = 0
    end
    object RdBtnD: TRadioButton
      Left = 16
      Top = 57
      Width = 49
      Height = 17
      Caption = 'Dollar'
      TabOrder = 1
    end
    object RdBtnE: TRadioButton
      Left = 91
      Top = 25
      Width = 49
      Height = 17
      Caption = 'Euro'
      TabOrder = 2
    end
    object RdBtnBit: TRadioButton
      Left = 91
      Top = 57
      Width = 113
      Height = 17
      Caption = 'Bitcoin'
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 119
    Width = 163
    Height = 89
    Caption = 'Select Currency For Conversion'
    TabOrder = 2
    object ChcBxR: TCheckBox
      Left = 14
      Top = 25
      Width = 42
      Height = 17
      Caption = 'Real'
      TabOrder = 0
    end
    object ChcBxD: TCheckBox
      Left = 14
      Top = 57
      Width = 49
      Height = 17
      Caption = 'Dollar'
      TabOrder = 1
    end
    object ChcBxE: TCheckBox
      Left = 91
      Top = 25
      Width = 44
      Height = 17
      Caption = 'Euro'
      TabOrder = 2
    end
    object ChcBxBit: TCheckBox
      Left = 91
      Top = 57
      Width = 97
      Height = 17
      Caption = 'Bitcoin'
      TabOrder = 3
    end
  end
  object BtnCov: TButton
    Left = 169
    Top = 0
    Width = 184
    Height = 41
    Caption = 'Convert'
    TabOrder = 3
    OnClick = BtnCovClick
  end
  object GroupBox3: TGroupBox
    Left = 169
    Top = 47
    Width = 184
    Height = 138
    Caption = 'Conversion Value'
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    object LblR: TLabel
      Left = 20
      Top = 81
      Width = 33
      Height = 13
      Caption = '           '
      Color = clBtnFace
      ParentColor = False
      Transparent = False
    end
    object LblD: TLabel
      Left = 20
      Top = 27
      Width = 33
      Height = 13
      Caption = '           '
      Color = clBtnFace
      ParentColor = False
      Transparent = False
    end
    object LblE: TLabel
      Left = 20
      Top = 54
      Width = 33
      Height = 13
      Caption = '           '
      Color = clBtnFace
      ParentColor = False
      Transparent = False
    end
    object LblBit: TLabel
      Left = 20
      Top = 108
      Width = 36
      Height = 13
      Caption = '            '
      Color = clBtnFace
      ParentColor = False
      Transparent = False
    end
  end
end
