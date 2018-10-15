# Delphi-example
Ejemplo de Timbrado con Delphi

## Requerimientos
* [Delphi 10.2 comunity edition](https://www.embarcadero.com/products/delphi/starter)
* Crear un recurso con el nombre _CADENAORIGINAL33_ que hara referencia a nuestro archivo _cadenaoriginal_3_3.xslt_ que nos ayudara a crear la cadena original de nuestro cfdi

![Delphi](http://formasdigitales.mx/images/github/clientedelphi.png "Cliente Delphi")


El arhivo _ClienteFormas.pas_ contiene el codigo para poder hacer el sellado del cdfi, y tambien es el codigo de la intefaz grafica que nos permite cargar los archivos necesarios para hacer el sellado.


```Delphi
function SellarXML(const xmlPath : string; const certPath : string; const keyPath : string) : string;
```
Contiene la funcion llamada _SellarXML_ la cual recibe el archivo xml que queremos sellar, el certificado y la llave para poder crear el sello y enviarlo al servicio web, dentro de esta funcion hacemos las llamadas a las demas funciones para generar la cadena original, el sello, y enviarlo al servicio web.

```Delphi
function GetCadenaOriginal(const document: IXMLDocument) : string;
```
Esta funcion le enviamos el documento xml para que nos genere la cadena original del documento la cual utilizaremos para generar el sello del cfdi.

```Delphi
function GetCertificadoInfo(const certificadoStringPath : string) : TX509Certificate;
```
Esta funcion nos regresa la informacion del certificado el _serialNumber_ que asignaremos a nuestro xml al atributo _NoCertificado_ tambien el contenido del certificado que tenemos que convertir a base64 para enviarlo en el atributo _Certificado_ para que sea posible hacer el timbrado.

```Delphi
function GetContenidoBase64(sCertificadoBase64 : string): string;
```
Nos regresa el contenido del certificado en base64.

Lo siguiente es generar el sello, para esto utilizaremos las siguientes funciones de la clase _TOpenSSL_ que se encuentra en el archivo _Facturacion.OpenSSL.pas_  
```Delphi
    procedure AsignarLlavePrivada(const aRutaArchivoLlavePrivada: String; const aContrasena: String);
    function HacerDigestion(const aCadena: WideString; const aTipoDigestion: TMetodoDigestion): String;
```

Primero asignamos la llave privada para luego utilizarla para generar el sello una vez obtenido el sello actualizamos los atributos en el xml para enviarlo al servicio soap de la siguiente forma:

```Delphi
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
```

Si todo sale bien el servicio nos respondera con un xml timbrado de lo contrario nos mostrara un error con la cuasa de este.


