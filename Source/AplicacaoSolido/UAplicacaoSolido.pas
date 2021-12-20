unit UAplicacaoSolido;

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
  TfrmAplicacaoSolido = class(TForm)
    TabPrincipal: TTabControl;
    TabLista: TTabItem;
    layPrincipal: TLayout;
    Rectangle6: TRectangle;
    ToolBar1: TToolBar;
    Rectangle4: TRectangle;
    btnFinalizar: TButton;
    Image26: TImage;
    btnEditarOp: TButton;
    Image1: TImage;
    Button2: TButton;
    Image2: TImage;
    Layout1: TLayout;
    listaOperacao: TListView;
    ToolBar3: TToolBar;
    Rectangle3: TRectangle;
    Label4: TLabel;
    Image16: TImage;
    RectFiltros: TRectangle;
    Layout2: TLayout;
    Label1: TLabel;
    cbxSetorF: TComboBox;
    Label2: TLabel;
    cbxTalhaoF: TComboBox;
    Label3: TLabel;
    edtDataFiltro: TDateEdit;
    btnBuscarOperacao: TButton;
    CheckBox1: TCheckBox;
    laybtnLista: TLayout;
    btnExcluiItem: TRectangle;
    Image34: TImage;
    lblExcluir: TLabel;
    btnHabilitaSync: TRectangle;
    Image37: TImage;
    Label82: TLabel;
    Rectangle63: TRectangle;
    Label84: TLabel;
    TbiNovaOperacao: TTabItem;
    Layout10: TLayout;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    Layout31: TLayout;
    Rectangle22: TRectangle;
    Label28: TLabel;
    Image31: TImage;
    LayDetAtividade: TLayout;
    TabAuxCadAtividade: TTabControl;
    tbiPulverizacao: TTabItem;
    Rectangle42: TRectangle;
    Rectangle43: TRectangle;
    Layout64: TLayout;
    Button7: TButton;
    Image22: TImage;
    Label58: TLabel;
    btnSalvaPuverizacao: TButton;
    Image23: TImage;
    Label59: TLabel;
    tbiTalhoesPuverizacao: TTabItem;
    Rectangle48: TRectangle;
    Rectangle49: TRectangle;
    RecAddTalhao: TRectangle;
    Layout65: TLayout;
    Label60: TLabel;
    edtAddTalhao: TEdit;
    BtnAddTalhao: TEditButton;
    Layout66: TLayout;
    ToolBar7: TToolBar;
    layTotalRegistroGrid: TLayout;
    lblTotalRegistro: TLabel;
    Layout68: TLayout;
    lblAreaTotalPrev: TLabel;
    Layout70: TLayout;
    lblAreaTotalReal: TLabel;
    Layout67: TLayout;
    Button8: TButton;
    Image24: TImage;
    Label61: TLabel;
    btnConfirmaTalhao: TButton;
    Image25: TImage;
    Label62: TLabel;
    btnExcluirTalhao: TButton;
    Image28: TImage;
    tbiMaquinas: TTabItem;
    Rectangle11: TRectangle;
    Rectangle12: TRectangle;
    Layout6: TLayout;
    Layout22: TLayout;
    btnAddMaquina: TButton;
    Image4: TImage;
    Label16: TLabel;
    Button3: TButton;
    Image6: TImage;
    Label17: TLabel;
    Layout32: TLayout;
    Rectangle23: TRectangle;
    Label29: TLabel;
    Rectangle16: TRectangle;
    Layout18: TLayout;
    Label6: TLabel;
    edtOperador: TEdit;
    EditButton7: TEditButton;
    Rectangle17: TRectangle;
    Layout19: TLayout;
    Layout20: TLayout;
    Label14: TLabel;
    Label34: TLabel;
    edtHoraIni: TNumberBox;
    edtHoraFim: TNumberBox;
    Rectangle18: TRectangle;
    Layout21: TLayout;
    Label15: TLabel;
    edtObsMaquina: TEdit;
    Rectangle19: TRectangle;
    Layout17: TLayout;
    Label18: TLabel;
    edtMaquina: TEdit;
    EditButton2: TEditButton;
    Rectangle15: TRectangle;
    Layout7: TLayout;
    Layout8: TLayout;
    Label19: TLabel;
    lblCapRomaneio: TLabel;
    edtDataMaquina: TDateEdit;
    edtRomaneio: TEdit;
    Rectangle52: TRectangle;
    Layout77: TLayout;
    Layout78: TLayout;
    Label69: TLabel;
    Label73: TLabel;
    edtHorasParado: TNumberBox;
    edtHorasTrabalhada: TNumberBox;
    tbiProdutos: TTabItem;
    Rectangle13: TRectangle;
    Rectangle14: TRectangle;
    Layout12: TLayout;
    Layout27: TLayout;
    btnVoltaProduto: TButton;
    Image7: TImage;
    Label21: TLabel;
    btnConfirmaProduto: TButton;
    Image8: TImage;
    Label22: TLabel;
    Layout33: TLayout;
    Rectangle27: TRectangle;
    Label30: TLabel;
    Rectangle28: TRectangle;
    Layout24: TLayout;
    Label10: TLabel;
    edtProduto: TEdit;
    EditButton4: TEditButton;
    Rectangle29: TRectangle;
    Layout25: TLayout;
    Layout26: TLayout;
    edtQtdeUtilizada: TEdit;
    edtDataProduto: TDateEdit;
    Layout35: TLayout;
    Label20: TLabel;
    Label35: TLabel;
    Rectangle30: TRectangle;
    Layout28: TLayout;
    Label23: TLabel;
    edtObsProduto: TEdit;
    tbiOcorrencia: TTabItem;
    Rectangle20: TRectangle;
    Rectangle21: TRectangle;
    Layout15: TLayout;
    Layout29: TLayout;
    btnConfirmaOcorrencia: TButton;
    Image9: TImage;
    Label24: TLabel;
    Button4: TButton;
    Image10: TImage;
    Label25: TLabel;
    Layout34: TLayout;
    Rectangle32: TRectangle;
    Label31: TLabel;
    Rectangle33: TRectangle;
    Layout30: TLayout;
    Label26: TLabel;
    edtTipoOcorrencia: TEdit;
    EditButton5: TEditButton;
    Rectangle34: TRectangle;
    Layout36: TLayout;
    Label36: TLabel;
    edtDescricao: TMemo;
    Rectangle35: TRectangle;
    Layout37: TLayout;
    Layout38: TLayout;
    edtDataOcorrencia: TDateEdit;
    Layout39: TLayout;
    Label37: TLabel;
    tbiDetalhes: TTabItem;
    Rectangle24: TRectangle;
    Rectangle25: TRectangle;
    Layout23: TLayout;
    Layout40: TLayout;
    Rectangle26: TRectangle;
    Layout41: TLayout;
    layTalhoes: TLayout;
    Label38: TLabel;
    lblTalhao: TLabel;
    Layout43: TLayout;
    Label39: TLabel;
    lblAtividade: TLabel;
    Layout44: TLayout;
    Label42: TLabel;
    lblDataInicio: TLabel;
    Label44: TLabel;
    lblDataFim: TLabel;
    layBtnDet: TLayout;
    btnMaquinas: TLayout;
    Rectangle44: TRectangle;
    imgMaquinas: TImage;
    Label40: TLabel;
    btnOcorrencia: TLayout;
    Rectangle46: TRectangle;
    imgOcorrencia: TImage;
    Label43: TLabel;
    btnProdutos: TLayout;
    Rectangle45: TRectangle;
    imgProdutos: TImage;
    Label41: TLabel;
    btnTalhoes: TLayout;
    Rectangle47: TRectangle;
    Image36: TImage;
    lblTalhoes: TLabel;
    Layout69: TLayout;
    Label63: TLabel;
    lblAreaPrev: TLabel;
    Label65: TLabel;
    lblAreaReal: TLabel;
    Layout99: TLayout;
    Label53: TLabel;
    lblDetCultura: TLabel;
    Layout100: TLayout;
    Label86: TLabel;
    lblDetVariedade: TLabel;
    tabDet: TTabControl;
    tbiMaquinasOp: TTabItem;
    layGridMaquinas: TLayout;
    Layout46: TLayout;
    Rectangle31: TRectangle;
    Label45: TLabel;
    Layout47: TLayout;
    ToolBar2: TToolBar;
    lblTotalMaquinas: TLabel;
    lblTotalHoras: TLabel;
    Layout52: TLayout;
    btnExluirMaquina: TButton;
    Image11: TImage;
    btnNovaMaquina: TButton;
    Image12: TImage;
    btnEditar: TButton;
    Image5: TImage;
    Button1: TButton;
    Image19: TImage;
    ListaMaquinas: TListView;
    tbiProdutosOP: TTabItem;
    layProdUtilizados: TLayout;
    Layout48: TLayout;
    Rectangle36: TRectangle;
    Label46: TLabel;
    Layout49: TLayout;
    ToolBar4: TToolBar;
    lblTotalProdutos: TLabel;
    Layout53: TLayout;
    btnExcluirProduto: TButton;
    Image13: TImage;
    btnNovoProduto: TButton;
    Image14: TImage;
    Button5: TButton;
    Image20: TImage;
    btnEditaProduto: TButton;
    Image32: TImage;
    ListaProdutos: TListView;
    tbiOcorrenciaOP: TTabItem;
    layOcorrenciasOP: TLayout;
    GridOcorrencia: TStringGrid;
    Layout50: TLayout;
    Rectangle37: TRectangle;
    Label47: TLabel;
    Layout51: TLayout;
    ToolBar5: TToolBar;
    lblTotalOcorrencia: TLabel;
    Layout54: TLayout;
    btnExcluirOcorrencia: TButton;
    Image15: TImage;
    btnNovaOcorrencia: TButton;
    Image17: TImage;
    Button6: TButton;
    Image21: TImage;
    ListaOcorrencia: TListView;
    ToolBar6: TToolBar;
    Rectangle38: TRectangle;
    Label48: TLabel;
    Image18: TImage;
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    listaTalhao: TListView;
    layEditaArea: TLayout;
    Rectangle1: TRectangle;
    Layout3: TLayout;
    Layout4: TLayout;
    Rectangle2: TRectangle;
    Label5: TLabel;
    Image3: TImage;
    lblTalhaoEditaArea: TLabel;
    Rectangle7: TRectangle;
    Layout5: TLayout;
    Label7: TLabel;
    Layout9: TLayout;
    edtAreaPrev: TEdit;
    Label9: TLabel;
    Layout11: TLayout;
    edtAreaReal: TEdit;
    btnConfirmaArea: TButton;
    Image29: TImage;
    Label11: TLabel;
    Rectangle41: TRectangle;
    Layout56: TLayout;
    Layout57: TLayout;
    Label49: TLabel;
    Label50: TLabel;
    cbxTipoAplicacaoSolido: TComboBox;
    cbxTipoOperacaoSolid: TComboBox;
    RecCulturaApli: TRectangle;
    Layout97: TLayout;
    Layout98: TLayout;
    Label83: TLabel;
    cbxCulturaApl: TComboBox;
    Rectangle5: TRectangle;
    Layout13: TLayout;
    Layout14: TLayout;
    Label8: TLabel;
    Label13: TLabel;
    edtDataIniAtividade: TDateEdit;
    edtDataFimAtividade: TDateEdit;
    Rectangle8: TRectangle;
    Layout16: TLayout;
    Label12: TLabel;
    edtObservacaoAtividade: TEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField: TLinkFillControlToField;
    procedure FormShow(Sender: TObject);
    procedure BtnAddTalhaoClick(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure EditButton7Click(Sender: TObject);
    procedure EditButton4Click(Sender: TObject);
    procedure EditButton5Click(Sender: TObject);
    procedure btnExcluiItemClick(Sender: TObject);
    procedure Rectangle63Click(Sender: TObject);
    procedure btnBuscarOperacaoClick(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure listaOperacaoItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure listaOperacaoGesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure btnEditarOpClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Image31Click(Sender: TObject);
    procedure btnConfirmaTalhaoClick(Sender: TObject);
    procedure btnExcluirTalhaoClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure btnConfirmaAreaClick(Sender: TObject);
    procedure listaTalhaoItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure Image27Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure btnMaquinasClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnOcorrenciaClick(Sender: TObject);
    procedure btnTalhoesClick(Sender: TObject);
    procedure btnNovaMaquinaClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExluirMaquinaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnNovoProdutoClick(Sender: TObject);
    procedure btnEditaProdutoClick(Sender: TObject);
    procedure btnExcluirProdutoClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure btnNovaOcorrenciaClick(Sender: TObject);
    procedure btnExcluirOcorrenciaClick(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure btnConfirmaOcorrenciaClick(Sender: TObject);
    procedure edtHoraIniChangeTracking(Sender: TObject);
    procedure edtHoraFimChangeTracking(Sender: TObject);
    procedure btnAddMaquinaClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnConfirmaProdutoClick(Sender: TObject);
    procedure btnVoltaProdutoClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ListaMaquinasItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure ListaProdutosItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure ListaOcorrenciaItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure Button8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure btnSalvaPuverizacaoClick(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure cbxCulturaAplChange(Sender: TObject);
    procedure cbxTipoAplicacaoSolidoChange(Sender: TObject);
  private
    { Private declarations }
  public
    vIdAtividade,vIdTalhao,vIdSafra,vIdTalhaoPull,vNomeTalhaoLista,
    vAreaPrevLista,vAreaRealLista,
    vIdMaquina,vIdProduto,vIdTipoOcorrencia,vIdOP,vIdOPTipo,vStatusConfere,
    vIdTipoAplicacaoSolido,vIdCultura,vIdReceituario,vIdPul,vIdCobertura,
    vIdOperador,vIdMaquinaSel,vIdProdutoSel,vIdOcorrenciaSel,vIdReceituarioSel,
    vFlagSync,vIdVariedade:string;
    vFinalizandoOP,vTipoOperacao,vDetalhes :integer;
    procedure GeraLista(Filtro:string);
    procedure GeraListaTalhao(IdPull:string);
    procedure MudarAba(ATabItem: TTabItem; sender: TObject);
    function  RetornaIdOperacao: integer;
    procedure Filtrar;
    procedure AbreDetalhesOp(vIdOp: string);
    procedure GeraListaMaquinas;
    procedure SomarColunasHoras;
    procedure GeraListaProdutos;
    procedure GeraListaOcorrencia;
    procedure CarregaCombo;
    procedure LimpaCampos;
  end;

var
  frmAplicacaoSolido: TfrmAplicacaoSolido;

implementation

{$R *.fmx}

uses UPrincipal, UDataContext,UTalhoes, Maquinas, UProdutos,
  UAbastecimento, UTipoOcorrencia, UCadReceituario, UOperadorMaquina, Umsg,
  UReceituario, UDataFunctions, UPulverizacao;

procedure TfrmAplicacaoSolido.GeraLista(Filtro:string);
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vStatus:string;
begin
  dmDB.AbreOperacaoSafra(Filtro+' and op.id=1');
  listaOperacao.Items.Clear;
   while not dmDb.TOperacaoSafra.eof do
   begin
     if dmDB.TOperacaoSafrastatus.AsInteger=1 then
      vStatus:='Aberta'
     else
      vStatus:='Finalizada';
     item := listaOperacao.Items.Add;
       with frmAplicacaoSolido do
       begin
         with item  do
         begin
           txt :=   TListItemText(Objects.FindDrawable('Text3'));
           txt.Text := dmDB.RetornaTalhoesPul(dmDB.TOperacaoSafraid.AsString);

           txt :=   TListItemText(Objects.FindDrawable('Text13'));
           txt.Text := dmDb.TOperacaoSafraid.AsString;

           txt :=   TListItemText(Objects.FindDrawable('Text14'));
           txt.Text := dmDb.TOperacaoSafraidoperacao.AsString;

           txt :=   TListItemText(Objects.FindDrawable('Text15'));
           txt.Text := 'Qualidade:';
           txt.TagString := dmDb.TOperacaoSafraFlagSync.AsString;

           txt :=   TListItemText(Objects.FindDrawable('Text16'));
           txt.Text := dmDB.TOperacaoSafraQualidadeCobertura.AsString;
           txt.TagString := dmDB.TOperacaoSafrastatus.AsString;

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

           if dmDb.TOperacaoSafraFlagSync.AsInteger=0 then
           begin
            txt :=   TListItemText(Objects.FindDrawable('Text11'));
            txt.Text := vStatus+'-'+' Pendente Sync';
           end;

           if dmDb.TOperacaoSafraFlagSync.AsInteger=1 then
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

           img := TListItemImage(Objects.FindDrawable('Image14'));
           img.ScalingMode := TImageScalingMode.Stretch;
           img.Bitmap      := frmPrincipal.imgFort.Bitmap;
         end;
         dmDB.TOperacaoSafra.Next;
       end;
   end;
end;

procedure TfrmAplicacaoSolido.Image16Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmAplicacaoSolido.Image18Click(Sender: TObject);
begin
 MudarAba(TabLista,sender)
end;

procedure TfrmAplicacaoSolido.Image27Click(Sender: TObject);
begin
  MudarAba(TabLista,sender);
end;

procedure TfrmAplicacaoSolido.Image31Click(Sender: TObject);
begin
 MudarAba(tbiDetalhes,sender);
end;

procedure TfrmAplicacaoSolido.Image3Click(Sender: TObject);
begin
   layEditaArea.Visible := false;
end;

procedure TfrmAplicacaoSolido.listaOperacaoGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
 if vIdOP.Length>0 then
  laybtnLista.Visible := true;
end;

procedure TfrmAplicacaoSolido.listaOperacaoItemClickEx(const Sender: TObject;
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
   ('Text16').TagString;

  vFlagSync :=
   TAppearanceListViewItem(listaOperacao.Selected).Objects.FindObjectT<TListItemText>
   ('Text15').TagString;

  lblDetCultura.Text   := TAppearanceListViewItem(listaOperacao.Selected).Objects.FindObjectT<TListItemText>
   ('Text19').Text;

  lblDetVariedade.Text :=  TAppearanceListViewItem(listaOperacao.Selected).Objects.FindObjectT<TListItemText>
   ('Text18').Text;
  dmDB.vPulverizacao:=0;
end;

procedure TfrmAplicacaoSolido.ListaProdutosItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
 vIdProdutoSel :=
 TAppearanceListViewItem(ListaProdutos.Selected).Objects.FindObjectT<TListItemText>
 ('Text8').Text;
 vIdProduto     :=
 TAppearanceListViewItem(ListaProdutos.Selected).Objects.FindObjectT<TListItemText>
 ('Text9').Text;
end;

procedure TfrmAplicacaoSolido.listaTalhaoItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
  vIdTalhaoPull :=
   TAppearanceListViewItem(listaTalhao.Selected).Objects.FindObjectT<TListItemText>
   ('Text5').TagString;

  vNomeTalhaoLista :=
   TAppearanceListViewItem(listaTalhao.Selected).Objects.FindObjectT<TListItemText>
   ('Text5').Text;
  vAreaPrevLista  :=
   TAppearanceListViewItem(listaTalhao.Selected).Objects.FindObjectT<TListItemText>
   ('Text7').Text;
  vAreaRealLista :=
   TAppearanceListViewItem(listaTalhao.Selected).Objects.FindObjectT<TListItemText>
   ('Text9').Text;
  if ItemObject is TListItemImage then
  begin
   if TListItemImage(ItemObject).Name='Image12' then
   begin
     if vFlagSync='1' then
     begin
      ShowMessage('Operacao Já Sincronizada!');
      Exit;
     end
     else
     begin
      lblTalhaoEditaArea.Text:= vNomeTalhaoLista;
      edtAreaPrev.Text       := vAreaPrevLista;
      edtAreaReal.Text       := vAreaRealLista;
      layEditaArea.Visible := true;
     end;
   end;
  end;
end;

procedure TfrmAplicacaoSolido.GeraListaMaquinas;
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vStatus:string;
begin
  dmDB.AbreMaquinaOperacao(vIdOP);
  dmDb.TOperacaoSafraMaquinas.First;
  ListaMaquinas.Items.Clear;
  while not dmDb.TOperacaoSafraMaquinas.eof do
   begin
       item := ListaMaquinas.Items.Add;
       with frmAplicacaoSolido do
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

procedure TfrmAplicacaoSolido.SomarColunasHoras;
var
  Sum : Double;
  Val : Double;
  I   : Integer;
begin

end;

procedure TfrmAplicacaoSolido.GeraListaProdutos;
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vStatus:string;
begin
// TThread.CreateAnonymousThread(procedure
// begin
//  TThread.Synchronize(nil, procedure
//  begin
    dmDb.TOperacaoSafraProdutos.First;
    ListaProdutos.Items.Clear;
    while not dmDb.TOperacaoSafraProdutos.eof do
     begin
       item := ListaProdutos.Items.Add;
         with frmAplicacaoSolido do
         begin
           with item  do
           begin
             txt      := TListItemText(Objects.FindDrawable('Text8'));
             txt.Text := dmDb.TOperacaoSafraProdutosid.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text9'));
             txt.Text := dmDb.TOperacaoSafraProdutosidproduto.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text3'));
             txt.Text := dmDb.TOperacaoSafraProdutosProduto.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text10'));
             txt.Text := 'Data: '+dmDb.TOperacaoSafraProdutosdata.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text4'));
             txt.Text := 'Total Utilizado: ';

             txt      := TListItemText(Objects.FindDrawable('Text7'));
             txt.Text := dmDb.TOperacaoSafraProdutosqtdeutilidado.AsString;

             img := TListItemImage(Objects.FindDrawable('Image14'));
             img.Bitmap     := frmPrincipal.imgSeed.Bitmap;
           end;
           dmDB.TOperacaoSafraProdutos.Next;
         end;
     end;
//  end);
// end).Start;
end;

procedure TfrmAplicacaoSolido.GeraListaTalhao(IdPull:string);
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
       with frmAplicacaoSolido do
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

procedure TfrmAplicacaoSolido.GeraListaOcorrencia;
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vStatus:string;
begin
// TThread.CreateAnonymousThread(procedure
// begin
//  TThread.Synchronize(nil, procedure
//  begin
    dmDb.TOperacaoSafraOcorrencia.First;
    ListaOcorrencia.Items.Clear;
    while not dmDb.TOperacaoSafraOcorrencia.eof do
     begin
       item := ListaOcorrencia.Items.Add;
         with frmAplicacaoSolido do
         begin
           with item  do
           begin
             txt      := TListItemText(Objects.FindDrawable('Text8'));
             txt.Text := dmDb.TOperacaoSafraOcorrenciaid.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text3'));
             txt.Text := dmDb.TOperacaoSafraOcorrenciaTipoOcorrencia.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text10'));
             txt.Text := dmDb.TOperacaoSafraOcorrenciadata.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text7'));
             txt.Text := dmDb.TOperacaoSafraOcorrenciadescricao.AsString;

             img := TListItemImage(Objects.FindDrawable('Image14'));
             img.Bitmap     := frmPrincipal.imgOcorrencia.Bitmap;
           end;
           dmDB.TOperacaoSafraOcorrencia.Next;
         end;
     end;
//  end);
// end).Start;
end;


procedure TfrmAplicacaoSolido.AbreDetalhesOp(vIdOp: string);
begin

end;

procedure TfrmAplicacaoSolido.btnAddMaquinaClick(Sender: TObject);
begin
 if edtMaquina.Text.Length=0 then
 begin
   ShowMessage('Informe a Maquina!!');
   edtMaquina.SetFocus;
   Exit;
 end;

 if edtOperador.Text.Length=0 then
 begin
   ShowMessage('Informe o Operador!!');
   edtOperador.SetFocus;
   Exit;
 end;
 if edtHoraIni.Text.Length=0 then
 begin
   ShowMessage('Informe a Hora de Inicio!!');
   edtHoraIni.SetFocus;
   Exit;
 end;
 if edtHoraFim.Text.Length=0 then
 begin
   ShowMessage('Informe a Hora Fim!!');
   edtHoraFim.SetFocus;
   Exit;
 end;
 if edtDataMaquina.Text.Length=0 then
 begin
   ShowMessage('Informe a Data!!');
   edtDataMaquina.SetFocus;
   Exit;
 end;
 edtHorasTrabalhada.Value                              := edtHoraFim.Value-edtHoraIni.Value;

 dmDb.TOperacaoSafraMaquinasidoperacaotalhao.AsString   := vIdOP;
 dmDb.TOperacaoSafraMaquinasidusuario.AsString          := dmDb.vIdUser;

 dmdb.TOperacaoSafraMaquinasidmaquina.AsString         := vIdMaquina;
 dmdb.TOperacaoSafraMaquinasoperador.AsString          := edtOperador.Text;
 dmdb.TOperacaoSafraMaquinashorainicio.AsString        := edtHoraIni.Text;
 dmdb.TOperacaoSafraMaquinashorafim.AsString           := edtHoraFim.Text;
 dmdb.TOperacaoSafraMaquinashoraparada.AsString        := edtHorasParado.Text;
 dmdb.TOperacaoSafraMaquinashoraTrabalhada.AsString    := edtHorasTrabalhada.Text;
 dmdb.TOperacaoSafraMaquinasdata.AsDateTime            := edtDataMaquina.date;
 dmdb.TOperacaoSafraMaquinasobservacao.AsString        := edtObsMaquina.Text;
 dmdb.TOperacaoSafraMaquinasidOperador.AsString        := vIdOperador;
 if (vIdOPTipo='4')then
  dmdb.TOperacaoSafraMaquinasromaneio.AsString         :=edtRomaneio.Text;
 try
   dmdb.TOperacaoSafraMaquinas.ApplyUpdates(-1);
   ShowMessage('Maquina Adicionada com sucesso!!');
   dmDB.AbreMaquinaOperacao(vIdOP);
   geraListaMaquinas;
   SomarColunasHoras;
   lblTotalMaquinas.Text    := intToStr(ListaMaquinas.Items.Count);
   lblTotalHoras.Text       := dmDB.RetornaHorasTotais(vIdOp);
   MudarAba(tbiDetalhes,sender);
 except
   on E: Exception do
    ShowMessage('Erro ao salvar Maquina:'+E.Message);
 end;
end;

procedure TfrmAplicacaoSolido.BtnAddTalhaoClick(Sender: TObject);
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
       GeraListaTalhao(vIdPul)

      except
       on E: Exception do
         ShowMessage('Erro ao Adicionar Talhao:'+E.Message);
      end;
    end;
  end);
end;


procedure TfrmAplicacaoSolido.Rectangle63Click(Sender: TObject);
begin
try
  dmDB.HabilitaSync(vIdOP);
  ShowMessage('Operação habilitada com sucesso!');
  laybtnLista.Visible := false;
 except
 end
end;

function TfrmAplicacaoSolido.RetornaIdOperacao: integer;
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


procedure TfrmAplicacaoSolido.btnBuscarOperacaoClick(Sender: TObject);
begin
  laybtnLista.Visible := false;
  Filtrar;
end;

procedure TfrmAplicacaoSolido.btnConfirmaAreaClick(Sender: TObject);
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

procedure TfrmAplicacaoSolido.btnConfirmaOcorrenciaClick(Sender: TObject);
begin
 if edtTipoOcorrencia.Text.Length=0 then
 begin
   ShowMessage('Informe o Tipo!!');
   edtTipoOcorrencia.SetFocus;
   Exit;
 end;
 if edtDescricao.Text.Length=0 then
 begin
   ShowMessage('Informe a Descrição!!');
   edtDescricao.SetFocus;
   Exit;
 end;
 if edtDataOcorrencia.Text.Length=0 then
 begin
   ShowMessage('Informe a Data!!');
   edtDataOcorrencia.SetFocus;
   Exit;
 end;
 dmDB.TOperacaoSafraOcorrenciadata.AsDateTime              := edtDataOcorrencia.Date;
 dmDB.TOperacaoSafraOcorrenciaidtipoocorrencia.AsString    := vIdTipoOcorrencia;
 dmDB.TOperacaoSafraOcorrenciadescricao.AsString           := edtDescricao.Text;
 try
   dmDB.TOperacaoSafraOcorrencia.ApplyUpdates(-1);
   ShowMessage('Ocorrencia Adicionada com sucesso!!');
   dmDB.AbreOcorrenciaOperacao(vIdOP);
   GeraListaOcorrencia;
   MudarAba(tbiDetalhes,sender);
 except
   on E: Exception do
    ShowMessage('Erro ao salvar Ocorrencia:'+E.Message);
 end;
end;

procedure TfrmAplicacaoSolido.btnConfirmaProdutoClick(Sender: TObject);
begin
if edtProduto.Text.Length=0 then
 begin
   ShowMessage('Informe o Produto!!');
   edtProduto.SetFocus;
   Exit;
 end;
 if(edtQtdeUtilizada.Text.Length=0) or (edtQtdeUtilizada.Text='0') then
 begin
   ShowMessage('Informe a Quantidade!!');
   edtQtdeUtilizada.SetFocus;
   Exit;
 end;
 if(edtDataProduto.Text.Length=0) then
 begin
   ShowMessage('Informe a Data!!');
   edtDataProduto.SetFocus;
   Exit;
 end;
 dmdb.TOperacaoSafraProdutosidproduto.AsString        := vIdProduto;
 dmdb.TOperacaoSafraProdutosqtdeutilidado.AsString    := edtQtdeUtilizada.Text;
 dmdb.TOperacaoSafraProdutosobservacao.AsString       := edtObsProduto.Text;
 dmdb.TOperacaoSafraProdutosdata.AsDateTime           := edtDataProduto.Date;
 try
   dmdb.TOperacaoSafraProdutos.ApplyUpdates(-1);
   ShowMessage('Produto Adicionada com sucesso!!');
   dmDB.AbreProdutoOperacao(vIdOP);
   GeraListaProdutos;
   edtProduto.Enabled    := true;
   MudarAba(tbiDetalhes,sender);
 except
   on E: Exception do
    ShowMessage('Erro ao salvar Produto:'+E.Message);
 end;
end;

procedure TfrmAplicacaoSolido.btnConfirmaTalhaoClick(Sender: TObject);
var
 vQry:TFDQuery;
begin
 if (vDetalhes = 1) or (vFinalizandoOP=0) then
 begin
  btnBuscarOperacaoClick(sender);
  MudarAba(TabLista,Sender);
  showMessage('Operação Registrada com Sucesso!!');
  Exit;
 end
 else
 begin
  vQry:=TFDQuery.Create(nil);
  vQry.Connection := dmDB.FDConn;
  if listaTalhao.Items.Count=0 then
  begin
    showMessage('Informe pelo menos um talhão!!');
    Exit;
  end;
  dmDB.AtualizaAreaPrevPul(vIdPul);
  if lblAreaTotalReal.Text = 'Area Real.: 0' then
  begin
   showMessage('Informe a area realizada!!');
   Exit;
  end;
  dmDB.TDetTalhoesPul.First;
  while not dmDB.TDetTalhoesPul.eof do
  begin
    dmDB.TOperacaoSafra.Close;
    dmDB.TOperacaoSafra.Open;
    dmDB.TOperacaoSafra.Insert;
    dmDB.TOperacaoSafraid.AsInteger                   := RetornaIdOperacao;
    dmDB.TOperacaoSafraidoperacao.AsString            := vIdAtividade;
    dmDB.TOperacaoSafraidsafra.AsString               := vIdSafra;
    dmDB.TOperacaoSafraidResponsavel.AsString         := dmDB.vIdUser;
    dmDB.TOperacaoSafradatainicio.AsDateTime          := edtDataIniAtividade.Date;
    dmDB.TOperacaoSafraareaPrevista.Asstring          := dmDB.TDetTalhoesPulAreaPrevista.AsString;
    dmDB.TOperacaoSafraarearealizada.Asstring         := dmDB.TDetTalhoesPulAreaRealizada.AsString;
    dmDB.TOperacaoSafradatafim.AsDateTime             := edtDataFimAtividade.Date;
    dmDB.TOperacaoSafraidtalhao.AsString              := dmDB.TDetTalhoesPulidTalhao.AsString;
    dmDB.TOperacaoSafraobservacao.AsString            := edtObservacaoAtividade.Text;
    dmDB.TOperacaoSafraidcobertura.AsString           := vIdCobertura;
    dmDB.TOperacaoSafraidcultura.AsString             := vIdCultura;
    dmDB.TOperacaoSafratipoterraaereo.AsString        := cbxTipoOperacaoSolid.Selected.Text;
    dmDB.TOperacaoSafraidtipoaplicacaosolido.AsString := vIdTipoAplicacaoSolido;
    dmDB.TOperacaoSafratipoterraaereo.AsString        := cbxTipoAplicacaoSolido.Selected.Text;
    dmDB.TOperacaoSafraidusuario.AsString             := dmDB.vIdUser;
    dmDB.TOperacaoSafrastatus.AsInteger               := 3;
    dmDB.TOperacaoSafraidOpMaster.AsString            := vIdPul;
    dmDB.TOperacaoSafra.ApplyUpdates(-1);
    dmDB.TDetTalhoesPul.Next;
  end;
   //quebra operacao puverização maquinas
   dmDB.qryOperacaoQuebrada.Close;
   dmDB.qryOperacaoQuebrada.Open;
   dmDB.qryOperacaoQuebrada.Filtered := false;
   dmDB.qryOperacaoQuebrada.Filter   := 'idOpMaster='+vIdPul;
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
     //quebra produtos
     dmDB.qryQuebraProdutosPul.Close;
     dmDB.qryQuebraProdutosPul.Open;
     dmDB.qryQuebraProdutosPul.Filtered := false;
     dmDB.qryQuebraProdutosPul.Filter   := 'idOperacaoTalhao='+vIdPul+' and idTalhao='+dmDB.qryOperacaoQuebradaidtalhao.AsString;
     dmDB.qryQuebraProdutosPul.Filtered := true;
     while not dmDB.qryQuebraProdutosPul.eof do
     begin
       dmdb.TOperacaoSafraProdutos.Close;
       dmdb.TOperacaoSafraProdutos.Open;
       dmdb.TOperacaoSafraProdutos.Insert;
       dmdb.TOperacaoSafraProdutosidoperacaotalhao.AsString   := dmDB.qryOperacaoQuebradaid.AsString;
       dmdb.TOperacaoSafraProdutosidproduto.AsString          := dmDB.qryQuebraProdutosPulIdProduto.AsString;
       dmdb.TOperacaoSafraProdutosqtdeutilidado.AsString      := dmDB.qryQuebraProdutosPulQtdeUtilizadaTalhao.AsString;
       dmdb.TOperacaoSafraProdutosobservacao.AsString         := dmDB.qryQuebraProdutosPulobservacao.AsString;
       dmdb.TOperacaoSafraProdutosdata.AsDateTime             := dmDB.qryQuebraProdutosPuldata.AsDateTime;
       dmdb.TOperacaoSafraProdutosidUsuario.AsString          := dmDB.vIdUser;
       dmdb.TOperacaoSafraProdutos.ApplyUpdates(-1);
       dmDB.qryQuebraProdutosPul.Next
     end;
     //quebra Ocorrencia
     dmDB.qryQuebraOcorrenciaPul.Close;
     dmDB.qryQuebraOcorrenciaPul.Open;
     dmDB.qryQuebraOcorrenciaPul.Filtered := false;
     dmDB.qryQuebraOcorrenciaPul.Filter   := 'idOperacaoTalhao='+vIdPul+' and idTalhao='+dmDB.qryOperacaoQuebradaidtalhao.AsString;
     dmDB.qryQuebraOcorrenciaPul.Filtered := true;
     while not dmDB.qryQuebraOcorrenciaPul.eof do
     begin
       dmDB.TOperacaoSafraOcorrencia.Close;
       dmDB.TOperacaoSafraOcorrencia.Open;
       dmDB.TOperacaoSafraOcorrencia.Insert;
       dmDB.TOperacaoSafraOcorrenciaidoperacaotalhao.AsString    := dmDB.qryOperacaoQuebradaid.AsString;
       dmDB.TOperacaoSafraOcorrenciadata.AsDateTime              := dmDB.qryQuebraOcorrenciaPulData.AsDateTime;
       dmDB.TOperacaoSafraOcorrenciaidtipoocorrencia.AsString    := dmDB.qryQuebraOcorrenciaPulidtipoocorrencia.AsString;
       dmDB.TOperacaoSafraOcorrenciadescricao.AsString           := dmDB.qryQuebraOcorrenciaPuldescricao.AsString;
       dmdb.TOperacaoSafraOcorrenciaidUsuario.AsString           := dmDB.vIdUser;
       dmDB.TOperacaoSafraOcorrencia.ApplyUpdates(-1);
       dmDB.qryQuebraOcorrenciaPul.Next
     end;
     //quebra Ocorrencia
     dmDB.TVazaoOperacao.Close;
     dmDB.TVazaoOperacao.Open;
     dmDB.TVazaoOperacao.Filtered := false;
     dmDB.TVazaoOperacao.Filter   := 'idOperacaoTalhao='+vIdPul;
     dmDB.TVazaoOperacao.Filtered := true;
     dmDB.qryOperacaoQuebrada.Next;
   end;
 end;
  showMessage('Operação Finalizada com Sucesso!!');
  MudarAba(TabLista,sender);
  GeraLista('');
end;
procedure TfrmAplicacaoSolido.Filtrar;
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

procedure TfrmAplicacaoSolido.btnEditaProdutoClick(Sender: TObject);
begin
  if vIdProdutoSel.Length=0 then
  begin
    ShowMessage('Nenhum produto para editar!!');
    Exit;
  end;
  dmdb.TOperacaoSafraProdutos.Filtered := false;
  dmdb.TOperacaoSafraProdutos.Filter   :='id='+vIdProdutoSel;
  dmdb.TOperacaoSafraProdutos.Filtered := true;
  dmdb.TOperacaoSafraProdutos.Edit;
  vIdProduto            := dmdb.TOperacaoSafraProdutosidproduto.AsString;
  edtQtdeUtilizada.Text := dmdb.TOperacaoSafraProdutosqtdeutilidado.AsString;
  edtObsProduto.Text    := dmdb.TOperacaoSafraProdutosobservacao.AsString;
  edtDataProduto.Date   := dmdb.TOperacaoSafraProdutosdata.AsDateTime;
  edtProduto.Text       := dmdb.TOperacaoSafraProdutosProduto.AsString;
  edtProduto.Enabled    := false;
  MudarAba(tbiProdutos,sender);
end;

procedure TfrmAplicacaoSolido.btnEditarClick(Sender: TObject);
begin
 if vIdMaquinaSel.Length=0 then
 begin
   ShowMessage('Selecione uma maquina!');
   Exit;
 end;
 dmDb.TOperacaoSafraMaquinas.Filtered := false;
 dmDb.TOperacaoSafraMaquinas.Filter   := 'ID='+vIdMaquinaSel;
 dmDb.TOperacaoSafraMaquinas.Filtered := true;
 dmDb.TOperacaoSafraMaquinas.Edit;
 vIdOP  := dmDb.TOperacaoSafraMaquinasidoperacaotalhao.AsString;
 dmDb.TOperacaoSafraMaquinasidusuario.AsString         := dmDb.vIdUser;
 lblCapRomaneio.Visible := false;
 edtRomaneio.Visible    := false;
 edtMaquina.Text        := dmDB.TOperacaoSafraMaquinasmaquina.AsString;
 vIdMaquina             := dmDB.TOperacaoSafraMaquinasidmaquina.AsString;
 edtOperador.Text       := dmDB.TOperacaoSafraMaquinasoperador.AsString;
 vIdoperador            := dmDB.TOperacaoSafraMaquinasidOperador.AsString;
 edtDataMaquina.Date    := dmDB.TOperacaoSafraMaquinasdata.AsDateTime;
 edtHoraIni.Value       := dmDB.TOperacaoSafraMaquinashorainicio.AsFloat;
 edtHoraFim.Value       := dmDB.TOperacaoSafraMaquinashorafim.AsFloat;
 edtHorasParado.Value   := dmDB.TOperacaoSafraMaquinashoraparada.AsFloat;
 edtObsMaquina.Text     := dmDB.TOperacaoSafraMaquinasobservacao.AsString;
 lblCapRomaneio.Visible := false;
 edtRomaneio.Visible    := false;
 MudarAba(tbiMaquinas,sender);
end;

procedure TfrmAplicacaoSolido.btnEditarOpClick(Sender: TObject);
begin
 laybtnLista.Visible := false;
 vDetalhes := 1;
 if vIdOp.Length=0 then
 begin
   ShowMessage('Selecione a Operação!');
   Exit;
 end;
 tabDet.Visible := false;
 AbreDetalhesOp(vIdOp);
 MudarAba(tbiDetalhes,Sender);
end;

procedure TfrmAplicacaoSolido.btnExcluiItemClick(Sender: TObject);
begin
 laybtnLista.Visible := false;
 if vFlagSync='1' then
 begin
   ShowMessage('Operação ja sincronizada impossivel deletar!');
   Exit;
 end
 else
 begin
   try
    dmDB.DeleteOperacao(vIdOP,'');
    ShowMessage('Operação deletada com sucesso!');
    GeraLista('');
   except
    on E: Exception do
    ShowMessage('Erro ao salvar Atividade:'+E.Message);
   end;
 end;
end;

procedure TfrmAplicacaoSolido.btnExcluirOcorrenciaClick(Sender: TObject);
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

procedure TfrmAplicacaoSolido.btnExcluirProdutoClick(Sender: TObject);
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
      dmDB.DeletaProduto(vIdProdutoSel);
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

procedure TfrmAplicacaoSolido.btnExcluirTalhaoClick(Sender: TObject);
begin
 if vIdTalhaoPull.Length=0 then
 begin
   ShowMessage('Selecione o Talhão!');
   Exit;
 end;

 MessageDlg('Deseja deletar esse Talhão?', System.UITypes.TMsgDlgType.mtInformation,
  [System.UITypes.TMsgDlgBtn.mbYes,
  System.UITypes.TMsgDlgBtn.mbNo
  ], 0,
 procedure(const AResult: System.UITypes.TModalResult)
  begin
   case AResult of
   mrYES:
    begin
      dmDB.DeleteDetTalhaoReceituario(vIdTalhaoPull);
      GeraListaTalhao(vIdPul);
    end;
   end;
 end);
end;

procedure TfrmAplicacaoSolido.btnExluirMaquinaClick(Sender: TObject);
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

procedure TfrmAplicacaoSolido.CarregaCombo;
begin
  dmdb.TCulturas.Close;
  dmdb.TCulturas.Open;
  dmdb.TCulturas.First;
  cbxCulturaApl.Items.Clear;
  while not dmdb.TCulturas.eof do
  begin
    cbxCulturaapl.Items.Add(dmdb.TCulturasnome.AsString);
    dmdb.TCulturas.Next;
  end;
end;


procedure TfrmAplicacaoSolido.cbxCulturaAplChange(Sender: TObject);
begin
  if dmFunctions=nil then
   dmFunctions := TdmFunctions.Create(Self);
 if cbxCulturaApl.ItemIndex>-1 then
  vIdCultura := dmFunctions.RetornaIdCultura(cbxCulturaApl.Selected.Text);
end;

procedure TfrmAplicacaoSolido.cbxTipoAplicacaoSolidoChange(Sender: TObject);
begin
 if cbxTipoAplicacaoSolido.ItemIndex>-1 then
  vIdTipoAplicacaoSolido := LinkFillControlToField.BindList.GetSelectedValue.AsString;
end;

procedure TfrmAplicacaoSolido.btnFinalizarClick(Sender: TObject);
var
 vIndexFinalidade:integer;
begin
 vDetalhes:=0;
 laybtnLista.Visible := false;
 CarregaCombo;
 if vIdOp.Length=0 then
 begin
   ShowMessage('Selecione a Operação!');
   Exit;
 end;
 if vStatusConfere='2' then
 begin
   ShowMessage('Operação ja Finalizada!');
   Exit;
 end;
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
 if dmDB.VerificaProdutosOperacao(vIdOP) then
 begin
   ShowMessage('Informe os Produtos utilizadas antes de finalizar!');
   Exit;
 end;
 if not dmDB.VerificaProdutosOperacaoZero(vIdOP) then
 begin
   ShowMessage('Produtos com quantidade zero edite antes de finalizar!');
   Exit;
 end;
 MessageDlg('Deseja Realmente Finalizar essa Operação?', System.UITypes.TMsgDlgType.mtInformation,
 [System.UITypes.TMsgDlgBtn.mbYes,
 System.UITypes.TMsgDlgBtn.mbNo
 ], 0,
  procedure(const AResult: System.UITypes.TModalResult)
  begin
     case AResult of
     mrYES:
     begin
      vFinalizandoOP       :=1;
      dmDB.TOperacaoSafra.Close;
      dmDB.TOperacaoSafra.Open;
      dmDB.TOperacaoSafra.Filtered:= false;
      dmDB.TOperacaoSafra.Filter  := 'ID='+vIdOP;
      dmDB.TOperacaoSafra.Filtered:= true;
      dmDB.TOperacaoSafra.Edit;
      vTipoOperacao                  := 1;
      TabAuxCadAtividade.TabPosition := TTabPosition.None;
      TabAuxCadAtividade.ActiveTab   := tbiPulverizacao;
      dmdb.TCulturas.Close;
      dmdb.TCulturas.Open;
      LayDetAtividade.Visible := true;
      vIdAtividade                               := dmDB.TOperacaoSafraidoperacao.AsString;
      vIdSafra                                   := dmDB.TOperacaoSafraidsafra.AsString;
      dmDB.vIdUser                               := dmDB.TOperacaoSafraidResponsavel.AsString;
      edtDataIniAtividade.Date                   := dmDB.TOperacaoSafradatainicio.AsDateTime;
      edtAreaPrev.Text                           := dmDB.TOperacaoSafraareaPrevista.Asstring;
      if dmDB.TOperacaoSafradatafim.AsString.Length=0 then
       edtDataFimAtividade.Text                  := ''
      else
       edtDataFimAtividade.Date                  := dmDB.TOperacaoSafradatafim.AsDateTime;
      edtObservacaoAtividade.Text                := dmDB.TOperacaoSafraobservacao.AsString;
      vIdCultura                                 := dmDB.TOperacaoSafraidcultura.AsString;
      vIdTipoAplicacaoSolido                     := dmDB.TOperacaoSafratipoaplicacaosolido.AsString;
      cbxCulturaApl.ItemIndex                    := cbxCulturaApl.Items.IndexOf(dmDB.TOperacaoSafraCultura.AsString);
      cbxTipoAplicacaoSolido.ItemIndex           := cbxTipoAplicacaoSolido.Items.IndexOf(dmDB.TOperacaoSafratipoaplicacaosolido.AsString);
      cbxTipoOperacaoSolid.ItemIndex             := cbxTipoOperacaoSolid.Items.IndexOf(dmDB.TOperacaoSafratipoterraaereo.AsString);
      mudarAba(TbiNovaOperacao,sender);
     end;
    end;
  end);
end;

procedure TfrmAplicacaoSolido.btnMaquinasClick(Sender: TObject);
begin
  btnEditar.Enabled        := vStatusConfere='1';
  btnNovaMaquina.Enabled   := (vStatusConfere='1') or (vIdOPTipo='5');
  btnExluirMaquina.Enabled := (vStatusConfere='1') or (vIdOPTipo='5');
  layBtnDet.Enabled := false;
  GeraListaMaquinas;
  tabDet.ActiveTab   := tbiMaquinasOP;
  tabDet.Visible     := true;
  layBtnDet.Enabled  := true;
end;

procedure TfrmAplicacaoSolido.btnNovaMaquinaClick(Sender: TObject);
begin
 if vIdOPTipo='4' then
 begin
   lblCapRomaneio.Visible := true;
   edtRomaneio.Visible    := true;
 end
 else
 begin
   lblCapRomaneio.Visible := false;
   edtRomaneio.Visible    := false;
 end;
 LimpaCampos;
 dmDb.TOperacaoSafraMaquinas.Close;
 dmDb.TOperacaoSafraMaquinas.Open;
 dmDb.TOperacaoSafraMaquinas.Insert;
 MudarAba(tbiMaquinas,sender);
end;

procedure TfrmAplicacaoSolido.btnNovaOcorrenciaClick(Sender: TObject);
begin
 LimpaCampos;
 dmDb.TOperacaoSafraOcorrencia.Close;
 dmDb.TOperacaoSafraOcorrencia.Open;
 dmDb.TOperacaoSafraOcorrencia.Insert;
 dmDb.TOperacaoSafraOcorrenciaidoperacaotalhao.AsString  := vIdOP;
 dmDb.TOperacaoSafraOcorrenciaidusuario.AsString         := dmdb.vIdUser;
 MudarAba(tbiOcorrencia,sender);
end;

procedure TfrmAplicacaoSolido.btnNovoProdutoClick(Sender: TObject);
begin
 LimpaCampos;
 dmDB.TOperacaoSafraProdutos.Close;
 dmDB.TOperacaoSafraProdutos.Open;
 dmDB.TOperacaoSafraProdutos.Insert;
 dmDb.TOperacaoSafraProdutosidoperacaotalhao.AsString  := vIdOP;
 dmDb.TOperacaoSafraProdutosidusuario.AsString         := dmdb.vIdUser;
 MudarAba(tbiProdutos,sender);
end;

procedure TfrmAplicacaoSolido.LimpaCampos;
begin
  edtObservacaoAtividade.Text :='';
  edtAreaReal.Text            :='';
  edtAreaPrev.Text            :='';
  edtMaquina.Text             :='';
  edtOperador.Text            :='';
  edtHoraIni.Value            :=0;
  edtHoraFim.Value            :=0;
  edtHorasParado.Value        :=0;
  edtHorasTrabalhada.Value    :=0;
  edtObsMaquina.Text          :='';
  edtProduto.Text             :='';
  edtQtdeUtilizada.Text       :='';
  edtObsProduto.Text          :='';
  edtTipoOcorrencia.Text      :='';
  edtDescricao.Text           :='';
  edtDataMaquina.date         :=date;
  edtDataProduto.date         :=date;
  edtDataOcorrencia.Text      :='';
  edtDataFimAtividade.Text    :='';
  cbxCulturaApl.ItemIndex     :=-1;
end;

procedure TfrmAplicacaoSolido.ListaMaquinasItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
  vIdMaquinaSel :=
   TAppearanceListViewItem(ListaMaquinas.Selected).Objects.FindObjectT<TListItemText>
   ('Text8').TagString;
end;

procedure TfrmAplicacaoSolido.ListaOcorrenciaItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
  vIdOcorrenciaSel :=
   TAppearanceListViewItem(ListaOcorrencia.Selected).Objects.FindObjectT<TListItemText>
   ('Text8').Text;
end;

procedure TfrmAplicacaoSolido.btnOcorrenciaClick(Sender: TObject);
begin
 TThread.CreateAnonymousThread(procedure
  begin
   TThread.Synchronize(nil, procedure
   begin
     layBtnDet.Enabled            := false;
     btnNovaOcorrencia.Enabled    := vStatusConfere='1';
     btnExcluirOcorrencia.Enabled := vStatusConfere='1';
   end);
   dmDB.AbreOcorrenciaOperacao(vIdOP);
   tabDet.ActiveTab   := tbiOcorrenciaOP;
   tabDet.Visible     := true;
   TThread.Synchronize(nil, procedure
   begin
     layBtnDet.Enabled := true;
   end);
  end).Start;
end;

procedure TfrmAplicacaoSolido.btnProdutosClick(Sender: TObject);
begin
  TThread.CreateAnonymousThread(procedure
  begin
   TThread.Synchronize(nil, procedure
   begin
     btnEditaProduto.Enabled   :=vStatusConfere='1';
     btnExcluirProduto.Enabled :=vStatusConfere='1';
     btnNovoProduto.Enabled    :=vStatusConfere='1';
     layBtnDet.Enabled := false;
   end);
  dmDB.AbreProdutoOperacao(vIdOP);
  GeraListaProdutos;
  tabDet.ActiveTab   := tbiProdutosOP;
  tabDet.Visible     := true;
  TThread.Synchronize(nil, procedure
   begin
     layBtnDet.Enabled := true;
   end);
 end).Start;
end;

procedure TfrmAplicacaoSolido.btnSalvaPuverizacaoClick(Sender: TObject);
begin
 if edtDataIniAtividade.Text.Length=0 then
 begin
   showMessage('Informe a Data de Inicio!!');
   edtDataIniAtividade.SetFocus;
   Exit;
 end;
 if cbxTipoAplicacaoSolido.ItemIndex=-1 then
 begin
  showMessage('Informe o Tipo de Aplicação Solido!!');
  cbxTipoAplicacaoSolido.SetFocus;
  Exit;
 end;
 if cbxTipoOperacaoSolid.ItemIndex=-1 then
 begin
  showMessage('Informe o Tipo de Operação!!');
  cbxTipoOperacaoSolid.SetFocus;
  Exit;
 end;
 if cbxCulturaApl.ItemIndex=-1 then
 begin
   showMessage('Informe a Cultura!!');
   cbxCulturaApl.SetFocus;
   Exit;
 end;
 if vFinalizandoOP=1 then
 begin
  if edtDataFimAtividade.Text.Length=0 then
  begin
    showMessage('Informe a Data Fim!!');
    edtDataFimAtividade.SetFocus;
    Exit;
  end;
    dmDB.TOperacaoSafraidoperacao.AsInteger           := 1;
    dmDB.TOperacaoSafraidResponsavel.AsString         := dmDB.vIdUser;
    dmDB.TOperacaoSafradatainicio.AsDateTime          := edtDataIniAtividade.Date;
    dmDB.TOperacaoSafradatafim.AsDateTime             := edtDataFimAtividade.Date;
    dmDB.TOperacaoSafraareaPrevista.Asstring          := edtAreaPrev.Text;
    dmDB.TOperacaoSafraarearealizada.Asstring         := edtAreaPrev.Text;
    dmDB.TOperacaoSafraobservacao.AsString            := edtObservacaoAtividade.Text;
    dmDB.TOperacaoSafradataalteracao.AsDateTime       := date;
    dmDB.TOperacaoSafraidusuarioalteracao.AsString    := dmDB.vIdUser;
    dmDB.TOperacaoSafrastatus.AsInteger               := 2;
    dmDB.TOperacaoSafraidsafra.AsString               := vIdSafra;
    dmDB.TOperacaoSafratipoterraaereo.AsString        := cbxTipoOperacaoSolid.Selected.Text;
    dmDB.TOperacaoSafraidtipoaplicacaosolido.AsString := vIdTipoAplicacaoSolido;
    dmDB.TOperacaoSafraidcultura.AsString             := vIdCultura;
    try
      dmDB.TOperacaoSafra.ApplyUpdates(-1);
      vIdPul   := dmDB.TOperacaoSafraID.AsString;
      vIdOP    := dmDB.TOperacaoSafraID.AsString;
      GeraListaTalhao(vIdPul);
      MudarAba(tbiTalhoesPuverizacao,sender);
    except
      on E: Exception do
       showMessage('Erro ao Finalizar Atividade:'+E.Message);
    end;
 end
 else
 begin
   dmDB.TOperacaoSafraid.AsInteger            := RetornaIdOperacao;
   dmDB.TOperacaoSafraidoperacao.AsInteger    := 1;
   dmDB.TOperacaoSafraidsafra.AsString        := vIdSafra;
   dmDB.TOperacaoSafraidResponsavel.AsString  := dmDB.vIdUser;
   dmDB.TOperacaoSafradatainicio.AsDateTime   := edtDataIniAtividade.Date;
   dmDB.TOperacaoSafraareaPrevista.Asstring   := edtAreaPrev.Text;
   if edtDataFimAtividade.Text.Length>0 then
    dmDB.TOperacaoSafradatafim.AsDateTime     := edtDataFimAtividade.Date;
   if edtAreaReal.Text.Length>0 then
    dmDB.TOperacaoSafraareaRealizada.Asstring := edtAreaReal.Text;
   dmDB.TOperacaoSafraobservacao.AsString     := edtObservacaoAtividade.Text;
   dmDB.TOperacaoSafratipoterraaereo.AsString        := cbxTipoOperacaoSolid.Selected.Text;
   dmDB.TOperacaoSafraidtipoaplicacaosolido.AsString := vIdTipoAplicacaoSolido;
   dmDB.TOperacaoSafraidcultura.AsString             := vIdCultura;
   try
     dmDB.TOperacaoSafra.ApplyUpdates(-1);
     vIdOP    := dmDB.TOperacaoSafraID.AsString;
     vIdPul   := dmDB.RetornaMaxIdAtividade;
     GeraListaTalhao(vIdPul);
     showMessage('Atividade inserida com sucesso,adicione os Talhões');
     MudarAba(tbiTalhoesPuverizacao,sender);
   except
     on E: Exception do
      showMessage('Erro ao salvar Atividade:'+E.Message);
   end;
 end;
end;

procedure TfrmAplicacaoSolido.btnTalhoesClick(Sender: TObject);
begin
 layBtnDet.Enabled := false;
 vDetalhes := 1;
 GeraListaTalhao(vIdOp);
 vIdPul                           := vIdOp;
 TabAuxCadAtividade.TabPosition   := TTabPosition.None;
 TabAuxCadAtividade.ActiveTab     := tbiTalhoesPuverizacao;
 layBtnDet.Enabled                := true;
 MudarAba(TbiNovaOperacao,sender);
end;

procedure TfrmAplicacaoSolido.btnVoltaProdutoClick(Sender: TObject);
begin
 MudarAba(tbiDetalhes,sender);
end;

procedure TfrmAplicacaoSolido.Button12Click(Sender: TObject);
begin
 MudarAba(TabLista,sender);
end;

procedure TfrmAplicacaoSolido.Button16Click(Sender: TObject);
begin
 MudarAba(TabLista,sender);
end;

procedure TfrmAplicacaoSolido.Button1Click(Sender: TObject);
begin
 MudarAba(TabLista,sender);
end;

procedure TfrmAplicacaoSolido.Button2Click(Sender: TObject);
begin
 dmDb.TTipoAplicacaoSolido.Close;
 dmDb.TTipoAplicacaoSolido.Open;
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
 TabAuxCadAtividade.TabPosition        := TTabPosition.None;
 TabAuxCadAtividade.ActiveTab          := tbiPulverizacao;
 edtDataFimAtividade.Text              := '';
 CarregaCombo;
 MudarAba(TbiNovaOperacao,sender);
end;

procedure TfrmAplicacaoSolido.Button3Click(Sender: TObject);
begin
 MudarAba(tbiDetalhes,sender);
end;

procedure TfrmAplicacaoSolido.Button4Click(Sender: TObject);
begin
 MudarAba(tbiDetalhes,sender);
end;

procedure TfrmAplicacaoSolido.Button5Click(Sender: TObject);
begin
 MudarAba(TabLista,sender);
end;

procedure TfrmAplicacaoSolido.Button6Click(Sender: TObject);
begin
  MudarAba(TabLista,sender);
end;

procedure TfrmAplicacaoSolido.Button7Click(Sender: TObject);
begin
 MudarAba(TabLista,sender);
end;

procedure TfrmAplicacaoSolido.Button8Click(Sender: TObject);
begin
 MudarAba(tbiDetalhes,sender);
end;

procedure TfrmAplicacaoSolido.EditButton2Click(Sender: TObject);
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

procedure TfrmAplicacaoSolido.EditButton4Click(Sender: TObject);
begin
  if Not Assigned(frmprodutos) then
   Application.CreateForm(Tfrmprodutos, frmprodutos);
  frmprodutos.vTipo :='1';
  frmprodutos.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = 0 then
    begin
     edtProduto.Text   := dmdb.vNomeProduto;
     vIdProduto        := dmdb.vIdProduto;
    end;
  end);
end;

procedure TfrmAplicacaoSolido.EditButton5Click(Sender: TObject);
begin
  if Not Assigned(frmTipoOcorrencia) then
   Application.CreateForm(TfrmTipoOcorrencia, frmTipoOcorrencia);
  frmTipoOcorrencia.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = 0 then
    begin
     edtTipoOcorrencia.Text := dmDB.vNomeTipoOocrrencia;
      vIdTipoOcorrencia      := dmDB.vIdTipoOcorrencia;
    end;
  end);
end;

procedure TfrmAplicacaoSolido.EditButton7Click(Sender: TObject);
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

procedure TfrmAplicacaoSolido.edtHoraFimChangeTracking(Sender: TObject);
begin
   edtHorasTrabalhada.Value := edtHoraFim.Value-edtHoraIni.Value;
end;

procedure TfrmAplicacaoSolido.edtHoraIniChangeTracking(Sender: TObject);
begin
  edtHorasTrabalhada.Value := edtHoraFim.Value-edtHoraIni.Value;
end;

procedure TfrmAplicacaoSolido.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
  actMudarAba.Tab := ATabItem;
  actMudarAba.ExecuteTarget(sender);
end;

procedure TfrmAplicacaoSolido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 dmDB.vOpPull :=0;
end;

procedure TfrmAplicacaoSolido.FormShow(Sender: TObject);
begin
 dmDb.TTipoAplicacaoSolido.Close;
 dmDb.TTipoAplicacaoSolido.Open;
 laybtnLista.Visible       := false;
 frmAplicacaoSolido.StyleBook := frmPrincipal.StyleBook1;
 laybtnLista.Visible := false;
 GeraLista('');
 dmDB.TSafra.Close;
 dmDB.TSafra.Open;

 vIdSafra := dmDB.TSafraid.AsString;
 TabPrincipal.TabPosition := TTabPosition.None;
 TabPrincipal.ActiveTab   := TabLista;
 tabDet.TabPosition := TTabPosition.None;
 layEditaArea.Visible := false;
end;

end.

