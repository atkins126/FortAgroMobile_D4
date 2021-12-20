unit UOperacoes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.StdCtrls, FMX.DateTimeCtrls, FMX.ListBox, FMX.ListView, FMX.Objects,
  FMX.Controls.Presentation, FMX.Layouts, FMX.TabControl, FMX.Edit,
  FMX.ActnList, System.Actions, FMX.ScrollBox, FMX.Memo, System.Rtti,
  FMX.Grid.Style, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Data.Bind.Grid, FMX.Grid,FMX.VirtualKeyboard,FMX.Platform,
  FMX.EditBox, FMX.NumberBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.Gestures, FMX.Memo.Types;

type
  TfrmOperacao = class(TForm)
    TabPrincipal: TTabControl;
    TabLista: TTabItem;
    TbiNovaOperacao: TTabItem;
    tbiMaquinas: TTabItem;
    layPrincipal: TLayout;
    ToolBar1: TToolBar;
    Rectangle4: TRectangle;
    ToolBar3: TToolBar;
    Rectangle3: TRectangle;
    Label4: TLabel;
    Rectangle6: TRectangle;
    Layout1: TLayout;
    RectFiltros: TRectangle;
    listaOperacao: TListView;
    Layout2: TLayout;
    Label1: TLabel;
    cbxSetorF: TComboBox;
    Label2: TLabel;
    cbxTalhaoF: TComboBox;
    Label3: TLabel;
    edtDataFiltro: TDateEdit;
    btnBuscarOperacao: TButton;
    btnFinalizar: TButton;
    Image26: TImage;
    btnEditarOp: TButton;
    Image1: TImage;
    Button2: TButton;
    Image2: TImage;
    Layout10: TLayout;
    Layout31: TLayout;
    Rectangle22: TRectangle;
    Label28: TLabel;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    Rectangle11: TRectangle;
    Rectangle12: TRectangle;
    Layout6: TLayout;
    Layout22: TLayout;
    Layout32: TLayout;
    Rectangle23: TRectangle;
    Label29: TLabel;
    Rectangle16: TRectangle;
    Layout18: TLayout;
    Label6: TLabel;
    edtOperador: TEdit;
    Rectangle17: TRectangle;
    Layout19: TLayout;
    Layout20: TLayout;
    Label14: TLabel;
    Label34: TLabel;
    Rectangle18: TRectangle;
    Layout21: TLayout;
    Label15: TLabel;
    edtObsMaquina: TEdit;
    Rectangle19: TRectangle;
    Layout17: TLayout;
    Label18: TLabel;
    edtMaquina: TEdit;
    EditButton2: TEditButton;
    btnAddMaquina: TButton;
    Image4: TImage;
    Label16: TLabel;
    Button3: TButton;
    Image6: TImage;
    Label17: TLabel;
    Rectangle15: TRectangle;
    Layout7: TLayout;
    Layout8: TLayout;
    Label19: TLabel;
    edtDataMaquina: TDateEdit;
    tbiDetalhes: TTabItem;
    Rectangle24: TRectangle;
    Rectangle25: TRectangle;
    Layout23: TLayout;
    Layout40: TLayout;
    Rectangle26: TRectangle;
    Layout41: TLayout;
    layTalhoes: TLayout;
    Label38: TLabel;
    Layout43: TLayout;
    Label39: TLabel;
    lblAtividade: TLabel;
    lblTalhao: TLabel;
    Layout44: TLayout;
    Label42: TLabel;
    lblDataInicio: TLabel;
    Label44: TLabel;
    lblDataFim: TLabel;
    layBtnDet: TLayout;
    btnMaquinas: TLayout;
    imgMaquinas: TImage;
    Label40: TLabel;
    layGridMaquinas: TLayout;
    Layout46: TLayout;
    Rectangle31: TRectangle;
    Label45: TLabel;
    Layout47: TLayout;
    ToolBar2: TToolBar;
    lblTotalMaquinas: TLabel;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    BindSourceDB4: TBindSourceDB;
    tabDet: TTabControl;
    tbiMaquinasOp: TTabItem;
    Layout52: TLayout;
    btnExluirMaquina: TButton;
    btnNovaMaquina: TButton;
    Image11: TImage;
    Image12: TImage;
    ToolBar6: TToolBar;
    Rectangle38: TRectangle;
    Label48: TLabel;
    Image18: TImage;
    LayDetAtividade: TLayout;
    BindSourceDB6: TBindSourceDB;
    Layout69: TLayout;
    Label63: TLabel;
    lblAreaPrev: TLabel;
    Label65: TLabel;
    lblAreaReal: TLabel;
    BindSourceDB7: TBindSourceDB;
    lblTotalHoras: TLabel;
    BindSourceDB5: TBindSourceDB;
    Rectangle52: TRectangle;
    Layout77: TLayout;
    Layout78: TLayout;
    Label69: TLabel;
    Label73: TLabel;
    edtHoraIni: TNumberBox;
    edtHoraFim: TNumberBox;
    edtHorasParado: TNumberBox;
    edtHorasTrabalhada: TNumberBox;
    BindSourceDB8: TBindSourceDB;
    EditButton7: TEditButton;
    btnEditar: TButton;
    Image5: TImage;
    Button1: TButton;
    Image19: TImage;
    Image31: TImage;
    ListaMaquinas: TListView;
    FDQuery1: TFDQuery;
    GestureManager1: TGestureManager;
    btnExcluiItem: TRectangle;
    Image34: TImage;
    lblExcluir: TLabel;
    btnTalhoes: TLayout;
    Image36: TImage;
    lblTalhoes: TLabel;
    btnHabilitaSync: TRectangle;
    Image37: TImage;
    Label82: TLabel;
    laybtnLista: TLayout;
    Image16: TImage;
    BindSourceDB1: TBindSourceDB;
    LinkFillControlToFieldnome: TLinkFillControlToField;
    CheckBox1: TCheckBox;
    Rectangle63: TRectangle;
    Label84: TLabel;
    Layout99: TLayout;
    Label53: TLabel;
    lblDetCultura: TLabel;
    Layout100: TLayout;
    Label86: TLabel;
    lblDetVariedade: TLabel;
    Rectangle44: TRectangle;
    Rectangle47: TRectangle;
    Rectangle67: TRectangle;
    Rectangle68: TRectangle;
    Rectangle69: TRectangle;
    Layout107: TLayout;
    Layout108: TLayout;
    Label94: TLabel;
    cbxTipoExtra: TComboBox;
    Rectangle65: TRectangle;
    Layout104: TLayout;
    Layout105: TLayout;
    Label90: TLabel;
    Label91: TLabel;
    edtDataExtraDe: TDateEdit;
    edtDataExtraAte: TDateEdit;
    Layout101: TLayout;
    btnVoltarExtra: TButton;
    Image39: TImage;
    Label87: TLabel;
    btnConfirmaExtra: TButton;
    Image41: TImage;
    Label88: TLabel;
    Rectangle66: TRectangle;
    Layout106: TLayout;
    edtObsExtra: TEdit;
    Label92: TLabel;
    tbiTalhoes: TTabItem;
    Layout3: TLayout;
    Rectangle1: TRectangle;
    Label5: TLabel;
    Image3: TImage;
    RecAddTalhao: TRectangle;
    Layout65: TLayout;
    Label60: TLabel;
    edtAddTalhao: TEdit;
    BtnAddTalhao: TEditButton;
    Layout67: TLayout;
    Button8: TButton;
    Image24: TImage;
    Label61: TLabel;
    btnConfirmaTalhao: TButton;
    Image25: TImage;
    Label62: TLabel;
    btnExcluirTalhao: TButton;
    Image28: TImage;
    Layout66: TLayout;
    listaTalhao: TListView;
    layEditaArea: TLayout;
    Rectangle2: TRectangle;
    Layout4: TLayout;
    Layout5: TLayout;
    Rectangle5: TRectangle;
    Label7: TLabel;
    Image7: TImage;
    lblTalhaoEditaArea: TLabel;
    Rectangle7: TRectangle;
    Layout9: TLayout;
    Label9: TLabel;
    Layout11: TLayout;
    edtAreaPrev: TEdit;
    Label10: TLabel;
    Layout12: TLayout;
    edtAreaReal: TEdit;
    btnConfirmaArea: TButton;
    Image29: TImage;
    Label11: TLabel;
    ToolBar7: TToolBar;
    layTotalRegistroGrid: TLayout;
    lblTotalRegistro: TLabel;
    Layout68: TLayout;
    lblAreaTotalPrev: TLabel;
    Layout70: TLayout;
    lblAreaTotalReal: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure btnAddMaquinaClick(Sender: TObject);
    procedure btnVoltaProdutoClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnMaquinasClick(Sender: TObject);
    procedure btnNovaMaquinaClick(Sender: TObject);
    procedure btnExluirMaquinaClick(Sender: TObject);
    procedure listaOperacaoItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure btnEditarOpClick(Sender: TObject);
    procedure btnExcluirProdutoClick(Sender: TObject);
    procedure btnExcluirOcorrenciaClick(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure edtQtdeUtilizadaKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure btnBuscarOperacaoClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnConfirmaTalhaoClick(Sender: TObject);
    procedure BtnAddTalhaoClick(Sender: TObject);
    procedure btnExcluirTalhaoClick(Sender: TObject);
    procedure edtHoraIniKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtHoraIniEnter(Sender: TObject);
    procedure edtHoraFimEnter(Sender: TObject);
    procedure edtHorasParadoEnter(Sender: TObject);
    procedure edtMaquinaEnter(Sender: TObject);
    procedure EditButton7Click(Sender: TObject);
    procedure EditButton7Enter(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure ListaMaquinasItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure Image31Click(Sender: TObject);
    procedure edtHoraIniChangeTracking(Sender: TObject);
    procedure edtHoraFimChangeTracking(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure listaOperacaoGesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure btnExcluiItemClick(Sender: TObject);
    procedure edtDataMaquinaExit(Sender: TObject);
    procedure btnTalhoesClick(Sender: TObject);
    procedure btnHabilitaSyncClick(Sender: TObject);
    procedure edtDataFiltroChange(Sender: TObject);
    procedure Rectangle63Click(Sender: TObject);
    procedure btnConfirmaExtraClick(Sender: TObject);
    procedure btnVoltarExtraClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure btnConfirmaAreaClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
  private
    procedure MudarAba(ATabItem: TTabItem; sender: TObject);
    procedure CarregaComboFiltros;
    procedure myShowMenssagem(msg:string);
    procedure LimpaCampos;
    procedure GeraLista(Filtro:string);
    procedure AbreDetalhesOp(vIdOp: string);
  public
    vIdAtividade,vIdTalhao,vIdSafra,vIdTalhaoPull,vNomeTalhaoLista,
    vAreaPrevLista,vAreaRealLista,
    vIdMaquina,vIdProduto,vIdTipoOcorrencia,vIdOP,vIdOPTipo,vStatusConfere,
    vIdTipoAplicacaoSolido,vIdCultura,vIdReceituario,vIdPul,vIdCobertura,
    vIdOperador,vIdMaquinaSel,vIdProdutoSel,vIdOcorrenciaSel,vIdReceituarioSel,
    vFlagSync,vIdVariedade:string;
    vFinalizandoOP,vTipoOperacao,vDetalhes :integer;
    procedure Filtrar;
    function  RetornaIdOperacao: integer;
    procedure AtualizaBinds;
    function  RetornaIdVazao :integer;

    procedure GeraListaMaquinas;
    procedure GeraListaProdutos;
    procedure GeraListaOcorrencia;
    procedure GeraListaReceituario;
    procedure FinalizaOperacaoExtra;
    procedure GeraListaTalhao(IdPull:string);
  end;

var
  frmOperacao: TfrmOperacao;

implementation

{$R *.fmx}

uses  Umsg, UPrincipal, UAtividades, UTalhoes, Maquinas, UProdutos,
  UTipoOcorrencia, UReceituario, UOperadorMaquina, UCadReceituario,
  UDataFunctions, UDataContext;

function TfrmOperacao.RetornaIdVazao: integer;
var
 vId:integer;
 vId1:integer;
begin
 vId1 := strToInt(dmDB.vIdUser)+ strToInt(formatdatetime('mmss',now));
 repeat
  vId:=Random(vId1)*100;
 until (dmDB.VerificaIdVazaoExiste(intToStr(vId)));
 Result := vId;
end;


procedure TfrmOperacao.Rectangle63Click(Sender: TObject);
begin
 try
  dmDB.HabilitaSync(vIdOP);
  ShowMessage('Operação habilitada com sucesso!');
  laybtnLista.Visible := false;
 except
 end
end;

function TfrmOperacao.RetornaIdOperacao: integer;
var
 vId:integer;
 vId1:integer;
begin
 vId1 := strToInt(dmDB.vIdUser)+ strToInt(formatdatetime('mmss',now));
 repeat
  vId:=Random(2020)*100;
 until (dmDB.VerificaIdOperacaoExiste(intToStr(vId)));
 Result := vId;
end;

procedure TfrmOperacao.AbreDetalhesOp(vIdOp: string);
begin
 dmDB.AbreQryOperacao(vIdOp);
 dmDB.AbreMaquinaOperacao(vIdOp);
 GeraListaMaquinas;
 lblTotalMaquinas.Text    := intToStr(ListaMaquinas.Items.Count);
 lblTotalHoras.Text       := 'Total Horas: '+dmDB.RetornaHorasTotais(vIdOp);

 lblTalhao.Text          := dmDB.RetornaTalhoesPul(vIdOp);
 lblAreaPrev.Text        := dmDB.qryOpSafraareaprevista.AsString;
 lblAreaReal.Text        := dmDB.qryOpSafraarearealizada.AsString;

 lblAtividade.Text        := dmDB.qryOpSafraOperacao.AsString;
 lblDataInicio.Text       := dmDB.qryOpSafradatainicio.AsString;
 lblDataFim.Text          := dmDB.qryOpSafradatafim.AsString;
end;

procedure TfrmOperacao.AtualizaBinds;
begin
 BindSourceDB1.DataSet := nil;
 BindSourceDB1.DataSet := dmDB.TTipoAplicacaoSolido;

 BindSourceDB2.DataSet := nil;
 BindSourceDB2.DataSet := dmDB.TOperacaoSafraMaquinas;

 BindSourceDB3.DataSet := nil;
 BindSourceDB3.DataSet := dmDB.TOperacaoSafraProdutos;

 BindSourceDB4.DataSet := nil;
 BindSourceDB4.DataSet := dmDB.TOperacaoSafraOcorrencia;

 BindSourceDB5.DataSet := nil;
 BindSourceDB5.DataSet := dmDB.TDetTalhoesPul;

 BindSourceDB6.DataSet := nil;
 BindSourceDB6.DataSet := dmDB.TCulturas;

 BindSourceDB7.DataSet := nil;
 BindSourceDB7.DataSet := dmDB.qryGridReceituario;
end;

procedure TfrmOperacao.btnAddMaquinaClick(Sender: TObject);
begin
 if edtMaquina.Text.Length=0 then
 begin
   myShowMenssagem('Informe a Maquina!!');
   edtMaquina.SetFocus;
   Exit;
 end;
 if edtOperador.Text.Length=0 then
 begin
   myShowMenssagem('Informe o Operador!!');
   edtOperador.SetFocus;
   Exit;
 end;
 if edtHoraIni.Text.Length=0 then
 begin
   myShowMenssagem('Informe a Hora de Inicio!!');
   edtHoraIni.SetFocus;
   Exit;
 end;
 if edtHoraFim.Text.Length=0 then
 begin
   myShowMenssagem('Informe a Hora Fim!!');
   edtHoraFim.SetFocus;
   Exit;
 end;
 if edtDataMaquina.Text.Length=0 then
 begin
   myShowMenssagem('Informe a Data!!');
   edtDataMaquina.SetFocus;
   Exit;
 end;
 edtHorasTrabalhada.Value                               := edtHoraFim.Value-edtHoraIni.Value;
 dmDb.TOperacaoSafraMaquinasidoperacaotalhao.AsString   := vIdOP;
 dmDb.TOperacaoSafraMaquinasidusuario.AsString          := dmDb.vIdUser;
 dmdb.TOperacaoSafraMaquinasidmaquina.AsString          := vIdMaquina;
 dmdb.TOperacaoSafraMaquinasoperador.AsString           := edtOperador.Text;
 dmdb.TOperacaoSafraMaquinashorainicio.AsString         := edtHoraIni.Text;
 dmdb.TOperacaoSafraMaquinashorafim.AsString            := edtHoraFim.Text;
 dmdb.TOperacaoSafraMaquinashoraparada.AsString         := edtHorasParado.Text;
 dmdb.TOperacaoSafraMaquinashoraTrabalhada.AsString     := edtHorasTrabalhada.Text;
 dmdb.TOperacaoSafraMaquinasdata.AsDateTime             := edtDataMaquina.date;
 dmdb.TOperacaoSafraMaquinasobservacao.AsString         := edtObsMaquina.Text;
 dmdb.TOperacaoSafraMaquinasidOperador.AsString         := vIdOperador;
 try
   dmdb.TOperacaoSafraMaquinas.ApplyUpdates(-1);
   myShowMenssagem('Maquina Adicionada com sucesso!!');
   dmDB.AbreMaquinaOperacao(vIdOP);
   geraListaMaquinas;
   lblTotalMaquinas.Text    := intToStr(ListaMaquinas.Items.Count);
   lblTotalHoras.Text       := dmDB.RetornaHorasTotais(vIdOp);
   MudarAba(tbiDetalhes,sender);
 except
   on E: Exception do
    myShowMenssagem('Erro ao salvar Maquina:'+E.Message);
 end;
end;

procedure TfrmOperacao.BtnAddTalhaoClick(Sender: TObject);
begin
  if Not Assigned(frmTalhoes) then
   Application.CreateForm(TfrmTalhoes, frmTalhoes);
  frmTalhoes.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = 0 then
    begin
      vIdTalhao         := dmDB.vIdTalhao;
      if not dmDb.VerificaTalhaoJaAdicionado(vIdPul,vIdTalhao) then
      begin
        ShowMessage('Talhao já adicionado nessa operação!');
        Exit;
      end;
      dmDb.TDetTalhoesPul.Close;
      dmDb.TDetTalhoesPul.Open;
      dmDb.TDetTalhoesPul.Insert;
      dmDb.TDetTalhoesPulidTalhao.AsString      := vIdTalhao;
      dmDb.TDetTalhoesPulidOperacao.AsString    := vIdPul;
      dmDb.TDetTalhoesPulAreaPrevista.AsString  := dmdb.vAreaTalhao;
      dmDb.TDetTalhoesPulAreaRealizada.AsString := dmdb.vAreaTalhao;
      try
       dmDb.TDetTalhoesPul.ApplyUpdates(-1);
       GeraListaTalhao(vIdPul);
      except
       on E: Exception do
         ShowMessage('Erro ao Adicionar Talhao:'+E.Message);
      end;
    end;
  end);
end;

procedure TfrmOperacao.GeraListaTalhao(IdPull:string);
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vAreaPrev,vAreaReal : Double;
begin
  vAreaPrev :=0;
  vAreaReal :=0;
  dmDb.AbreDetTalhoesPulverizacao(IdPull);
  dmDb.TDetTalhoesPul.First;
  listaTalhao.Items.Clear;
  while not dmDb.TDetTalhoesPul.eof do
   begin
     vAreaPrev  := vAreaPrev + dmDb.TDetTalhoesPulAreaPrevista.AsFloat;
     vAreaReal  := vAreaReal + dmDb.TDetTalhoesPulAreaRealizada.AsFloat;
     item := listaTalhao.Items.Add;
       with frmOperacao do
       begin
         with item  do
         begin
           txt           := TListItemText(Objects.FindDrawable('Text5'));
           txt.Text      := dmDb.TDetTalhoesPulTalhao.AsString;
           txt.TagString := dmDb.TDetTalhoesPulid.AsString;

           txt           := TListItemText(Objects.FindDrawable('Text6'));
           txt.Text      := 'Area Prev.:';
           txt           := TListItemText(Objects.FindDrawable('Text7'));
           txt.Text      := dmDb.TDetTalhoesPulAreaPrevista.AsString;

           txt           := TListItemText(Objects.FindDrawable('Text8'));
           txt.Text      := 'Area Realizada.:';
           txt           := TListItemText(Objects.FindDrawable('Text9'));
           txt.Text      := dmDb.TDetTalhoesPulAreaRealizada.AsString;

           img := TListItemImage(Objects.FindDrawable('Image14'));
           img.Bitmap     := frmPrincipal.imgTalhao.Bitmap;

           img := TListItemImage(Objects.FindDrawable('Image12'));
           img.Bitmap     := frmPrincipal.imgEditaArea.Bitmap;

         end;
         dmDb.TDetTalhoesPul.Next;
       end;
   end;
   lblAreaTotalPrev.Text         := 'Area Prev.: '+ FloatToStr(vAreaPrev);
   lblAreaTotalReal.Text         := 'Area Real.: '+ FloatToStr(vAreaReal);
end;


procedure TfrmOperacao.btnBuscarOperacaoClick(Sender: TObject);
begin
  laybtnLista.Visible := false;
  Filtrar;
end;

procedure TfrmOperacao.btnEditarClick(Sender: TObject);
begin
 if vIdMaquinaSel.Length=0 then
 begin
   myShowMenssagem('Selecione uma maquina!');
   Exit;
 end;
 dmDb.TOperacaoSafraMaquinas.Filtered := false;
 dmDb.TOperacaoSafraMaquinas.Filter   := 'ID='+vIdMaquinaSel;
 dmDb.TOperacaoSafraMaquinas.Filtered := true;
 dmDb.TOperacaoSafraMaquinas.Edit;
 vIdOP  := dmDb.TOperacaoSafraMaquinasidoperacaotalhao.AsString;
 dmDb.TOperacaoSafraMaquinasidusuario.AsString         := dmDb.vIdUser;

 edtMaquina.Text      := dmDB.TOperacaoSafraMaquinasmaquina.AsString;
 vIdMaquina           := dmDB.TOperacaoSafraMaquinasidmaquina.AsString;

 edtOperador.Text     := dmDB.TOperacaoSafraMaquinasoperador.AsString;
 vIdoperador          := dmDB.TOperacaoSafraMaquinasidOperador.AsString;

 edtDataMaquina.Date  := dmDB.TOperacaoSafraMaquinasdata.AsDateTime;

 edtHoraIni.Value      := dmDB.TOperacaoSafraMaquinashorainicio.AsFloat;
 edtHoraFim.Value      := dmDB.TOperacaoSafraMaquinashorafim.AsFloat;
 edtHorasParado.Value  := dmDB.TOperacaoSafraMaquinashoraparada.AsFloat;
 edtObsMaquina.Text    := dmDB.TOperacaoSafraMaquinasobservacao.AsString;
 MudarAba(tbiMaquinas,sender);
end;

procedure TfrmOperacao.btnEditarOpClick(Sender: TObject);
begin
 laybtnLista.Visible := false;
 vDetalhes := 1;
 if vIdOp.Length=0 then
 begin
   myShowMenssagem('Selecione a Operação!');
   Exit;
 end;
 AbreDetalhesOp(vIdOp);
 MudarAba(tbiDetalhes,Sender);
end;

procedure TfrmOperacao.btnExcluiItemClick(Sender: TObject);
begin
 laybtnLista.Visible := false;
 if vFlagSync='1' then
 begin
   myShowMenssagem('Operação ja sincronizada impossivel deletar!');
   Exit;
 end
 else
 begin
   try
    dmDB.DeleteOperacao(vIdOP,vIdReceituarioSel);
    myShowMenssagem('Operação deletada com sucesso!');
    GeraLista('');
   except
   end;
 end;
end;

procedure TfrmOperacao.btnExcluirOcorrenciaClick(Sender: TObject);
begin
 MessageDlg('Deseja deletar essa Ocorrencia?', System.UITypes.TMsgDlgType.mtInformation,
  [System.UITypes.TMsgDlgBtn.mbYes,
  System.UITypes.TMsgDlgBtn.mbNo
  ], 0,
 procedure(const AResult: System.UITypes.TModalResult)
  begin
   case AResult of
   mrYES:
    begin
      dmDB.TOperacaoSafraOcorrencia.Edit;
      dmDB.TOperacaoSafraOcorrenciastatus.AsInteger :=-1;
      dmDB.TOperacaoSafraOcorrencia.ApplyUpdates(-1);
      dmDB.AbreOcorrenciaOperacao(vIdOP);
      GeraListaOcorrencia;
    end;
   end;
 end);
end;

procedure TfrmOperacao.btnExcluirProdutoClick(Sender: TObject);
begin
  MessageDlg('Deseja deletar esse Produto?', System.UITypes.TMsgDlgType.mtInformation,
  [System.UITypes.TMsgDlgBtn.mbYes,
  System.UITypes.TMsgDlgBtn.mbNo
  ], 0,
 procedure(const AResult: System.UITypes.TModalResult)
  begin
   case AResult of
   mrYES:
    begin
      dmDB.TOperacaoSafraProdutos.Filtered := false;
      dmDB.TOperacaoSafraProdutos.Filter   := 'id='+vIdProdutoSel;
      dmDB.TOperacaoSafraProdutos.Filtered := true;

      dmDB.TOperacaoSafraProdutos.Edit;
      dmDB.TOperacaoSafraProdutosstatus.AsInteger :=-1;
      dmDB.TOperacaoSafraProdutos.ApplyUpdates(-1);
      TThread.Synchronize(nil, procedure
      begin
       dmDB.FDConn.Commit;
       dmDB.AbreProdutoOperacao(vIdOP);
       GeraListaProdutos;
      end);
    end;
   end;
 end);
end;

procedure TfrmOperacao.btnExcluirTalhaoClick(Sender: TObject);
begin
 dmDb.TDetTalhoesPul.Delete;
 dmDb.TDetTalhoesPul.ApplyUpdates(-1);
 GeraListaTalhao(vIdPul);
end;

procedure TfrmOperacao.btnExluirMaquinaClick(Sender: TObject);
begin
 MessageDlg('Deseja deletar essa maquina?', System.UITypes.TMsgDlgType.mtInformation,
  [System.UITypes.TMsgDlgBtn.mbYes,
  System.UITypes.TMsgDlgBtn.mbNo
  ], 0,
 procedure(const AResult: System.UITypes.TModalResult)
  begin
   case AResult of
   mrYES:
    begin
      dmDB.TOperacaoSafraMaquinas.Filtered := false;
      dmDB.TOperacaoSafraMaquinas.Filter   := 'id='+vIdMaquinaSel;
      dmDB.TOperacaoSafraMaquinas.Filtered := true;

      dmDB.TOperacaoSafraMaquinas.Edit;
      dmDB.TOperacaoSafraMaquinasstatus.AsInteger :=-1;
      dmDB.TOperacaoSafraMaquinas.ApplyUpdates(-1);
      dmDB.AbreMaquinaOperacao(vIdOP);
      GeraListaMaquinas;
    end;
   end;
 end);
end;

procedure TfrmOperacao.btnFinalizarClick(Sender: TObject);
begin
  if dmDB.VerificaMaquinasOperacao(vIdOP) then
 begin
   ShowMessage('Informe as maquinas utilizadas antes de finalizar!');
   Exit;
 end;
 if not dmDB.VerificaMaquinaHorasEmAberto(vIdOP) then
 begin
   ShowMessage('Existe Maquinas sem horas Trabalhadas edite antes de finalizar!');
   Exit;
 end;
 if listaTalhao.items.Count=0 then
 begin
   ShowMessage('Informe pelo menos um talhão!!');
   Exit;
 end;
  MessageDlg('Deseja Finalizar essa Atividade?', System.UITypes.TMsgDlgType.mtInformation,
  [System.UITypes.TMsgDlgBtn.mbYes,
  System.UITypes.TMsgDlgBtn.mbNo
  ], 0,
 procedure(const AResult: System.UITypes.TModalResult)
  begin
   case AResult of
   mrYES:
    begin
      FinalizaOperacaoExtra;
      myShowMenssagem('Operacao finalizada com sucesso!');
      GeraLista('');
    end;
   end;
 end);
end;

procedure TfrmOperacao.btnHabilitaSyncClick(Sender: TObject);
begin
 try
  dmDB.HabilitaSync(vIdOP);
  myShowMenssagem('Operacao Habilitada com sucesso!');
  laybtnLista.Visible := false;
 except
  on E: Exception do
    myShowMenssagem('Erro ao salvar Atividade:'+E.Message);
 end
end;

procedure TfrmOperacao.btnMaquinasClick(Sender: TObject);
begin
  btnEditar.Enabled        := vStatusConfere='1';
  btnNovaMaquina.Enabled   := (vStatusConfere='1') or (vIdOPTipo='5');
  btnExluirMaquina.Enabled := (vStatusConfere='1') or (vIdOPTipo='5');
  layBtnDet.Enabled := false;
  GeraListaMaquinas;
  tabDet.ActiveTab   := tbiMaquinasOP;
  tabDet.Visible     := true;
  layBtnDet.Enabled := true;
end;

procedure TfrmOperacao.btnNovaMaquinaClick(Sender: TObject);
begin
 LimpaCampos;
 dmDb.TOperacaoSafraMaquinas.Close;
 dmDb.TOperacaoSafraMaquinas.Open;
 dmDb.TOperacaoSafraMaquinas.Insert;
 MudarAba(tbiMaquinas,sender);
end;

procedure TfrmOperacao.btnTalhoesClick(Sender: TObject);
begin
 layBtnDet.Enabled := false;
  vDetalhes := 1;
 GeraListaTalhao(vIdOp);
 vIdPul                           := vIdOp;
 BindSourceDB5.DataSet            := dmDB.TDetTalhoesPul;
 layBtnDet.Enabled                := true;
 MudarAba(tbiTalhoes,sender);
end;

procedure TfrmOperacao.btnVoltaProdutoClick(Sender: TObject);
begin
 MudarAba(tbiDetalhes,sender);
end;

procedure TfrmOperacao.btnVoltarExtraClick(Sender: TObject);
begin
 MessageDlg('Deseja sair sem salvar Operação?', System.UITypes.TMsgDlgType.mtInformation,
  [System.UITypes.TMsgDlgBtn.mbYes,
  System.UITypes.TMsgDlgBtn.mbNo
  ], 0,
 procedure(const AResult: System.UITypes.TModalResult)
  begin
   case AResult of
   mrYES:
    begin
      mudaraba(tablista,sender);
    end;
   end;
 end);
end;

procedure TfrmOperacao.btnConfirmaAreaClick(Sender: TObject);
begin
 try
  dmDB.AtualizaAreaRealizadaPul(vIdTalhaoPull,
  edtAreaReal.Text);
  GeraListaTalhao(vIdPul);
  ShowMessage('Area Atualizada com sucesso!');
  layEditaArea.Visible := false;
 except
  on E: Exception do
    ShowMessage('Erro ao salvar Area:'+E.Message);
 end;
end;

procedure TfrmOperacao.btnConfirmaExtraClick(Sender: TObject);
var
 idOperacao:integer;
begin
   if cbxTipoExtra.ItemIndex=-1 then
   begin
     myShowMenssagem('Informe o Tipo de Operacao!');
     Exit;
   end;
   if edtDataExtraAte.Date<edtDataExtraDe.Date then
   begin
     myShowMenssagem('Data Fim nao por ser menor que data inicio!');
     Exit;
   end;
   dmDb.TOperacaoSafra.Close;
   dmDb.TOperacaoSafra.Open;
   dmDb.TOperacaoSafra.Insert;
   idOperacao                                 := RetornaIdOperacao;
   dmDB.TOperacaoSafraid.AsInteger            := idOperacao;
   dmDB.TOperacaoSafraidoperacao.AsInteger    := 5;
   dmDB.TOperacaoSafraidsafra.AsString        := vIdSafra;
   dmDB.TOperacaoSafraidResponsavel.AsString  := dmDB.vIdUser;
   dmDB.TOperacaoSafraidUsuario.AsString      := dmDB.vIdUser;
   dmDB.TOperacaoSafradatainicio.AsDateTime   := edtDataExtraDe.Date;
   dmDB.TOperacaoSafradatafim.AsDateTime      := edtDataExtraAte.Date;
   dmDB.TOperacaoSafraareaPrevista.AsInteger  := 0;
   dmDB.TOperacaoSafraobservacao.AsString     := edtObsExtra.Text;
   dmDB.TOperacaoSafratipoterraaereo.AsString := 'Terrestre';
   dmDB.TOperacaoSafrafinalidade.AsString     := cbxTipoExtra.Selected.Text;
   dmDB.TOperacaoSafrastatus.AsInteger        := 1;
   dmDB.TOperacaoSafraidcultura.AsInteger     := 90001;
   dmDB.TOperacaoSafraidvariedade.AsInteger   := 90001;
   dmDB.TOperacaoSafraidtalhao.AsInteger      := 0;
   try
    dmDB.TOperacaoSafra.ApplyUpdates(-1);
    vIdOP       := intToStr(idOperacao);
    AbreDetalhesOp(vIdOP);
    myShowMenssagem('Operaçao cadastrada com sucesso, informe as maquinas!');
    btnTalhoes.Visible    := true;
    Filtrar;
    MudarAba(TabLista,sender);
   except
    on E: Exception do
     myShowMenssagem('Erro ao salvar Ocorrencia:'+E.Message);
   end;
end;




procedure TfrmOperacao.Button16Click(Sender: TObject);
begin
 MudarAba(TabLista,sender);
end;

procedure TfrmOperacao.Button1Click(Sender: TObject);
begin
 MudarAba(TabLista,sender);
end;

procedure TfrmOperacao.Button2Click(Sender: TObject);
begin
 laybtnLista.Visible := false;
 vDetalhes := 0;
 vFinalizandoOP :=0;
 LimpaCampos;
 dmDb.TOperacaoSafra.Close;
 dmDb.TOperacaoSafra.Open;
 dmDb.TOperacaoSafra.Insert;
 dmDb.TOperacaoSafraidsafra.AsString   := vIdSafra;
 dmDb.TOperacaoSafraidtalhao.AsString  := vIdTalhao;
 dmDb.TOperacaoSafraidusuario.AsString := dmDb.vIdUser;
 edtobsextra.Text                  :='';
 cbxTipoExtra.ItemIndex            :=-1;
 LayDetAtividade.Visible           := true;
 MudarAba(TbiNovaOperacao,sender);
end;

procedure TfrmOperacao.Button3Click(Sender: TObject);
begin
 MudarAba(tbiDetalhes,sender);
end;

procedure TfrmOperacao.btnConfirmaTalhaoClick(Sender: TObject);
var
 vHoraIni,vHoraControle:TTimer;
 vQry:TFDQuery;
begin
  showMessage('Operação Registrada com Sucesso!!');
  btnBuscarOperacaoClick(sender);
  MudarAba(tablista,Sender);
  Exit;
end;


procedure TfrmOperacao.CarregaComboFiltros;
begin
 dmDB.TTalhoes.Close;
 dmDB.TTalhoes.Open();
 dmDB.TTalhoes.Filtered := false;
 dmDB.TTalhoes.Filter   := 'STATUS=1';
 dmDB.TTalhoes.Filtered := true;
 cbxTalhaoF.Items.Clear;
 cbxTalhaoF.Items.Add('Todos');
 while not dmDB.TTalhoes.Eof do
 begin
   cbxTalhaoF.Items.Add(dmDB.TTalhoesnome.AsString);
   dmDB.TTalhoes.Next;
 end;
 cbxTalhaoF.ItemIndex :=0;

 dmDB.TSetor.Close;
 dmDB.TSetor.Open();
 dmDB.TSetor.Filtered := false;
 dmDB.TSetor.Filter   := 'STATUS=1';
 dmDB.TSetor.Filtered := true;
 cbxSetorF.Items.Clear;
 cbxSetorF.Items.Add('Todos');
 while not dmDB.TSetor.Eof do
 begin
   cbxSetorF.Items.Add(dmDB.TSetornome.AsString);
   dmDB.TSetor.Next;
 end;
 cbxSetorF.ItemIndex :=0;
end;

procedure TfrmOperacao.EditButton2Click(Sender: TObject);
begin
  if Not Assigned(frmMaquinas) then
   Application.CreateForm(TfrmMaquinas, frmMaquinas);
  frmMaquinas.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = 0 then
    begin
     edtMaquina.Text   := dmDB.vMarcaModelo;
     vIdMaquina        := dmDB.vIdMaquinaSel;
    end;
  end);
end;

procedure TfrmOperacao.EditButton7Click(Sender: TObject);
begin
  if Not Assigned(frmOperadorMaquina) then
   Application.CreateForm(TfrmOperadorMaquina, frmOperadorMaquina);
  frmOperadorMaquina.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = 0 then
    begin
     edtOperador.Text   := dmDB.vNomeOperador;
     vIdoperador        := dmDB.vIdOperador;
    end;
  end);
