unit ClienteFormas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, XMLDoc, XMLIntf, MSXML, Xml.xmldom, OpenSSLUtils, Facturacion.OpenSSL,
  WSTimbradoCFDIService;

type
  TForm1 = class(TForm)
    txtXML: TEdit;
    Button1: TButton;
    txtCertificado: TEdit;
    Button2: TButton;
    Button3: TButton;
    txtKey: TEdit;
    Button4: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  openDialog : topendialog;
  Cerificate : TX509Certificate;
  Form1 : TForm1;

implementation

{$R *.dfm}
function UpdateFecha(const fileName : string) : IXMLDocument;
var
document : IXMLDocument;
comprobantteNode : IDOMNode;
fecha : TDateTime;
fechaStr : string;
 begin

fecha := Now;
document := LoadXMLDocument(fileName);
comprobantteNode := document.DOMDocument.getElementsByTagName('cfdi:Comprobante').item[0];

fechaStr := FormatDateTime('yyyy-mm-dd hh:nn:ss', fecha);
fechaStr := fechaStr.Replace(' ', 'T');
comprobantteNode.attributes.getNamedItem('Fecha').nodeValue := fechaStr;
Result := document;
end;



function GetCertificadoInfo(const certificadoStringPath : string) : TX509Certificate;
var
Certificate :TX509Certificate;
begin
  try
    Certificate := TX509Certificate.Create;
    try
      Certificate.LoadFromFile(certificadoStringPath);
    finally
      //Certificate.Free;
    end;
  finally
   end;
Result := Certificate
end;


function GetCadenaOriginal(const document: IXMLDocument) : string;
 var xmlDoc, xslStyle : IXMLDOMDocument;
 xmlst : IXMLDocument;
 transform : WideString;
 RS: TResourceStream;
 sstream: TStringStream;
 XSLProcessor: IXSLProcessor;
 XSLTemplate: IXSLTemplate;
 begin
 try
 RS := TResourceStream.Create(HInstance, 'CADENAORIGINAL33', RT_RCDATA);
 try
   sstream := TStringStream.Create;
   RS.SaveToStream( sstream );
   xmlst := LoadXMLData(sstream.DataString);

   xslStyle := CoDOMDocument60.Create;
   xslStyle.async := False;
   xslStyle.resolveExternals := True;
   xslStyle.validateOnParse := True;
   xslStyle.loadXML(sstream.DataString);

   xmlDoc := CoDOMDocument60.Create;
   xmlDoc.loadXML(document.XML.Text);

   XSLTemplate := CoXSLTemplate60.Create;
   XSLTemplate.stylesheet := xslStyle;
   XSLProcessor := XSLTemplate.createProcessor;
   XSLProcessor.input :=  xmlDoc;

   if XSLProcessor.transform then
      transform := XSLProcessor.output;

   Result := transform;
 finally
     RS.Free;
     sstream.Free;
 end;

except
     on E: Exception do
      Result := E.Message;
     end;

 end;

 function GetContenidoBase64(sCertificadoBase64 : string): string;
const
  _CADENA_INICIO_CERTIFICADO = '-----BEGIN CERTIFICATE-----';
  _CADENA_FIN_CERTIFICADO    = '-----END CERTIFICATE-----';
