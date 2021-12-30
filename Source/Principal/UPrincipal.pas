unit UPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, IPPeerClient,
  REST.Backend.PushTypes, System.JSON,Data.Bind.Components,
  Data.Bind.ObjectScope, REST.Backend.BindSource, REST.Backend.PushDevice,
  FMX.Platform,

  {$IFDEF ANDROID}
  Androidapi.Helpers,FMX.PushNotification.Android, System.PushNotification,
  REST.Backend.EMSPushDevice,Androidapi.JNIBridge,
  REST.Backend.EMSProvider,Androidapi.JNI.Os,Androidapi.JNI.GraphicsContentViewText,
  {$ENDIF}

  System.Threading,
  System.Net.HTTPClient, System.Notification, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Effects, FMX.TreeView, FMX.Layouts,
  FMX.Ani, FMX.StdCtrls, FMX.Edit, FMX.Objects,FMX.VirtualKeyboard,
  FMX.Memo.Types

  ;
type
  TfrmPrincipal = class(TForm)
    tbPrincipal: TTabControl;
    tbiLogin: TTabItem;
    layLogin: TLayout;
    layLoginAnimaiton: TLayout;
    recLogin: TRectangle;
    Layout3: TLayout;
    Layout4: TLayout;
    Label1: TLabel;
    edtUsuario: TEdit;
    Label2: TLabel;
    edtSenha: TEdit;
    Animation: TFloatAnimation;
    ToolBar1: TToolBar;
    Rectangle4: TRectangle;
    lblVersao: TLabel;
    ToolBar3: TToolBar;
    Rectangle3: TRectangle;
    Label4: TLabel;
    Image16: TImage;
    tbiMenu: TTabItem;
    layMnuPrincipal: TLayout;
    ToolBar2: TToolBar;
    Rectangle2: TRectangle;
    lblVersao2: TLabel;
    ToolBar4: TToolBar;
    Rectangle1: TRectangle;
    btnFechar: TImage;
    Label5: TLabel;
    imgRetanguloLista: TImage;
    AnimationPrincipal: TFloatAnimation;
    Layout6: TLayout;
    Image1: TImage;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    tbiConfig: TTabItem;
    Layout1: TLayout;
    Rectangle9: TRectangle;
    Rectangle7: TRectangle;
    Layout2: TLayout;
    Rectangle10: TRectangle;
    ShadowEffect1: TShadowEffect;
    Layout7: TLayout;
    La: TLayout;
    Label6: TLabel;
    edtIPServidor: TEdit;
    ToolBar6: TToolBar;
    Rectangle11: TRectangle;
    Label7: TLabel;
    Layout9: TLayout;
    btnConfigSync1: TButton;
    Image2: TImage;
    Label9: TLabel;
    btnConfirmar: TButton;
    Image5: TImage;
    Label8: TLabel;
    btnEntrar: TButton;
    Image4: TImage;
    Label3: TLabel;
    layMnu: TLayout;
    AnimacaoMnu: TFloatAnimation;
    TreeView1: TTreeView;
    TreeConfig: TTreeViewItem;
    Image6: TImage;
    TreeExAuxiliares: TTreeViewItem;
    Image12: TImage;
    TreeExAgricultura: TTreeViewItem;
    TreeQuadroAtividades: TTreeViewItem;
    Image21: TImage;
    Image24: TImage;
    ShadowEffect3: TShadowEffect;
    Layout5: TLayout;
    mnu: TImage;
    Label10: TLabel;
    Rectangle8: TRectangle;
    ShadowEffect4: TShadowEffect;
    Layout8: TLayout;
    Layout10: TLayout;
    Label11: TLabel;
    edtPortaServidor: TEdit;
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    Layout43: TLayout;
    Label34: TLabel;
    chkSalvaSenha: TSwitch;
    tbiSync: TTabItem;
    Layout11: TLayout;
    Rectangle12: TRectangle;
    Layout14: TLayout;
    Rectangle14: TRectangle;
    Label16: TLabel;
    btnVoltarSync: TImage;
    Rectangle13: TRectangle;
    Layout15: TLayout;
    btnVoltarSync1: TButton;
    Image25: TImage;
    Label12: TLabel;
    btnSync: TButton;
    Image26: TImage;
    Label13: TLabel;
    btnVoltarConfig: TImage;
    imgRetanguloVerde: TImage;
    imgReceituario: TImage;
    btnEnviaDados: TButton;
    Image3: TImage;
    Label14: TLabel;
    imgMaquina: TImage;
    imgFort: TImage;
    imgSeed: TImage;
    imgOcorrencia: TImage;
    TreeReceituario: TTreeViewItem;
    Image7: TImage;
    laySelectSync: TLayout;
    TreeViewItem1: TTreeViewItem;
    Image8: TImage;
    Rectangle15: TRectangle;
    Layout12: TLayout;
    lblAtiviadedesPendendes: TLabel;
    qryAux: TFDQuery;
    imgOperador: TImage;
    imgTalhao: TImage;
    imgOcorrencia1: TImage;
    RecReceituarioPendente: TRectangle;
    Layout13: TLayout;
    lblRecPendente: TLabel;
    laySelectUpdate: TLayout;
    Rectangle16: TRectangle;
    Layout83: TLayout;
    Layout79: TLayout;
    Rectangle53: TRectangle;
    Label52: TLabel;
    chkBaixaMaquinas: TButton;
    laySyncReceituario: TLayout;
    Layout21: TLayout;
    Rectangle20: TRectangle;
    Label19: TLabel;
    laySyncTalhoes: TLayout;
    Layout17: TLayout;
    Rectangle17: TRectangle;
    Label15: TLabel;
    chkBaixaTalhoes: TButton;
    btnBaixaSelect: TButton;
    Image9: TImage;
    Label17: TLabel;
    NotificationCenter: TNotificationCenter;
    imgPluviometro: TImage;
    TreePluviometria: TTreeViewItem;
    Image10: TImage;
    Rectangle18: TRectangle;
    Layout18: TLayout;
    lblPluviometriaPendente: TLabel;
    imgLocalEstoque: TImage;
    TreeAbastecimento: TTreeViewItem;
    Image11: TImage;
    imgCombustivel: TImage;
    imgOutrosProdutos: TImage;
    Rectangle19: TRectangle;
    Layout19: TLayout;
    lblAbastecimentoPendente: TLabel;
    imgPragas: TImage;
    TreeMonitoramento: TTreeViewItem;
    Image13: TImage;
    imgPontosGPS: TImage;
    imgFinish: TImage;
    imgPragaVerde: TImage;
    imgFinalizaMonit: TImage;
    imgPragaLista: TImage;
    Rectangle21: TRectangle;
    Layout22: TLayout;
    lblMonitoramentoPendente: TLabel;
    imgTransf: TImage;
    Rectangle22: TRectangle;
    Layout23: TLayout;
    lblMovEstoqueSync: TLabel;
    Layout24: TLayout;
    Layout25: TLayout;
    Rectangle23: TRectangle;
    Label18: TLabel;
    chkBaixaProdutos: TButton;
    chkBaixaReceituario: TButton;
    imgContrato: TImage;
    imgEmbarque: TImage;
    Rectangle24: TRectangle;
    Layout26: TLayout;
    lblEmbarqueSync: TLabel;
    TreeEmbarque: TTreeViewItem;
    Image14: TImage;
    StyleBook1: TStyleBook;
    imgPeso: TImage;
    imgTaxa: TImage;
    TreeContratos: TTreeViewItem;
    Image15: TImage;
    imgMecanico: TImage;
    TreeArmazem: TTreeViewItem;
    Image17: TImage;
    TreeMaquinas: TTreeViewItem;
    Image18: TImage;
    TreeManutencao: TTreeViewItem;
    Image19: TImage;
    imgEdit: TImage;
    imgSeviceMec: TImage;
    imgListaConfirma: TImage;
    laySyncRevisao: TLayout;
    Layout28: TLayout;
    Rectangle25: TRectangle;
    Label20: TLabel;
    chkBaixaRevisoes: TButton;
    lblTipoDB: TLabel;
    Rectangle26: TRectangle;
    Layout16: TLayout;
    lblRevisoes: TLabel;
    imgFotos: TImage;
    tbiForm: TTabItem;
    layFrm: TLayout;
    rtcMnu: TRectangle;
    Layout20: TLayout;
    layConfig: TLayout;
    btnConfig: TRectangle;
    Image20: TImage;
    ShadowEffect7: TShadowEffect;
    lblSync: TLabel;
    btnSyncData: TRectangle;
    Image22: TImage;
    ShadowEffect2: TShadowEffect;
    Label22: TLabel;
    layMaquinas: TLayout;
    btnAbastecimento: TRectangle;
    Image23: TImage;
    ShadowEffect5: TShadowEffect;
    Label21: TLabel;
    btnManutencao: TRectangle;
    Image27: TImage;
    ShadowEffect6: TShadowEffect;
    Label23: TLabel;
    layArmazem: TLayout;
    btnEmbarque: TRectangle;
    Image28: TImage;
    ShadowEffect8: TShadowEffect;
    Label24: TLabel;
    btnDesembarque: TRectangle;
    Image29: TImage;
    ShadowEffect9: TShadowEffect;
    Label25: TLabel;
    layPul: TLayout;
    btnReceituarios: TRectangle;
    Image30: TImage;
    ShadowEffect10: TShadowEffect;
    Label26: TLabel;
    btnPulverizacao: TRectangle;
    Image31: TImage;
    ShadowEffect11: TShadowEffect;
    lblPulverização: TLabel;
    layStandPluviometria: TLayout;
    btnStandPlantas: TRectangle;
    Image32: TImage;
    ShadowEffect12: TShadowEffect;
    Label27: TLabel;
    btnPluviometria: TRectangle;
    Image33: TImage;
    ShadowEffect13: TShadowEffect;
    Label28: TLabel;
    layPlantioAplicacao: TLayout;
    btnPlantio: TRectangle;
    Image34: TImage;
    ShadowEffect14: TShadowEffect;
    lblPlantio: TLabel;
    btnAplicacaoSolido: TRectangle;
    Image35: TImage;
    ShadowEffect15: TShadowEffect;
    Label30: TLabel;
    layColheitaMonitoramento: TLayout;
    btnColheita: TRectangle;
    Image36: TImage;
    ShadowEffect16: TShadowEffect;
    Label29: TLabel;
    VertScrollMnu: TVertScrollBox;
    layExtra: TLayout;
    bntAtividadeExtra: TRectangle;
    Image37: TImage;
    ShadowEffect17: TShadowEffect;
    Label31: TLabel;
    btnMonitoramento: TRectangle;
    Image38: TImage;
    ShadowEffect18: TShadowEffect;
    Label32: TLabel;
    imgEditaArea: TImage;
    imgReceituarioLista: TImage;
    ImgVerde: TImage;
    imgVermelho: TImage;
    recLoading: TRectangle;
    lblSyncData: TLabel;
    imgSync: TImage;
    Animacao: TFloatAnimation;
    imgReplante: TImage;
    Rectangle27: TRectangle;
    Layout27: TLayout;
    lblDesembarque: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure mnuClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure TreeConfigClick(Sender: TObject);
    procedure btnSyncClick(Sender: TObject);
    procedure btnVoltarSyncClick(Sender: TObject);
    procedure btnVoltarSync1Click(Sender: TObject);
    procedure btnVoltarConfigClick(Sender: TObject);
    procedure btnConfigSync1Click(Sender: TObject);
    procedure TreeExAgriculturaClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnEnviaDadosClick(Sender: TObject);
    procedure TreeReceituarioClick(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure chkBaixaMaquinasClick(Sender: TObject);
    procedure chkBaixaTalhoesClick(Sender: TObject);
    procedure chkBaixaProdutosClick(Sender: TObject);
    procedure btnBaixaSelectClick(Sender: TObject);
    procedure TreePluviometriaClick(Sender: TObject);
    procedure TreeAbastecimentoClick(Sender: TObject);
    procedure TreeMonitoramentoClick(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure chkBaixaReceituarioClick(Sender: TObject);
    procedure TreeEmbarqueClick(Sender: TObject);
    procedure TreeContratosClick(Sender: TObject);
    procedure TreeArmazemClick(Sender: TObject);
    procedure TreeMaquinasClick(Sender: TObject);
    procedure TreeManutencaoClick(Sender: TObject);
    procedure chkBaixaRevisoesClick(Sender: TObject);
    procedure btnConfigMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnConfigMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnConfigClick(Sender: TObject);
    procedure btnSyncDataClick(Sender: TObject);
    procedure btnAbastecimentoClick(Sender: TObject);
    procedure btnManutencaoClick(Sender: TObject);
    procedure btnEmbarqueClick(Sender: TObject);
    procedure btnPulverizacaoClick(Sender: TObject);
    procedure btnReceituariosClick(Sender: TObject);
    procedure btnStandPlantasClick(Sender: TObject);
    procedure btnPluviometriaClick(Sender: TObject);
    procedure btnMonitoramentoClick(Sender: TObject);
    procedure btnPlantioClick(Sender: TObject);
    procedure btnAplicacaoSolidoClick(Sender: TObject);
    procedure btnColheitaClick(Sender: TObject);
    procedure bntAtividadeExtraClick(Sender: TObject);
    procedure btnDesembarqueClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure MudarAba(ATabItem: TTabItem; sender: TObject);
  public
    T : ITask;
    etapa,device_token,vTipoDb : string;
    vPrimeiroAcesso:Boolean;
    vIdMaquinaSelecionada,vMarcaModeloMaquinaSelecionada,
    vIdProdutoSelecionado,vNomeProdutoSelecionado,
    vUniMedidaProdutoSelecionado,vIdServicoSelecionado,
    vTipoServicoSelecionado,vDescricaoServicoSelecionado,vAtvPendente,
    vMarcaSelect,vModeloSelect,vPlacaSelect,vUltimaRevisao,vHorimetro,
    vProximaRev:string;
    vNovoEmbarque:integer;
    {$IFDEF ANDROID}
     PushService: TPushService;
     ServiceConnection: TPushServiceConnection;
     procedure Vibrar(tempo: Integer);
    {$ENDIF}
    procedure myShowMenssagem(msg:string);
    function  GetVersaoArq: string;
    function  EnviaToken(msg:string):string;
    procedure ThreadEnd(Sender: TObject);

    procedure FormActivate(Sender: TObject);
    {$IFDEF ANDROID}
     procedure DoServiceConnectionChange(Sender: TObject; PushChanges: TPushService.TChanges);
    {$ENDIF}
    procedure FormCreate(Sender: TObject);
    function  AppEventProc(AAppEvent: TApplicationEvent; AContext: TObject): Boolean;
    procedure Abrir_Form(FormClass: TComponentClass);
    procedure ResizeMnu;
    procedure MostraMenu;

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

uses UDataContext, Umsg,UReceituario, UDataSync, UCadReceituario,
  UStandPlantas, UPluviometria, UAbastecimento, UDataUpdate,
  UMonitoramentoPraga, UEmbarque, UContratos, URevisaoMaquinas, UPulverizacao,
  UPlantio, UAplicacaoSolido, UColheita, UOperacoes, UDesembarque;


procedure CancelarNotificacao(nome : string);
begin
    with frmPrincipal do
    begin
      if nome = '' then
        NotificationCenter.CancelAll
      else
        NotificationCenter.CancelNotification(nome);
    end;
end;


procedure TfrmPrincipal.myShowMenssagem(msg:string);
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

procedure TfrmPrincipal.bntAtividadeExtraClick(Sender: TObject);
begin
  if Not Assigned(frmOperacao) then
   Application.CreateForm(TfrmOperacao,frmOperacao);
  frmOperacao.ShowModal(procedure(ModalResult: TModalResult)
  begin
  end);
end;

procedure TfrmPrincipal.btnAbastecimentoClick(Sender: TObject);
begin
  if Not Assigned(frmAbastecimento) then
   Application.CreateForm(TfrmAbastecimento, frmAbastecimento);
  frmAbastecimento.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = mrOk then
    begin
     frmAbastecimento.DisposeOf;
    end;
  end);
end;

procedure TfrmPrincipal.btnAplicacaoSolidoClick(Sender: TObject);
begin
 if Not Assigned(frmAplicacaoSolido) then
   Application.CreateForm(TfrmAplicacaoSolido,frmAplicacaoSolido);
  frmAplicacaoSolido.ShowModal(procedure(ModalResult: TModalResult)
  begin
  end);
end;

procedure TfrmPrincipal.btnManutencaoClick(Sender: TObject);
begin
 if Not Assigned(frmRevisaoMaquina) then
   Application.CreateForm(TfrmRevisaoMaquina, frmRevisaoMaquina);
  frmRevisaoMaquina.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = mrOk then
    begin
     frmRevisaoMaquina.DisposeOf;
    end;
  end);
