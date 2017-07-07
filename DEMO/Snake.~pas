unit Snake;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Timer1: TTimer;
    Timer2: TTimer;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    About1: TMenuItem;
    Panel1: TPanel;
    PaintBox1: TPaintBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x,y : array [1..100] of integer;
  snaken : integer;
  sum :integer;
  fx : integer;
  a,b : integer;
  ss1,ss2,ss3,ss4 : integer;

implementation

uses over;

{$R *.dfm}

procedure TForm1.Button3Click(Sender: TObject);
begin
  fx := 1;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  fx := 2;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  fx := 4;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  fx := 3;
end;

procedure TForm1.N4Click(Sender: TObject);
 var
  i : integer;
  begin
  sum := 0;
    PaintBox1.Canvas.Pen.Color := clBtnFace;
    PaintBox1.Canvas.Brush.Color := clBtnFace;
    PaintBox1.Canvas.Rectangle(0,0,280,390);
    Timer2.Enabled := True;
    for i := 1 to 10 do
    begin
    x[i] := 10 + i * 10;
    y[i] := 260;
    PaintBox1.Canvas.Pen.Color := clBtnFace;
    PaintBox1.Canvas.Brush.Color := clgreen;
    PaintBox1.Canvas.Rectangle(x[i],y[i],x[i]+10,y[i]+10);
    end;
    Timer1.Enabled := True;
fx := 4;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  i : integer;
  begin
    if (fx = 4) then //diretor is right;
    begin
      PaintBox1.Canvas.Pen.Color := clBtnFace;
      PaintBox1.Canvas.Brush.Color := clBtnFace;
      paintBox1.Canvas.Rectangle(x[1],y[1],x[1]+10,y[1]+10);
      for i := 1 to 9+sum do
        begin
          x[i] := x[i + 1];
          y[i] := y[i + 1];
        end;
          x[10+sum] := x[9+sum] + 10;
          y[10+sum] := y[9+sum];
          PaintBox1.Canvas.Brush.Color := clgreen;
          PaintBox1.Canvas.Rectangle(x[10+sum],y[10+sum],x[10+sum] + 10,y[10+sum] + 10);
      end;

  if (fx = 2) then //diretor is down;
    begin
      PaintBox1.Canvas.Pen.Color := clBtnFace;
      PaintBox1.Canvas.Brush.Color := clBtnFace;
      paintBox1.Canvas.Rectangle(x[1],y[1],x[1]+10,y[1]+10);
      for i := 1 to 9+sum do
      begin
        x[i] := x[i + 1];
        y[i] := y[i + 1];
      end;
      x[10+sum] := x[9+sum];
      y[10+sum] := y[9+sum] + 10;
      PaintBox1.Canvas.Brush.Color := clgreen;
      paintBox1.Canvas.Rectangle(x[10+sum],y[10+sum],x[10+sum]+10,y[10+sum]+10);
    end;

  if (fx = 1) then //diretor is up;
    begin
    PaintBox1.Canvas.Pen.Color := clBtnFace;
    PaintBox1.Canvas.Brush.Color := clBtnFace;
    paintBox1.Canvas.Rectangle(x[1],y[1],x[1]+10,y[1]+10);
    for i := 1 to 9+sum do
      begin
        x[i] := x[i + 1];
        y[i] := y[i + 1];
      end;
      x[10+sum] := x[9+sum];
      y[10+sum] := y[9+sum] - 10;
      PaintBox1.Canvas.Brush.Color := clgreen;
      paintBox1.Canvas.Rectangle(x[10+sum],y[10+sum],x[10+sum]+10,y[10+sum]+10);
      end;

  if (fx = 3) then //diretor is left;
  begin
    PaintBox1.Canvas.Pen.Color := clBtnFace;
    PaintBox1.Canvas.Brush.Color := clBtnFace;
    paintBox1.Canvas.Rectangle(x[1],y[1],x[1]+10,y[1]+10);
    for i := 1 to 9+sum do
      begin
        x[i] := x[i + 1];
        y[i] := y[i + 1];
      end;
      x[10+sum] := x[9+sum] - 10;
      y[10+sum] := y[9+sum];
      PaintBox1.Canvas.Brush.Color := clgreen;
      PaintBox1.Canvas.Pen.Color := clBtnFace;
      paintBox1.Canvas.Rectangle(x[10+sum],y[10+sum],x[10+sum]+10,y[10+sum]+10);
  end;

  ss3 := 0;
  ss4 := 380;
  ss1 := 0;
  ss2 := 270;
  if (x[10+sum] < ss3) then
    begin
      Timer1.Enabled := False;
      timer2.Enabled := False;
      Form2.Show;
      end;
  if (x[10+sum] > ss4 - 10) then
    begin
      Timer1.Enabled := False;
      timer2.Enabled := False;
      Form2.Show;
      end;
  if (y[10+sum] < ss1) then
    begin
      Timer1.Enabled := False;
      timer2.Enabled := False;
      Form2.Show;
      end;
  if (y[10+sum] > ss2 - 10) then
    begin
      Timer1.Enabled := False;
      timer2.Enabled := False;
      Form2.Show;
      end;
      
  if ((x[10+sum] = a*10)and(y[10+sum] = b*10)) then
    begin
      PaintBox1.Canvas.Brush.Color := clBtnFace;
      PaintBox1.Canvas.Rectangle(x[1],y[1],x[1]+10,y[1]+10);
      inc(sum);
      for i := 1 to 9+sum do
      begin
        x[11+sum-i] := x[10+sum-i];
        y[11+sum-i] := y[10+sum-i];
      end;
      timer2.Enabled := true;
      end;

  if x[10+sum] <> 0 then
  begin
  for i := 1 to 9 do
  if ((x[10+sum] = x[i]) And (y[10+sum] = y[i])) then
    begin
      Timer1.Enabled := False;
      timer2.Enabled := False;
      Form2.Show;
      end;
      end;
  end;

procedure TForm1.Timer2Timer(Sender: TObject);
  begin
  Timer2.Interval := 50;
  a := random(37);
  b := random(26);
  begin
  if x[1]<>0 then
  begin
  PaintBox1.Canvas.Brush.Color := clRed;
  PaintBox1.Canvas.Rectangle(a*10,b*10,a*10+10,b*10+10);
  Label5.Caption := IntToStr(sum);
  Timer2.Enabled := false;
  end;
  end
end;


procedure TForm1.N6Click(Sender: TObject);
begin
  Timer1.Interval := 500;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
  Timer1.Interval := 200;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
  Timer1.Interval := 100;
end;

end.


