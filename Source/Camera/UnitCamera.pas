unit UnitCamera;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Media, FMX.Objects,
  {$IFDEF ANDROID}
   ZXing.ScanManager,
   ZXing.ReadResult,
   ZXing.BarcodeFormat,
  {$ENDIF}
  FMX.Platform, FMX.Layouts, FMX.Android.Permissions, FMX.CodeReader;

type
  TFrmCamera = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout31: TLayout;
    Rectangle16: TRectangle;
    Label1: TLabel;
    CodeReader1: TCodeReader;
    btnVoltar: TRectangle;
    Image17: TImage;
    Label19: TLabel;
    AndroidPermissions1: TAndroidPermissions;
    procedure btnVoltarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CodeReader1CodeReady(aCode: string);
  private
  public
    codigo : string;
  end;

var
  FrmCamera: TFrmCamera;

implementation

{$R *.fmx}

procedure TFrmCamera.btnVoltarClick(Sender: TObject);
begin
  close;
end;
procedure TFrmCamera.CodeReader1CodeReady(aCode: string);
begin
 codigo := aCode;
 if codigo.Length>0 then
 begin
   Close;
 end;
end;

procedure TFrmCamera.FormDestroy(Sender: TObject);
begin
 CodeReader1.Stop;
end;

end.