end;

procedure TfrmPrincipal.btnMonitoramentoClick(Sender: TObject);
begin
 if Not Assigned(frmMonitoramento) then
   Application.CreateForm(TfrmMonitoramento, frmMonitoramento);
  frmMonitoramento.ShowModal(procedure(ModalResult: TModalResult)
  begin
  end);
end;

procedure TfrmPrincipal.btnPlantioClick(Sender: TObject);
begin
 if Not Assigned(frmPlantio) then
   Application.CreateForm(TfrmPlantio,frmPlantio);
  frmPlantio.ShowModal(procedure(ModalResult: TModalResult)
  begin
  end);
end;

procedure TfrmPrincipal.btnPluviometriaClick(Sender: TObject);
begin
 if Not Assigned(frmPluviometria) then
   Application.CreateForm(TfrmPluviometria, frmPluviometria);
  frmPluviometria.ShowModal(procedure(ModalResult: TModalResult)
  begin
  end);
end;

procedure TfrmPrincipal.btnPulverizacaoClick(Sender: TObject);
begin
 if Not Assigned(frmPulverizacao) then
   Application.CreateForm(TfrmPulverizacao, frmPulverizacao);
  dmDB.vOpPull :=1;
  frmPulverizacao.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = mrOk then
    begin
     frmAbastecimento.DisposeOf;
    end;
  end);
