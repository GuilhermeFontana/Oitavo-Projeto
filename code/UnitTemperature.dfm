object FrmTemperature: TFrmTemperature
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Temperature Converter'
  ClientHeight = 145
  ClientWidth = 432
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
  object Lbl1: TLabel
    Left = 0
    Top = 0
    Width = 84
    Height = 16
    Caption = 'Temperature'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 27
    Width = 233
    Height = 54
    Caption = 'Select Initial Temperature'
    TabOrder = 1
    object RdBtnC: TRadioButton
      Left = 21
      Top = 24
      Width = 62
      Height = 17
      Caption = 'Celsius'
      TabOrder = 0
    end
    object RdBtnF: TRadioButton
      Left = 89
      Top = 24
      Width = 57
      Height = 17
      Caption = 'Fahrenheit'
      TabOrder = 1
    end
    object RdBtnK: TRadioButton
      Left = 152
      Top = 24
      Width = 62
      Height = 17
      Caption = 'Kelvin'
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 87
    Width = 233
    Height = 58
    Caption = 'Select Temperature For Conversion'
    TabOrder = 2
    object ChcBxC: TCheckBox
      Left = 21
      Top = 28
      Width = 62
      Height = 17
      Caption = 'Celsius'
      TabOrder = 0
    end
    object ChcBxF: TCheckBox
      Left = 89
      Top = 28
      Width = 84
      Height = 17
      Caption = 'Fahrenheit'
      TabOrder = 1
    end
    object ChcBxK: TCheckBox
      Left = 179
      Top = 28
      Width = 49
      Height = 17
      Caption = 'Kelvin'
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 247
    Top = 31
    Width = 185
    Height = 114
    Caption = 'Conversion Temperature'
    TabOrder = 4
    object LblC: TLabel
      Left = 16
      Top = 21
      Width = 30
      Height = 13
      AutoSize = False
      Caption = '          '
    end
    object LblF: TLabel
      Left = 16
      Top = 56
      Width = 30
      Height = 13
      Caption = '          '
    end
    object LblK: TLabel
      Left = 16
      Top = 88
      Width = 30
      Height = 13
      Caption = '          '
    end
  end
  object Edt1: TEdit
    Left = 90
    Top = 0
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object BtnConv: TButton
    Left = 288
    Top = 0
    Width = 97
    Height = 25
    Caption = 'Convert'
    TabOrder = 3
    OnClick = BtnConvClick
  end
end
