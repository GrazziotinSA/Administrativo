unit uConsultaDiretor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, Data.DB;

type
  TfrmConsultaDiretor = class(TForm)
    pnlRelatorio: TPanel;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    Label9: TLabel;
    btnFecharRel: TBitBtn;
    btnPesquisaRelatorio: TBitBtn;
    DBGrid1: TDBGrid;
    pnlPesqRelatorio: TPanel;
    Panel: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtLojaIni: TEdit;
    edtLojaFim: TEdit;
    edtGrupIni: TEdit;
    edtGrupFim: TEdit;
    edtSubGIni: TEdit;
    edtSubGFim: TEdit;
    btnPesquisar: TBitBtn;
    btnLimpar_pesq: TBitBtn;
    btnFecharPesq: TBitBtn;
    edtDtaIn: TMaskEdit;
    edtDtaFi: TMaskEdit;
    Label2: TLabel;
    edtSetorIni: TEdit;
    edtSetorFim: TEdit;
    procedure btnFecharRelClick(Sender: TObject);
    procedure btnPesquisaRelatorioClick(Sender: TObject);
    procedure edtLojaIniExit(Sender: TObject);
    procedure edtLojaIniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtLojaFimExit(Sender: TObject);
    procedure edtLojaFimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSetorIniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSetorIniExit(Sender: TObject);
    procedure edtSetorFimExit(Sender: TObject);
    procedure edtSetorFimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtGrupIniExit(Sender: TObject);
    procedure edtGrupIniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtGrupFimExit(Sender: TObject);
    procedure edtGrupFimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSubGIniExit(Sender: TObject);
    procedure edtSubGIniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSubGFimExit(Sender: TObject);
    procedure edtSubGFimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDtaInExit(Sender: TObject);
    procedure edtDtaInKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDtaFiExit(Sender: TObject);
    procedure edtDtaFiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFecharPesqClick(Sender: TObject);
    procedure btnLimpar_pesqClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaDiretor: TfrmConsultaDiretor;

implementation

uses udtmSistema, UFunc, uFuncoes;

{$R *.dfm}

procedure TfrmConsultaDiretor.btnFecharRelClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmConsultaDiretor.btnPesquisaRelatorioClick(Sender: TObject);
begin
    pnlPesqRelatorio.Visible := True;
    edtLojaIni.SetFocus;
    if dtmSistema.sGrupo_UsuarioNL = '830' then
    begin
       edtSetorIni.Text := '80';
       edtSetorFim.Text := '80';
    end;
end;

procedure TfrmConsultaDiretor.edtLojaIniExit(Sender: TObject);
begin
    if edtLojaIni.Text = '' then
       edtLojaIni.Text := '0000';
end;

procedure TfrmConsultaDiretor.edtLojaIniKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_RETURN : edtLojaFim.SetFocus;
   end;
end;

procedure TfrmConsultaDiretor.edtLojaFimExit(Sender: TObject);
begin
    if edtLojaFim.Text = '' then
       edtLojaFim.Text := '9999';
end;

procedure TfrmConsultaDiretor.edtLojaFimKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    case Key of
      VK_RETURN : edtSetorIni.SetFocus;
    end;
end;

procedure TfrmConsultaDiretor.edtSetorIniKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    case Key of
      VK_RETURN : edtSetorFim.SetFocus;
    end;
end;

procedure TfrmConsultaDiretor.edtSetorIniExit(Sender: TObject);
begin
    if edtSetorIni.Text = '' then
       edtSetorIni.Text := '00';
end;

procedure TfrmConsultaDiretor.edtSetorFimExit(Sender: TObject);
begin
    if edtSetorFim.Text = '' then
       edtSetorFim.Text := '99';
end;

procedure TfrmConsultaDiretor.edtSetorFimKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    case Key of
      VK_RETURN : edtGrupIni.SetFocus;
    end;
end;

procedure TfrmConsultaDiretor.edtGrupIniExit(Sender: TObject);
begin
     if edtGrupIni.Text = '' then
       edtGrupIni.Text := '00';
end;

procedure TfrmConsultaDiretor.edtGrupIniKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    case key of
        VK_RETURN : edtGrupFim.SetFocus;
    end;
