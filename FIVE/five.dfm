object Form1: TForm1
  Left = 192
  Top = 130
  Width = 434
  Height = 458
  Caption = #20116#23376#26827
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 417
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    Caption = 'Panel1'
    TabOrder = 0
    object DrawGrid1: TDrawGrid
      Left = 0
      Top = 0
      Width = 409
      Height = 409
      Cursor = crHandPoint
      ColCount = 19
      Ctl3D = False
      DefaultColWidth = 20
      DefaultRowHeight = 20
      FixedCols = 0
      RowCount = 19
      FixedRows = 0
      ParentCtl3D = False
      TabOrder = 0
      OnDrawCell = DrawGrid1DrawCell
      OnMouseDown = DrawGrid1MouseDown
    end
  end
  object Timer1: TTimer
    Left = 136
    Top = 120
  end
end
