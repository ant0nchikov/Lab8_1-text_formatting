object Form2: TForm2
  Left = 358
  Top = 92
  Width = 569
  Height = 420
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 264
    Top = 64
    Width = 265
    Height = 105
    AutoSize = False
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 288
    Top = 8
    Width = 201
    Height = 20
    Caption = #1042#1099#1074#1086#1076' '#1091#1089#1083#1086#1074#1080#1103' '#1079#1072#1076#1072#1095#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 8
    Width = 117
    Height = 20
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 192
    Width = 175
    Height = 20
    Caption = #1042#1099#1074#1086#1076' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 32
    Top = 32
    Width = 201
    Height = 153
    MaxLength = 999
    TabOrder = 0
    OnKeyPress = Memo1KeyPress
  end
  object Memo2: TMemo
    Left = 32
    Top = 216
    Width = 201
    Height = 153
    TabStop = False
    ReadOnly = True
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 264
    Top = 328
    Width = 89
    Height = 41
    Caption = #1063#1090#1077#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 8
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 360
    Top = 328
    Width = 81
    Height = 41
    Caption = #1047#1072#1087#1080#1089#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 448
    Top = 328
    Width = 83
    Height = 41
    Caption = '&'#1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Kind = bkClose
  end
  object ComboBox1: TComboBox
    Left = 264
    Top = 32
    Width = 265
    Height = 24
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentFont = False
    TabOrder = 5
    TabStop = False
    OnChange = ComboBox1Change
    Items.Strings = (
      #1047#1072#1076#1072#1095#1072' 1'
      #1047#1072#1076#1072#1095#1072' 2')
  end
  object GroupBox1: TGroupBox
    Left = 264
    Top = 184
    Width = 265
    Height = 121
    Caption = #1047#1072#1076#1072#1095#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object RadioButton1: TRadioButton
      Left = 24
      Top = 32
      Width = 145
      Height = 17
      Caption = #1047#1072#1076#1072#1085#1080#1077' 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 24
      Top = 64
      Width = 193
      Height = 41
      Caption = #1047#1072#1076#1072#1085#1080#1077' 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = RadioButton2Click
    end
  end
  object Label6: TStaticText
    Left = 208
    Top = 160
    Width = 4
    Height = 4
    Color = clWhite
    ParentColor = False
    TabOrder = 7
  end
  object OpenDialog1: TOpenDialog
    Top = 56
  end
  object SaveDialog1: TSaveDialog
    Top = 88
  end
end
