program ClienteFormasProject;



{$R *.dres}

uses
  Vcl.Forms,
  ClienteFormas in 'ClienteFormas.pas' {Form1},
  Facturacion.OpenSSL in 'Facturacion.OpenSSL.pas',
  libeay32 in 'libeay32.pas',
  LibEay32Plus in 'LibEay32Plus.pas',
  OpenSSLUtils in 'OpenSSLUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