begin
  // Quita los encabezados, pie y retornos de carro del certificado
  sCertificadoBase64:=StringReplace(sCertificadoBase64, #13, '', [rfReplaceAll, rfIgnoreCase]);
  sCertificadoBase64:=StringReplace(sCertificadoBase64, #10, '', [rfReplaceAll, rfIgnoreCase]);

  // Quitamos encabezado del certificado
  sCertificadoBase64:=StringReplace(sCertificadoBase64, _CADENA_INICIO_CERTIFICADO, '', [rfReplaceAll, rfIgnoreCase]);
  // Quitamos el pie del certificado
  Result:=StringReplace(sCertificadoBase64, _CADENA_FIN_CERTIFICADO, '', [rfReplaceAll, rfIgnoreCase]);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 openDialog := TOpenDialog.Create(self);
   openDialog.InitialDir:= GetCurrentDir;
   openDialog.Options:= [ofFileMustExist];
   openDialog.Filter:= 'XML files|*.xml';
   openDialog.FilterIndex:=1;
   if openDialog.Execute then
      begin
       txtXML.Text := openDialog.FileName;
      end
   else
   openDialog.Free;
end;

 function SellarXML(const xmlPath : string; const certPath : string; const keyPath : string) : string;
var
cadenaOriginal : RawByteString;
certificadoString, noCertificado, sello, fechaStr, xmlString : string;
Certificado : TX509Certificate;
fInstanciaOpenSSL: IOpenSSL;
comprobanteNode : IDOMNode;
fecha : TDateTime;
document : IXMLDocument;
timbradoWS : WSTimbradoCFDI;
parameters : TimbrarCFDI;
acc : accesos;
response : TimbrarCFDIResponse;

begin
fecha := Now;
document := LoadXMLDocument(xmlPath);

comprobanteNode := document.DOMDocument.getElementsByTagName('cfdi:Comprobante').item[0];

fechaStr := FormatDateTime('yyyy-mm-dd hh:nn:ss', fecha);
fechaStr := fechaStr.Replace(' ', 'T');
Certificado :=  GetCertificadoInfo(certPath);
noCertificado := Certificado.SerialNumber;

comprobanteNode.attributes.getNamedItem('Fecha').nodeValue := fechaStr;
comprobanteNode.attributes.getNamedItem('NoCertificado').nodeValue := noCertificado;
 //document := UpdateFecha(txtXML.Text);
 cadenaOriginal := GetCadenaOriginal(document);

 ShowMessage(cadenaOriginal);

 certificadoString := GetContenidoBase64(Certificado.AsBase64);

 fInstanciaOpenSSL := TOpenSSL.Create;
 fInstanciaOpenSSL.AsignarLlavePrivada(keyPath, '12345678a');

 sello := fInstanciaOpenSSL.HacerDigestion(cadenaOriginal, tdSHA256);

comprobanteNode := document.DOMDocument.getElementsByTagName('cfdi:Comprobante').item[0];


comprobanteNode.attributes.getNamedItem('Certificado').nodeValue := certificadoString;

comprobanteNode.attributes.getNamedItem('Sello').nodeValue := sello;

document.SaveToXML(xmlString);  


timbradoWS := GetWSTimbradoCFDI(False, '', nil);
parameters := TimbrarCFDI.Create;

acc := accesos.Create;
acc.password := 'pruebasWS';
acc.usuario := 'pruebasWS';

parameters.accesos := acc;
parameters.comprobante := xmlString;

response := timbradoWS.TimbrarCFDI(parameters);

//response.acuseCFDI.xmlTimbrado;
if response.acuseCFDI.error.Equals('') then
  Result := response.acuseCFDI.xmlTimbrado
else
begin
    Result := response.acuseCFDI.codigoError + '----' + response.acuseCFDI.error
end;


end;

 

procedure TForm1.Button2Click(Sender: TObject);
begin
 openDialog := TOpenDialog.Create(self);
   openDialog.InitialDir:= GetCurrentDir;
   openDialog.Options:= [ofFileMustExist];
   openDialog.Filter:= 'Certificate files|*.cer| Pem files| *.pem';
   openDialog.FilterIndex:=1;
   if openDialog.Execute then
      begin
       txtCertificado.Text := openDialog.FileName;
      end
   else
   openDialog.Free;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 openDialog := TOpenDialog.Create(self);
   openDialog.InitialDir := GetCurrentDir;
   openDialog.Options := [ofFileMustExist];
   openDialog.Filter := 'Key files|*.key';
   openDialog.FilterIndex := 1;
   if openDialog.Execute then
      begin
       txtKey.Text := openDialog.FileName;
      end
   else
   openDialog.Free;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Memo1.Lines.Text := SellarXML(txtXML.Text, txtCertificado.Text, txtKey.Text);
end;

end.