end;

procedure TfrmOperacao.EditButton7Enter(Sender: TObject);
begin
  EditButton7Click(Sender);
end;

procedure TfrmOperacao.edtDataFiltroChange(Sender: TObject);
begin
  laybtnLista.Visible := false;
end;

procedure TfrmOperacao.edtDataMaquinaExit(Sender: TObject);
begin
 if edtDataMaquina.Text.Length=0 then
  edtDataMaquina.Date := date;
end;

procedure TfrmOperacao.edtHoraFimChangeTracking(Sender: TObject);
begin
 edtHorasTrabalhada.Value := edtHoraFim.Value-edtHoraIni.Value;
end;

procedure TfrmOperacao.edtHoraFimEnter(Sender: TObject);
begin
  edtHoraFim.SelectAll;
end;

procedure TfrmOperacao.edtHoraIniChangeTracking(Sender: TObject);
begin
 edtHorasTrabalhada.Value := edtHoraFim.Value-edtHoraIni.Value;
end;

procedure TfrmOperacao.edtHoraIniEnter(Sender: TObject);
begin
 edtHoraIni.SelectAll;
end;

procedure TfrmOperacao.edtHoraIniKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if (keyChar in ['0'..'9',','] = false) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmOperacao.edtHorasParadoEnter(Sender: TObject);
begin
  edtHorasParado.SelectAll;
