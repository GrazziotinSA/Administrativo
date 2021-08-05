unit uPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Buttons, ExtCtrls;

type
  TfrmPesquisa = class(TForm)
    pnlPesquisa: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtUnidadeIni: TEdit;
    edtUnidadeFim: TEdit;
    edtGrupoIni: TEdit;
    edtGrupoFim: TEdit;
    edtSubGrupoIni: TEdit;
    edtSubGrupoFim: TEdit;
    btnPesquisar: TBitBtn;
    btnLimpar_pesq: TBitBtn;
    btnFecharPesq: TBitBtn;
    edtDtaIniFiltro: TMaskEdit;
    EdtDtaFimFiltro: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnLimpar_pesqClick(Sender: TObject);
    procedure edtUnidadeIniExit(Sender: TObject);
    procedure edtUnidadeFimExit(Sender: TObject);
    procedure edtGrupoIniExit(Sender: TObject);
    procedure edtGrupoFimExit(Sender: TObject);
    procedure edtSubGrupoIniExit(Sender: TObject);
    procedure edtSubGrupoFimExit(Sender: TObject);
    procedure btnFecharPesqClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtDtaIniFiltroExit(Sender: TObject);
    procedure EdtDtaFimFiltroExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisa: TfrmPesquisa;

implementation

uses udtmSistema, uPrincipal, UFunc, uFuncoes;

{$R *.dfm}

procedure TfrmPesquisa.FormCreate(Sender: TObject);
begin
    if(Trim(dtmSistema.sGrupo_UsuarioNL) = '830') then
    begin
        edtGrupoIni.ReadOnly := True;
        edtGrupoFim.ReadOnly := True;
        edtGrupoIni.Text:= copy(frmAprovaPadrao.edtSetor.Text,3,2);
        edtGrupoFim.Text:= copy(frmAprovaPadrao.edtSetor.Text,3,2);
    end
    else
    begin
       edtGrupoIni.ReadOnly := False;
        edtGrupoFim.ReadOnly := False;
    end;

end;

procedure TfrmPesquisa.btnLimpar_pesqClick(Sender: TObject);
begin
     edtUnidadeIni.Clear;
     edtUnidadeFim.Clear;
     if(Trim(dtmSistema.sGrupo_UsuarioNL) <> '830') then
     begin
          edtGrupoIni.Clear;
          edtGrupoFim.Clear;
     end;
     edtSubGrupoIni.Clear;
     edtSubGrupoFim.Clear;
     edtDtaIniFiltro.Clear;
     EdtDtaFimFiltro.Clear;
end;

procedure TfrmPesquisa.edtUnidadeIniExit(Sender: TObject);
begin
   if edtUnidadeIni.Text = '' then
       edtUnidadeIni.Text := '0000';
end;

procedure TfrmPesquisa.edtUnidadeFimExit(Sender: TObject);
begin
    if edtUnidadeFim.Text = '' then
       edtUnidadeFim.Text := '9999';
end;

procedure TfrmPesquisa.edtGrupoIniExit(Sender: TObject);
begin
   if edtGrupoIni.Text = '' then
       edtGrupoIni.Text := '00';
end;

procedure TfrmPesquisa.edtGrupoFimExit(Sender: TObject);
begin
    if edtGrupoFim.Text = '' then
       edtGrupoFim.Text := '99';
end;

procedure TfrmPesquisa.edtSubGrupoIniExit(Sender: TObject);
begin
     if edtSubGrupoIni.Text = '' then
       edtSubGrupoIni.Text := '00';
end;

procedure TfrmPesquisa.edtSubGrupoFimExit(Sender: TObject);
begin
   if edtSubGrupoFim.Text = '' then
       edtSubGrupoFim.Text := '99';
end;

procedure TfrmPesquisa.btnFecharPesqClick(Sender: TObject);
begin
   btnLimpar_pesqClick(Sender);
   Close;
end;

procedure TfrmPesquisa.btnPesquisarClick(Sender: TObject);
begin
   edtUnidadeIniExit(Sender);
   edtUnidadeFimExit(Sender);
   edtGrupoIniExit(Sender);
   edtGrupoFimExit(Sender);
   edtSubGrupoIniExit(Sender);
   edtSubGrupoFimExit(Sender);
   edtDtaIniFiltroExit(Sender);
   EdtDtaFimFiltroExit(Sender);

   if(Trim(dtmSistema.sGrupo_UsuarioNL) = '830') then
   begin
       frmAprovaPadrao.pnlSelecionandoDados.Visible:= True;
      frmAprovaPadrao.pnlSelecionandoDados.Refresh;
       frmAprovaPadrao.ExecutaSelect(copy(frmAprovaPadrao.edtSetor.Text,1,2),edtGrupoIni.Text,edtGrupoFim.Text,edtSubGrupoIni.Text,edtSubGrupoFim.Text,'0000','9999',edtDtaIniFiltro.Text,EdtDtaFimFiltro.Text);
      frmAprovaPadrao.pnlSelecionandoDados.Visible:= False;
   end else
   begin
      frmAprovaPadrao.pnlSelecionandoDados.Visible:= True;
      frmAprovaPadrao.pnlSelecionandoDados.Refresh;
       frmAprovaPadrao.ExecutaSelect(frmAprovaPadrao.edtSetor.Text,edtGrupoIni.Text,edtGrupoFim.Text,edtSubGrupoIni.Text,edtSubGrupoFim.Text,'0000','9999',edtDtaIniFiltro.Text,EdtDtaFimFiltro.Text);
      frmAprovaPadrao.pnlSelecionandoDados.Visible:= False;
   end;
   Close;
end;

procedure TfrmPesquisa.edtDtaIniFiltroExit(Sender: TObject);
begin
   if AllTrim(edtDtaIniFiltro.Text) = '//' then
    begin
       Informacao('Preencha a data Inicial','Aviso');
       edtDtaIniFiltro.SetFocus;
       Abort;
       Exit;
    end;
end;

procedure TfrmPesquisa.EdtDtaFimFiltroExit(Sender: TObject);
begin
    if AllTrim(EdtDtaFimFiltro.Text) = '//' then
    begin
       Informacao('Preencha a data Final','Aviso');
       EdtDtaFimFiltro.SetFocus;
       Abort;
       Exit;
    end;

    if StrToDate(EdtDtaFimFiltro.Text) < StrToDate(edtDtaIniFiltro.Text) then
    begin
       Informacao('Data inicial n�o pode ser maior que a data Final','Aviso');
       EdtDtaFimFiltro.SetFocus;
       Abort;
       Exit;
    end;
end;

procedure TfrmPesquisa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case key of
        VK_RETURN, VK_TAB : Perform(WM_NEXTDLGCTL,0,0);
    end;
end;

end.
