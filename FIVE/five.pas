unit five;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    DrawGrid1: TDrawGrid;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    Tag:array[0..18,0..18]of integer;
    IsBlack:boolean;
  public
    { Public declarations }
    function IsWin(IsBlack:boolean):boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.IsWin(IsBlack:boolean):boolean;
Label exit1;
var
  i,j : integer;
  wTag : integer;
begin
  IsWin := false;
  if IsBlack then
    wTag := 1
  else
    wTag := 2;
  for i := 0 to 18 do
    for j := 0 to 18 do
    begin
      if (i<15) and (Tag[i,j] = wTag)
      and (Tag[i+1,j] = wTag)
      and (Tag[i+2,j] = wTag)
      and (Tag[i+3,j] = wTag)
      and (Tag[i+4,j] = wTag)
      then
      begin
        IsWin := True;
        goto exit1;
      end;
      if (i<15) and (Tag[i,j] = wTag)
      and (Tag[i,j+1] = wTag)
      and (Tag[i,j+2] = wTag)
      and (Tag[i,j+3] = wTag)
      and (Tag[i,j+4] = wTag)
      then
      begin
        IsWin := True;
        goto exit1;
      end;
      if (i<15) and (Tag[i,j] = wTag)
      and (Tag[i+1,j+1] = wTag)
      and (Tag[i+2,j+2] = wTag)
      and (Tag[i+3,j+3] = wTag)
      and (Tag[i+4,j+4] = wTag)
      then
      begin
        IsWin := True;
        goto exit1;
      end;
      if  (Tag[i,j] = wTag)
      and (Tag[i-1,j+1] = wTag)
      and (Tag[i-2,j+2] = wTag)
      and (Tag[i-3,j+3] = wTag)
      and (Tag[i-4,j+4] = wTag)
      then
      begin
        IsWin := True;
        goto exit1;
      end;
    end;
    exit1:
  end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i,j : integer;
  begin
    for i := 0 to 18 do
      for j := 0 to 18 do
      begin
        Tag[i,j] := 0;
      end;
      IsBlack := true;
  end;

procedure TForm1.DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  DrawGrid1.Canvas.Pen.Color :=clBlack;
  DrawGrid1.Canvas.Brush.Color :=clBlack;
  if Tag[acol,arow]=1 then
    DrawGrid1.Canvas.Ellipse(acol*21,arow*21,(acol+1)*21,(arow+1)*21)
  else if Tag[acol,arow]=2 then
    DrawGrid1.Canvas.Arc(acol*21,arow*21,(acol+1)*21,(arow+1)*21,acol*21,arow*21,acol*21,arow*21)
  else
  begin
    DrawGrid1.Canvas.Pen.Color :=clWhite;
    DrawGrid1.Canvas.Brush.Color :=clWhite;
    DrawGrid1.Canvas.Ellipse(acol*21,arow*21,(acol+1)*21,(arow+1)*21);
  end;
end;
procedure TForm1.DrawGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  col,row : integer;
  i,j : integer;
begin
  DrawGrid1.Canvas.Pen.Color :=clBlack;
  DrawGrid1.Canvas.Brush.Color :=clBlack;
  DrawGrid1.MouseToCell(x,y,col,row);
  if Tag[col,row]=0 then
    begin
      if IsBlack then
      begin
        DrawGrid1.Canvas.Ellipse(col*21,row*21,(col+1)*21,(row+1)*21);
        Tag[col,row]:=1;
      end else
      begin
        DrawGrid1.Canvas.Ellipse(col*21,row*21,(col+1)*21,(row+1)*21);
        Tag[col,row]:=2;
      end;
      if IsWin(IsBlack) then
      begin
        if IsBlack then
        if MessageDlg('黑方胜利',mtInFormation,[mbOK],0)=mrOK then
        begin
        for i := 0 to 18 do
          for j := 0 to 18 do
          begin
            Tag[i,j]:=0;
          end;
        DrawGrid1.Invalidate;
      end;
      if not IsBlack then
      if MessageDlg('白方胜利',mtInFormation,[mbOK],0)=mrOK then
      begin
        for i := 0 to 18 do
          for j := 0 to 18 do
          begin
            Tag[i,j]:=0;
          end;
        DrawGrid1.Invalidate;
      end;
      end;
      IsBlack:=not IsBlack;
      end;
   end;
end.