end;

procedure TfrmOperacao.edtMaquinaEnter(Sender: TObject);
begin
  EditButton2Click(sender);
end;

procedure TfrmOperacao.edtQtdeUtilizadaKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if (keyChar in ['0'..'9',','] = false) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmOperacao.Filtrar;
var
 vFiltro:string;
begin
  if CheckBox1.IsChecked then
  vFiltro := 'and o.status=2 and o.FlagSync=0'
  else
  begin
    vFiltro := ' AND o.datainicio='+FormatDateTime('yyyy-mm-dd',edtDataFiltro.Date).QuotedString;
  end;
  GeraLista(vFiltro);
end;

procedure TfrmOperacao.FinalizaOperacaoExtra;
begin
    dmDB.AbreOperacaoExta(vidOp);
    dmDB.AlteraStatusOperacao(vidOp);
    dmDB.AbreDetTalhoesPulverizacao(vIdOp);
    dmDB.TDetTalhoesPul.First;
    while not dmDB.TDetTalhoesPul.eof do
    begin
      dmDB.TOperacaoSafra.Close;
      dmDB.TOperacaoSafra.Open;
      dmDB.TOperacaoSafra.Insert;
      dmDB.TOperacaoSafraid.AsInteger                  := RetornaIdOperacao;
      dmDB.TOperacaoSafraidoperacao.AsInteger          := 5;
      dmDB.TOperacaoSafraidsafra.AsString              := vIdSafra;
      dmDB.TOperacaoSafraidResponsavel.AsString        := dmDB.vIdUser;
      dmDB.TOperacaoSafradatainicio.AsDateTime         := dmDB.TOperacaoExtradatainicio.AsDateTime;
      dmDB.TOperacaoSafradatafim.AsDateTime            := dmDB.TOperacaoExtradatafim.AsDateTime;
      dmDB.TOperacaoSafraidtalhao.AsString             := dmDB.TDetTalhoesPulidTalhao.AsString;
      dmDB.TOperacaoSafraobservacao.AsString           := dmDB.TOperacaoExtraobservacao.AsString;
      dmDB.TOperacaoSafrafinalidade.AsString           := dmDB.TOperacaoExtrafinalidade.AsString;
      dmDB.TOperacaoSafraidusuario.AsString            := dmDB.vIdUser;
      dmDB.TOperacaoSafrastatus.AsInteger              := 3;
      dmDB.TOperacaoSafraidOpMaster.AsString           := vIdPul;
      dmDB.TOperacaoSafra.ApplyUpdates(-1);
      dmDB.TDetTalhoesPul.Next;
    end;
     //quebra operacao puverização maquinas
     dmDB.qryOperacaoQuebrada.Close;
     dmDB.qryOperacaoQuebrada.Open;
     dmDB.qryOperacaoQuebrada.Filtered := false;
     dmDB.qryOperacaoQuebrada.Filter   := 'idOpMaster='+vidOp;
     dmDB.qryOperacaoQuebrada.Filtered := true;
     dmDB.qryOperacaoQuebrada.First;
     while not dmDB.qryOperacaoQuebrada.Eof do
     begin
       dmDB.qryQuebraMaquinasPul.Close;
       dmDB.qryQuebraMaquinasPul.Open;
       dmDB.qryQuebraMaquinasPul.Filtered := false;
       dmDB.qryQuebraMaquinasPul.Filter   := 'idOperacaoTalhao='+vIdPul+' and idTalhao='+dmDB.qryOperacaoQuebradaidtalhao.AsString;
       dmDB.qryQuebraMaquinasPul.Filtered := true;
       while not dmDB.qryQuebraMaquinasPul.eof do
       begin
         dmdb.TOperacaoSafraMaquinas.Close;
         dmdb.TOperacaoSafraMaquinas.Open;
         dmdb.TOperacaoSafraMaquinas.Insert;
         dmdb.TOperacaoSafraMaquinasidoperacaotalhao.AsString  := dmDB.qryOperacaoQuebradaid.AsString;
         dmdb.TOperacaoSafraMaquinasidmaquina.AsString         := dmDB.qryQuebraMaquinasPulidmaquina.AsString;
         dmdb.TOperacaoSafraMaquinasoperador.AsString          := dmDB.qryQuebraMaquinasPuloperador.AsString;
         dmdb.TOperacaoSafraMaquinashorainicio.AsString        := StringReplace(dmDB.qryQuebraMaquinasPulhorainicio.AsString,'.',',',[rfReplaceAll]);;
         dmdb.TOperacaoSafraMaquinashorafim.AsString           := StringReplace(dmDB.qryQuebraMaquinasPulhorafim.AsString,'.',',',[rfReplaceAll]);;
         dmdb.TOperacaoSafraMaquinashoraparada.AsString        := StringReplace(dmDB.qryQuebraMaquinasPulhoraparada.AsString,'.',',',[rfReplaceAll]);
         dmdb.TOperacaoSafraMaquinashoraTrabalhada.AsString    := StringReplace(dmDB.qryQuebraMaquinasPulHorasTalhaoPercent.AsString,'.',',',[rfReplaceAll]);;
         dmdb.TOperacaoSafraMaquinasdata.AsDateTime            := dmDB.qryQuebraMaquinasPuldata.AsDateTime;
         dmdb.TOperacaoSafraMaquinasobservacao.AsString        := dmDB.qryQuebraMaquinasPulobservacao.AsString;
         dmdb.TOperacaoSafraMaquinasidOperador.AsString        := dmDB.qryQuebraMaquinasPulidOperador.AsString;

         dmdb.TOperacaoSafraMaquinasidUsuario.AsString         := dmDB.vIdUser;
         dmdb.TOperacaoSafraMaquinas.ApplyUpdates(-1);
         dmDB.qryQuebraMaquinasPul.Next;
       end;
       dmDB.qryOperacaoQuebrada.Next;
     end;