end;

procedure TfrmPrincipal.btnReceituariosClick(Sender: TObject);
begin
 if Not Assigned(frmCadReceituario) then
   Application.CreateForm(TfrmCadReceituario, frmCadReceituario);
  frmCadReceituario.ShowModal(procedure(ModalResult: TModalResult)
  begin
  end);
end;

procedure TfrmPrincipal.ResizeMnu;
var
 vWidth:Double;
begin
 vWidth                 := (frmPrincipal.Width - 60)/2;
 btnConfig.Width        :=vWidth;
 btnSyncData.Width      :=vWidth;
 btnManutencao.Width    :=vWidth;
 btnAbastecimento.Width :=vWidth;
 btnEmbarque.Width      :=vWidth;
 btnDesembarque.Width   :=vWidth;
 btnReceituarios.Width  :=vWidth;
 btnPulverizacao.Width  :=vWidth;
end;

procedure TfrmPrincipal.ThreadEnd(Sender: TObject);
begin
 if Assigned(TThread(Sender).FatalException) then
    showmessage('Erro na etapa: ' + etapa + ' - ' + Exception(TThread(Sender).FatalException).Message);
end;

procedure TfrmPrincipal.TreeAbastecimentoClick(Sender: TObject);
begin
  frmAbastecimento := TfrmAbastecimento.Create(Self);
  try
    frmAbastecimento.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  finally
    frmAbastecimento.free;
  end;
end;

procedure TfrmPrincipal.TreeArmazemClick(Sender: TObject);
begin
 TreeExAgricultura.IsExpanded :=false;
 TreeMaquinas.IsExpanded      :=false;
 if TreeArmazem.IsExpanded then
   TreeArmazem.IsExpanded :=false
 else
   TreeArmazem.IsExpanded :=true;
end;

procedure TfrmPrincipal.TreeConfigClick(Sender: TObject);
begin
  dmDB.qryConfig.Close;
  dmDB.qryConfig.Open;
  edtIPServidor.Text    := dmDB.qryConfigIP_SERVIDOR.AsString;
  edtPortaServidor.Text := dmDB.qryConfigPOTA_SERVIDOR.AsString;
  MudarAba(tbiConfig,sender);
