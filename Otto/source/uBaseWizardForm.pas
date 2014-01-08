unit uBaseWizardForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvWizard, JvWizardRouteMapNodes, JvExControls, 
  Buttons, ActnList, GvXml, FIBDatabase, pFIBDatabase;

type
  TBaseWizardForm = class(TForm)
    wzForm: TJvWizard;
    actListWzrdBtn: TActionList;
    trnWrite: TpFIBTransaction;
    trnRead: TpFIBTransaction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wzFormCancelButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    XmlData: TGvXml;
    ObjectId: Integer;
    constructor Create(AOwner: TComponent; aObjectSign: String);
    constructor CreateDB(AOwner: TComponent; aObjectSign: String; aObjectId: Integer); virtual;
    constructor CreateXml(AOwner: TComponent; aObjectSign: String; aXml: TGvXml);
    destructor Destroy; override;
    procedure GetFromDB; virtual;
    procedure SetToDB; virtual; abstract;
    function Root: TGvXmlNode;
    procedure BuildXml; virtual;
    procedure UpdateCaptions; virtual;
    procedure UpdateControls(aPage: TJvWizardCustomPage); virtual;
    procedure UpdateXml(aPage: TJvWizardCustomPage); virtual;
  end;

implementation

uses
  udmOtto;

{$R *.dfm}

{ TfBaseWizardForm }

constructor TBaseWizardForm.Create(AOwner: TComponent; aObjectSign: String);
begin
  inherited Create(AOwner);
  trnRead.StartTransaction;
  XmlData:= TGvXml.Create(aObjectSign);
  BuildXml;
  UpdateCaptions;
end;

procedure TBaseWizardForm.BuildXml;
begin

end;

destructor TBaseWizardForm.Destroy;
begin
  XmlData.Free;
  inherited;
end;

procedure TBaseWizardForm.GetFromDB;
begin
//  XmlData.XmlFormat:= xfReadable;
 // XmlData.SaveToFile('xmlData.xml');
end;

function TBaseWizardForm.Root: TGvXmlNode;
begin
  Result:= XmlData.Root;
end;

constructor TBaseWizardForm.CreateDB(AOwner: TComponent;
  aObjectSign: String; aObjectId: Integer);
begin
  Create(AOwner, aObjectSign);
  ObjectId:= aObjectId;
  GetFromDB;
  UpdateCaptions;
end;

constructor TBaseWizardForm.CreateXml(AOwner: TComponent;
  aObjectSign: String; aXml: TGvXml);
var
  St: string;
begin
  inherited Create(AOwner);
  XmlData:= TGvXml.Create(aObjectSign);
  XmlData.Assign(aXml);
  BuildXml;
  UpdateCaptions;
end;

procedure TBaseWizardForm.UpdateCaptions;
begin

end;

procedure TBaseWizardForm.UpdateControls;
begin

end;

procedure TBaseWizardForm.UpdateXml;
begin

end;

procedure TBaseWizardForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TBaseWizardForm.wzFormCancelButtonClick(Sender: TObject);
begin
  Close;
end;

end.
