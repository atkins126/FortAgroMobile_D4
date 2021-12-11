unit UDesembarque;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.StdCtrls, FMX.Edit, FMX.DateTimeCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.TabControl,
  FMX.ListBox, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TfrmDesembarque = class(TForm)
    tbPrincipal: TTabControl;
    tbiLista: TTabItem;
    recPrincipal: TRectangle;
    Layout5: TLayout;
    btnNovo: TRectangle;
    Image9: TImage;
    Label7: TLabel;
    btnVoltar1: TRectangle;
    Image31: TImage;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    edtDataF: TDateEdit;
    Label1: TLabel;
    Layout9: TLayout;
    ToolBar2: TToolBar;
    Layout10: TLayout;
    Lista: TListView;
    recTop: TRectangle;
    Label14: TLabel;
    tbiCad: TTabItem;
    Rectangle3: TRectangle;
    ToolBar1: TToolBar;
    recTopListapontos: TRectangle;
    Label20: TLabel;
    btnBuscar: TSpeedButton;
    Image12: TImage;
    edtPlacaF: TEdit;
    Ü: TLabel;
    Layout67: TLayout;
    btnVoltar2: TButton;
    Image24: TImage;
    Label61: TLabel;
    btnSalvarGrupo: TButton;
    Image25: TImage;
    Label62: TLabel;
    Layout1: TLayout;
    Layout6: TLayout;
    Layout11: TLayout;
    Label15: TLabel;
    Label16: TLabel;
    edtDatEmbarque: TDateEdit;
    edtHoraEmbarque: TTimeEdit;
    Layout7: TLayout;
    Layout8: TLayout;
    Label5: TLabel;
    edtPlaca: TEdit;
    GroupBox1: TGroupBox;
    Layout12: TLayout;
    Layout13: TLayout;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    edtTara: TEdit;
    edtBruto: TEdit;
    edtPesoLiquido: TEdit;
    GroupBox3: TGroupBox;
    Layout14: TLayout;
    Layout15: TLayout;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edtImp: TEdit;
    edtQueb: TEdit;
    edtVerd: TEdit;
    Layout16: TLayout;
    Layout17: TLayout;
    Label3: TLabel;
    Label8: TLabel;
    edtAvar: TEdit;
    edtUmid: TEdit;
    Layout18: TLayout;
    Layout19: TLayout;
    Talhao: TLabel;
    edtTalhao: TEdit;
    EditButton2: TEditButton;
    btnExcluiItem: TRectangle;
    Image1: TImage;
    lblExcluir: TLabel;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Layout20: TLayout;
    Layout22: TLayout;
    Label12: TLabel;
    edtTalhaoF: TEdit;
    Image16: TImage;
    RecCulturaCoberturaQualidade: TRectangle;
    Layout59: TLayout;
    Layout60: TLayout;
    lblCultura: TLabel;
    cbxCulturaApl: TComboBox;
    Layout21: TLayout;
    Rectangle8: TRectangle;
    Layout23: TLayout;
    Label6: TLabel;
    cbxSafra: TComboBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField: TLinkFillControlToField;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarGrupoClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure btnVoltar2Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnVoltar1Click(Sender: TObject);
    procedure edtBrutoChangeTracking(Sender: TObject);
    procedure edtTaraChangeTracking(Sender: TObject);
    procedure ListaItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure ListaGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure btnExcluiItemClick(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure cbxCulturaAplChange(Sender: TObject);
    procedure cbxSafraChange(Sender: TObject);
  private
    { Private declarations }
  public
    vSync,vIdContrato,vIdEmbarque,vIdtalhao,vIdCultura,vIdSafra:string;
    procedure GeraLista;
    procedure CarregaCombo;
  end;

var
  frmDesembarque: TfrmDesembarque;

implementation

{$R *.fmx}

uses UPrincipal, UDataContext, UContratos, UTalhoes, UEmbarque, UDataFunctions;

procedure TfrmDesembarque.CarregaCombo;
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

procedure TfrmDesembarque.btnBuscarClick(Sender: TObject);
var
 vFiltro:string;
begin
 vFiltro := ' and a.datadesembarque='+FormatDateTime('yyy-mm-dd',edtDataF.Date).QuotedString;
 if edtTalhaoF.Text.Length>0 then
  vFiltro := vFiltro+' and t.nome like '+QuotedStr('%'+edtTalhaoF.Text+'%');
 if edtPlacaF.Text.Length>0 then
  vFiltro := vFiltro+' and a.Placa='+edtPlacaF.Text.QuotedString;
  dmDB.AbreDesembarque(vFiltro);
  GeraLista;
end;

procedure TfrmDesembarque.btnExcluiItemClick(Sender: TObject);
begin
 btnExcluiItem.Visible := false;
   MessageDlg('Deseja Realmente Deletar esse Registro?', System.UITypes.TMsgDlgType.mtInformation,
   [System.UITypes.TMsgDlgBtn.mbYes,
   System.UITypes.TMsgDlgBtn.mbNo
   ], 0,
   procedure(const AResult: System.UITypes.TModalResult)
   begin
    case AResult of
     mrYES:
     begin
       dmDB.DeletaEmbarque(vIdEmbarque);
       btnBuscarClick(Sender);
     end;
     mrNo:
    end;
   end);
end;

procedure TfrmDesembarque.btnNovoClick(Sender: TObject);
begin
  CarregaCombo;
  edtPlaca.Text           :='';
  edtTara.Text            :='0';
  edtBruto.Text           :='0';
  edtPesoLiquido.Text     :='0';
  edtImp.Text             :='0';
  edtQueb.Text            :='0';
  edtVerd.Text            :='0';
  edtAvar.Text            :='0';
  edtUmid.Text            :='0';
  edtTalhao.Text          :='';
  cbxSafra.ItemIndex      :=-1;
  dmDB.TSafra.Close;
  dmDB.TSafra.Open;
  tbPrincipal.ActiveTab   :=tbiCad;
end;

procedure TfrmDesembarque.btnSalvarGrupoClick(Sender: TObject);
begin
  if cbxSafra.ItemIndex=-1 then
  begin
   ShowMessage('Informe a Safra!');
   edtTalhao.SetFocus;
   Exit;
  end;
  if edtTalhao.Text.Length=0 then
  begin
    ShowMessage('Informe o Talhao!');
    edtTalhao.SetFocus;
    Exit;
  end;
  if edtPlaca.Text.Length=0 then
  begin
    ShowMessage('Informe a Placa!');
    edtPlaca.SetFocus;
    Exit;
  end;
  if edtTara.Text='0' then
  begin
    ShowMessage('Informe a Tara!');
    edtTara.SetFocus;
    Exit;
  end;
  if edtBruto.Text='0' then
  begin
    ShowMessage('Informe o Peso Bruto!');
    edtBruto.SetFocus;
    Exit;
  end;
  dmDB.Desembarques.Close;
  dmDB.Desembarques.Open;
  dmDB.Desembarques.Insert;
  dmDB.Desembarquesidsafra.AsString          := vIdSafra;
  dmDB.Desembarquesidcultura.AsString        := vIdCultura;
  dmDB.Desembarquesidusuario.ASstring        := dmDB.vIdUser;
  dmDB.Desembarquesidtalhao.ASstring         := vIdtalhao;
  dmDB.Desembarquesplaca.ASstring            := edtPlaca.Text;
  dmDB.Desembarquesdatadesembarque.AsDateTime:= edtDatEmbarque.DateTime;
  dmDB.Desembarquestara.ASstring             := edtTara.Text;
  dmDB.Desembarquesbruto.ASstring            := edtBruto.Text;
  dmDB.Desembarquesliquido.ASstring          := edtPesoLiquido.Text;
  dmDB.Desembarqueshoradesembarque.AsDateTime:= edtHoraEmbarque.Time;
  dmDB.Desembarquesimp.AsString              := edtImp.Text;
  dmDB.Desembarquesqueb.AsString             := edtQueb.Text;
  dmDB.DesembarquesVerd.AsString             := edtVerd.Text;
  dmDB.DesembarquesAvar.AsString             := edtAvar.Text;
  dmDB.DesembarquesUmid.AsString             := edtUmid.Text;
  try
   dmDB.Desembarques.ApplyUpdates(-1);
   ShowMessage('Embarque Realizado com Sucesso!');
   GeraLista;
   tbPrincipal.ActiveTab := tbiLista;
  except
   on E : Exception do
    ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
  end;
end;

procedure TfrmDesembarque.btnVoltar1Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmDesembarque.btnVoltar2Click(Sender: TObject);
begin
 tbPrincipal.ActiveTab := tbiLista;
end;

procedure TfrmDesembarque.cbxCulturaAplChange(Sender: TObject);
begin
 if dmFunctions=nil then
   dmFunctions := TdmFunctions.Create(Self);
 if cbxCulturaApl.ItemIndex>-1 then
  vIdCultura := dmFunctions.RetornaIdCultura(cbxCulturaApl.Selected.Text);
end;

procedure TfrmDesembarque.cbxSafraChange(Sender: TObject);
begin
 if cbxSafra.ItemIndex>-1 then
  vIdSafra:= LinkFillControlToField.BindList.GetSelectedValue.AsString;
end;

procedure TfrmDesembarque.EditButton2Click(Sender: TObject);
begin
  if Not Assigned(frmTalhoes) then
   Application.CreateForm(TfrmTalhoes, frmTalhoes);
  frmTalhoes.ShowModal(procedure(ModalResult: TModalResult)
  begin
    edtTalhao.Text   := dmDB.vNomeTalhao;
    vIdtalhao        := dmDB.vIdTalhao;
  end);

end;

procedure TfrmDesembarque.edtBrutoChangeTracking(Sender: TObject);
begin
 if TEdit(Sender).Text.Length<=0 then
  TEdit(Sender).Text := '0';
 edtPesoLiquido.text := floatTostr(strToFloat(edtBruto.Text)-strToFloat(edtTara.Text));
end;

procedure TfrmDesembarque.edtTaraChangeTracking(Sender: TObject);
begin
 if TEdit(Sender).Text.Length<=0 then
  TEdit(Sender).Text := '0';
 edtPesoLiquido.text := floatTostr(strToFloat(edtBruto.Text)-strToFloat(edtTara.Text));
end;

procedure TfrmDesembarque.FormShow(Sender: TObject);
begin
  tbPrincipal.TabPosition  := TTabPosition.None;
  tbPrincipal.ActiveTab    := tbiLista;
  btnExcluiItem.Visible    := false;
  dmDB.AbreDesembarque('');
  GeraLista
end;

procedure TfrmDesembarque.GeraLista;
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vStatus:string;
begin
    dmDb.DesembarqueGrid.First;
    Lista.Items.Clear;
    while not dmDb.DesembarqueGrid.eof do
     begin
       item := Lista.Items.Add;
         with frmEmbarque do
         begin
           with item  do
           begin
             txt      := TListItemText(Objects.FindDrawable('Text5'));
             txt.Text := 'N° Con.:';
             txt.TagString := dmDb.DesembarqueGridId.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text7'));
             txt.TagString := dmDb.DesembarqueGridsyncfaz.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text4'));
             txt.Text := 'Comprador:';

             txt      := TListItemText(Objects.FindDrawable('Text8'));
             txt.Text := 'Placa:';
             txt      := TListItemText(Objects.FindDrawable('Text9'));
             txt.Text := dmDb.DesembarqueGridPlaca.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text12'));
             txt.Text := 'N° Talhao:';
             txt      := TListItemText(Objects.FindDrawable('Text13'));
             txt.Text := dmDb.DesembarqueGridTalhao.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text11'));
             txt.Text := 'Tara';
             txt      := TListItemText(Objects.FindDrawable('Text3'));
             txt.Text := dmDb.DesembarqueGridtara.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text10'));
             txt.Text := 'Bruto';
             txt      := TListItemText(Objects.FindDrawable('Text14'));
             txt.Text := dmDb.DesembarqueGridbruto.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text16'));
             txt.Text := 'Liquido';
             txt      := TListItemText(Objects.FindDrawable('Text15'));
             txt.Text := dmDb.DesembarqueGridbruto.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text18'));
             txt.Text := 'Imp.';
             txt      := TListItemText(Objects.FindDrawable('Text19'));
             txt.Text := dmDb.DesembarqueGridImp.AsString+'%';

             txt      := TListItemText(Objects.FindDrawable('Text20'));
             txt.Text := 'Queb.';
             txt      := TListItemText(Objects.FindDrawable('Text21'));
             txt.Text := dmDb.DesembarqueGridQueb.AsString+'%';

             txt      := TListItemText(Objects.FindDrawable('Text22'));
             txt.Text := 'Verd.';
             txt      := TListItemText(Objects.FindDrawable('Text23'));
             txt.Text := dmDb.DesembarqueGridVerd.AsString+'%';

             txt      := TListItemText(Objects.FindDrawable('Text24'));
             txt.Text := 'Avar.';
             txt      := TListItemText(Objects.FindDrawable('Text25'));
             txt.Text := dmDb.DesembarqueGridAvar.AsString+'%';

             txt      := TListItemText(Objects.FindDrawable('Text26'));
             txt.Text := 'Umid.';
             txt      := TListItemText(Objects.FindDrawable('Text27'));
             txt.Text := dmDb.DesembarqueGridUmid.AsString+'%';

             img := TListItemImage(Objects.FindDrawable('Image10'));
             img.Bitmap     := frmPrincipal.imgContrato.Bitmap;

             img := TListItemImage(Objects.FindDrawable('Image11'));
             img.Bitmap     := frmPrincipal.imgPeso.Bitmap;

             img := TListItemImage(Objects.FindDrawable('Image17'));
             img.Bitmap     := frmPrincipal.imgTaxa.Bitmap;
           end;
           dmDB.DesembarqueGrid.Next;
         end;
     end;
end;

procedure TfrmDesembarque.Image16Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmDesembarque.ListaGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
 if vSync='0' then
  btnExcluiItem.Visible   := true;
end;

procedure TfrmDesembarque.ListaItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
  vSync :=
   TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text7').TagString;

  vIdEmbarque:=
   TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text5').TagString;
end;

end.