end;

procedure TfrmPrincipal.TreeContratosClick(Sender: TObject);
begin
  frmContratos := TfrmContratos.Create(Self);
  try
    frmContratos.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  finally
    frmContratos.free;
  end;
end;

procedure TfrmPrincipal.TreeEmbarqueClick(Sender: TObject);
begin
  vNovoEmbarque :=0;
  frmEmbarque := TfrmEmbarque.Create(Self);
  try
    frmEmbarque.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  finally
    frmEmbarque.free;
  end;
end;

procedure TfrmPrincipal.TreeExAgriculturaClick(Sender: TObject);
begin
 if TreeExAgricultura.IsExpanded then
   TreeExAgricultura.IsExpanded :=false
 else
   TreeExAgricultura.IsExpanded :=true;


end;

procedure TfrmPrincipal.TreeManutencaoClick(Sender: TObject);
begin
  frmRevisaoMaquina := TfrmRevisaoMaquina.Create(Self);
  try
    frmRevisaoMaquina.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  finally
    frmRevisaoMaquina.free;
  end;
end;

procedure TfrmPrincipal.TreeMaquinasClick(Sender: TObject);
begin
 TreeExAgricultura.IsExpanded :=false;
 TreeArmazem.IsExpanded      :=false;
 if TreeMaquinas.IsExpanded then
   TreeMaquinas.IsExpanded :=false
 else
   TreeMaquinas.IsExpanded :=true;
end;

procedure TfrmPrincipal.TreeMonitoramentoClick(Sender: TObject);
begin
  frmMonitoramento := TfrmMonitoramento.Create(Self);
  try
    frmMonitoramento.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  finally
    frmMonitoramento.free;
  end;
end;

procedure TfrmPrincipal.TreePluviometriaClick(Sender: TObject);
begin
  frmPluviometria := TfrmPluviometria.Create(Self);
  try
    frmPluviometria.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  finally
    frmPluviometria.free;
  end;
end;

procedure TfrmPrincipal.TreeReceituarioClick(Sender: TObject);
begin
 frmCadReceituario := TfrmCadReceituario.Create(Self);
  try
    frmCadReceituario.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  finally
    frmCadReceituario.free;
  end;
end;

procedure TfrmPrincipal.TreeViewItem1Click(Sender: TObject);
begin
  frmStandPlantas := TfrmStandPlantas.Create(Self);
  try
    frmStandPlantas.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
    end);
  finally
    frmStandPlantas.free;
  end;
end;



procedure TfrmPrincipal.Abrir_Form(FormClass: TComponentClass);
begin
end;

function TfrmPrincipal.AppEventProc(AAppEvent: TApplicationEvent;
  AContext: TObject): Boolean;
begin
  if (AAppEvent = TApplicationEvent.BecameActive) then
        CancelarNotificacao('');
end;

procedure TfrmPrincipal.btnBaixaSelectClick(Sender: TObject);
var
 etapa : string;
