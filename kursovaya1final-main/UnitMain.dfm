object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 611
    Height = 57
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 609
    object Edit1: TEdit
      Left = 1
      Top = 1
      Width = 609
      Height = 55
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Orientation = 1
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 607
      ExplicitHeight = 51
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 611
    Height = 384
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 609
    ExplicitHeight = 376
    object btnA: TButton
      Left = 1
      Top = 80
      Width = 99
      Height = 41
      Caption = 'btnA'
      TabOrder = 0
      OnClick = btnAClick
    end
    object btnB: TButton
      Left = 0
      Top = 160
      Width = 100
      Height = 41
      Caption = 'btnB'
      TabOrder = 1
      OnClick = btnBClick
    end
    object btnC: TButton
      Left = 1
      Top = 240
      Width = 99
      Height = 41
      Caption = 'btnC'
      TabOrder = 2
      OnClick = btnCClick
    end
    object btnD: TButton
      Left = 0
      Top = 320
      Width = 100
      Height = 41
      Caption = 'btnD'
      TabOrder = 3
      OnClick = btnDClick
    end
    object btnAnd: TButton
      Left = 209
      Top = 80
      Width = 99
      Height = 41
      Caption = 'btnAnd'
      TabOrder = 4
      OnClick = btnAndClick
    end
    object btnNot: TButton
      Left = 209
      Top = 160
      Width = 99
      Height = 41
      Caption = 'btnNot'
      TabOrder = 5
      OnClick = btnNotClick
    end
    object btnOr: TButton
      Left = 209
      Top = 240
      Width = 98
      Height = 41
      Caption = 'btnOr'
      TabOrder = 6
      OnClick = btnOrClick
    end
    object btnXor: TButton
      Left = 209
      Top = 320
      Width = 99
      Height = 41
      Caption = 'btnXor'
      TabOrder = 7
      OnClick = btnXorClick
    end
    object btnTruthTable: TButton
      Left = 441
      Top = 80
      Width = 98
      Height = 41
      Caption = 'btnTruthTable'
      TabOrder = 8
      OnClick = btnTruthTableClick
    end
    object btnCalc: TButton
      Left = 73
      Top = 6
      Width = 99
      Height = 41
      Caption = 'btnCalc'
      TabOrder = 9
      OnClick = btnCalcClick
    end
    object btnCleanAll: TButton
      Left = 209
      Top = 5
      Width = 99
      Height = 42
      Caption = 'btnCleanAll'
      TabOrder = 10
      OnClick = btnCleanAllClick
    end
    object btnBackspase: TButton
      Left = 345
      Top = 6
      Width = 98
      Height = 42
      Caption = 'btnBackspase'
      TabOrder = 11
      OnClick = btnBackspaseClick
    end
    object btnSdnf: TButton
      Left = 441
      Top = 160
      Width = 98
      Height = 41
      Caption = 'btnSdnf'
      TabOrder = 12
      OnClick = btnSdnfClick
    end
    object btnSknf: TButton
      Left = 441
      Top = 240
      Width = 98
      Height = 41
      Caption = 'btnSknf'
      TabOrder = 13
      OnClick = btnSknfClick
    end
    object btnPolinomZh: TButton
      Left = 441
      Top = 320
      Width = 97
      Height = 41
      Caption = 'btnPolinomZh'
      TabOrder = 14
      OnClick = btnPolinomZhClick
    end
    object btnMacClasky: TButton
      Left = 336
      Top = 168
      Width = 75
      Height = 25
      Caption = 'btnMacClasky'
      TabOrder = 15
      OnClick = btnMacClaskyClick
    end
  end
end