end;

procedure TfrmOperacao.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
var
  KeyboardService: IFMXVirtualKeyboardService;
begin
 if Key = vkHardwareBack then
 begin
   if TPlatformServices.Current.SupportsPlatformService(IFMXVirtualKeyboardService, IInterface(KeyboardService)) then
    KeyboardService.HideVirtualKeyboard;
   key := 0;
 end;
end;

procedure TfrmOperacao.FormShow(Sender: TObject);
begin
 layEditaArea.Visible:= false;
 laybtnLista.Visible := false;
 vDetalhes := 0;
 frmOperacao.StyleBook := frmPrincipal.StyleBook1;
 laybtnLista.Visible := false;
// AtualizaBinds;
// CarregaComboFiltros;
 GeraLista('');
 dmDB.TSafra.Close;
 dmDB.TSafra.Open;
 vIdSafra := dmDB.TSafraid.AsString;
 TabPrincipal.TabPosition := TTabPosition.None;
 TabPrincipal.ActiveTab   := TabLista;
 tabDet.TabPosition := TTabPosition.None;
end;

procedure TfrmOperacao.GeraLista(Filtro:string);
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vStatus:string;
begin
 TThread.CreateAnonymousThread(procedure
 begin
  dmDB.AbreOperacaoSafra(Filtro +' and idoperacao=5');
  TThread.Synchronize(nil, procedure
  begin
    listaOperacao.Items.Clear;
     while not dmDb.TOperacaoSafra.eof do
     begin
       if dmDB.TOperacaoSafrastatus.AsInteger=1 then
        vStatus:='Aberta'
       else
        vStatus:='Finalizada';
       item := listaOperacao.Items.Add;
         with frmOperacao do
         begin
           with item  do
           begin
             txt :=   TListItemText(Objects.FindDrawable('Text3'));
             txt.Text := dmDB.RetornaTalhoesPul(dmDB.TOperacaoSafraid.AsString);

             txt :=   TListItemText(Objects.FindDrawable('Text16'));
             txt.Text := dmDB.TOperacaoSafrastatus.AsString;

             if dmDB.TOperacaoSafraidoperacao.AsInteger=2 then
             begin
               img := TListItemImage(Objects.FindDrawable('Image13'));
               img.Bitmap     := frmPrincipal.imgReceituario.Bitmap;
               img.TagString  := dmDb.TOperacaoSafraidreceituario.AsString;
             end;

             txt :=   TListItemText(Objects.FindDrawable('Text13'));
             txt.Text := dmDb.TOperacaoSafraid.AsString;

             txt :=   TListItemText(Objects.FindDrawable('Text14'));
             txt.Text := dmDb.TOperacaoSafraidoperacao.AsString;

             txt :=   TListItemText(Objects.FindDrawable('Text15'));
             txt.Text := dmDb.TOperacaoSafraFlagSync.AsString;


             txt :=   TListItemText(Objects.FindDrawable('Text4'));
             txt.Text := 'Atividade:';
             txt :=   TListItemText(Objects.FindDrawable('Text5'));
             txt.Text := dmDb.TOperacaoSafraOperacao.AsString;

             txt :=   TListItemText(Objects.FindDrawable('Text6'));
             txt.Text := 'Inicio:';
             txt :=   TListItemText(Objects.FindDrawable('Text7'));
             txt.Text := dmDb.TOperacaoSafradatainicio.AsString;

             txt :=   TListItemText(Objects.FindDrawable('Text8'));
             txt.Text := 'Fim:';
             txt :=   TListItemText(Objects.FindDrawable('Text9'));
             txt.Text := dmDb.TOperacaoSafradatafim.AsString;

             txt :=   TListItemText(Objects.FindDrawable('Text10'));
             txt.Text := 'Status:';

             if dmDb.TOperacaoSafraFlagSync.AsString='0' then
             begin
              txt :=   TListItemText(Objects.FindDrawable('Text11'));
              txt.Text := vStatus+'-'+' Pendente Sync';
             end;

             if dmDb.TOperacaoSafraFlagSync.AsString='1' then
             begin
              txt :=   TListItemText(Objects.FindDrawable('Text11'));
              txt.Text := vStatus+'-'+' Sincronizada';
             end;

             if vStatus='Finalizada' then
             begin
               img := TListItemImage(Objects.FindDrawable('Image12'));
               img.ScalingMode := TImageScalingMode.Stretch;
               img.Bitmap     := frmPrincipal.imgRetanguloVerde.Bitmap;
             end
             else
             begin
               img := TListItemImage(Objects.FindDrawable('Image12'));
               img.Visible  := false;
             end;

             txt :=   TListItemText(Objects.FindDrawable('Text17'));
             txt.Text := 'Cultura:';
             txt :=   TListItemText(Objects.FindDrawable('Text18'));
             txt.Text := dmDb.TOperacaoSafraCultura.AsString;

             txt :=   TListItemText(Objects.FindDrawable('Text20'));
             txt.Text := 'Variedade:';
             txt :=   TListItemText(Objects.FindDrawable('Text19'));
             txt.Text := dmDb.TOperacaoSafraVariedade.AsString;

             txt :=   TListItemText(Objects.FindDrawable('Text21'));
             txt.Text := 'Cobertura:';
             txt :=   TListItemText(Objects.FindDrawable('Text22'));
             txt.Text := dmDb.TOperacaoSafraCobertura.AsString;


             img := TListItemImage(Objects.FindDrawable('Image14'));
             img.ScalingMode := TImageScalingMode.Stretch;
             img.Bitmap      := frmPrincipal.imgFort.Bitmap;
           end;
           dmDB.TOperacaoSafra.Next;
         end;
     end;
  end);
 end).Start;
