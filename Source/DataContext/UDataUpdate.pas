unit UDataUpdate;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,FMX.Dialogs;

type
  TdmUpdate = class(TDataModule)
  private
    { Private declarations }
  public
    function  VerificaTabelasExiste(NomeTabela:string):Boolean;
    procedure CreateTablesVersao(NumeroVersao:string);
    function  VerificaTabelaExiste(Atabela: string):Boolean;
    function  VerificaCampoExiste(Acampo, Atabela: string):Boolean;
  end;

var
  dmUpdate: TdmUpdate;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses UDataContext;

{$R *.dfm}

{ TDataModule3 }

procedure TdmUpdate.CreateTablesVersao(NumeroVersao: string);
var
 vQryAux:TFDQuery;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := dmDB.FDConn;

 if not VerificaCampoExiste('pulverizacao','operadormaquinas') then
 begin
  with vQryAux,vQryAux.SQL do
  begin
   Clear;
   Add('ALTER TABLE operadormaquinas ADD pulverizacao integer NULL DEFAULT 0');
   ExecSQL;
  end;
 end;
 if not VerificaCampoExiste('TIPODB','CONFIG') then
 begin
  with vQryAux,vQryAux.SQL do
  begin
   Clear;
   Add('ALTER TABLE CONFIG ADD TIPODB VARCHAR(11)');
   ExecSQL;
  end;
 end;
 if not VerificaCampoExiste('horimetromaquina','revisaomaquinahist') then
 begin
  with vQryAux,vQryAux.SQL do
  begin
   Clear;
   Add('ALTER TABLE revisaomaquinahist ADD horimetromaquina numeric(15,2)');
   ExecSQL;
  end;
 end;
 if not VerificaCampoExiste('planonome','revisaomaquinahist') then
 begin
  with vQryAux,vQryAux.SQL do
  begin
   Clear;
   Add('ALTER TABLE revisaomaquinahist ADD planonome VARCHAR(100)');
   ExecSQL;
  end;
 end;
 vQryAux.Free;
end;

function TdmUpdate.VerificaCampoExiste(Acampo, Atabela: string):Boolean;
var
 vQryAux:TFDQuery;
 vExiste:integer;
begin
 vExiste :=0;
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := dmDB.FDConn;
 vExiste:=0;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('PRAGMA table_info('+Atabela+')');
   Open;
   while not vQryAux.eof do
   begin
     if Acampo=vQryAux.FieldByName('name').AsString then
       vExiste:=1;
     vQryAux.Next;
   end;
 end;
 Result:=vExiste=1;
 vQryAux.Free;
end;

function TdmUpdate.VerificaTabelaExiste(Atabela: string): Boolean;
var
 vQryAux:TFDQuery;
 vExiste:integer;
begin
 vExiste :=0;
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := dmDB.FDConn;
 vExiste:=0;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('PRAGMA table_info('+Atabela+')');
   Open;
   Result:=vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TdmUpdate.VerificaTabelasExiste(NomeTabela: string): Boolean;
var
 vQryAux:TFDQuery;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := dmDB.FDConn;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('SELECT count(*) Qtd FROM sqlite_master');
   Add('WHERE type='+QuotedStr('table')+' AND name='+NomeTabela.QuotedString);
   Open;
   if FieldByName('Qtd').AsInteger=0 then
    Result:=false
   else
    Result:=true;
 end;
 vQryAux.Free;
end;

end.
