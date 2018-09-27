object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cliente Formas Digitales'
  ClientHeight = 682
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 168
    Width = 70
    Height = 13
    Caption = 'XML SELLADO:'
  end
  object txtXML: TEdit
    Left = 20
    Top = 20
    Width = 300
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 350
    Top = 20
    Width = 100
    Height = 25
    Caption = 'Cargar XML'
    TabOrder = 1
    OnClick = Button1Click
  end
  object txtCertificado: TEdit
    Left = 20
    Top = 60
    Width = 300
    Height = 21
    TabOrder = 2
  end
  object Button2: TButton
    Left = 350
    Top = 60
    Width = 100
    Height = 25
    Caption = 'Cargar Certificado'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 350
    Top = 100
    Width = 100
    Height = 25
    Caption = 'Cargar Key'
    TabOrder = 4
    OnClick = Button3Click
  end
  object txtKey: TEdit
    Left = 20
    Top = 102
    Width = 300
    Height = 21
    TabOrder = 5
  end
  object Button4: TButton
    Left = 156
    Top = 136
    Width = 101
    Height = 25
    Caption = 'Sellar XML'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Memo1: TMemo
    Left = 20
    Top = 190
    Width = 430
    Height = 443
    TabOrder = 7
  end
end
