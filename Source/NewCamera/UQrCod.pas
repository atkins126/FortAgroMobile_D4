unit UQrCod;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.CodeReader, FMX.Objects, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.Android.Permissions, FMX.Layouts;

type
  TFrmQrCode = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout31: TLayout;
    Rectangle16: TRectangle;
    Label1: TLabel;
    btnVoltar: TRectangle;
    Image17: TImage;
    Label19: TLabel;
    AndroidPermissions1: TAndroidPermissions;
    CodeReader1: TCodeReader;
    procedure CodeReader1CodeReady(aCode: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codigo : string;
  end;

var
  FrmQrCode: TFrmQrCode;

implementation

{$R *.fmx}

uses UAbastecimento, UDataContext, UDataFunctions;

procedure TFrmQrCode.btnVoltarClick(Sender: TObject);
begin
 Close;
end;

procedure TFrmQrCode.CodeReader1CodeReady(aCode: string);
begin
 codigo := aCode;
 if codigo.Length>0 then
 begin
   frmAbastecimento.vCodigo :=codigo;
   Close;
 end;
end;

procedure TFrmQrCode.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 CodeReader1.Stop;
end;

end.
