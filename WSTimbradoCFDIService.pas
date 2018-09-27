// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://dev33.facturacfdi.mx/WSTimbradoCFDIService?wsdl
//  >Import : http://dev33.facturacfdi.mx/WSTimbradoCFDIService?wsdl>0
//  >Import : http://dev33.facturacfdi.mx:80/WSTimbradoCFDIService?xsd=1
//  >Import : http://dev33.facturacfdi.mx/WSTimbradoCFDIService?wsdl>1
//  >Import : http://dev33.facturacfdi.mx:80/WSTimbradoCFDIService?xsd=2
//  >Import : http://www.w3.org/2005/05/xmlmime
//  >Import : http://dev33.facturacfdi.mx/WSTimbradoCFDIService?wsdl>2
//  >Import : http://dev33.facturacfdi.mx:80/WSTimbradoCFDIService?xsd=3
// Encoding : UTF-8
// Version  : 1.0
// (19/09/2018 05:48:52 p. m. - - $Rev: 90173 $)
// ************************************************************************ //

unit WSTimbradoCFDIService;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;
  IS_ATTR = $0010;
  IS_TEXT = $0020;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:schema          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:anyURI          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:ID              - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:contentType     - "http://www.w3.org/2005/05/xmlmime"[GblAttr]
  // !:integer         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  Cancelacion_1Response2 = class;               { "http://wservicios/"[Lit][GblCplx] }
  TimbrarCFDIResponse2 = class;                 { "http://wservicios/"[Lit][GblCplx] }
  Cancelacion_2Response2 = class;               { "http://wservicios/"[Lit][GblCplx] }
  TimbrarCFDIResponse  = class;                 { "http://wservicios/"[Lit][GblElm] }
  Cancelacion_1Response = class;                { "http://wservicios/"[Lit][GblElm] }
  Cancelacion_2Response = class;                { "http://wservicios/"[Lit][GblElm] }
  acuseCFDI            = class;                 { "http://wservicios/"[GblCplx] }
  Cancelacion_22       = class;                 { "http://wservicios/"[Lit][GblCplx] }
  Cancelacion_2        = class;                 { "http://wservicios/"[Lit][GblElm] }
  folio                = class;                 { "http://wservicios/"[GblCplx] }
  wsCancelacionResponse = class;                { "http://wservicios/"[GblCplx] }
  TimbrarCFDI2         = class;                 { "http://wservicios/"[Lit][GblCplx] }
  TimbrarCFDI          = class;                 { "http://wservicios/"[Lit][GblElm] }
  X509DataType         = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  SignedInfoType       = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  SignatureType        = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  RSAKeyValueType      = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  accesos              = class;                 { "http://wservicios/"[GblCplx] }
  TimbrarZip2          = class;                 { "http://wservicios/"[Lit][GblCplx] }
  TimbrarZip           = class;                 { "http://wservicios/"[Lit][GblElm] }
  TimbrarZipResponse2  = class;                 { "http://wservicios/"[Lit][GblCplx] }
  TimbrarZipResponse   = class;                 { "http://wservicios/"[Lit][GblElm] }
  Cancelacion_12       = class;                 { "http://wservicios/"[Lit][GblCplx] }
  Cancelacion_1        = class;                 { "http://wservicios/"[Lit][GblElm] }
  acuseZip             = class;                 { "http://wservicios/"[GblCplx] }
  acuseRecepcionZip    = class;                 { "http://wservicios/"[GblCplx] }
  ReferenceType        = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  TransformType        = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  base64Binary         = class;                 { "http://www.w3.org/2005/05/xmlmime"[GblCplx] }
  Signature            = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  X509IssuerSerialType = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }



  // ************************************************************************ //
  // XML       : Cancelacion_1Response, global, <complexType>
  // Namespace : http://wservicios/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  Cancelacion_1Response2 = class(TRemotable)
  private
    Freturn: wsCancelacionResponse;
    Freturn_Specified: boolean;
    procedure Setreturn(Index: Integer; const AwsCancelacionResponse: wsCancelacionResponse);
    function  return_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property return: wsCancelacionResponse  Index (IS_OPTN or IS_UNQL) read Freturn write Setreturn stored return_Specified;
  end;

    contentType = string;

  // ************************************************************************ //
  // XML       : TimbrarCFDIResponse, global, <complexType>
  // Namespace : http://wservicios/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TimbrarCFDIResponse2 = class(TRemotable)
  private
    FacuseCFDI: acuseCFDI;
    FacuseCFDI_Specified: boolean;
    procedure SetacuseCFDI(Index: Integer; const AacuseCFDI: acuseCFDI);
    function  acuseCFDI_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property acuseCFDI: acuseCFDI  Index (IS_OPTN or IS_UNQL) read FacuseCFDI write SetacuseCFDI stored acuseCFDI_Specified;
  end;

  wsFoliosResponse = array of folio;            { "http://wservicios/"[GblCplx] }


  // ************************************************************************ //
  // XML       : Cancelacion_2Response, global, <complexType>
  // Namespace : http://wservicios/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  Cancelacion_2Response2 = class(TRemotable)
  private
    Freturn: wsCancelacionResponse;
    Freturn_Specified: boolean;
    procedure Setreturn(Index: Integer; const AwsCancelacionResponse: wsCancelacionResponse);
    function  return_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property return: wsCancelacionResponse  Index (IS_OPTN or IS_UNQL) read Freturn write Setreturn stored return_Specified;
  end;

  Array_Of_acuseZip = array of acuseZip;        { "http://wservicios/"[GblUbnd] }


  // ************************************************************************ //
  // XML       : TimbrarCFDIResponse, global, <element>
  // Namespace : http://wservicios/
  // Info      : Wrapper
  // ************************************************************************ //
  TimbrarCFDIResponse = class(TimbrarCFDIResponse2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Cancelacion_1Response, global, <element>
  // Namespace : http://wservicios/
  // Info      : Wrapper
  // ************************************************************************ //
  Cancelacion_1Response = class(Cancelacion_1Response2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Cancelacion_2Response, global, <element>
  // Namespace : http://wservicios/
  // Info      : Wrapper
  // ************************************************************************ //
  Cancelacion_2Response = class(Cancelacion_2Response2)
  private
  published
  end;


  { ================== WARNING ================== }
  { WARNING - Attribute - Name:Algorithm, Type:string }
  { WARNING - Attribute - Name:HMACOutputLength, Type:Int64 }
  SignatureMethodType = TXMLData;      { "http://www.w3.org/2000/09/xmldsig#"[GblCplxMxd] }

  Array_Of_string = array of string;            { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : acuseCFDI, global, <complexType>
  // Namespace : http://wservicios/
  // ************************************************************************ //
  acuseCFDI = class(TRemotable)
  private
    FcodigoError: string;
    FcodigoError_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    FxmlTimbrado: string;
    FxmlTimbrado_Specified: boolean;
    procedure SetcodigoError(Index: Integer; const Astring: string);
    function  codigoError_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
    procedure SetxmlTimbrado(Index: Integer; const Astring: string);
    function  xmlTimbrado_Specified(Index: Integer): boolean;
  published
    property codigoError: string  Index (IS_OPTN or IS_UNQL) read FcodigoError write SetcodigoError stored codigoError_Specified;
    property error:       string  Index (IS_OPTN or IS_UNQL) read Ferror write Seterror stored error_Specified;
    property xmlTimbrado: string  Index (IS_OPTN or IS_UNQL) read FxmlTimbrado write SetxmlTimbrado stored xmlTimbrado_Specified;
  end;



  // ************************************************************************ //
  // XML       : Cancelacion_2, global, <complexType>
  // Namespace : http://wservicios/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  Cancelacion_22 = class(TRemotable)
  private
    FrfcEmisor: string;
    FrfcEmisor_Specified: boolean;
    Ffecha: string;
    Ffecha_Specified: boolean;
    Ffolios: Array_Of_string;
    Ffolios_Specified: boolean;
    FsignatureType: SignatureType;
    FsignatureType_Specified: boolean;
    Faccesos: accesos;
    Faccesos_Specified: boolean;
    procedure SetrfcEmisor(Index: Integer; const Astring: string);
    function  rfcEmisor_Specified(Index: Integer): boolean;
    procedure Setfecha(Index: Integer; const Astring: string);
    function  fecha_Specified(Index: Integer): boolean;
    procedure Setfolios(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  folios_Specified(Index: Integer): boolean;
    procedure SetsignatureType(Index: Integer; const ASignatureType: SignatureType);
    function  signatureType_Specified(Index: Integer): boolean;
    procedure Setaccesos(Index: Integer; const Aaccesos: accesos);
    function  accesos_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property rfcEmisor:     string           Index (IS_OPTN or IS_UNQL) read FrfcEmisor write SetrfcEmisor stored rfcEmisor_Specified;
    property fecha:         string           Index (IS_OPTN or IS_UNQL) read Ffecha write Setfecha stored fecha_Specified;
    property folios:        Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_UNQL) read Ffolios write Setfolios stored folios_Specified;
    property signatureType: SignatureType    Index (IS_OPTN or IS_UNQL) read FsignatureType write SetsignatureType stored signatureType_Specified;
    property accesos:       accesos          Index (IS_OPTN or IS_UNQL) read Faccesos write Setaccesos stored accesos_Specified;
  end;



  // ************************************************************************ //
  // XML       : Cancelacion_2, global, <element>
  // Namespace : http://wservicios/
  // Info      : Wrapper
  // ************************************************************************ //
  Cancelacion_2 = class(Cancelacion_22)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : folio, global, <complexType>
  // Namespace : http://wservicios/
  // ************************************************************************ //
  folio = class(TRemotable)
  private
    FestatusUUID: string;
    FestatusUUID_Specified: boolean;
    Fmensaje: string;
    Fmensaje_Specified: boolean;
    Fuuid: string;
    Fuuid_Specified: boolean;
    procedure SetestatusUUID(Index: Integer; const Astring: string);
    function  estatusUUID_Specified(Index: Integer): boolean;
    procedure Setmensaje(Index: Integer; const Astring: string);
    function  mensaje_Specified(Index: Integer): boolean;
    procedure Setuuid(Index: Integer; const Astring: string);
    function  uuid_Specified(Index: Integer): boolean;
  published
    property estatusUUID: string  Index (IS_OPTN or IS_UNQL) read FestatusUUID write SetestatusUUID stored estatusUUID_Specified;
    property mensaje:     string  Index (IS_OPTN or IS_UNQL) read Fmensaje write Setmensaje stored mensaje_Specified;
    property uuid:        string  Index (IS_OPTN or IS_UNQL) read Fuuid write Setuuid stored uuid_Specified;
  end;



  // ************************************************************************ //
  // XML       : wsCancelacionResponse, global, <complexType>
  // Namespace : http://wservicios/
  // ************************************************************************ //
  wsCancelacionResponse = class(TRemotable)
  private
    Facuse: string;
    Facuse_Specified: boolean;
    FcodEstatus: string;
    FcodEstatus_Specified: boolean;
    Ffolios: wsFoliosResponse;
    Ffolios_Specified: boolean;
    Fmensaje: string;
    Fmensaje_Specified: boolean;
    procedure Setacuse(Index: Integer; const Astring: string);
    function  acuse_Specified(Index: Integer): boolean;
    procedure SetcodEstatus(Index: Integer; const Astring: string);
    function  codEstatus_Specified(Index: Integer): boolean;
    procedure Setfolios(Index: Integer; const AwsFoliosResponse: wsFoliosResponse);
    function  folios_Specified(Index: Integer): boolean;
    procedure Setmensaje(Index: Integer; const Astring: string);
    function  mensaje_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property acuse:      string            Index (IS_OPTN or IS_UNQL) read Facuse write Setacuse stored acuse_Specified;
    property codEstatus: string            Index (IS_OPTN or IS_UNQL) read FcodEstatus write SetcodEstatus stored codEstatus_Specified;
    property folios:     wsFoliosResponse  Index (IS_OPTN or IS_UNQL) read Ffolios write Setfolios stored folios_Specified;
    property mensaje:    string            Index (IS_OPTN or IS_UNQL) read Fmensaje write Setmensaje stored mensaje_Specified;
  end;



  // ************************************************************************ //
  // XML       : TimbrarCFDI, global, <complexType>
  // Namespace : http://wservicios/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TimbrarCFDI2 = class(TRemotable)
  private
    Faccesos: accesos;
    Faccesos_Specified: boolean;
    Fcomprobante: string;
    Fcomprobante_Specified: boolean;
    procedure Setaccesos(Index: Integer; const Aaccesos: accesos);
    function  accesos_Specified(Index: Integer): boolean;
    procedure Setcomprobante(Index: Integer; const Astring: string);
    function  comprobante_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property accesos:     accesos  Index (IS_OPTN or IS_UNQL) read Faccesos write Setaccesos stored accesos_Specified;
    property comprobante: string   Index (IS_OPTN or IS_UNQL) read Fcomprobante write Setcomprobante stored comprobante_Specified;
  end;



  // ************************************************************************ //
  // XML       : TimbrarCFDI, global, <element>
  // Namespace : http://wservicios/
  // Info      : Wrapper
  // ************************************************************************ //
  TimbrarCFDI = class(TimbrarCFDI2)
  private
  published
  end;

  KeyValueType = array of RSAKeyValueType;      { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }


  // ************************************************************************ //
  // XML       : X509DataType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  X509DataType = class(TRemotable)
  private
    FX509IssuerSerial: X509IssuerSerialType;
    FX509IssuerSerial_Specified: boolean;
    FX509Certificate: TByteDynArray;
    FX509Certificate_Specified: boolean;
    procedure SetX509IssuerSerial(Index: Integer; const AX509IssuerSerialType: X509IssuerSerialType);
    function  X509IssuerSerial_Specified(Index: Integer): boolean;
    procedure SetX509Certificate(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  X509Certificate_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property X509IssuerSerial: X509IssuerSerialType  Index (IS_OPTN) read FX509IssuerSerial write SetX509IssuerSerial stored X509IssuerSerial_Specified;
    property X509Certificate:  TByteDynArray         Index (IS_OPTN) read FX509Certificate write SetX509Certificate stored X509Certificate_Specified;
  end;


  { ================== WARNING ================== }
  { WARNING - Attribute - Name:Algorithm, Type:string }
  CanonicalizationMethodType = TXMLData;      { "http://www.w3.org/2000/09/xmldsig#"[GblCplxMxd] }



  // ************************************************************************ //
  // XML       : SignedInfoType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignedInfoType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FCanonicalizationMethod: CanonicalizationMethodType;
    FCanonicalizationMethod_Specified: boolean;
    FSignatureMethod: SignatureMethodType;
    FSignatureMethod_Specified: boolean;
    FReference: ReferenceType;
    FReference_Specified: boolean;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    procedure SetCanonicalizationMethod(Index: Integer; const ACanonicalizationMethodType: CanonicalizationMethodType);
    function  CanonicalizationMethod_Specified(Index: Integer): boolean;
    procedure SetSignatureMethod(Index: Integer; const ASignatureMethodType: SignatureMethodType);
    function  SignatureMethod_Specified(Index: Integer): boolean;
    procedure SetReference(Index: Integer; const AReferenceType: ReferenceType);
    function  Reference_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Id:                     string                      Index (IS_ATTR or IS_OPTN) read FId write SetId stored Id_Specified;
    property CanonicalizationMethod: CanonicalizationMethodType  Index (IS_OPTN) read FCanonicalizationMethod write SetCanonicalizationMethod stored CanonicalizationMethod_Specified;
    property SignatureMethod:        SignatureMethodType         Index (IS_OPTN) read FSignatureMethod write SetSignatureMethod stored SignatureMethod_Specified;
    property Reference:              ReferenceType               Index (IS_OPTN) read FReference write SetReference stored Reference_Specified;
  end;


  { ================== WARNING ================== }
  { WARNING - Attribute - Name:Id, Type:string }
  { WARNING - Attribute - Name:MimeType, Type:string }
  { WARNING - Attribute - Name:Encoding, Type:string }
  ObjectType      = TXMLData;       { "http://www.w3.org/2000/09/xmldsig#"[GblCplxMxd] }

  Array_Of_ObjectType = array of ObjectType;    { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }

  { ================== WARNING ================== }
  { WARNING - Attribute - Name:Id, Type:string }
  { WARNING - Attribute - Name:X509Data, Type:X509DataType }
  { WARNING - Attribute - Name:KeyValue, Type:KeyValueType }
  { WARNING - Attribute - Name:KeyName, Type:string }
  KeyInfoType     = TXMLData;       { "http://www.w3.org/2000/09/xmldsig#"[GblCplxMxd] }



  // ************************************************************************ //
  // XML       : SignatureType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignatureType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FSignedInfo: SignedInfoType;
    FSignedInfo_Specified: boolean;
    FSignatureValue: TByteDynArray;
    FSignatureValue_Specified: boolean;
    FKeyInfo: KeyInfoType;
    FKeyInfo_Specified: boolean;
    FObject_: Array_Of_ObjectType;
    FObject__Specified: boolean;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    procedure SetSignedInfo(Index: Integer; const ASignedInfoType: SignedInfoType);
    function  SignedInfo_Specified(Index: Integer): boolean;
    procedure SetSignatureValue(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  SignatureValue_Specified(Index: Integer): boolean;
    procedure SetKeyInfo(Index: Integer; const AKeyInfoType: KeyInfoType);
    function  KeyInfo_Specified(Index: Integer): boolean;
    procedure SetObject_(Index: Integer; const AArray_Of_ObjectType: Array_Of_ObjectType);
    function  Object__Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Id:             string               Index (IS_ATTR or IS_OPTN) read FId write SetId stored Id_Specified;
    property SignedInfo:     SignedInfoType       Index (IS_OPTN) read FSignedInfo write SetSignedInfo stored SignedInfo_Specified;
    property SignatureValue: TByteDynArray        Index (IS_OPTN) read FSignatureValue write SetSignatureValue stored SignatureValue_Specified;
    property KeyInfo:        KeyInfoType          Index (IS_OPTN) read FKeyInfo write SetKeyInfo stored KeyInfo_Specified;
    property Object_:        Array_Of_ObjectType  Index (IS_OPTN or IS_UNBD) read FObject_ write SetObject_ stored Object__Specified;
  end;



  // ************************************************************************ //
  // XML       : RSAKeyValueType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  RSAKeyValueType = class(TRemotable)
  private
    FModulus: TByteDynArray;
    FModulus_Specified: boolean;
    FExponent: TByteDynArray;
    FExponent_Specified: boolean;
    procedure SetModulus(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  Modulus_Specified(Index: Integer): boolean;
    procedure SetExponent(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  Exponent_Specified(Index: Integer): boolean;
  published
    property Modulus:  TByteDynArray  Index (IS_OPTN) read FModulus write SetModulus stored Modulus_Specified;
    property Exponent: TByteDynArray  Index (IS_OPTN) read FExponent write SetExponent stored Exponent_Specified;
  end;



  // ************************************************************************ //
  // XML       : accesos, global, <complexType>
  // Namespace : http://wservicios/
  // ************************************************************************ //
  accesos = class(TRemotable)
  private
    Fpassword: string;
    Fpassword_Specified: boolean;
    Fusuario: string;
    Fusuario_Specified: boolean;
    procedure Setpassword(Index: Integer; const Astring: string);
    function  password_Specified(Index: Integer): boolean;
    procedure Setusuario(Index: Integer; const Astring: string);
    function  usuario_Specified(Index: Integer): boolean;
  published
    property password: string  Index (IS_OPTN or IS_UNQL) read Fpassword write Setpassword stored password_Specified;
    property usuario:  string  Index (IS_OPTN or IS_UNQL) read Fusuario write Setusuario stored usuario_Specified;
  end;



  // ************************************************************************ //
  // XML       : TimbrarZip, global, <complexType>
  // Namespace : http://wservicios/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TimbrarZip2 = class(TRemotable)
  private
    Faccesos: accesos;
    Faccesos_Specified: boolean;
    Fzip: TByteDynArray;
    Fzip_Specified: boolean;
    procedure Setaccesos(Index: Integer; const Aaccesos: accesos);
    function  accesos_Specified(Index: Integer): boolean;
    procedure Setzip(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  zip_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property accesos: accesos        Index (IS_OPTN or IS_UNQL) read Faccesos write Setaccesos stored accesos_Specified;
    property zip:     TByteDynArray  Index (IS_OPTN or IS_UNQL) read Fzip write Setzip stored zip_Specified;
  end;



  // ************************************************************************ //
  // XML       : TimbrarZip, global, <element>
  // Namespace : http://wservicios/
  // Info      : Wrapper
  // ************************************************************************ //
  TimbrarZip = class(TimbrarZip2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : TimbrarZipResponse, global, <complexType>
  // Namespace : http://wservicios/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  TimbrarZipResponse2 = class(TRemotable)
  private
    Freturn: TByteDynArray;
    Freturn_Specified: boolean;
    Facuse: acuseRecepcionZip;
    Facuse_Specified: boolean;
    procedure Setreturn(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  return_Specified(Index: Integer): boolean;
    procedure Setacuse(Index: Integer; const AacuseRecepcionZip: acuseRecepcionZip);
    function  acuse_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property return: TByteDynArray      Index (IS_OPTN or IS_UNQL) read Freturn write Setreturn stored return_Specified;
    property acuse:  acuseRecepcionZip  Index (IS_OPTN or IS_UNQL) read Facuse write Setacuse stored acuse_Specified;
  end;



  // ************************************************************************ //
  // XML       : TimbrarZipResponse, global, <element>
  // Namespace : http://wservicios/
  // Info      : Wrapper
  // ************************************************************************ //
  TimbrarZipResponse = class(TimbrarZipResponse2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : Cancelacion_1, global, <complexType>
  // Namespace : http://wservicios/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  Cancelacion_12 = class(TRemotable)
  private
    FrfcEmisor: string;
    FrfcEmisor_Specified: boolean;
    Ffecha: string;
    Ffecha_Specified: boolean;
    Ffolios: Array_Of_string;
    Ffolios_Specified: boolean;
    FpublicKey: TByteDynArray;
    FpublicKey_Specified: boolean;
    FprivateKey: TByteDynArray;
    FprivateKey_Specified: boolean;
    Fpassword: string;
    Fpassword_Specified: boolean;
    Faccesos: accesos;
    Faccesos_Specified: boolean;
    procedure SetrfcEmisor(Index: Integer; const Astring: string);
    function  rfcEmisor_Specified(Index: Integer): boolean;
    procedure Setfecha(Index: Integer; const Astring: string);
    function  fecha_Specified(Index: Integer): boolean;
    procedure Setfolios(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  folios_Specified(Index: Integer): boolean;
    procedure SetpublicKey(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  publicKey_Specified(Index: Integer): boolean;
    procedure SetprivateKey(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  privateKey_Specified(Index: Integer): boolean;
    procedure Setpassword(Index: Integer; const Astring: string);
    function  password_Specified(Index: Integer): boolean;
    procedure Setaccesos(Index: Integer; const Aaccesos: accesos);
    function  accesos_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property rfcEmisor:  string           Index (IS_OPTN or IS_UNQL) read FrfcEmisor write SetrfcEmisor stored rfcEmisor_Specified;
    property fecha:      string           Index (IS_OPTN or IS_UNQL) read Ffecha write Setfecha stored fecha_Specified;
    property folios:     Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_UNQL) read Ffolios write Setfolios stored folios_Specified;
    property publicKey:  TByteDynArray    Index (IS_OPTN or IS_NLBL or IS_UNQL) read FpublicKey write SetpublicKey stored publicKey_Specified;
    property privateKey: TByteDynArray    Index (IS_OPTN or IS_NLBL or IS_UNQL) read FprivateKey write SetprivateKey stored privateKey_Specified;
    property password:   string           Index (IS_OPTN or IS_UNQL) read Fpassword write Setpassword stored password_Specified;
    property accesos:    accesos          Index (IS_OPTN or IS_UNQL) read Faccesos write Setaccesos stored accesos_Specified;
  end;



  // ************************************************************************ //
  // XML       : Cancelacion_1, global, <element>
  // Namespace : http://wservicios/
  // Info      : Wrapper
  // ************************************************************************ //
  Cancelacion_1 = class(Cancelacion_12)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : acuseZip, global, <complexType>
  // Namespace : http://wservicios/
  // ************************************************************************ //
  acuseZip = class(TRemotable)
  private
    Ferror: string;
    Ferror_Specified: boolean;
    Fnombrexml: string;
    Fnombrexml_Specified: boolean;
    Fuuid: string;
    Fuuid_Specified: boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
    procedure Setnombrexml(Index: Integer; const Astring: string);
    function  nombrexml_Specified(Index: Integer): boolean;
    procedure Setuuid(Index: Integer; const Astring: string);
    function  uuid_Specified(Index: Integer): boolean;
  published
    property error:     string  Index (IS_OPTN or IS_UNQL) read Ferror write Seterror stored error_Specified;
    property nombrexml: string  Index (IS_OPTN or IS_UNQL) read Fnombrexml write Setnombrexml stored nombrexml_Specified;
    property uuid:      string  Index (IS_OPTN or IS_UNQL) read Fuuid write Setuuid stored uuid_Specified;
  end;



  // ************************************************************************ //
  // XML       : acuseRecepcionZip, global, <complexType>
  // Namespace : http://wservicios/
  // ************************************************************************ //
  acuseRecepcionZip = class(TRemotable)
  private
    FcodigoError: string;
    FcodigoError_Specified: boolean;
    Ferror: string;
    Ferror_Specified: boolean;
    FlistaCFDIs: Array_Of_acuseZip;
    FlistaCFDIs_Specified: boolean;
    Fnombrezip: string;
    Fnombrezip_Specified: boolean;
    procedure SetcodigoError(Index: Integer; const Astring: string);
    function  codigoError_Specified(Index: Integer): boolean;
    procedure Seterror(Index: Integer; const Astring: string);
    function  error_Specified(Index: Integer): boolean;
    procedure SetlistaCFDIs(Index: Integer; const AArray_Of_acuseZip: Array_Of_acuseZip);
    function  listaCFDIs_Specified(Index: Integer): boolean;
    procedure Setnombrezip(Index: Integer; const Astring: string);
    function  nombrezip_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property codigoError: string             Index (IS_OPTN or IS_UNQL) read FcodigoError write SetcodigoError stored codigoError_Specified;
    property error:       string             Index (IS_OPTN or IS_UNQL) read Ferror write Seterror stored error_Specified;
    property listaCFDIs:  Array_Of_acuseZip  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FlistaCFDIs write SetlistaCFDIs stored listaCFDIs_Specified;
    property nombrezip:   string             Index (IS_OPTN or IS_UNQL) read Fnombrezip write Setnombrezip stored nombrezip_Specified;
  end;

  ArrayOfTransformType = array of TransformType;   { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }

  { ================== WARNING ================== }
  { WARNING - Attribute - Name:Algorithm, Type:string }
  DigestMethodType = TXMLData;      { "http://www.w3.org/2000/09/xmldsig#"[GblCplxMxd] }



  // ************************************************************************ //
  // XML       : ReferenceType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  ReferenceType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FURI: string;
    FURI_Specified: boolean;
    FType_: string;
    FType__Specified: boolean;
    FTransforms: ArrayOfTransformType;
    FTransforms_Specified: boolean;
    FDigestMethod: DigestMethodType;
    FDigestMethod_Specified: boolean;
    FDigestValue: TByteDynArray;
    FDigestValue_Specified: boolean;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    procedure SetURI(Index: Integer; const Astring: string);
    function  URI_Specified(Index: Integer): boolean;
    procedure SetType_(Index: Integer; const Astring: string);
    function  Type__Specified(Index: Integer): boolean;
    procedure SetTransforms(Index: Integer; const AArrayOfTransformType: ArrayOfTransformType);
    function  Transforms_Specified(Index: Integer): boolean;
    procedure SetDigestMethod(Index: Integer; const ADigestMethodType: DigestMethodType);
    function  DigestMethod_Specified(Index: Integer): boolean;
    procedure SetDigestValue(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  DigestValue_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Id:           string                Index (IS_ATTR or IS_OPTN) read FId write SetId stored Id_Specified;
    property URI:          string                Index (IS_ATTR or IS_OPTN) read FURI write SetURI stored URI_Specified;
    property Type_:        string                Index (IS_ATTR or IS_OPTN) read FType_ write SetType_ stored Type__Specified;
    property Transforms:   ArrayOfTransformType  Index (IS_OPTN) read FTransforms write SetTransforms stored Transforms_Specified;
    property DigestMethod: DigestMethodType      Index (IS_OPTN) read FDigestMethod write SetDigestMethod stored DigestMethod_Specified;
    property DigestValue:  TByteDynArray         Index (IS_OPTN) read FDigestValue write SetDigestValue stored DigestValue_Specified;
  end;



  // ************************************************************************ //
  // XML       : TransformType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  TransformType = class(TRemotable)
  private
    FAlgorithm: string;
    FAlgorithm_Specified: boolean;
    FXPath: Array_Of_string;
    FXPath_Specified: boolean;
    procedure SetAlgorithm(Index: Integer; const Astring: string);
    function  Algorithm_Specified(Index: Integer): boolean;
    procedure SetXPath(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  XPath_Specified(Index: Integer): boolean;
  published
    property Algorithm: string           Index (IS_ATTR or IS_OPTN) read FAlgorithm write SetAlgorithm stored Algorithm_Specified;
    property XPath:     Array_Of_string  Index (IS_OPTN or IS_UNBD) read FXPath write SetXPath stored XPath_Specified;
  end;



  // ************************************************************************ //
  // XML       : base64Binary, global, <complexType>
  // Namespace : http://www.w3.org/2005/05/xmlmime
  // ************************************************************************ //
  base64Binary = class(TRemotable)
  private
    FText: TByteDynArray;
    FcontentType: contentType;
    FcontentType_Specified: boolean;
    procedure SetcontentType(Index: Integer; const AcontentType: contentType);
    function  contentType_Specified(Index: Integer): boolean;
  published
    property Text:        TByteDynArray  Index (IS_TEXT) read FText write FText;
    property contentType: contentType    Index (IS_ATTR or IS_OPTN) read FcontentType write SetcontentType stored contentType_Specified;
  end;



  // ************************************************************************ //
  // XML       : Signature, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  Signature = class(SignatureType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : X509IssuerSerialType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  X509IssuerSerialType = class(TRemotable)
  private
    FX509IssuerName: string;
    FX509IssuerName_Specified: boolean;
    FX509SerialNumber: Int64;
    FX509SerialNumber_Specified: boolean;
    procedure SetX509IssuerName(Index: Integer; const Astring: string);
    function  X509IssuerName_Specified(Index: Integer): boolean;
    procedure SetX509SerialNumber(Index: Integer; const AInt64: Int64);
    function  X509SerialNumber_Specified(Index: Integer): boolean;
  published
    property X509IssuerName:   string  Index (IS_OPTN) read FX509IssuerName write SetX509IssuerName stored X509IssuerName_Specified;
    property X509SerialNumber: Int64   Index (IS_OPTN) read FX509SerialNumber write SetX509SerialNumber stored X509SerialNumber_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://wservicios/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : WSTimbradoCFDIPortBinding
  // service   : WSTimbradoCFDIService
  // port      : WSTimbradoCFDIPort
  // URL       : http://dev33.facturacfdi.mx:80/WSTimbradoCFDIService
  // ************************************************************************ //
  WSTimbradoCFDI = interface(IInvokable)
  ['{FA6A5474-0AB5-2DE0-F455-6D5CF0B8954E}']
    function  TimbrarCFDI(const parameters: TimbrarCFDI): TimbrarCFDIResponse; stdcall;
    function  Cancelacion_1(const parameters: Cancelacion_1): Cancelacion_1Response; stdcall;
    function  Cancelacion_2(const parameters: Cancelacion_2): Cancelacion_2Response; stdcall;

    // Cannot unwrap: 
    //     - More than one strictly out element was found
    function  TimbrarZip(const parameters: TimbrarZip): TimbrarZipResponse; stdcall;
  end;

function GetWSTimbradoCFDI(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): WSTimbradoCFDI;


implementation
  uses System.SysUtils;

function GetWSTimbradoCFDI(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): WSTimbradoCFDI;
const
  defWSDL = 'http://dev33.facturacfdi.mx/WSTimbradoCFDIService?wsdl';
  defURL  = 'http://dev33.facturacfdi.mx:80/WSTimbradoCFDIService';
  defSvc  = 'WSTimbradoCFDIService';
  defPrt  = 'WSTimbradoCFDIPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as WSTimbradoCFDI);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


constructor Cancelacion_1Response2.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor Cancelacion_1Response2.Destroy;
begin
  System.SysUtils.FreeAndNil(Freturn);
  inherited Destroy;
end;

procedure Cancelacion_1Response2.Setreturn(Index: Integer; const AwsCancelacionResponse: wsCancelacionResponse);
begin
  Freturn := AwsCancelacionResponse;
  Freturn_Specified := True;
end;

function Cancelacion_1Response2.return_Specified(Index: Integer): boolean;
begin
  Result := Freturn_Specified;
end;

constructor TimbrarCFDIResponse2.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TimbrarCFDIResponse2.Destroy;
begin
  System.SysUtils.FreeAndNil(FacuseCFDI);
  inherited Destroy;
end;

procedure TimbrarCFDIResponse2.SetacuseCFDI(Index: Integer; const AacuseCFDI: acuseCFDI);
begin
  FacuseCFDI := AacuseCFDI;
  FacuseCFDI_Specified := True;
end;

function TimbrarCFDIResponse2.acuseCFDI_Specified(Index: Integer): boolean;
begin
  Result := FacuseCFDI_Specified;
end;

constructor Cancelacion_2Response2.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor Cancelacion_2Response2.Destroy;
begin
  System.SysUtils.FreeAndNil(Freturn);
  inherited Destroy;
end;

procedure Cancelacion_2Response2.Setreturn(Index: Integer; const AwsCancelacionResponse: wsCancelacionResponse);
begin
  Freturn := AwsCancelacionResponse;
  Freturn_Specified := True;
end;

function Cancelacion_2Response2.return_Specified(Index: Integer): boolean;
begin
  Result := Freturn_Specified;
end;

procedure acuseCFDI.SetcodigoError(Index: Integer; const Astring: string);
begin
  FcodigoError := Astring;
  FcodigoError_Specified := True;
end;

function acuseCFDI.codigoError_Specified(Index: Integer): boolean;
begin
  Result := FcodigoError_Specified;
end;

procedure acuseCFDI.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function acuseCFDI.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

procedure acuseCFDI.SetxmlTimbrado(Index: Integer; const Astring: string);
begin
  FxmlTimbrado := Astring;
  FxmlTimbrado_Specified := True;
end;

function acuseCFDI.xmlTimbrado_Specified(Index: Integer): boolean;
begin
  Result := FxmlTimbrado_Specified;
end;

constructor Cancelacion_22.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor Cancelacion_22.Destroy;
begin
  System.SysUtils.FreeAndNil(FsignatureType);
  System.SysUtils.FreeAndNil(Faccesos);
  inherited Destroy;
end;

procedure Cancelacion_22.SetrfcEmisor(Index: Integer; const Astring: string);
begin
  FrfcEmisor := Astring;
  FrfcEmisor_Specified := True;
end;

function Cancelacion_22.rfcEmisor_Specified(Index: Integer): boolean;
begin
  Result := FrfcEmisor_Specified;
end;

procedure Cancelacion_22.Setfecha(Index: Integer; const Astring: string);
begin
  Ffecha := Astring;
  Ffecha_Specified := True;
end;

function Cancelacion_22.fecha_Specified(Index: Integer): boolean;
begin
  Result := Ffecha_Specified;
end;

procedure Cancelacion_22.Setfolios(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  Ffolios := AArray_Of_string;
  Ffolios_Specified := True;
end;

function Cancelacion_22.folios_Specified(Index: Integer): boolean;
begin
  Result := Ffolios_Specified;
end;

procedure Cancelacion_22.SetsignatureType(Index: Integer; const ASignatureType: SignatureType);
begin
  FsignatureType := ASignatureType;
  FsignatureType_Specified := True;
end;

function Cancelacion_22.signatureType_Specified(Index: Integer): boolean;
begin
  Result := FsignatureType_Specified;
end;

procedure Cancelacion_22.Setaccesos(Index: Integer; const Aaccesos: accesos);
begin
  Faccesos := Aaccesos;
  Faccesos_Specified := True;
end;

function Cancelacion_22.accesos_Specified(Index: Integer): boolean;
begin
  Result := Faccesos_Specified;
end;

procedure folio.SetestatusUUID(Index: Integer; const Astring: string);
begin
  FestatusUUID := Astring;
  FestatusUUID_Specified := True;
end;

function folio.estatusUUID_Specified(Index: Integer): boolean;
begin
  Result := FestatusUUID_Specified;
end;

procedure folio.Setmensaje(Index: Integer; const Astring: string);
begin
  Fmensaje := Astring;
  Fmensaje_Specified := True;
end;

function folio.mensaje_Specified(Index: Integer): boolean;
begin
  Result := Fmensaje_Specified;
end;

procedure folio.Setuuid(Index: Integer; const Astring: string);
begin
  Fuuid := Astring;
  Fuuid_Specified := True;
end;

function folio.uuid_Specified(Index: Integer): boolean;
begin
  Result := Fuuid_Specified;
end;

destructor wsCancelacionResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ffolios)-1 do
    System.SysUtils.FreeAndNil(Ffolios[I]);
  System.SetLength(Ffolios, 0);
  inherited Destroy;
end;

procedure wsCancelacionResponse.Setacuse(Index: Integer; const Astring: string);
begin
  Facuse := Astring;
  Facuse_Specified := True;
end;

function wsCancelacionResponse.acuse_Specified(Index: Integer): boolean;
begin
  Result := Facuse_Specified;
end;

procedure wsCancelacionResponse.SetcodEstatus(Index: Integer; const Astring: string);
begin
  FcodEstatus := Astring;
  FcodEstatus_Specified := True;
end;

function wsCancelacionResponse.codEstatus_Specified(Index: Integer): boolean;
begin
  Result := FcodEstatus_Specified;
end;

procedure wsCancelacionResponse.Setfolios(Index: Integer; const AwsFoliosResponse: wsFoliosResponse);
begin
  Ffolios := AwsFoliosResponse;
  Ffolios_Specified := True;
end;

function wsCancelacionResponse.folios_Specified(Index: Integer): boolean;
begin
  Result := Ffolios_Specified;
end;

procedure wsCancelacionResponse.Setmensaje(Index: Integer; const Astring: string);
begin
  Fmensaje := Astring;
  Fmensaje_Specified := True;
end;

function wsCancelacionResponse.mensaje_Specified(Index: Integer): boolean;
begin
  Result := Fmensaje_Specified;
end;

constructor TimbrarCFDI2.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TimbrarCFDI2.Destroy;
begin
  System.SysUtils.FreeAndNil(Faccesos);
  inherited Destroy;
end;

procedure TimbrarCFDI2.Setaccesos(Index: Integer; const Aaccesos: accesos);
begin
  Faccesos := Aaccesos;
  Faccesos_Specified := True;
end;

function TimbrarCFDI2.accesos_Specified(Index: Integer): boolean;
begin
  Result := Faccesos_Specified;
end;

procedure TimbrarCFDI2.Setcomprobante(Index: Integer; const Astring: string);
begin
  Fcomprobante := Astring;
  Fcomprobante_Specified := True;
end;

function TimbrarCFDI2.comprobante_Specified(Index: Integer): boolean;
begin
  Result := Fcomprobante_Specified;
end;

destructor X509DataType.Destroy;
begin
  System.SysUtils.FreeAndNil(FX509IssuerSerial);
  inherited Destroy;
end;

procedure X509DataType.SetX509IssuerSerial(Index: Integer; const AX509IssuerSerialType: X509IssuerSerialType);
begin
  FX509IssuerSerial := AX509IssuerSerialType;
  FX509IssuerSerial_Specified := True;
end;

function X509DataType.X509IssuerSerial_Specified(Index: Integer): boolean;
begin
  Result := FX509IssuerSerial_Specified;
end;

procedure X509DataType.SetX509Certificate(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FX509Certificate := ATByteDynArray;
  FX509Certificate_Specified := True;
end;

function X509DataType.X509Certificate_Specified(Index: Integer): boolean;
begin
  Result := FX509Certificate_Specified;
end;

destructor SignedInfoType.Destroy;
begin
  System.SysUtils.FreeAndNil(FCanonicalizationMethod);
  System.SysUtils.FreeAndNil(FSignatureMethod);
  System.SysUtils.FreeAndNil(FReference);
  inherited Destroy;
end;

procedure SignedInfoType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function SignedInfoType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure SignedInfoType.SetCanonicalizationMethod(Index: Integer; const ACanonicalizationMethodType: CanonicalizationMethodType);
begin
  FCanonicalizationMethod := ACanonicalizationMethodType;
  FCanonicalizationMethod_Specified := True;
end;

function SignedInfoType.CanonicalizationMethod_Specified(Index: Integer): boolean;
begin
  Result := FCanonicalizationMethod_Specified;
end;

procedure SignedInfoType.SetSignatureMethod(Index: Integer; const ASignatureMethodType: SignatureMethodType);
begin
  FSignatureMethod := ASignatureMethodType;
  FSignatureMethod_Specified := True;
end;

function SignedInfoType.SignatureMethod_Specified(Index: Integer): boolean;
begin
  Result := FSignatureMethod_Specified;
end;

procedure SignedInfoType.SetReference(Index: Integer; const AReferenceType: ReferenceType);
begin
  FReference := AReferenceType;
  FReference_Specified := True;
end;

function SignedInfoType.Reference_Specified(Index: Integer): boolean;
begin
  Result := FReference_Specified;
end;

destructor SignatureType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FObject_)-1 do
    System.SysUtils.FreeAndNil(FObject_[I]);
  System.SetLength(FObject_, 0);
  System.SysUtils.FreeAndNil(FSignedInfo);
  System.SysUtils.FreeAndNil(FKeyInfo);
  inherited Destroy;
end;

procedure SignatureType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function SignatureType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure SignatureType.SetSignedInfo(Index: Integer; const ASignedInfoType: SignedInfoType);
begin
  FSignedInfo := ASignedInfoType;
  FSignedInfo_Specified := True;
end;

function SignatureType.SignedInfo_Specified(Index: Integer): boolean;
begin
  Result := FSignedInfo_Specified;
end;

procedure SignatureType.SetSignatureValue(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FSignatureValue := ATByteDynArray;
  FSignatureValue_Specified := True;
end;

function SignatureType.SignatureValue_Specified(Index: Integer): boolean;
begin
  Result := FSignatureValue_Specified;
end;

procedure SignatureType.SetKeyInfo(Index: Integer; const AKeyInfoType: KeyInfoType);
begin
  FKeyInfo := AKeyInfoType;
  FKeyInfo_Specified := True;
end;

function SignatureType.KeyInfo_Specified(Index: Integer): boolean;
begin
  Result := FKeyInfo_Specified;
end;

procedure SignatureType.SetObject_(Index: Integer; const AArray_Of_ObjectType: Array_Of_ObjectType);
begin
  FObject_ := AArray_Of_ObjectType;
  FObject__Specified := True;
end;

function SignatureType.Object__Specified(Index: Integer): boolean;
begin
  Result := FObject__Specified;
end;

procedure RSAKeyValueType.SetModulus(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FModulus := ATByteDynArray;
  FModulus_Specified := True;
end;

function RSAKeyValueType.Modulus_Specified(Index: Integer): boolean;
begin
  Result := FModulus_Specified;
end;

procedure RSAKeyValueType.SetExponent(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FExponent := ATByteDynArray;
  FExponent_Specified := True;
end;

function RSAKeyValueType.Exponent_Specified(Index: Integer): boolean;
begin
  Result := FExponent_Specified;
end;

procedure accesos.Setpassword(Index: Integer; const Astring: string);
begin
  Fpassword := Astring;
  Fpassword_Specified := True;
end;

function accesos.password_Specified(Index: Integer): boolean;
begin
  Result := Fpassword_Specified;
end;

procedure accesos.Setusuario(Index: Integer; const Astring: string);
begin
  Fusuario := Astring;
  Fusuario_Specified := True;
end;

function accesos.usuario_Specified(Index: Integer): boolean;
begin
  Result := Fusuario_Specified;
end;

constructor TimbrarZip2.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TimbrarZip2.Destroy;
begin
  System.SysUtils.FreeAndNil(Faccesos);
  inherited Destroy;
end;

procedure TimbrarZip2.Setaccesos(Index: Integer; const Aaccesos: accesos);
begin
  Faccesos := Aaccesos;
  Faccesos_Specified := True;
end;

function TimbrarZip2.accesos_Specified(Index: Integer): boolean;
begin
  Result := Faccesos_Specified;
end;

procedure TimbrarZip2.Setzip(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  Fzip := ATByteDynArray;
  Fzip_Specified := True;
end;

function TimbrarZip2.zip_Specified(Index: Integer): boolean;
begin
  Result := Fzip_Specified;
end;

constructor TimbrarZipResponse2.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor TimbrarZipResponse2.Destroy;
begin
  System.SysUtils.FreeAndNil(Facuse);
  inherited Destroy;
end;

procedure TimbrarZipResponse2.Setreturn(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  Freturn := ATByteDynArray;
  Freturn_Specified := True;
end;

function TimbrarZipResponse2.return_Specified(Index: Integer): boolean;
begin
  Result := Freturn_Specified;
end;

procedure TimbrarZipResponse2.Setacuse(Index: Integer; const AacuseRecepcionZip: acuseRecepcionZip);
begin
  Facuse := AacuseRecepcionZip;
  Facuse_Specified := True;
end;

function TimbrarZipResponse2.acuse_Specified(Index: Integer): boolean;
begin
  Result := Facuse_Specified;
end;

constructor Cancelacion_12.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor Cancelacion_12.Destroy;
begin
  System.SysUtils.FreeAndNil(Faccesos);
  inherited Destroy;
end;

procedure Cancelacion_12.SetrfcEmisor(Index: Integer; const Astring: string);
begin
  FrfcEmisor := Astring;
  FrfcEmisor_Specified := True;
end;

function Cancelacion_12.rfcEmisor_Specified(Index: Integer): boolean;
begin
  Result := FrfcEmisor_Specified;
end;

procedure Cancelacion_12.Setfecha(Index: Integer; const Astring: string);
begin
  Ffecha := Astring;
  Ffecha_Specified := True;
end;

function Cancelacion_12.fecha_Specified(Index: Integer): boolean;
begin
  Result := Ffecha_Specified;
end;

procedure Cancelacion_12.Setfolios(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  Ffolios := AArray_Of_string;
  Ffolios_Specified := True;
end;

function Cancelacion_12.folios_Specified(Index: Integer): boolean;
begin
  Result := Ffolios_Specified;
end;

procedure Cancelacion_12.SetpublicKey(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FpublicKey := ATByteDynArray;
  FpublicKey_Specified := True;
end;

function Cancelacion_12.publicKey_Specified(Index: Integer): boolean;
begin
  Result := FpublicKey_Specified;
end;

procedure Cancelacion_12.SetprivateKey(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FprivateKey := ATByteDynArray;
  FprivateKey_Specified := True;
end;

function Cancelacion_12.privateKey_Specified(Index: Integer): boolean;
begin
  Result := FprivateKey_Specified;
end;

procedure Cancelacion_12.Setpassword(Index: Integer; const Astring: string);
begin
  Fpassword := Astring;
  Fpassword_Specified := True;
end;

function Cancelacion_12.password_Specified(Index: Integer): boolean;
begin
  Result := Fpassword_Specified;
end;

procedure Cancelacion_12.Setaccesos(Index: Integer; const Aaccesos: accesos);
begin
  Faccesos := Aaccesos;
  Faccesos_Specified := True;
end;

function Cancelacion_12.accesos_Specified(Index: Integer): boolean;
begin
  Result := Faccesos_Specified;
end;

procedure acuseZip.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function acuseZip.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

procedure acuseZip.Setnombrexml(Index: Integer; const Astring: string);
begin
  Fnombrexml := Astring;
  Fnombrexml_Specified := True;
end;

function acuseZip.nombrexml_Specified(Index: Integer): boolean;
begin
  Result := Fnombrexml_Specified;
end;

procedure acuseZip.Setuuid(Index: Integer; const Astring: string);
begin
  Fuuid := Astring;
  Fuuid_Specified := True;
end;

function acuseZip.uuid_Specified(Index: Integer): boolean;
begin
  Result := Fuuid_Specified;
end;

destructor acuseRecepcionZip.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FlistaCFDIs)-1 do
    System.SysUtils.FreeAndNil(FlistaCFDIs[I]);
  System.SetLength(FlistaCFDIs, 0);
  inherited Destroy;
end;

procedure acuseRecepcionZip.SetcodigoError(Index: Integer; const Astring: string);
begin
  FcodigoError := Astring;
  FcodigoError_Specified := True;
end;

function acuseRecepcionZip.codigoError_Specified(Index: Integer): boolean;
begin
  Result := FcodigoError_Specified;
end;

procedure acuseRecepcionZip.Seterror(Index: Integer; const Astring: string);
begin
  Ferror := Astring;
  Ferror_Specified := True;
end;

function acuseRecepcionZip.error_Specified(Index: Integer): boolean;
begin
  Result := Ferror_Specified;
end;

procedure acuseRecepcionZip.SetlistaCFDIs(Index: Integer; const AArray_Of_acuseZip: Array_Of_acuseZip);
begin
  FlistaCFDIs := AArray_Of_acuseZip;
  FlistaCFDIs_Specified := True;
end;

function acuseRecepcionZip.listaCFDIs_Specified(Index: Integer): boolean;
begin
  Result := FlistaCFDIs_Specified;
end;

procedure acuseRecepcionZip.Setnombrezip(Index: Integer; const Astring: string);
begin
  Fnombrezip := Astring;
  Fnombrezip_Specified := True;
end;

function acuseRecepcionZip.nombrezip_Specified(Index: Integer): boolean;
begin
  Result := Fnombrezip_Specified;
end;

destructor ReferenceType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTransforms)-1 do
    System.SysUtils.FreeAndNil(FTransforms[I]);
  System.SetLength(FTransforms, 0);
  System.SysUtils.FreeAndNil(FDigestMethod);
  inherited Destroy;
end;

procedure ReferenceType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function ReferenceType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure ReferenceType.SetURI(Index: Integer; const Astring: string);
begin
  FURI := Astring;
  FURI_Specified := True;
end;

function ReferenceType.URI_Specified(Index: Integer): boolean;
begin
  Result := FURI_Specified;
end;

procedure ReferenceType.SetType_(Index: Integer; const Astring: string);
begin
  FType_ := Astring;
  FType__Specified := True;
end;

function ReferenceType.Type__Specified(Index: Integer): boolean;
begin
  Result := FType__Specified;
end;

procedure ReferenceType.SetTransforms(Index: Integer; const AArrayOfTransformType: ArrayOfTransformType);
begin
  FTransforms := AArrayOfTransformType;
  FTransforms_Specified := True;
end;

function ReferenceType.Transforms_Specified(Index: Integer): boolean;
begin
  Result := FTransforms_Specified;
end;

procedure ReferenceType.SetDigestMethod(Index: Integer; const ADigestMethodType: DigestMethodType);
begin
  FDigestMethod := ADigestMethodType;
  FDigestMethod_Specified := True;
end;

function ReferenceType.DigestMethod_Specified(Index: Integer): boolean;
begin
  Result := FDigestMethod_Specified;
end;

procedure ReferenceType.SetDigestValue(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FDigestValue := ATByteDynArray;
  FDigestValue_Specified := True;
end;

function ReferenceType.DigestValue_Specified(Index: Integer): boolean;
begin
  Result := FDigestValue_Specified;
end;

procedure TransformType.SetAlgorithm(Index: Integer; const Astring: string);
begin
  FAlgorithm := Astring;
  FAlgorithm_Specified := True;
end;

function TransformType.Algorithm_Specified(Index: Integer): boolean;
begin
  Result := FAlgorithm_Specified;
end;

procedure TransformType.SetXPath(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FXPath := AArray_Of_string;
  FXPath_Specified := True;
end;

function TransformType.XPath_Specified(Index: Integer): boolean;
begin
  Result := FXPath_Specified;
end;

procedure base64Binary.SetcontentType(Index: Integer; const AcontentType: contentType);
begin
  FcontentType := AcontentType;
  FcontentType_Specified := True;
end;

function base64Binary.contentType_Specified(Index: Integer): boolean;
begin
  Result := FcontentType_Specified;
end;

procedure X509IssuerSerialType.SetX509IssuerName(Index: Integer; const Astring: string);
begin
  FX509IssuerName := Astring;
  FX509IssuerName_Specified := True;
end;

function X509IssuerSerialType.X509IssuerName_Specified(Index: Integer): boolean;
begin
  Result := FX509IssuerName_Specified;
end;

procedure X509IssuerSerialType.SetX509SerialNumber(Index: Integer; const AInt64: Int64);
begin
  FX509SerialNumber := AInt64;
  FX509SerialNumber_Specified := True;
end;

function X509IssuerSerialType.X509SerialNumber_Specified(Index: Integer): boolean;
begin
  Result := FX509SerialNumber_Specified;
end;

initialization
  { WSTimbradoCFDI }
  InvRegistry.RegisterInterface(TypeInfo(WSTimbradoCFDI), 'http://wservicios/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(WSTimbradoCFDI), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(WSTimbradoCFDI), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(WSTimbradoCFDI), ioLiteral);
  RemClassRegistry.RegisterXSClass(Cancelacion_1Response2, 'http://wservicios/', 'Cancelacion_1Response2', 'Cancelacion_1Response');
  RemClassRegistry.RegisterSerializeOptions(Cancelacion_1Response2, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TimbrarCFDIResponse2, 'http://wservicios/', 'TimbrarCFDIResponse2', 'TimbrarCFDIResponse');
  RemClassRegistry.RegisterSerializeOptions(TimbrarCFDIResponse2, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(wsFoliosResponse), 'http://wservicios/', 'wsFoliosResponse');
  RemClassRegistry.RegisterXSClass(Cancelacion_2Response2, 'http://wservicios/', 'Cancelacion_2Response2', 'Cancelacion_2Response');
  RemClassRegistry.RegisterSerializeOptions(Cancelacion_2Response2, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_acuseZip), 'http://wservicios/', 'Array_Of_acuseZip');
  RemClassRegistry.RegisterXSClass(TimbrarCFDIResponse, 'http://wservicios/', 'TimbrarCFDIResponse');
  RemClassRegistry.RegisterXSClass(Cancelacion_1Response, 'http://wservicios/', 'Cancelacion_1Response');
  RemClassRegistry.RegisterXSClass(Cancelacion_2Response, 'http://wservicios/', 'Cancelacion_2Response');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SignatureMethodType), 'http://www.w3.org/2000/09/xmldsig#', 'SignatureMethodType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_string), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_string');
  RemClassRegistry.RegisterXSClass(acuseCFDI, 'http://wservicios/', 'acuseCFDI');
  RemClassRegistry.RegisterXSClass(Cancelacion_22, 'http://wservicios/', 'Cancelacion_22', 'Cancelacion_2');
  RemClassRegistry.RegisterSerializeOptions(Cancelacion_22, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(Cancelacion_2, 'http://wservicios/', 'Cancelacion_2');
  RemClassRegistry.RegisterXSClass(folio, 'http://wservicios/', 'folio');
  RemClassRegistry.RegisterXSClass(wsCancelacionResponse, 'http://wservicios/', 'wsCancelacionResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(wsCancelacionResponse), 'folios', '[ArrayItemName="folio"]');
  RemClassRegistry.RegisterXSClass(TimbrarCFDI2, 'http://wservicios/', 'TimbrarCFDI2', 'TimbrarCFDI');
  RemClassRegistry.RegisterSerializeOptions(TimbrarCFDI2, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TimbrarCFDI, 'http://wservicios/', 'TimbrarCFDI');
  RemClassRegistry.RegisterXSInfo(TypeInfo(KeyValueType), 'http://www.w3.org/2000/09/xmldsig#', 'KeyValueType');
  RemClassRegistry.RegisterXSClass(X509DataType, 'http://www.w3.org/2000/09/xmldsig#', 'X509DataType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CanonicalizationMethodType), 'http://www.w3.org/2000/09/xmldsig#', 'CanonicalizationMethodType');
  RemClassRegistry.RegisterXSClass(SignedInfoType, 'http://www.w3.org/2000/09/xmldsig#', 'SignedInfoType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ObjectType), 'http://www.w3.org/2000/09/xmldsig#', 'ObjectType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ObjectType), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_ObjectType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(KeyInfoType), 'http://www.w3.org/2000/09/xmldsig#', 'KeyInfoType');
  RemClassRegistry.RegisterXSClass(SignatureType, 'http://www.w3.org/2000/09/xmldsig#', 'SignatureType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignatureType), 'Object_', '[ExtName="Object"]');
  RemClassRegistry.RegisterXSClass(RSAKeyValueType, 'http://www.w3.org/2000/09/xmldsig#', 'RSAKeyValueType');
  RemClassRegistry.RegisterXSClass(accesos, 'http://wservicios/', 'accesos');
  RemClassRegistry.RegisterXSClass(TimbrarZip2, 'http://wservicios/', 'TimbrarZip2', 'TimbrarZip');
  RemClassRegistry.RegisterSerializeOptions(TimbrarZip2, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TimbrarZip, 'http://wservicios/', 'TimbrarZip');
  RemClassRegistry.RegisterXSClass(TimbrarZipResponse2, 'http://wservicios/', 'TimbrarZipResponse2', 'TimbrarZipResponse');
  RemClassRegistry.RegisterSerializeOptions(TimbrarZipResponse2, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(TimbrarZipResponse, 'http://wservicios/', 'TimbrarZipResponse');
  RemClassRegistry.RegisterXSClass(Cancelacion_12, 'http://wservicios/', 'Cancelacion_12', 'Cancelacion_1');
  RemClassRegistry.RegisterSerializeOptions(Cancelacion_12, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(Cancelacion_1, 'http://wservicios/', 'Cancelacion_1');
  RemClassRegistry.RegisterXSClass(acuseZip, 'http://wservicios/', 'acuseZip');
  RemClassRegistry.RegisterXSClass(acuseRecepcionZip, 'http://wservicios/', 'acuseRecepcionZip');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTransformType), 'http://www.w3.org/2000/09/xmldsig#', 'ArrayOfTransformType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DigestMethodType), 'http://www.w3.org/2000/09/xmldsig#', 'DigestMethodType');
  RemClassRegistry.RegisterXSClass(ReferenceType, 'http://www.w3.org/2000/09/xmldsig#', 'ReferenceType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ReferenceType), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ReferenceType), 'Transforms', '[ArrayItemName="Transform"]');
  RemClassRegistry.RegisterXSClass(TransformType, 'http://www.w3.org/2000/09/xmldsig#', 'TransformType');
  RemClassRegistry.RegisterXSClass(base64Binary, 'http://www.w3.org/2005/05/xmlmime', 'base64Binary');
  RemClassRegistry.RegisterXSClass(Signature, 'http://www.w3.org/2000/09/xmldsig#', 'Signature');
  RemClassRegistry.RegisterXSClass(X509IssuerSerialType, 'http://www.w3.org/2000/09/xmldsig#', 'X509IssuerSerialType');

end.