end;

procedure TfrmOperacao.GeraListaMaquinas;
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vStatus:string;
begin
  dmDb.TOperacaoSafraMaquinas.First;
  ListaMaquinas.Items.Clear;
  while not dmDb.TOperacaoSafraMaquinas.eof do
   begin
       item := ListaMaquinas.Items.Add;
       with frmOperacao do
       begin
         with item  do
         begin
           txt      := TListItemText(Objects.FindDrawable('Text3'));
           txt.Text := dmDb.TOperacaoSafraMaquinasmaquina.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text10'));
           txt.Text := dmDb.TOperacaoSafraMaquinasdata.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text5'));
           txt.Text := '(h)Ini: '+dmDb.TOperacaoSafraMaquinashorainicio.AsString;


           txt      := TListItemText(Objects.FindDrawable('Text6'));
           txt.Text := '(h)Fim: '+dmDb.TOperacaoSafraMaquinashorafim.AsString;


           txt      := TListItemText(Objects.FindDrawable('Text4'));
           txt.Text := '(h)Parado: '+dmDb.TOperacaoSafraMaquinashoraparada.AsString;



           txt      := TListItemText(Objects.FindDrawable('Text7'));
           txt.Text := '(h)Trab.: '+dmDb.TOperacaoSafraMaquinashoraTrabalhada.AsString;

           txt           := TListItemText(Objects.FindDrawable('Text8'));
           txt.TagString := dmDb.TOperacaoSafraMaquinasid.AsString;
           txt.Text := 'Romaneio: ';

           txt      := TListItemText(Objects.FindDrawable('Text9'));
           txt.Text := dmDb.TOperacaoSafraMaquinasromaneio.AsString;

           img := TListItemImage(Objects.FindDrawable('Image14'));
           img.Bitmap     := frmPrincipal.imgMaquina.Bitmap;
         end;
         dmDB.TOperacaoSafraMaquinas.Next;
       end;
   end;