begin
  if dmSync.TestaServidor<>'Erro' THEN
  begin
   Animacao.Start;
   T := TTask.Create(procedure
   begin
    try
      TThread.Synchronize(TThread.CurrentThread, procedure
      begin
       recLoading.Visible      := true;
      end);
      if vTipoDb='PECUARIA' then
      begin
        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         laySelectUpdate.Visible := false;
         btnSync.Enabled         := true;
         btnEnviaDados.Enabled   := true;
         lblSyncData.Text :=('Baixando Usuarios');
        end);
        etapa := 'Baixando Usuarios';
        dmSync.GetUsuarios;

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         laySelectUpdate.Visible := false;
         btnSync.Enabled         := true;
         btnEnviaDados.Enabled   := true;
         lblSyncData.Text :=('Baixando Atividade Abastecimento');
        end);
        etapa := 'Baixando Atividade Abastecimento';
        dmSync.GetAtividadeAbastecimento;

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Baixando Operador');
        end);
        etapa :='Baixando Operador';
        dmSync.GetOperadorMaquina;

        if chkBaixaRevisoes.Text='X' then
        begin
         TThread.Synchronize(TThread.CurrentThread, procedure
         begin
          lblSyncData.Text :=('Baixando Aux Itens Revisao');
         end);
         etapa :='Baixando Aux Itens Revisao';
         dmSync.GetPlanoAuxItemRevisao;

         TThread.Synchronize(TThread.CurrentThread, procedure
         begin
          lblSyncData.Text :=('Baixando Plano Revisao');
         end);
         etapa :='Baixando Plano Revisao';
         dmSync.GetPlanoRevisao;

         TThread.Synchronize(TThread.CurrentThread, procedure
         begin
          lblSyncData.Text :=('Baixando Plano Revisao Maquinas');
         end);
         dmSync.GetPlanoRevisaoMaquinas;

         TThread.Synchronize(TThread.CurrentThread, procedure
         begin
          lblSyncData.Text :=('Baixando Plano Itens');
         end);
         etapa :='Baixando Plano Itens';
         dmSync.GetPlanoRevisaoItens;

         TThread.Synchronize(TThread.CurrentThread, procedure
         begin
          lblSyncData.Text :=('Baixando Revisao');
         end);
         etapa :='Baixando Revisao';
         dmSync.GetRevisao;
        end;

        if chkBaixaMaquinas.Text='X' then
        begin
          TThread.Synchronize(TThread.CurrentThread, procedure
          begin
           lblSyncData.Text :=('Baixando Maquinas');
          end);
          etapa :='Baixando Maquinas';
          dmSync.GetMaquinas;
        end;

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Baixando Local Estoque');
        end);
        etapa :='Baixando Local Estoque';
        dmSync.GetLocalEstoque;

        if chkBaixaProdutos.Text='X' then
        begin
         TThread.Synchronize(TThread.CurrentThread, procedure
          begin
           lblSyncData.Text :=('Baixando Produtos');
          end);
          etapa :='Baixando Produtos';
          dmSync.GetProdutos;
        end;
      end //pecuaria
      else
      begin
        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         laySelectUpdate.Visible := false;
         btnSync.Enabled         := true;
         btnEnviaDados.Enabled   := true;
         lblSyncData.Text :=('Baixando Usuarios');
        end);
        etapa :='Baixando Usuarios';
        dmSync.GetUsuarios;

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Baixando Pragas');
        end);
        etapa :='Baixando Pragas';
        dmSync.GetAuxPragas;

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Baixando Operador');
        end);
        etapa :='Baixando Operador';
        dmSync.GetOperadorMaquina;

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Baixando Coberturas');
        end);
        etapa :='Baixando Coberturas';
        dmSync.GetCoberturas;

        if chkBaixaRevisoes.Text='X' then
        begin
         TThread.Synchronize(TThread.CurrentThread, procedure
         begin
          lblSyncData.Text :=('Baixando Aux Itens Revisao');
         end);
         etapa :='Baixando Aux Itens Revisao';
         dmSync.GetPlanoAuxItemRevisao;

         TThread.Synchronize(TThread.CurrentThread, procedure
         begin
          lblSyncData.Text :=('Baixando Plano Revisao');
         end);
         etapa :='Baixando Plano Revisao';
         dmSync.GetPlanoRevisao;

         TThread.Synchronize(TThread.CurrentThread, procedure
         begin
          lblSyncData.Text :=('Baixando Plano Revisao Maquinas');
         end);
         etapa :='Baixando Plano Revisao Maquinas';
         dmSync.GetPlanoRevisaoMaquinas;

         TThread.Synchronize(TThread.CurrentThread, procedure
         begin
          lblSyncData.Text :=('Baixando Plano Itens');
         end);
         etapa :='Baixando Plano Itens';
         dmSync.GetPlanoRevisaoItens;

         TThread.Synchronize(TThread.CurrentThread, procedure
         begin
          lblSyncData.Text :=('Baixando Revisao');
         end);
         etapa :='Baixando Revisao';
         dmSync.GetRevisao;
        end;

        if dmDB.vAbastecimento=1 then
        begin
         TThread.Synchronize(TThread.CurrentThread, procedure
         begin
          laySelectUpdate.Visible := false;
          btnSync.Enabled         := true;
          btnEnviaDados.Enabled   := true;
          lblSyncData.Text :=('Baixando Atividade Abastecimento');
         end);
         etapa :='Baixando Atividade Abastecimento';
         dmSync.GetAtividadeAbastecimento;
        end;

        if chkBaixaMaquinas.Text='X' then
        begin
          TThread.Synchronize(TThread.CurrentThread, procedure
          begin
           lblSyncData.Text :=('Baixando Maquinas');
          end);
          etapa :='Baixando Maquinas';
          dmSync.GetMaquinas;
        end;
        if chkBaixaProdutos.Text='X' then
        begin
          TThread.Synchronize(TThread.CurrentThread, procedure
          begin
           lblSyncData.Text :=('Baixando Produtos');
          end);
          etapa :='Baixando Produtos';
          dmSync.GetProdutos;
        end;

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Baixando Operações');
        end);
        etapa :='Baixando Operações';
        dmSync.GetOperacoes;

        if chkBaixaTalhoes.Text='X' then
        begin
          TThread.Synchronize(TThread.CurrentThread, procedure
          begin
           lblSyncData.Text :=('Baixando Areas Fazenda');
          end);
          etapa :='Baixando Areas Fazenda';
          dmSync.GetAreas;

          TThread.Synchronize(TThread.CurrentThread, procedure
          begin
           lblSyncData.Text :=('Baixando Setores Fazenda');
          end);
          etapa :='Baixando Setores Fazenda';
          dmSync.GetSetor;

          TThread.Synchronize(TThread.CurrentThread, procedure
          begin
           lblSyncData.Text :=('Baixando Talhoes');
          end);
          etapa :='Baixando Talhoes';
          dmSync.GetTalhoes;
        end;

        if dmDB.vPluviometria=1 then
        begin
          TThread.Synchronize(TThread.CurrentThread, procedure
          begin
           lblSyncData.Text :=('Baixando Pluviometros');
          end);
          etapa :='Baixando Pluviometros';
          dmSync.GetPluviometros;

          TThread.Synchronize(TThread.CurrentThread, procedure
          begin
           lblSyncData.Text :=('Baixando Pluviometros Talhoes');
          end);
          etapa :='Baixando Pluviometros Talhoes';
          dmSync.GetPluviometroTalhoes;
        end;

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Baixando Local Estoque');
        end);
        etapa :='Baixando Local Estoque';
        dmSync.GetLocalEstoque;

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Baixando Safra');
        end);
        etapa :='Baixando Safra';
        dmSync.GetSafra;

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Baixando Culturas');
        end);
        etapa :='Baixando Culturas';
        dmSync.GetCulturas;

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Baixando Variedades');
        end);
        etapa :='Baixando Variedades';
        dmSync.GetCultivares;

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Baixando Tipo Ocorrencia');
        end);
        etapa :='Baixando Tipo Ocorrencia';
        dmSync.GetTipoOcorrencia;

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Baixando Tipo Aplicacao Solido');
        end);
        etapa :='Baixando Tipo Aplicacao Solido';
        dmSync.GetTipoAplicacaoSolido;

        if dmDB.vArmazem=1 then
        begin
         TThread.Synchronize(TThread.CurrentThread, procedure
         begin
          lblSyncData.Text :=('Baixando Compradores');
         end);
         etapa :='Baixando Compradores';
         dmSync.GetComprador;

         TThread.Synchronize(TThread.CurrentThread, procedure
         begin
          lblSyncData.Text :=('Baixando Contratos');
         end);
         etapa :='Baixando Contratos';
         dmSync.GetContratos;
        end;

        if chkBaixaReceituario.Text='X' then
        begin
           TThread.Synchronize(TThread.CurrentThread, procedure
           begin
            lblSyncData.Text :=('Baixando Receituario');
           end);
           etapa :='Baixando Receituario';
           dmSync.GetReceituario;
        end;
      end;
      TThread.Synchronize(TThread.CurrentThread, procedure
      begin
        MessageDlg('Dados Baixados com Sucesso, sistema deve ser reiniciado',
        System.UITypes.TMsgDlgType.mtInformation,
        [System.UITypes.TMsgDlgBtn.mbYes], 0,
        procedure(const AResult: System.UITypes.TModalResult)
        begin
         case AResult of
          mrYES:
          begin
           Close;
          end;
         end;
        end);
      end);
    except
     on E : Exception do
     TThread.Synchronize(TThread.CurrentThread, procedure
     begin
      ShowMessage('Erro ao Sincronizar '+etapa+': '+E.Message);
     end);
    end;
   end);
   t.Start;
  end
  else
  begin
    ShowMessage('Erro ao se conectar com servidor!');
    Animacao.Stop;
  end;
end;

procedure TfrmPrincipal.btnColheitaClick(Sender: TObject);
begin
 if Not Assigned(frmColheita) then
   Application.CreateForm(TfrmColheita,frmColheita);
  frmColheita.ShowModal(procedure(ModalResult: TModalResult)
  begin
  end);
end;

procedure TfrmPrincipal.btnConfigClick(Sender: TObject);
begin
  dmDB.qryConfig.Close;
  dmDB.qryConfig.Open;
  edtIPServidor.Text    := dmDB.qryConfigIP_SERVIDOR.AsString;
  edtPortaServidor.Text := dmDB.qryConfigPOTA_SERVIDOR.AsString;
  MudarAba(tbiConfig,sender);
end;

procedure TfrmPrincipal.btnConfigMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 (Sender as TRectangle).Stroke.Color :=TAlphaColorRec.Blue;
end;