end;

procedure TfrmConsultaDiretor.edtGrupFimExit(Sender: TObject);
begin
    if edtGrupFim.Text = '' then
        edtGrupFim.Text := '99';
end;

procedure TfrmConsultaDiretor.edtGrupFimKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_RETURN : edtSubGIni.SetFocus;
   end;
end;

procedure TfrmConsultaDiretor.edtSubGIniExit(Sender: TObject);
begin
    if edtSubGIni.Text = '' then
       edtSubGIni.Text := '00';
end;

procedure TfrmConsultaDiretor.edtSubGIniKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_RETURN : edtSubGFim.SetFocus;
   end;
end;

procedure TfrmConsultaDiretor.edtSubGFimExit(Sender: TObject);
begin
    if edtSubGFim.Text = '' then
       edtSubGFim.Text := '99';
end;

procedure TfrmConsultaDiretor.edtSubGFimKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_RETURN : edtDtaIn.SetFocus;
   end;
end;

procedure TfrmConsultaDiretor.edtDtaInExit(Sender: TObject);
begin
    if AllTrim(edtDtaIn.Text) = '//' then
    begin
       Informacao('Preencha a data Inicial','Aviso');
       edtDtaIn.SetFocus;
       Abort;
       Exit;
    end;
end;

procedure TfrmConsultaDiretor.edtDtaInKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    case Key of
      VK_RETURN : edtDtaFi.SetFocus;
    end;
end;

procedure TfrmConsultaDiretor.edtDtaFiExit(Sender: TObject);
begin
    if AllTrim(edtDtaFi.Text) = '//' then
    begin
       Informacao('Preencha a data Final','Aviso');
       edtDtaFi.SetFocus;
       Abort;
       Exit;
    end;


    if StrToDate(edtDtaFi.Text) < StrToDate(edtDtaIn.Text) then
    begin
       Informacao('Data inicial não pode ser maior que a data Final','Aviso');
       edtDtaFi.SetFocus;
       Abort;
       Exit;
    end;
end;

procedure TfrmConsultaDiretor.edtDtaFiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    case Key of
      VK_RETURN : btnPesquisar.SetFocus;
   end;
end;

procedure TfrmConsultaDiretor.btnFecharPesqClick(Sender: TObject);
begin
    btnLimpar_pesqClick(Sender);
    pnlPesqRelatorio.Visible := False;
end;

procedure TfrmConsultaDiretor.btnLimpar_pesqClick(Sender: TObject);
begin
     edtLojaIni.Clear;
     edtLojaFim.Clear;
     if(Trim(dtmSistema.sGrupo_UsuarioNL) <> '830') then
     begin
        edtSetorIni.Clear;
        edtSetorFim.Clear;
     end;
     edtGrupIni.Clear;
     edtGrupFim.Clear;
     edtSubGIni.Clear;
     edtSubGFim.Clear;
     edtDtaIn.Clear;
     edtDtaFi.Clear;
end;

procedure TfrmConsultaDiretor.btnPesquisarClick(Sender: TObject);
var
  sSelect:String;