end;

procedure TfrmOperacao.GeraListaOcorrencia;
begin
end;

procedure TfrmOperacao.GeraListaProdutos;
begin
end;


procedure TfrmOperacao.GeraListaReceituario;
begin
end;

procedure TfrmOperacao.Image16Click(Sender: TObject);
begin
  laybtnLista.Visible := false;
  Close;
end;

procedure TfrmOperacao.Image18Click(Sender: TObject);
begin
 MudarAba(TabLista,sender);
end;

procedure TfrmOperacao.Image31Click(Sender: TObject);
begin
 if vDetalhes = 1 then
 begin
   MudarAba(tbiDetalhes,Sender);
   Exit;
 end;
 MudarAba(TabLista,sender);
end;

procedure TfrmOperacao.Image3Click(Sender: TObject);
begin
 MudarAba(tbiDetalhes,sender)
end;

procedure TfrmOperacao.Image7Click(Sender: TObject);
begin
 layEditaArea.Visible := false;
end;

procedure TfrmOperacao.LimpaCampos;
begin
  edtDataExtraDe.Text  :='';
  edtDataExtraAte.Text :='';
  edtObsExtra.Text     :='';
end;

procedure TfrmOperacao.ListaMaquinasItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
 vIdMaquinaSel :=
   TAppearanceListViewItem(ListaMaquinas.Selected).Objects.FindObjectT<TListItemText>
   ('Text8').TagString;