procedure TfrmPrincipal.btnConfigMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 (Sender as TRectangle).Stroke.Color :=TAlphaColorRec.White;
end;

procedure TfrmPrincipal.btnConfigSync1Click(Sender: TObject);
begin
 MudarAba(tbiMenu,sender);
end;

procedure TfrmPrincipal.btnConfirmarClick(Sender: TObject);
var
 vResult:string;
begin
if edtIPServidor.Text.IsEmpty then
 begin
  myShowMenssagem('Informe o Host do Servidor');
  edtIPServidor.SetFocus;
  Exit;
 end;
 if edtPortaServidor.Text.IsEmpty then
 begin
  myShowMenssagem('Informe a Porta do Servidor');
  edtPortaServidor.SetFocus;
  Exit;
 end;
 dmDB.qryConfig.Edit;
 dmdb.qryConfigIP_SERVIDOR.AsString    := edtIPServidor.Text;
 dmdb.qryConfigPOTA_SERVIDOR.AsString  := edtPortaServidor.Text;
 dmSync.Host                           := edtIPServidor.Text;
 dmSync.Porta                          := edtPortaServidor.Text;
 try
   dmdb.qryConfig.ApplyUpdates(-1);
 except
 on E : Exception do
   myShowMenssagem('Erro ao inserir Configuração : '+E.Message);
 end;
   if vPrimeiroAcesso then
   begin
    try
     dmSync.GetTipoDB;
     vResult := dmSync.GetUsuarios;
     if vResult='Usuarios Baixados com Sucesso' then
     begin
       myShowMenssagem('Usuarios baixados com sucesso');
       frmPrincipal.vPrimeiroAcesso := false;
       MudarAba(tbiLogin,Sender);
     end
     else
     begin
       myShowMenssagem(vResult);
     end;
    except
    on E : Exception do
       myShowMenssagem('Erro ao baixar Usuario: '+E.Message);
    end;
   end
   else
    MudarAba(tbiMenu,Sender);
end;

procedure TfrmPrincipal.btnDesembarqueClick(Sender: TObject);
begin
 if Not Assigned(frmDesembarque) then
   Application.CreateForm(TfrmDesembarque, frmDesembarque);
  frmDesembarque.ShowModal(procedure(ModalResult: TModalResult)
  begin
  end);
end;

procedure TfrmPrincipal.btnEmbarqueClick(Sender: TObject);
begin
 if Not Assigned(frmEmbarque) then
   Application.CreateForm(TfrmEmbarque, frmEmbarque);
  frmEmbarque.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = mrOk then
    begin
     frmEmbarque.DisposeOf;
    end;
  end);
end;

procedure TfrmPrincipal.btnEntrarClick(Sender: TObject);
begin
 if edtUsuario.Text.IsEmpty  then
 begin
   myShowMenssagem('Informe o usuario!');
   edtUsuario.SetFocus;
   Exit;
 end;
 if edtSenha.Text.IsEmpty  then
 begin
   myShowMenssagem('Informe a Senha!');
   edtSenha.SetFocus;
   Exit;
 end;
 if dmdb.AutenticaUsuario(edtUsuario.Text,edtSenha.Text)then
 begin
  if chkSalvaSenha.IsChecked then
  begin
    dmdb.qryConfig.Close;
    dmdb.qryConfig.Open;
    dmdb.qryConfig.Edit;
    dmdb.qryConfigSalvarLogin.AsInteger :=1;
    dmdb.qryConfig.ApplyUpdates(-1);
  end;
  dmUpdate.CreateTablesVersao('');
  MostraMenu;
  laymnu.Opacity :=0;
  MudarAba(tbiMenu,sender);
  AnimacaoMnu.Start;
 end
 else
  myShowMenssagem('Usuario ou senha invalidos!');
end;

procedure TfrmPrincipal.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.btnVoltarSync1Click(Sender: TObject);
begin
 MudarAba(tbiMenu,sender);
end;

procedure TfrmPrincipal.btnStandPlantasClick(Sender: TObject);
begin
if Not Assigned(frmStandPlantas) then
   Application.CreateForm(TfrmStandPlantas, frmStandPlantas);
  frmStandPlantas.ShowModal(procedure(ModalResult: TModalResult)
  begin
  end);
end;

procedure TfrmPrincipal.btnSyncClick(Sender: TObject);
begin
  laySelectUpdate.Visible := true;
  btnSync.Enabled         := false;
  btnEnviaDados.Enabled   := false;
end;

procedure TfrmPrincipal.btnSyncDataClick(Sender: TObject);
begin
  recLoading.Visible := false;
  btnSync.Enabled    := true;
  if dmSync=nil then
   dmSync := TdmSync.Create(Self);

  laySelectUpdate.Visible := false;
  chkBaixaMaquinas.Text   :='';
  chkBaixaProdutos.Text   :='';
  chkBaixaTalhoes.Text    :='';
  if dmDB.vAgronomo='1' then
  begin
   dmSync.TSyncReceituario.Close;
   dmSync.TSyncReceituario.Open;
   RecReceituarioPendente.Visible := dmDB.vAgronomo='1';
   lblRecPendente.Text := 'Receituarios Pendentes :'+
   intToStr(dmSync.TSyncReceituario.RecordCount);
  end;

  laySyncRevisao.Visible     := dmDB.vRevisaoMaquinas=1;
  laySyncReceituario.Visible := dmDB.vPulverizacao=1;

  dmSync.qryOpSafraSync.Close;
  dmSync.qryOpSafraSync.Open;
  lblAtiviadedesPendendes.Text := 'Atividade Pendendes: '+
   intToStr(dmSync.qryOpSafraSync.RecordCount);
  vAtvPendente := intToStr(dmSync.qryOpSafraSync.RecordCount);

  dmSync.TMonitoramentoPraga.Close;
  dmSync.TMonitoramentoPraga.Open;
  lblMonitoramentoPendente.Text := 'Monitoramento Pendente: '+
   intToStr(dmSync.TMonitoramentoPraga.RecordCount);


  dmSync.TSyncPluviometria.Close;
  dmSync.TSyncPluviometria.Open;
  lblPluviometriaPendente.Text := 'Pluviometria Pendente: '+
   intToStr(dmSync.TSyncPluviometria.RecordCount);

  dmSync.TSyncAbastecimento.Close;
  dmSync.TSyncAbastecimento.Open;
  lblAbastecimentoPendente.Text := 'Abastecimento Pendente: '+
   intToStr(dmSync.TSyncAbastecimento.RecordCount);

  dmSync.TMovLocalEstoque.Close;
  dmSync.TMovLocalEstoque.Open;
  lblMovEstoqueSync.Text := 'Movimentação Estoque: '+
   intToStr(dmSync.TMovLocalEstoque.RecordCount);

  dmSync.TPostRevisao.Close;
  dmSync.TPostRevisao.Open;
  lblRevisoes.Text := 'Revisoes: '+
   intToStr(dmSync.TPostRevisao.RecordCount);

  dmSync.Embarque.Close;
  dmSync.Embarque.Open;
  lblEmbarqueSync.Text := 'Embarques: '+
   intToStr(dmSync.Embarque.RecordCount);

  dmSync.Desembarques.Close;
  dmSync.Desembarques.Open;
  lblDesembarque.Text := 'Desembarque: '+
   intToStr(dmSync.Desembarques.RecordCount);

  dmDB.qryConfig.Close;
  dmDB.qryConfig.Open;
  if dmDB.qryConfigIP_SERVIDOR.AsString.Length=0 then
  begin
    myShowMenssagem('Informe o ip do servidor nas configurações');
    Exit;
  end
  else
    dmSync.Host := dmDB.qryConfigIP_SERVIDOR.AsString;
  if dmDB.qryConfigPOTA_SERVIDOR.AsString.Length=0 then
  begin
    myShowMenssagem('Informe a porta do servidor nas configurações');
    Exit;
  end
  else
    dmSync.Porta := dmDB.qryConfigPOTA_SERVIDOR.AsString;
  MudarAba(tbiSync,sender);
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
//var
//  {$IFDEF ANDROID}
//   Notifications : TArray<TPushServiceNotification>;
//  {$ENDIF}
//  x : integer;
//  vNotification:string;
begin
//
//     {$IFDEF ANDROID}
//        Notifications := PushService.StartupNotifications; // notificaoes que abriram meu app...
//
//        if Length(Notifications) > 0 then
//        begin
//            // Android...
//            if Notifications[0].DataKey = 'fcm' then
//            begin
//                    for x := 0 to Notifications[0].DataObject.Count - 1 do
//                       vNotification:=(Notifications[0].DataObject.Pairs[x].JsonString.Value + ' = ' +
//                                        Notifications[0].DataObject.Pairs[x].JsonValue.Value);
//
//            end;
//
//            // iOS...
//            if Notifications[0].DataKey = 'aps' then
//            begin
//                    for x := 0 to Notifications[0].DataObject.Count - 1 do
//                        vNotification:=(Notifications[0].DataObject.Pairs[x].JsonString.Value + ' = ' +
//                                        Notifications[0].DataObject.Pairs[x].JsonValue.Value);
//
//            end;
//        end;
//     {$ENDIF}
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   CanClose := True;
   SharedActivity.finish
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
end;