begin
     edtLojaIniExit(Sender);
     edtLojaFimExit(Sender);
     edtSetorIniExit(Sender);
     edtSetorFimExit(Sender); 
     edtGrupIniExit(Sender);
     edtGrupFimExit(Sender);
     edtSubGIniExit(Sender);
     edtSubGFimExit(Sender);
     edtDtaInExit(Sender);
     edtDtaFiExit(Sender);

     dtmSistema.qryGridRelatorio.Active:= False;
     dtmSistema.qryGridRelatorio.SQL.Clear;
     sSelect := 'select a.cod_unidade,a.cod_estruturado,i.des_item,a.dta_solicitacao,a.est_padrao as padrao_anterior,a.qtd_solicitacao,'+
                                         ' decode(a.ind_status,0,''Aguardando'',1,''Aprovado'',2,''Aprovado Parcial'',3,''Recusado'', '' '') Status,'+
                                         ' a.qtd_aprovada,trunc(a.dta_aprovacao)dta_aprovacao,b.qtd_est_min_i as padrao_atual '+
                                         ' from grz_lojas_solicitacao_padrao a,ce_pars_calculo b,ie_itens i  where '+
                                         ' b.cod_unidade = a.cod_unidade and '+
                                         ' b.cod_item = a.cod_item and '+
                                         ' i.cod_item= a.cod_item and '+
                                         ' a.cod_emp = '+dtmSistema.sRede+' and '+
                                         ' a.cod_unidade between '+edtLojaIni.Text+' and '+edtLojaFim.Text+' and '+
                                         ' a.cod_estruturado between '+edtSetorIni.Text+edtGrupIni.Text+edtSubGIni.Text+'0000 and '+
                                                                      ''+edtSetorFim.Text+edtGrupFim.Text+edtSubGFim.Text+'9999 and '+
                                         ' a.dta_solicitacao between '''+edtDtaIn.Text+''' and '''+edtDtaFi.Text+'''and '+
                                         ' b.cod_emp = 1'+
                                         ' order by a.cod_unidade,a.dta_solicitacao,a.cod_estruturado';
    dtmSistema.qryGridRelatorio.SQL.Add(sSelect);
    dtmSistema.qryGridRelatorio.Active := True;

    if dtmSistema.qryGridRelatorio.RecordCount = 0 then
    begin
         Informacao('Não foi encontrado dados.','Aviso.');
         Abort;
    end
    else
    begin
         btnLimpar_pesqClick(Sender);
         pnlPesqRelatorio.Visible := False;
         DBGrid1.SetFocus;
    end;

end;

procedure TfrmConsultaDiretor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dtmSistema.qryGridRelatorio.Active:= False;
end;

procedure TfrmConsultaDiretor.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if dtmSistema.qryGridRelatorio.RecordCount > 0 then
  begin
    If dtmSistema.qryGridRelatorio.FieldByName('status').AsString = 'Aguardando' then
       DBGrid1.Canvas.Font.Color:= $004242FB
    else
       DBGrid1.Canvas.Font.Color:= clWindowText;
    Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
  end;


  if gdSelected in State then
  begin
    // DBGrid1.Canvas.Brush.Color := clWhite;
     DBGrid1.Canvas.Font.Color := clNavy;
     Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
  end;

end;

procedure TfrmConsultaDiretor.FormShow(Sender: TObject);
var
  sselect: string;
begin
  try
     dtmSistema.qryGridRelatorio.Active:= False;
     dtmSistema.qryGridRelatorio.SQL.Clear;
     sselect := 'select a.cod_unidade,a.cod_estruturado,i.des_item,a.dta_solicitacao,a.est_padrao as padrao_anterior,a.qtd_solicitacao,'+
                                         ' decode(a.ind_status,0,''Aguardando'',1,''Aprovado'',2,''Aprovado Parcial'',3,''Recusado'', '' '') Status,'+
                                         ' a.qtd_aprovada,trunc(a.dta_aprovacao)dta_aprovacao,b.qtd_est_min_i as padrao_atual '+
                                         ' from grz_lojas_solicitacao_padrao a,ce_pars_calculo b ,ie_itens i  where '+
                                         ' b.cod_unidade = a.cod_unidade and '+
                                         ' b.cod_item = a.cod_item and '+
                                         ' i.cod_item= a.cod_item and '+
                                         ' a.cod_emp = '+dtmSistema.sRede+' and '+
                                         ' a.cod_unidade between 0000 and 9999 and '+
                                        { ' a.cod_estruturado between '+edtSetorIni.Text+edtGrupIni.Text+edtSubGIni.Text+'000 and '+
                                                                      ''+edtSetorFim.Text+edtGrupFim.Text+edtSubGFim.Text+'999 and '+
                                         ' a.dta_solicitacao between '''+edtDtaIn.Text+''' and '''+edtDtaFi.Text+'''and '+  }
                                         ' a.ind_status = 0 and '+
                                         ' b.cod_emp = 1'+
                                         ' order by a.cod_unidade,a.dta_solicitacao,a.cod_estruturado';
    dtmSistema.qryGridRelatorio.SQL.Add(sselect);
    dtmSistema.qryGridRelatorio.Active := True;
  except
  end;  
end;

end.
