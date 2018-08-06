object FrmTime: TFrmTime
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Time Converter'
  ClientHeight = 176
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 79
    Width = 185
    Height = 97
    Caption = 'Select Time For Conversion'
    TabOrder = 1
    object ChcBxH: TCheckBox
      Left = 16
      Top = 32
      Width = 57
      Height = 17
      Caption = 'Hour'
      TabOrder = 0
    end
    object ChcBxM: TCheckBox
      Left = 16
      Top = 61
      Width = 57
      Height = 17
      Caption = 'Minute'
      TabOrder = 1
    end
    object ChcBxS: TCheckBox
      Left = 99
      Top = 32
      Width = 57
      Height = 17
      Caption = 'Second'
      TabOrder = 2
    end
    object ChcBxT: TCheckBox
      Left = 99
      Top = 61
      Width = 97
      Height = 17
      Caption = 'Thousandth'
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 393
    Height = 73
    Caption = 'Report Time to Conversion'
    TabOrder = 0
    object LblH: TLabel
      Left = 32
      Top = 21
      Width = 23
      Height = 13
      Caption = 'Hour'
    end
    object LblM: TLabel
      Left = 128
      Top = 21
      Width = 32
      Height = 13
      Caption = 'Minute'
    end
    object LblS: TLabel
      Left = 224
      Top = 21
      Width = 35
      Height = 13
      Caption = 'Second'
    end
    object LblT: TLabel
      Left = 304
      Top = 21
      Width = 57
      Height = 13
      Caption = 'Thousandth'
    end
    object EdtH: TEdit
      Left = 3
      Top = 40
      Width = 90
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object EdtM: TEdit
      Left = 99
      Top = 40
      Width = 90
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object EdtS: TEdit
      Left = 195
      Top = 40
      Width = 90
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object EdtT: TEdit
      Left = 291
      Top = 40
      Width = 90
      Height = 21
      TabOrder = 3
      Text = '0'
    end
  end
  object Pnl1: TPanel
    Left = 208
    Top = 79
    Width = 185
    Height = 97
    Caption = 'Pnl1'
    ShowCaption = False
    TabOrder = 3
    object LblFinal: TLabel
      Left = 16
      Top = 32
      Width = 30
      Height = 13
      Caption = '          '
    end
    object Lbl1: TLabel
      Left = 25
      Top = 0
      Width = 74
      Height = 13
      Alignment = taCenter
      Caption = 'Time Converter'
    end
  end
  object BtnConv: TButton
    Left = 152
    Top = 67
    Width = 75
    Height = 38
    Caption = 'Convert'
    TabOrder = 2
    OnClick = BtnConvClick
  end
end