procedure TfrmPrincipal.FormKeyUp(Sender: TObject; var Key: Word;
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

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  if dmSync= nil then
   dmSync := TdmSync.Create(Self);

  if dmUpdate= nil then
   dmUpdate := TdmUpdate.Create(Self);

  layLoginAnimaiton.Opacity     := 0;
  tbPrincipal.TabPosition       := TTabPosition.None;
  tbPrincipal.ActiveTab         := tbiLogin;
  edtUsuario.SetFocus;
  layMnuPrincipal.Opacity       :=0;
  lblVersao.Text                := GetVersaoArq;
  lblVersao2.Text               := GetVersaoArq;

  dmDB.qryConfig.Close;
  dmDB.qryConfig.Open;
  lblTipoDB.Text := dmDB.qryConfigTipoDB.Asstring;
  vTipoDb        := dmDB.qryConfigTipoDB.Asstring;

  layArmazem.Visible               := dmDB.qryConfigTIPODB.AsString='AGRICULTURA';
  layPul.Visible                   := dmDB.qryConfigTIPODB.AsString='AGRICULTURA';
  layStandPluviometria.Visible     := dmDB.qryConfigTIPODB.AsString='AGRICULTURA';
  layPlantioAplicacao.Visible      := dmDB.qryConfigTIPODB.AsString='AGRICULTURA';
  layColheitaMonitoramento.Visible := dmDB.qryConfigTIPODB.AsString='AGRICULTURA';

  if dmDB.qryConfigSalvarLogin.AsInteger=1 then
    chkSalvaSenha.IsChecked := true
  else
    chkSalvaSenha.IsChecked := false;
  tbPrincipal.TabPosition   := TTabPosition.None;

  if dmDB.VerificaTabelaVazia('usuario') then
   begin
     vPrimeiroAcesso        := true;
     dmDB.qryConfig.Edit;
     edtIPServidor.Text     := dmDB.qryConfigIP_SERVIDOR.AsString;
     edtPortaServidor.Text  := dmDB.qryConfigPOTA_SERVIDOR.AsString;
     tbPrincipal.ActiveTab  := tbiConfig;
   end
   else
   begin
     vPrimeiroAcesso           := false;
     tbPrincipal.ActiveTab     := tbiLogin;
     edtUsuario.SetFocus;
     dmDB.ReadAccess;
   end;
end;


function TfrmPrincipal.GetVersaoArq: string;
begin
  Result := 'v2021-12-06';
end;

procedure TfrmPrincipal.Image16Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmPrincipal.Label10Click(Sender: TObject);
begin
 mnuClick(Sender)
end;

procedure TfrmPrincipal.btnVoltarConfigClick(Sender: TObject);
begin
 MudarAba(tbiMenu,sender);
end;

procedure TfrmPrincipal.btnVoltarSyncClick(Sender: TObject);
begin
 MudarAba(tbiMenu,sender);
end;
{$IFDEF ANDROID}
procedure TfrmPrincipal.Vibrar(tempo: Integer);
//var
// vibrar : JVibrator;
begin
//    vibrar := TJVibrator.Wrap((SharedActivityContext.getSystemService(tjcontext.JavaClass.VIBRATOR_SERVICE) as ILocalObject).GetObjectID);
//    vibrar.vibrate(tempo);
end;
{$ENDIF}

procedure TfrmPrincipal.btnEnviaDadosClick(Sender: TObject);
begin
  if dmSync.TestaServidor<>'Erro' THEN
  begin
   T := TTask.Create(procedure
   begin
    try
      TThread.Synchronize(TThread.CurrentThread, procedure
      begin
       recLoading.Visible      := true;
      end);
      TThread.Synchronize(TThread.CurrentThread, procedure
      begin
        laySelectUpdate.Visible := false;
        btnSync.Enabled         := true;
        btnEnviaDados.Enabled   := true;
      end);
      if frmPrincipal.vTipoDb='PECUARIA' then
      begin
        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Abastecimentos');
        end);
        (dmSync.PostAbastecimento);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Abastecimentos Outros');
        end);
        (dmSync.PostAbastecimentoOutros);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Movimentação estoque');
        end);
        (dmSync.PostMovLocalEstoque);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Aux Item Revisao');
        end);
        (dmSync.PostItemRevisao);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Revisao');
        end);
        (dmSync.PostRevisao);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Revisao Item');
        end);
        (dmSync.PostRevisaoItens);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Revisao Servicos');
        end);
        (dmSync.PostRevisaoServico);
      end//pecuaria
      else
      begin
        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Receituario');
        end);
        (dmSync.PostReceituario);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Operaçoes');
        end);
        dmSync.PostOperacaoSafraAplSolidos;

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Stand Plantas');
        end);
        (dmSync.PostStandPlantas);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Pluviometria');
        end);
        (dmSync.PostPluviometria);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Abastecimentos');
        end);
        (dmSync.PostAbastecimento);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Abastecimentos Outros');
        end);
        (dmSync.PostAbastecimentoOutros);

        lblSyncData.Text :=(dmSync.PostMovLocalEstoque);
        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Aux Item Revisao');
        end);
        lblSyncData.Text :=(dmSync.PostItemRevisao);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Revisao');
        end);
        (dmSync.PostRevisao);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Revisao Item');
        end);
        (dmSync.PostRevisaoItens);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Revisao Servicos');
        end);
        (dmSync.PostRevisaoServico);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Movimentação estoque');
        end);
        (dmSync.PostMovLocalEstoque);


        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Monitoramento');
        end);
        (dmSync.PostMonitoramento);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Embarques');
        end);
        (dmSync.PostEmbarques);
        if dmDB.vArmazem=1 then
         (dmSync.GetContratos);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
         lblSyncData.Text :=('Enviando Desembarques');
        end);
        (dmSync.PostDesembarques);

        TThread.Synchronize(TThread.CurrentThread, procedure
        begin
          if dmDB.vAgronomo='1' then
          begin
           RecReceituarioPendente.Visible := dmDB.vAgronomo='1';
           dmSync.TSyncReceituario.Close;
           dmSync.TSyncReceituario.Open();
           lblRecPendente.Text := 'Receituarios Pendentes :'+
           intToStr(dmSync.TSyncReceituario.RecordCount);
          end;
        end);
      end;//Agricultura
      TThread.Synchronize(TThread.CurrentThread, procedure
      begin
        MessageDlg('Dados Enviados com Sucesso, sistema deve ser reiniciado',
        System.UITypes.TMsgDlgType.mtInformation,
        [System.UITypes.TMsgDlgBtn.mbYes], 0,
        procedure(const AResult: System.UITypes.TModalResult)
        begin
         case AResult of
          mrYES:
          begin
           Application.Terminate;
          end;
         end;
        end);
      end);
    except
    on E : Exception do
     begin
      TThread.Synchronize(TThread.CurrentThread, procedure
      begin
        recLoading.Visible := false;
        ShowMessage('Erro na etapa:'+etapa+' '+E.Message);
      end);
     end;
    end;
   end);
   t.Start;
  end
  else
  begin
    ShowMessage('Erro ao se conectar com servidor!');
  end;
