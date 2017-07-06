program Project1;

uses
  Forms,
  Snake in 'Snake.pas' {Form1},
  over in 'over.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