end;

procedure TfrmOperacao.listaOperacaoGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
 if vIdOP.Length>0 then
  laybtnLista.Visible := true;
end;

procedure TfrmOperacao.listaOperacaoItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
  vIdOP :=
   TAppearanceListViewItem(listaOperacao.Selected).Objects.FindObjectT<TListItemText>
   ('Text13').Text;

 vIdOPTipo :=
   TAppearanceListViewItem(listaOperacao.Selected).Objects.FindObjectT<TListItemText>
   ('Text14').Text;

  vStatusConfere :=
   TAppearanceListViewItem(listaOperacao.Selected).Objects.FindObjectT<TListItemText>
   ('Text16').Text;

  vFlagSync :=
   TAppearanceListViewItem(listaOperacao.Selected).Objects.FindObjectT<TListItemText>
   ('Text15').Text;

  lblDetCultura.Text   := TAppearanceListViewItem(listaOperacao.Selected).Objects.FindObjectT<TListItemText>
   ('Text19').Text;

  lblDetVariedade.Text :=  TAppearanceListViewItem(listaOperacao.Selected).Objects.FindObjectT<TListItemText>
   ('Text18').Text;

  if vIdOPTipo='2' then
   dmDB.vPulverizacao:=1
  else
   dmDB.vPulverizacao:=0;
end;
procedure TfrmOperacao.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
  actMudarAba.Tab := ATabItem;
  actMudarAba.ExecuteTarget(sender);
end;

procedure TfrmOperacao.myShowMenssagem(msg: string);
begin
  frmMsg := TfrmMsg.Create(Self);
  try
    frmMsg.lblmsg.Text :=msg;
    frmMsg.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  finally
    frmMsg.free;
  end;
end;
end.