end;

procedure TfrmPrincipal.chkBaixaMaquinasClick(Sender: TObject);
begin
  if chkBaixaMaquinas.Text='' then
   chkBaixaMaquinas.Text :='X'
  else
   chkBaixaMaquinas.Text :='';
end;

procedure TfrmPrincipal.chkBaixaProdutosClick(Sender: TObject);
begin
 if chkBaixaProdutos.Text='' then
   chkBaixaProdutos.Text :='X'
  else
   chkBaixaProdutos.Text :='';
end;

procedure TfrmPrincipal.chkBaixaReceituarioClick(Sender: TObject);
begin
  if chkBaixaReceituario.Text='' then
   chkBaixaReceituario.Text :='X'
  else
   chkBaixaReceituario.Text :='';
end;

procedure TfrmPrincipal.chkBaixaRevisoesClick(Sender: TObject);
begin
 if chkBaixaRevisoes.Text='' then
   chkBaixaRevisoes.Text :='X'
 else
   chkBaixaRevisoes.Text :='';
end;

procedure TfrmPrincipal.chkBaixaTalhoesClick(Sender: TObject);
begin
 if chkBaixaTalhoes.Text='' then
   chkBaixaTalhoes.Text :='X'
  else
   chkBaixaTalhoes.Text :='';
end;

{$IFDEF ANDROID}
procedure TfrmPrincipal.DoServiceConnectionChange(Sender: TObject;
  PushChanges: TPushService.TChanges);
begin
  if TPushService.TChange.DeviceToken in PushChanges then
    device_token := PushService.DeviceTokenValue[TPushService.TDeviceTokenNames.DeviceToken];

end;
{$ENDIF}
function TfrmPrincipal.EnviaToken(msg: string): string;
begin

end;

procedure TfrmPrincipal.mnuClick(Sender: TObject);
begin
 if layMnu.Opacity>0 then
  layMnu.Opacity:=0
 else
  AnimacaoMnu.Start;
end;

procedure TfrmPrincipal.MostraMenu;
begin
 if vTipoDb='AGRICULTURA' then
  begin
    //MAQUINAS E ABASTECIMENTO
    if(dmDB.vRevisaoMaquinas=1) or
      (dmDB.vAbastecimento=1) then
    begin
     layMaquinas.Visible := true;
     //so manutencao
     btnManutencao.Enabled :=
      (dmDB.vRevisaoMaquinas=1);
     //So abastecimento
     btnAbastecimento.Enabled :=
      (dmDB.vAbastecimento=1);
    end
    else
     layMaquinas.Visible := false;
    if dmDB.vArmazem=1 then
     layArmazem.Visible := true
    else
     layArmazem.Visible := false;
    //pulverizacao
    if dmDB.vPulverizacao=1 then
     layPul.Visible := true
    else
     layPul.Visible := false;

    //pluviometria
    if dmDB.vpluviometria=1 then
     layStandPluviometria.Visible :=true
    else
     layStandPluviometria.Visible :=false;

   // plantio ou aplicacao de solido
    if(dmDB.vAplicacaoSolido=1) or
      (dmDB.vplantio=1) then
    begin
     layPlantioAplicacao.Visible := true;
     btnPlantio.Enabled := dmDB.vaplicacaosolido=1;
     btnAplicacaoSolido.Enabled  := dmDB.vplantio=1;
    end
    else
     layPlantioAplicacao.Visible := false;
    if(dmDB.vMonitoramentopragas=1) or
      (dmDB.vplantio=1) then
    begin
     layColheitaMonitoramento.Visible := true;
     btnColheita.Enabled       := dmDB.vColheita=1;
     btnMonitoramento.Enabled  := dmDB.vMonitoramentopragas=1;
    end
    else
     layColheitaMonitoramento.Visible := false;
  end
  else
  begin
    layMaquinas.Visible              := true;
    layArmazem.Visible               := false;
    layPul.Visible                   := false;
    layStandPluviometria.Visible     := false;
    layPlantioAplicacao.Visible      := false;
    layColheitaMonitoramento.Visible := false;
    layExtra.Visible                 := false;
  end;
end;

procedure TfrmPrincipal.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
   actMudarAba.Tab := ATabItem;
   actMudarAba.ExecuteTarget(sender);
end;

end.
