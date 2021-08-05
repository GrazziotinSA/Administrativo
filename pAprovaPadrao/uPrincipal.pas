unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons, Grids, DBGrids, Menus,XPMan,
  Data.DB;

type
  TfrmAprovaPadrao = class(TForm)
    Panel1: TPanel;
    lblUsuarioLog: TLabel;
    Image4: TImage;
    pnlFiltroFinan: TPanel;
    edtSetor: TLabeledEdit;
    edtDescSetor: TLabeledEdit;
    btnPesq: TBitBtn;
    grdAprovacao: TDBGrid;
    Panel2: TPanel;
    Label11: TLabel;
    edtVendaMedia: TEdit;
    cbUm: TCheckBox;
    cbDois: TCheckBox;
    cbTres: TCheckBox;
    cbQuatro: TCheckBox;
    cbCinco: TCheckBox;
    cbSeis: TCheckBox;
    cbSete: TCheckBox;
    cbOito: TCheckBox;
    cbNove: TCheckBox;
    cbDez: TCheckBox;
    cbOnze: TCheckBox;
    cbDoze: TCheckBox;
    sgbVendaMedia: TStringGrid;
    pnlAtualizando: TPanel;
    pnlSelecionandoDados: TPanel;
    pnlAprovParceial: TPanel;
    Label2: TLabel;
    edtQtdAprov: TEdit;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    Panel3: TPanel;
    btnAprovar: TBitBtn;
    btnRecusar: TBitBtn;
    btnParcial: TBitBtn;
    btnAprovarTodos: TBitBtn;
    btnRecusarTodos: TBitBtn;
    Label5: TLabel;
    edtVdaMediaLoja: TEdit;
    edtEstoqueLoja: TEdit;
    Label6: TLabel;
    btnFechar: TBitBtn;
    btnRelatorio: TBitBtn;
    pnlRelatorio: TPanel;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    btnFecharRel: TBitBtn;
    btnPesquisaRelatorio: TBitBtn;
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
    Label9: TLabel;
    Label10: TLabel;
    pnlInformeRede: TPanel;
    Label41: TLabel;
    edtRedeLogin: TEdit;
    procedure btnPesqClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ExecutaSelect(Setor,GrupoIni,GrupoFim,SubGrupoIni,SubGrupoFim,UnidadeIni,UnidadeFim,DataIni,DataFim: string);
    procedure edtSetorExit(Sender: TObject);
    procedure edtSetorEnter(Sender: TObject);
    procedure edtSetorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure sgbVendaMediaDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure cbUmClick(Sender: TObject);
    procedure cbDoisClick(Sender: TObject);
    procedure cbTresClick(Sender: TObject);
    procedure cbQuatroClick(Sender: TObject);
    procedure cbCincoClick(Sender: TObject);
    procedure cbSeisClick(Sender: TObject);
    procedure cbSeteClick(Sender: TObject);
    procedure cbOitoClick(Sender: TObject);
    procedure cbNoveClick(Sender: TObject);
    procedure cbDezClick(Sender: TObject);
    procedure cbOnzeClick(Sender: TObject);
    procedure cbDozeClick(Sender: TObject);
    procedure grdAprovacaoCellClick(Column: TColumn);
    procedure CalculaMediaVenda;
    procedure BuscaQtdVdaMeses;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnAprovarClick(Sender: TObject);
    procedure btnRecusarClick(Sender: TObject);
    procedure btnParcialClick(Sender: TObject);
    procedure limparGrid(StringGrid: TStringGrid);
    procedure btnAprovarTodosClick(Sender: TObject);
    procedure btnRecusarTodosClick(Sender: TObject);
    PROCEDURE MarcaCheckComoLoja;
    procedure AlteraTabelaNl(item,Qtd,Loja,RedeLoja: string);
    procedure grdAprovacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRelatorioClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnFecharRelClick(Sender: TObject);
    procedure btnFecharPesqClick(Sender: TObject);
    procedure btnLimpar_pesqClick(Sender: TObject);
    procedure btnPesquisaRelatorioClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtLojaIniExit(Sender: TObject);
    procedure edtLojaFimExit(Sender: TObject);
    procedure edtGrupIniExit(Sender: TObject);
    procedure edtGrupFimExit(Sender: TObject);
    procedure edtSubGFimExit(Sender: TObject);
    procedure edtDtaInExit(Sender: TObject);
    procedure edtDtaFiExit(Sender: TObject);
    procedure edtSubGIniExit(Sender: TObject);
    procedure edtLojaIniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtLojaFimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtGrupIniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtGrupFimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSubGIniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSubGFimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDtaInKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDtaFiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtRedeLoginExit(Sender: TObject);
    procedure edtRedeLoginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtRedeLoginKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    bCorColunasUm,bCorColunasDois,bCorColunasTres,bCorColunasQuatro,bCorColunasCinco,bCorColunasSeis,bCorColunasSete,bCorColunasOito,bCorColunasNove,bCorColunasDez,
        bCorColunasOnze,bCorColunasDoze: boolean;
        sDataMaxMvto:string;
  end;

var
  frmAprovaPadrao: TfrmAprovaPadrao;
  sDes_Nivel: STRING;
  __Key: Word;
  __Shift: TShiftState;



implementation

uses udtmSistema, uFuncoes, uPesquisa, DBTables;

{$R *.dfm}

procedure TfrmAprovaPadrao.btnPesqClick(Sender: TObject);
var
  formulario :TfrmPesquisa;
begin
    formulario:= TfrmPesquisa.Create(Self);
    formulario.ShowModal;
    formulario.Free;
end;

procedure TfrmAprovaPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
       VK_F5 : btnPesqClick(Sender);
       VK_RETURN, VK_TAB : Perform(WM_NEXTDLGCTL,0,0);
       VK_F1 : btnAprovarClick(Sender);
       VK_F2 : btnRecusarClick(Sender);
       VK_F3 : btnParcialClick(Sender);
       VK_F6 : btnAprovarTodosClick(Sender);
       VK_F7 : btnRecusarTodosClick(Sender);
       VK_F8 : btnFecharClick(Sender);
       VK_F4 : btnRelatorioClick(Sender);
   end;
end;

procedure TfrmAprovaPadrao.ExecutaSelect(Setor,GrupoIni,GrupoFim,SubGrupoIni,SubGrupoFim,UnidadeIni,UnidadeFim,DataIni,DataFim: string);
var
  sSelect,sCodIni,sCodFim: string;
begin

  {dtmSistema.qryManutencao.Active := False;
  dtmSistema.qryManutencao.SQL.Clear;
  dtmSistema.qryManutencao.SQL.Add('select max(dta_mvto) dta from es_0124_ce_estmedio');
  dtmSistema.qryManutencao.Active := True;

  sDataMaxMvto := dtmSistema.qryManutencao.fieldByName('dta').AsString;          }
   sCodIni := Setor+GrupoIni+SubGrupoIni+copy(dtmSistema.sRede,0,1)+'000';
   sCodFim := Setor+GrupoFim+SubGrupoFim+copy(dtmSistema.sRede,0,1)+'999';

  sSelect:=  ' select E.*,I.DES_ITEM  '+
	  '  From GRZ_LOJAS_SOLICITACAO_PADRAO E ,IE_ITENS I '+
      ' WHERE E.COD_ITEM = I.COD_ITEM '+
      //' AND E.COD_EMP = '+dtmSistema.sRede+   //comentado para rede 70
      ' AND E.COD_UNIDADE BETWEEN '+UnidadeIni+' and '+UnidadeFim+
      ' AND E.COD_ESTRUTURADO BETWEEN '+sCodIni+  ' AND '  +sCodFim+
      ' AND SUBSTR(E.COD_ESTRUTURADO, 7,1) = '+copy(dtmSistema.sRede,0,1) +
      ' AND E.DTA_SOLICITACAO BETWEEN '''+DataIni+''' AND  '''+DataFim+''''+
      ' AND E.IND_STATUS = 0 '+
      ' order by E.DTA_SOLICITACAO,E.COD_UNIDADE,E.COD_ITEM ';

   dtmSistema.qryGridSolicitacao.Active := False;
   dtmSistema.qryGridSolicitacao.SQL.Clear;
   dtmSistema.qryGridSolicitacao.SQL.Add(sSelect);
   dtmSistema.qryGridSolicitacao.Active := True; 
end;

procedure TfrmAprovaPadrao.edtSetorExit(Sender: TObject);
begin
   if lblUsuarioLog.Caption = '' then
   begin
     KeyPreview := False;
     edtSetor.SetFocus;
     Abort;
     Exit;
   end;
   KeyPreview:= True;

   if AllTrim(edtSetor.Text) = '' then
   begin
      KeyPreview := False;
      Informacao('Informe o Setor!','Aviso.');
      edtSetor.SetFocus;
      Abort;
      Exit;
   end;

  { if(Trim(dtmSistema.sGrupo_UsuarioNL) = '830') then
   begin
      pnlSelecionandoDados.Visible:= True;
      pnlSelecionandoDados.Refresh;
      ExecutaSelect(copy(edtSetor.Text,1,2),copy(edtSetor.Text,3,2),copy(edtSetor.Text,3,2),'00','99','0000','9999','01/01/2015','01/01/2100');
       pnlSelecionandoDados.Visible:= False;
   end else }
   begin
      pnlSelecionandoDados.Visible:= True;
      pnlSelecionandoDados.Refresh;
      ExecutaSelect(copy(edtSetor.Text,1,2),copy(edtSetor.Text,3,2),copy(edtSetor.Text,3,2),'00','99','0000','9999','01/01/2015','01/01/2100');
      //ExecutaSelect(edtSetor.Text,'00','99','00','99','0000','9999','01/01/2015','01/01/2100');
      pnlSelecionandoDados.Visible:= False;
   end;
end;

procedure TfrmAprovaPadrao.edtSetorEnter(Sender: TObject);
begin
   {if(Trim(dtmSistema.sGrupo_UsuarioNL) = '830') then
   begin
      edtSetor.MaxLength := 4;
   end else
   begin
      edtSetor.MaxLength := 2;
   end;       }
end;

procedure TfrmAprovaPadrao.edtSetorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  VAR
    Buf: Single;
begin
   case key of VK_RETURN, VK_TAB :
         if AllTrim(edtSetor.Text) = '' then
          begin
              Informacao('Setor deve ser informado!','Aviso!');
              edtSetor.SetFocus;
              Abort;
              Exit;
          end else
              begin
                  if Length(edtSetor.Text) < edtSetor.MaxLength then
                   begin
                       Informacao('Grupo deve conter '+IntToStr(edtSetor.MaxLength)+' d�gitos!','Aviso!');
                       edtSetor.SetFocus;
                       Abort;
                       Exit;
                   end;

                   if (TryStrToFloat(dtmSistema.sCod_UsuarioNL, Buf) = False ) then
                   begin
                       dtmSistema.sCod_UsuarioNL :='00';
                   end;

                {  dtmSistema.QryConsulta.Close;
                  dtmSistema.QryConsulta.SQL.Clear;
                  dtmSistema.QryConsulta.SQL.Add(' select * '+
                                      '   from GRZ_FINAN_SETOR_COMPRADOR '+
                                      '  where cod_emp ='+dtmSistema.sRede+
                                      '    and setor = '+Trim(edtSetor.Text)+
                                      '    and cod_comprador = '+dtmSistema.sCod_UsuarioNL+'');

                  dtmSistema.QryConsulta.Open;

                  if dtmSistema.QryConsulta.RecordCount < 1 then
                  BEGIN   }

                      if dtmSistema.sCod_UsuarioNL = '00' then
                      begin
                          Informacao('Para acessar o Financeiro o'+#13+
                                    ' c�digo do usu�rio deve ser numerico!!'+#13,'Aviso!');
                          edtSetor.SetFocus;
                          Abort;
                          Exit;

                      end;

                {      Informacao('Setor n�o est� cadastrado para'+#13+
                                 'o c�digo '+dtmSistema.sCod_UsuarioNL+' !'+#13,'Aviso!');
                      edtSetor.SetFocus;
                      Abort;
                      Exit;

                  END;   }

               


                  dtmSistema.QryConsulta.Close;
                  dtmSistema.QryConsulta.SQL.Clear;
                  dtmSistema.QryConsulta.SQL.Add(' SELECT 1 '+
                                      '   FROM IE_ITENS A '+
                                      '       ,IE_MASCARAS B '+
                                      '  WHERE a.cod_item = b.cod_item '+
                                      '    and b.cod_mascara = 170 '+
                                      '    and b.cod_completo >= '''+Trim(dtmSistema.sRede)+PadRight(Trim(edtSetor.Text),9,'0')+ ''''+
                                      '    and b.cod_completo <= '''+Trim(dtmSistema.sRede)+PadRight(Trim(edtSetor.Text),9,'9')+ ''''+
                                      '    and a.ind_avulso = 0 '+
                                      '    and a.ind_inativo = 0 '+
                                     // '    and upper(a.des_geral) = ''L'''+
                                      '    and rownum < 2 ');
                  dtmSistema.QryConsulta.Open;
                  if dtmSistema.QryConsulta.RecordCount < 1 then
                  begin
                      Informacao('Setor n�o est� cadastrado ou'+#13+
                                 'n�o possui itens em livro!!!'+#13,'Aviso!');
                      edtSetor.SetFocus;
                      Abort;
                      Exit;
                  end else
                  begin

                     { if(Trim(dtmSistema.sGrupo_UsuarioNL) <> '830' ) then
                      begin


                         dtmSistema.QryConsulta.Close;
                         dtmSistema.QryConsulta.SQL.Clear;
                         dtmSistema.QryConsulta.SQL.Add('select substr(nvl(des_nivel,''X''),1,30) des_nivel '+
	                                                         '  from g3_niveis_cadastro '+
                                                           ' Where cod_mascara = 170 '+
                                                           '   and substr(cod_anteriores,1,2) = '+Trim(dtmSistema.sRede)+
                                                           '   and cod_nivel = '+Copy(edtSetor.Text,0,2)+
                                                           '   and seq_nivel = 2 '+
                                                           '   and cod_formato = 1');
                         dtmSistema.QryConsulta.Open;
                         sDes_Nivel := dtmSistema.QryConsulta.fieldByName('Des_Nivel').AsString;
                         edtDescSetor.Text := sDes_Nivel;
                         
                      end else }
                      begin

                         dtmSistema.QryConsulta.Close;
                         dtmSistema.QryConsulta.SQL.Clear;
                         dtmSistema.QryConsulta.SQL.Add('select substr(nvl(des_nivel,''X''),1,30) des_nivel '+
	                                           '  from g3_niveis_cadastro '+
                                             ' Where cod_mascara = 170 '+
                                             '   and substr(cod_anteriores,1,2) = '+Trim(dtmSistema.sRede)+
                                             '   and cod_nivel = '+ Copy(Trim(edtSetor.Text),1,2)+
                                             //'   and seq_nivel = 3 '+
                                             '   and seq_nivel = 2 '+
                                             '   and cod_formato = 1');
                         dtmSistema.QryConsulta.Open;

                         sDes_Nivel := dtmSistema.QryConsulta.fieldByName('Des_Nivel').AsString;
                         edtDescSetor.Text := sDes_Nivel;


                      end;

                     grdAprovacao.SetFocus;
                  end;
              end;
    end;
end;

procedure TfrmAprovaPadrao.FormShow(Sender: TObject);
begin
    lblUsuarioLog.Caption := dtmSistema.sNomeColaborador;

    if  dtmSistema.iTipo_User = 01 then
    begin
       pnlInformeRede.Visible:= True;
       edtRedeLogin.SetFocus;
    end;
end;

procedure TfrmAprovaPadrao.sgbVendaMediaDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
      if cbUm.Checked then
    begin
        if bCorColunasUm and (ACol = 0) and (ARow = 0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[0,0]);
        end;
        if bCorColunasUm and (ACol = 0) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[0,1]);
        end;
    end
    else
    begin
      if (ACol = 0) and (ARow = 0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[0,0]);
        end;
        if (ACol = 0) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[0,1]);
        end;
    end;


     if cbDois.Checked then
     begin
        if bCorColunasDois and (ACol = 1) and (ARow =0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[1,0]);
        end;
        if bCorColunasDois and (ACol = 1) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[1,1]);
        end;
     end
     else
     begin
      if (ACol = 1) and (ARow = 0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[1,0]);
        end;
        if (ACol = 1) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[1,1]);
        end;
     end;

     if cbTres.Checked then
     begin
        if bCorColunasTres and (ACol = 2) and (ARow =0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[2,0]);
        end;
        if bCorColunasTres and (ACol = 2) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[2,1]);
        end;
     end
     else
     begin
      if (ACol = 2) and (ARow = 0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[2,0]);
        end;
        if (ACol = 2) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[2,1]);
        end;
     end;

     if cbQuatro.Checked then
     begin
        if bCorColunasQuatro and (ACol = 3) and (ARow =0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[3,0]);
        end;
        if bCorColunasQuatro and (ACol = 3) and (ARow = 1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[3,1]);
        end;
     end
     else
     begin
      if (ACol = 3) and (ARow = 0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[3,0]);
        end;
        if (ACol = 3) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[3,1]);
        end;
     end;

     if cbCinco.Checked then
     begin
        if bCorColunasCinco and (ACol = 4) and (ARow =0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[4,0]);
        end;
        if bCorColunasCinco and (ACol = 4) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[4,1]);
        end;
     end
     else
     begin
      if (ACol = 4) and (ARow = 0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[4,0]);
        end;
        if (ACol = 4) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[4,1]);
        end;
     end;

     if cbSeis.Checked then
     begin
        if bCorColunasSeis and (ACol = 5) and (ARow =0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[5,0]);
        end;
        if bCorColunasSeis and (ACol = 5) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[5,1]);
        end;
     end
     else
     begin
      if (ACol = 5) and (ARow = 0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[5,0]);
        end;
        if (ACol = 5) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[5,1]);
        end;
     end;

     if cbSete.Checked then
     begin
        if bCorColunasSete and (ACol = 6) and (ARow =0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[6,0]);
        end;
        if bCorColunasSete and (ACol = 6) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[6,1]);
        end;
     end
     else
     begin
      if (ACol = 6) and (ARow = 0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[6,0]);
        end;
        if (ACol = 6) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[6,1]);
        end;
     end;

     if cbOito.Checked then
     begin
        if bCorColunasOito and (ACol = 7) and (ARow =0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[7,0]);
        end;
        if bCorColunasOito and (ACol = 7) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[7,1]);
        end;
     end
     else
     begin
      if (ACol = 7) and (ARow = 0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[7,0]);
        end;
        if (ACol = 7) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[7,1]);
        end;
     end;

     if cbNove.Checked then
     begin
        if bCorColunasNove and (ACol = 8) and (ARow =0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[8,0]);
        end;
        if bCorColunasNove and (ACol = 8) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[8,1]);
        end;
     end
     else
     begin
      if (ACol = 8) and (ARow = 0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[8,0]);
        end;
        if (ACol = 8) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[8,1]);
        end;
     end;

     if cbDez.Checked then
     begin
        if bCorColunasDez and (ACol = 9) and (ARow =0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[9,0]);
        end;
        if bCorColunasDez and (ACol = 9) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[9,1]);
        end;
     end
     else
     begin
      if (ACol = 9) and (ARow = 0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[9,0]);
        end;
        if (ACol = 9) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[9,1]);
        end;
     end;

     if cbOnze.Checked then
     begin
        if bCorColunasOnze and (ACol = 10) and (ARow =0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[10,0]);
        end;
        if bCorColunasOnze and (ACol = 10) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[10,1]);
        end;
     end
     else
     begin
      if (ACol = 10) and (ARow = 0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[10,0]);
        end;
        if (ACol = 10) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[10,1]);
        end;
     end;

     if cbDoze.Checked then
     begin
        if bCorColunasDoze and (ACol = 11) and (ARow =0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[11,0]);
        end;
        if bCorColunasDoze and (ACol = 11) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clMenuHighlight;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[11,1]);
        end;
     end
     else
     begin
      if (ACol = 11) and (ARow = 0) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[11,0]);
        end;
        if (ACol = 11) and (ARow =1) then
        begin
             sgbVendaMedia.Canvas.Brush.Color := clWhite;
             sgbVendaMedia.Canvas.Font.Color := clBlack;
             sgbVendaMedia.Canvas.FillRect(Rect);
             sgbVendaMedia.Canvas.TextOut(Rect.Left+2, Rect.Top+2, sgbVendaMedia.Cells[11,1]);
        end;
     end;
end;

procedure TfrmAprovaPadrao.cbUmClick(Sender: TObject);
var
  i,j: integer;
begin
  bCorColunasUm := not bCorColunasUm;
 
  for i:=0 to sgbVendaMedia.ColCount - 1 do
    for j:=0 to sgbVendaMedia.RowCount - 1 do
      sgbVendaMedia.Cells[i,j] := sgbVendaMedia.Cells[i,j];
      
  CalculaMediaVenda;
end;

procedure TfrmAprovaPadrao.cbDoisClick(Sender: TObject);
var
  i,j: integer;
begin
  bCorColunasDois := not bCorColunasDois;

  for i:=0 to sgbVendaMedia.ColCount - 1 do
    for j:=0 to sgbVendaMedia.RowCount - 1 do
      sgbVendaMedia.Cells[i,j] := sgbVendaMedia.Cells[i,j];

      CalculaMediaVenda;
end;

procedure TfrmAprovaPadrao.cbTresClick(Sender: TObject);
var
  i,j: integer;
begin
  bCorColunasTres := not bCorColunasTres;
 
  for i:=0 to sgbVendaMedia.ColCount - 1 do
    for j:=0 to sgbVendaMedia.RowCount - 1 do
      sgbVendaMedia.Cells[i,j] := sgbVendaMedia.Cells[i,j];

      CalculaMediaVenda;

end;

procedure TfrmAprovaPadrao.cbQuatroClick(Sender: TObject);
var
  i,j: integer;
begin
  bCorColunasQuatro := not bCorColunasQuatro;
 
  for i:=0 to sgbVendaMedia.ColCount - 1 do
    for j:=0 to sgbVendaMedia.RowCount - 1 do
      sgbVendaMedia.Cells[i,j] := sgbVendaMedia.Cells[i,j];

      CalculaMediaVenda;
end;

procedure TfrmAprovaPadrao.cbCincoClick(Sender: TObject);
var
  i,j: integer;
begin
  bCorColunasCinco := not bCorColunasCinco;
 
  for i:=0 to sgbVendaMedia.ColCount - 1 do
    for j:=0 to sgbVendaMedia.RowCount - 1 do
      sgbVendaMedia.Cells[i,j] := sgbVendaMedia.Cells[i,j];

      CalculaMediaVenda;

end;

procedure TfrmAprovaPadrao.cbSeisClick(Sender: TObject);
var
  i,j: integer;
begin
  bCorColunasSeis := not bCorColunasSeis;
 
  for i:=0 to sgbVendaMedia.ColCount - 1 do
    for j:=0 to sgbVendaMedia.RowCount - 1 do
      sgbVendaMedia.Cells[i,j] := sgbVendaMedia.Cells[i,j];

     CalculaMediaVenda;

end;

procedure TfrmAprovaPadrao.cbSeteClick(Sender: TObject);
var
  i,j: integer;
begin
  bCorColunasSete := not bCorColunasSete;
 
  for i:=0 to sgbVendaMedia.ColCount - 1 do
    for j:=0 to sgbVendaMedia.RowCount - 1 do
      sgbVendaMedia.Cells[i,j] := sgbVendaMedia.Cells[i,j];

      CalculaMediaVenda;

end;

procedure TfrmAprovaPadrao.cbOitoClick(Sender: TObject);
var
  i,j: integer;
begin
  bCorColunasOito := not bCorColunasOito;

  for i:=0 to sgbVendaMedia.ColCount - 1 do
    for j:=0 to sgbVendaMedia.RowCount - 1 do
      sgbVendaMedia.Cells[i,j] := sgbVendaMedia.Cells[i,j];

      CalculaMediaVenda;

end;

procedure TfrmAprovaPadrao.cbNoveClick(Sender: TObject);
var
  i,j: integer;
begin
  bCorColunasNove := not bCorColunasNove;

  for i:=0 to sgbVendaMedia.ColCount - 1 do
    for j:=0 to sgbVendaMedia.RowCount - 1 do
      sgbVendaMedia.Cells[i,j] := sgbVendaMedia.Cells[i,j];

      CalculaMediaVenda;
end;

procedure TfrmAprovaPadrao.cbDezClick(Sender: TObject);
var
  i,j: integer;
begin
  bCorColunasDez := not bCorColunasDez;

  for i:=0 to sgbVendaMedia.ColCount - 1 do
    for j:=0 to sgbVendaMedia.RowCount - 1 do
      sgbVendaMedia.Cells[i,j] := sgbVendaMedia.Cells[i,j];

      CalculaMediaVenda;

end;

procedure TfrmAprovaPadrao.cbOnzeClick(Sender: TObject);
var
  i,j: integer;
begin
  bCorColunasOnze := not bCorColunasOnze;

  for i:=0 to sgbVendaMedia.ColCount - 1 do
    for j:=0 to sgbVendaMedia.RowCount - 1 do
      sgbVendaMedia.Cells[i,j] := sgbVendaMedia.Cells[i,j];

      CalculaMediaVenda;

end;

procedure TfrmAprovaPadrao.cbDozeClick(Sender: TObject);
var
  i,j: integer;
begin
  bCorColunasDoze := not bCorColunasDoze;
 
  for i:=0 to sgbVendaMedia.ColCount - 1 do
    for j:=0 to sgbVendaMedia.RowCount - 1 do
      sgbVendaMedia.Cells[i,j] := sgbVendaMedia.Cells[i,j];

      CalculaMediaVenda;

end;

procedure TfrmAprovaPadrao.grdAprovacaoCellClick(Column: TColumn);
begin
  if dtmSistema.qryGridSolicitacao.RecordCount > 0 then
  begin
    pnlAtualizando.Visible := True;
    pnlAtualizando.Refresh;
    edtVendaMedia.Text := '';
    MarcaCheckComoLoja;
    BuscaQtdVdaMeses;
    CalculaMediaVenda;
    pnlAtualizando.Visible := False;
  end;
end;

procedure TfrmAprovaPadrao.CalculaMediaVenda;
var
  iQtdMeses,iQtdVenda: Integer;
  rmedia: Real;
begin
  iQtdMeses := 0;
  iQtdVenda := 0;
     if cbUm.Checked then
     begin
        iQtdMeses:= iQtdMeses+1;
        iQtdVenda:= iQtdVenda + StrToIntDef(sgbVendaMedia.Cells[0,1],0); 
     end;

     if cbDois.Checked then
     begin
        iQtdMeses:= iQtdMeses+1;
        iQtdVenda:= iQtdVenda + StrToIntDef(sgbVendaMedia.Cells[1,1],0);
     end;

     if cbTres.Checked then
     begin
        iQtdMeses:= iQtdMeses+1;
        iQtdVenda:= iQtdVenda + StrToIntDef(sgbVendaMedia.Cells[2,1],0);
     end;

     if cbQuatro.Checked then
     begin
       iQtdMeses:= iQtdMeses+1;
       iQtdVenda:= iQtdVenda + StrToIntDef(sgbVendaMedia.Cells[3,1],0);
     end;

     if cbCinco.Checked then
     begin
        iQtdMeses:= iQtdMeses+1;
        iQtdVenda:= iQtdVenda + StrToIntDef(sgbVendaMedia.Cells[4,1],0);
     end;

     if cbSeis.Checked then
     begin
        iQtdMeses:= iQtdMeses+1;
        iQtdVenda:= iQtdVenda + StrToIntDef(sgbVendaMedia.Cells[5,1],0);
     end;

     if cbSete.Checked then
     begin
        iQtdMeses:= iQtdMeses+1;
        iQtdVenda:= iQtdVenda + StrToIntDef(sgbVendaMedia.Cells[6,1],0);
     end;

     if cbOito.Checked then
     begin
        iQtdMeses:= iQtdMeses+1;
        iQtdVenda:= iQtdVenda + StrToIntDef(sgbVendaMedia.Cells[7,1],0);
     end;

     if cbNove.Checked then
     begin
       iQtdMeses:= iQtdMeses+1;
       iQtdVenda:= iQtdVenda + StrToIntDef(sgbVendaMedia.Cells[8,1],0);
     end;

     if cbDez.Checked then
     begin
        iQtdMeses:= iQtdMeses+1;
        iQtdVenda:= iQtdVenda + StrToIntDef(sgbVendaMedia.Cells[9,1],0);
     end;

     if cbOnze.Checked then
     begin
       iQtdMeses:= iQtdMeses+1;
       iQtdVenda:= iQtdVenda + StrToIntDef(sgbVendaMedia.Cells[10,1],0);
     end;

     if cbDoze.Checked then
     begin
        iQtdMeses:= iQtdMeses+1;
        iQtdVenda:= iQtdVenda + StrToIntDef(sgbVendaMedia.Cells[11,1],0);
     end;
    if iQtdMeses > 0 then
    begin
     rmedia := iQtdVenda / iQtdMeses;
     edtVendaMedia.Text := FormatFloat('0.00',rmedia);
    end
    else
     edtVendaMedia.Text:= '';
end;

procedure TfrmAprovaPadrao.BuscaQtdVdaMeses;
  var
  scodigo,sLoja,sQuantidade,sAno,sMes: string;
  i:Integer;
  dData:TDate;
begin
  scodigo:= grdAprovacao.Columns[1].Field.AsString;
  sLoja := grdAprovacao.Columns[0].Field.AsString;
 { dtmSistema.qryConsVendaMedia.Active := False;
  dtmSistema.qryConsVendaMedia.SQL.Clear;
  dtmSistema.qryConsVendaMedia.SQL.Add('select dta_mvto,qtd_venda  from es_0124_ce_estmedio '+
                                       // ' WHERE COD_ITEM = '+sCodigo+' and dta_mvto between add_months('''+edtEstoqueLoja.Text+''',-11) and '''+edtEstoqueLoja.Text+'''' +
                                       ' WHERE COD_ITEM = '+sCodigo+' and dta_mvto between add_months('''+sDataMaxMvto+''',-11) and '''+sDataMaxMvto+'''' +
                                       ' AND COD_UNIDADE = '+sLoja+
                                       ' order by dta_mvto ');
  dtmSistema.qryConsVendaMedia.Active := True;
  i:= 0;
  dtmSistema.qryConsVendaMedia.First;
  while not dtmSistema.qryConsVendaMedia.Eof do
  begin
    sgbVendaMedia.Cells[i,0] := Mes(dtmSistema.qryConsVendaMedia.FieldByName('dta_mvto').AsDateTime)+'/'+copy(dtmSistema.qryConsVendaMedia.FieldByName('dta_mvto').AsString,7,4);
    sgbVendaMedia.Cells[i,1] := dtmSistema.qryConsVendaMedia.FieldByName('qtd_venda').AsString;

    i:=i+1;
    dtmSistema.qryConsVendaMedia.Next;
  end;        }

  dData := IncMonth(StrToDate(edtEstoqueLoja.Text),-1);

  for i:=11 downto 0 do
  begin
      sAno := copy(DateToStr(dData),7,4);
      sMes := copy(DateToStr(dData),4,2);
     dtmSistema.qryConsVendaMedia.Active := False;
     dtmSistema.qryConsVendaMedia.SQL.Clear;
     dtmSistema.qryConsVendaMedia.SQL.Add( ' select qtd_venda as qtd_venda'+
                               ' from es_0124_ce_estmedio '+
                               ' where cod_item ='+scodigo+
                               ' and dta_mvto= '''+'01/'+sMes+'/'+sAno+''''+
                               ' and cod_unidade ='+sLoja);
     dtmSistema.qryConsVendaMedia.Active := True;
     if dtmSistema.qryConsVendaMedia.RecordCount > 0 then
     begin
        sQuantidade := dtmSistema.qryConsVendaMedia.FieldByName('qtd_venda').AsString;
     end
     else
        sQuantidade := '0';

         sgbVendaMedia.Cells[i,0]:= Mes( StrToDate( '01/'+sMes+'/2000'))+' '+sAno;
         sgbVendaMedia.Cells[i,1]:= sQuantidade;
        dData := IncMonth(dData,-1);
  end;
end;

procedure TfrmAprovaPadrao.btnCancelClick(Sender: TObject);
begin
    edtQtdAprov.Clear;
    pnlAprovParceial.Visible := False;
end;

procedure TfrmAprovaPadrao.btnOkClick(Sender: TObject);
   var
  sLoja,sItem,sDataSolicitacao,sRedeLoja : string;
begin
  if  AllTrim(edtQtdAprov.Text) <> '' then
  begin
    if dtmSistema.qryGridSolicitacao.RecordCount > 0 then
    begin
       sLoja := grdAprovacao.Columns[0].Field.AsString;
       sItem := grdAprovacao.Columns[1].Field.AsString;
       sDataSolicitacao := grdAprovacao.Columns[4].Field.AsString;
       sRedeLoja := grdAprovacao.Columns[11].Field.AsString;

       dtmSistema.qryManutencao.Active := False;
       dtmSistema.qryManutencao.SQL.Clear;
       dtmSistema.qryManutencao.SQL.Add('update GRZ_LOJAS_SOLICITACAO_PADRAO set ind_status = 2, qtd_aprovada = '+edtQtdAprov.Text+
                                          ',DTA_APROVACAO = sysdate '+ 
                                      ' where cod_unidade ='+sLoja+' and cod_item ='+sItem+' and dta_solicitacao ='''+sDataSolicitacao+'''');

       try
          dtmSistema.qryManutencao.ExecSQL;
          Informacao('Aprovado parcialmente com sucesso!','Aviso');
          AlteraTabelaNl(sItem,edtQtdAprov.Text,sLoja,sRedeLoja);
       except
          Informacao('Erro ao aprovar!','Aviso');
       end;
       dtmSistema.qryGridSolicitacao.Close;
       dtmSistema.qryGridSolicitacao.Open;

       pnlAprovParceial.Visible:= False;
       limparGrid(sgbVendaMedia);
    end;   
  end;

end;

procedure TfrmAprovaPadrao.btnAprovarClick(Sender: TObject);
var
  sLoja,sItem,sDataSolicitacao : string;
  i: Integer;
begin
  if dtmSistema.qryGridSolicitacao.RecordCount > 0 then
  begin
    // percorre todas as linhas q esta selecionado no grid

   try
    with grdAprovacao do
    begin
     for i  := 0 to grdAprovacao.SelectedRows.Count-1 do
     begin
       // marca a query para a linha selecionada
        grdAprovacao.DataSource.DataSet.GotoBookmark(pointer(SelectedRows.Items[i]));

        sLoja := grdAprovacao.Columns[0].Field.AsString;
        sItem := grdAprovacao.Columns[1].Field.AsString;
        sDataSolicitacao := grdAprovacao.Columns[4].Field.AsString;

        if ((StrToInt(grdAprovacao.Columns[9].Field.AsString) * 10) <= StrToInt(grdAprovacao.Columns[10].Field.AsString)) then
        begin
         if not Pergunta('Deseja realmente aprovar esta quantidade?'+#13+
                   'Loja: '+sLoja+#13+
                   'Item: '+sItem+#13+
                   'Padr�o atual: '+grdAprovacao.Columns[9].Field.AsString+#13+
                   'Novo padr�o: '+grdAprovacao.Columns[10].Field.AsString,'Pergunta.') then
         begin
             Exit;
         end;
        end;

        dtmSistema.qryManutencao.Active := False;
        dtmSistema.qryManutencao.SQL.Clear;
        dtmSistema.qryManutencao.SQL.Add('update GRZ_LOJAS_SOLICITACAO_PADRAO set ind_status = 1 ,qtd_aprovada = '+grdAprovacao.Columns[10].Field.AsString+
                                       ',DTA_APROVACAO = sysdate '+
                                      ' where cod_unidade ='+sLoja+' and cod_item ='+sItem+' and dta_solicitacao ='''+sDataSolicitacao+'''');

        try
           dtmSistema.qryManutencao.ExecSQL;
           AlteraTabelaNl(sItem,grdAprovacao.Columns[10].Field.AsString,sLoja,grdAprovacao.Columns[11].Field.AsString);
        except
          Informacao('Erro ao alterar na tabela ce_pars_calculo!','Aviso');
        end;


     end;
    end;
     Informacao('Aprovado com sucesso!','Aviso');
   except
     Informacao('Erro ao aprovar!','Aviso');
   end;

    dtmSistema.qryGridSolicitacao.Close;
    dtmSistema.qryGridSolicitacao.Open;

   limparGrid(sgbVendaMedia);
  end;  
end;

procedure TfrmAprovaPadrao.btnRecusarClick(Sender: TObject);
var
  sLoja,sItem,sDataSolicitacao : string;
  i:Integer;
begin
 if dtmSistema.qryGridSolicitacao.RecordCount > 0 then
 begin
   try
     with grdAprovacao do
     begin
        for i  := 0 to grdAprovacao.SelectedRows.Count-1 do
        begin
            // marca a query para a linha selecionada
            grdAprovacao.DataSource.DataSet.GotoBookmark(pointer(SelectedRows.Items[i]));

            sLoja := grdAprovacao.Columns[0].Field.AsString;
            sItem := grdAprovacao.Columns[1].Field.AsString;
            sDataSolicitacao := grdAprovacao.Columns[4].Field.AsString;

            dtmSistema.qryManutencao.Active := False;
            dtmSistema.qryManutencao.SQL.Clear;
            dtmSistema.qryManutencao.SQL.Add('update GRZ_LOJAS_SOLICITACAO_PADRAO set ind_status = 3,qtd_aprovada = 0 '+
                                             ',DTA_APROVACAO = sysdate '+ 
                                      ' where cod_unidade ='+sLoja+' and cod_item ='+sItem+' and dta_solicitacao ='''+sDataSolicitacao+'''');

            dtmSistema.qryManutencao.ExecSQL;

        end;
     end;
     Informacao('Negado com sucesso!','Aviso');
   except
      Informacao('Erro ao Recusar!','Aviso');
   end;      

    dtmSistema.qryGridSolicitacao.Close;
    dtmSistema.qryGridSolicitacao.Open;
    limparGrid(sgbVendaMedia);
 end;   
end;

procedure TfrmAprovaPadrao.btnParcialClick(Sender: TObject);
begin
    pnlAprovParceial.Visible := True;
    edtQtdAprov.SetFocus;
end;

procedure TfrmAprovaPadrao.limparGrid(StringGrid: TStringGrid);
var 
  linha: integer; 
begin
  for linha:= 1 to StringGrid.RowCount -1 do
  begin 

    StringGrid.Rows[linha].Clear;
  end; 
  StringGrid.RowCount := 2; 
end;

procedure TfrmAprovaPadrao.btnAprovarTodosClick(Sender: TObject);
var
  sLoja,sItem,sDataSolicitacao,sQtd,sRedeLoja : string;
  bGravar: Boolean;
begin

  if dtmSistema.qryGridSolicitacao.RecordCount > 0 then
  begin
    if Pergunta('Deseja aprovar os '+IntToStr(dtmSistema.qryGridSolicitacao.RecordCount)+' itens?','Pergunta') then
    begin
      dtmSistema.qryGridSolicitacao.First;
      while not (dtmSistema.qryGridSolicitacao.Eof) do
      begin

          bGravar := True;
          sLoja := dtmSistema.qryGridSolicitacao.FieldByName('cod_unidade').AsString;
          sItem := dtmSistema.qryGridSolicitacao.FieldByName('cod_item').AsString;
          sDataSolicitacao := dtmSistema.qryGridSolicitacao.FieldByName('dta_solicitacao').AsString;
          sQtd  := dtmSistema.qryGridSolicitacao.FieldByName('qtd_solicitacao').AsString;
          sRedeLoja := dtmSistema.qryGridSolicitacao.FieldByName('cod_emp').AsString;

        if ((dtmSistema.qryGridSolicitacao.FieldByName('est_padrao').AsInteger * 10) <= StrToInt(sQtd)) then
        begin
         if not Pergunta('Deseja realmente aprovar esta quantidade?'+#13+
                   'Loja: '+sLoja+#13+
                   'Item: '+sItem+#13+
                   'Padr�o atual: '+dtmSistema.qryGridSolicitacao.FieldByName('est_padrao').AsString+#13+
                   'Novo padr�o: '+sQtd,'Pergunta.') then
         begin
             bGravar := False;
         end;
        end;

        if bGravar then
        begin

         dtmSistema.qryManutencao.Active := False;
         dtmSistema.qryManutencao.SQL.Clear;
         dtmSistema.qryManutencao.SQL.Add('update GRZ_LOJAS_SOLICITACAO_PADRAO set ind_status = 1 ,qtd_aprovada = '+sQtd+
                                                  ',DTA_APROVACAO = sysdate '+ 
                                      ' where cod_unidade ='+sLoja+' and cod_item ='+sItem+' and dta_solicitacao ='''+sDataSolicitacao+'''');

         dtmSistema.qryManutencao.ExecSQL;
         AlteraTabelaNl(sItem,sQtd,sLoja,sRedeLoja);
        end;

        dtmSistema.qryGridSolicitacao.Next;
      end;
      Informacao('Aprovado com sucesso!','Aviso');
      dtmSistema.qryGridSolicitacao.Close;
      dtmSistema.qryGridSolicitacao.Open;
      limparGrid(sgbVendaMedia);
    end;
  end;
end;

procedure TfrmAprovaPadrao.btnRecusarTodosClick(Sender: TObject);
var
  sLoja,sItem,sDataSolicitacao,sQtd : string;
begin
  if dtmSistema.qryGridSolicitacao.RecordCount > 0 then
  begin
    if Pergunta('Deseja recusar os '+IntToStr(dtmSistema.qryGridSolicitacao.RecordCount)+' itens?','Pergunta') then
    begin
      dtmSistema.qryGridSolicitacao.First;
      while not (dtmSistema.qryGridSolicitacao.Eof) do
      begin
          sLoja := dtmSistema.qryGridSolicitacao.FieldByName('cod_unidade').AsString;
          sItem := dtmSistema.qryGridSolicitacao.FieldByName('cod_item').AsString;
          sDataSolicitacao := dtmSistema.qryGridSolicitacao.FieldByName('dta_solicitacao').AsString;
          sQtd  := dtmSistema.qryGridSolicitacao.FieldByName('qtd_solicitacao').AsString;

         dtmSistema.qryManutencao.Active := False;
         dtmSistema.qryManutencao.SQL.Clear;
         dtmSistema.qryManutencao.SQL.Add('update GRZ_LOJAS_SOLICITACAO_PADRAO set ind_status = 3,qtd_aprovada = 0 '+
                                                  ',DTA_APROVACAO = sysdate '+ 
                                      ' where cod_unidade ='+sLoja+' and cod_item ='+sItem+' and dta_solicitacao ='''+sDataSolicitacao+'''');

        dtmSistema.qryManutencao.ExecSQL;
        dtmSistema.qryGridSolicitacao.Next;
      end;
      Informacao('Recusado com sucesso!','Aviso');
      dtmSistema.qryGridSolicitacao.Close;
      dtmSistema.qryGridSolicitacao.Open;
      limparGrid(sgbVendaMedia);
    end;
  end;
end;

PROCEDURE TfrmAprovaPadrao.MarcaCheckComoLoja;
var
  Lista: TStringList;
  iMes_lista,i:Integer;
begin

Lista:=TStringList.Create;
Lista.Delimiter:='#';
Lista.DelimitedText :=  dtmSistema.qryGridSolicitacao.FieldByName('lista_meses').AsString ;


  cbUm.Checked := False;
  cbDois.Checked := False;
  cbTres.Checked := False;
  cbQuatro.Checked := False;
  cbCinco.Checked := False;
  cbSeis.Checked := False;
  cbSete.Checked := False;
  cbOito.Checked := False;
  cbNove.Checked := False;
  cbDez.Checked := False;
  cbOnze.Checked := False;
  cbDoze.Checked := False;

  for i := 1 to Lista.Count-1 do
  begin
    iMes_lista:= StrToInt(Lista[i-1]);
    if (iMes_lista >= 1) and ( iMes_lista <= 12) then
    begin
      CASE iMes_lista of
        1: cbUm.Checked := True;
        2: cbDois.Checked := True;
        3: cbTres.Checked := True;
        4: cbQuatro.Checked := True;
        5: cbCinco.Checked := True;
        6: cbSeis.Checked := True;
        7: cbSete.Checked := True;
        8: cbOito.Checked := True;
        9: cbNove.Checked := True;
        10: cbDez.Checked := True;
        11: cbOnze.Checked := True;
        12: cbDoze.Checked := True;

      end;
    end;  
  end;

   edtEstoqueLoja.Text  := dtmSistema.qryGridSolicitacao.FieldByName('dta_estoque').AsString;
   edtVdaMediaLoja.Text :=FormatFloat('0.00',dtmSistema.qryGridSolicitacao.FieldByName('C_VENDA_MEDIA').AsFloat);
end;

procedure TfrmAprovaPadrao.AlteraTabelaNl(item,Qtd,Loja,RedeLoja: string);
var
  sRedeItem: string;
begin
    //se a loja que estiver aprovando for hibrida, busca a rede do item para dar update na unidade aberta do cd
    //n�o � tratado exception pois aqui nao pode dar erro e precisamos saber se acontecer algum
    if RedeLoja = '70' then
    begin
      dtmSistema.qryManutencao2.Active := False;
      dtmSistema.qryManutencao2.SQL.Clear;
      dtmSistema.qryManutencao2.SQL.Add( ' select distinct(cod_niv1)rede_item '+
                                         ' from ie_mascaras '+
                                         ' where cod_mascara in (150,170) '+
                                         '   and cod_item = '+item);
      dtmSistema.qryManutencao2.Active := true;
      sRedeItem  := dtmSistema.qryManutencao2.FieldByName('rede_item').AsString;

      dtmSistema.qryManutencao2.Active := False;
      dtmSistema.qryManutencao2.SQL.Clear;
      dtmSistema.qryManutencao2.SQL.Add( ' select cod_unidade_para from grz_lojas_unificadas_cia '+
                                         ' where cod_emp_de = '+RedeLoja+
                                         ' and cod_unidade_de = '+Loja+
                                         ' and cod_emp_para = '+sRedeItem);
      dtmSistema.qryManutencao2.Active := true;

       Loja := dtmSistema.qryManutencao2.FieldByName('cod_unidade_para').AsString;
    end;

    dtmSistema.qryManutencao2.Active := False;
    dtmSistema.qryManutencao2.SQL.Clear;
    dtmSistema.qryManutencao2.SQL.Add('update ce_pars_calculo set qtd_est_min_i ='+ Qtd+
                                      ' where cod_emp= 1 and cod_unidade ='+Loja+' and cod_item ='+item);
   try
    dtmSistema.qryManutencao2.ExecSQL;
   except
     Informacao('Erro ao atualizar tabela do Nl','aviso');
     Abort;
     Exit;
   end;
    dtmSistema.qryManutencao2.Active:= False;
end;



procedure TfrmAprovaPadrao.grdAprovacaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case key of
      VK_UP :begin pnlAtualizando.Visible := True;
                   pnlAtualizando.Refresh;
                   edtVendaMedia.Text := '';
                   MarcaCheckComoLoja;
                   BuscaQtdVdaMeses;
                   CalculaMediaVenda;
                   pnlAtualizando.Visible := False;
             end;
      VK_DOWN :begin pnlAtualizando.Visible := True;
                   pnlAtualizando.Refresh;
                   edtVendaMedia.Text := '';
                   MarcaCheckComoLoja;
                   BuscaQtdVdaMeses;
                   CalculaMediaVenda;
                   pnlAtualizando.Visible := False;
               end;
    end;
end;

procedure TfrmAprovaPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dtmSistema.qryGridSolicitacao.Close;
end;

procedure TfrmAprovaPadrao.btnRelatorioClick(Sender: TObject);
begin
    KeyPreview := False;
    pnlRelatorio.Visible := True;
    btnPesquisaRelatorio.SetFocus;
end;

procedure TfrmAprovaPadrao.btnFecharClick(Sender: TObject);
begin
    dtmSistema.qryGridSolicitacao.Active := False;
    Close; 
end;

procedure TfrmAprovaPadrao.btnFecharRelClick(Sender: TObject);
begin
    pnlRelatorio.Visible := False;
    dtmSistema.qryGridRelatorio.Active:= False;
    KeyPreview := True;
end;

procedure TfrmAprovaPadrao.btnFecharPesqClick(Sender: TObject);
begin
    btnLimpar_pesqClick(Sender);
    pnlPesqRelatorio.Visible := False;
end;

procedure TfrmAprovaPadrao.btnLimpar_pesqClick(Sender: TObject);
begin
     edtLojaIni.Clear;
     edtLojaFim.Clear;
     if(Trim(dtmSistema.sGrupo_UsuarioNL) <> '830') then
     begin
     edtGrupIni.Clear;
     edtGrupFim.Clear;
     end;
     edtSubGIni.Clear;
     edtSubGFim.Clear;
     edtDtaIn.Clear;
     edtDtaFi.Clear;
end;

procedure TfrmAprovaPadrao.btnPesquisaRelatorioClick(Sender: TObject);
begin
    pnlPesqRelatorio.Visible := True;
    edtLojaIni.SetFocus;
    if dtmSistema.sGrupo_UsuarioNL = '830' then
    begin
        edtGrupIni.ReadOnly := True;
        edtGrupFim.ReadOnly := True;
        edtGrupIni.Text := copy(edtSetor.Text,3,2);
        edtGrupFim.Text := copy(edtSetor.Text,3,2);
    end
    else
    begin
      edtGrupIni.ReadOnly := False;
      edtGrupFim.ReadOnly := False;
    end;
end;

procedure TfrmAprovaPadrao.btnPesquisarClick(Sender: TObject);
var
  sSelect:String;
begin
     edtLojaIniExit(Sender);
     edtLojaFimExit(Sender);
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
                                         ' from grz_lojas_solicitacao_padrao a,ce_pars_calculo b ,ie_itens i where '+
                                         ' b.cod_unidade = a.cod_unidade and '+
                                         ' b.cod_item = a.cod_item and '+
                                         ' i.cod_item= a.cod_item and '+
                                      //   ' a.cod_emp = '+dtmSistema.sRede+' and '+
                                         ' a.cod_unidade between '+edtLojaIni.Text+' and '+edtLojaFim.Text+' and '+
                                         ' a.cod_estruturado between '+copy(edtSetor.Text,1,2)+edtGrupIni.Text+edtSubGIni.Text+'0000 and '+
                                                                      ''+copy(edtSetor.Text,1,2)+edtGrupFim.Text+edtSubGFim.Text+'9999 and '+
                                         ' a.dta_solicitacao between '''+edtDtaIn.Text+''' and '''+edtDtaFi.Text+'''and '+
                                         ' b.cod_emp = 1'+
                                         ' order by a.cod_unidade,a.dta_solicitacao,a.cod_estruturado';
    dtmSistema.qryGridRelatorio.SQL.Add(sSelect);                                         
    dtmSistema.qryGridRelatorio.Active := True;

    if dtmSistema.qryGridRelatorio.RecordCount = 0 then
    begin
         Informacao('N�o foi encontrado dados.','Aviso.');
         Abort;
    end
    else
    begin
         btnLimpar_pesqClick(Sender);
         pnlPesqRelatorio.Visible := False;
         DBGrid1.SetFocus;
    end;
end;

procedure TfrmAprovaPadrao.edtLojaIniExit(Sender: TObject);
begin
    if edtLojaIni.Text = '' then
       edtLojaIni.Text := '0000';
end;

procedure TfrmAprovaPadrao.edtLojaFimExit(Sender: TObject);
begin
    if edtLojaFim.Text = '' then
       edtLojaFim.Text := '9999';
end;

procedure TfrmAprovaPadrao.edtGrupIniExit(Sender: TObject);
begin
   if edtGrupIni.Text = '' then
       edtGrupIni.Text := '00';
end;

procedure TfrmAprovaPadrao.edtGrupFimExit(Sender: TObject);
begin
     if edtGrupFim.Text = '' then
        edtGrupFim.Text := '99';
end;

procedure TfrmAprovaPadrao.edtSubGFimExit(Sender: TObject);
begin
    if edtSubGFim.Text = '' then
       edtSubGFim.Text := '99';
end;

procedure TfrmAprovaPadrao.edtDtaInExit(Sender: TObject);
begin
     if AllTrim(edtDtaIn.Text) = '//' then
    begin
       Informacao('Preencha a data Inicial','Aviso');
       edtDtaIn.SetFocus;
       Abort;
       Exit;
    end;
end;

procedure TfrmAprovaPadrao.edtDtaFiExit(Sender: TObject);
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
       Informacao('Data inicial n�o pode ser maior que a data Final','Aviso');
       edtDtaFi.SetFocus;
       Abort;
       Exit;
    end;
end;

procedure TfrmAprovaPadrao.edtSubGIniExit(Sender: TObject);
begin
    if edtSubGIni.Text = '' then
       edtSubGIni.Text := '00';
end;

procedure TfrmAprovaPadrao.edtLojaIniKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_RETURN : edtLojaFim.SetFocus;
   end;
end;

procedure TfrmAprovaPadrao.edtLojaFimKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    case Key of
      VK_RETURN : edtGrupIni.SetFocus;
    end;
end;

procedure TfrmAprovaPadrao.edtGrupIniKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    case key of
         VK_RETURN : edtGrupFim.SetFocus;
    end;
end;

procedure TfrmAprovaPadrao.edtGrupFimKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_RETURN : edtSubGIni.SetFocus;
   end;
end;

procedure TfrmAprovaPadrao.edtSubGIniKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_RETURN : edtSubGFim.SetFocus;
   end;
end;

procedure TfrmAprovaPadrao.edtSubGFimKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_RETURN : edtDtaIn.SetFocus;
   end;
end;

procedure TfrmAprovaPadrao.edtDtaInKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
      VK_RETURN : edtDtaFi.SetFocus;
    end;
end;

procedure TfrmAprovaPadrao.edtDtaFiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case Key of
      VK_RETURN : btnPesquisar.SetFocus;
   end;
end;

procedure TfrmAprovaPadrao.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TfrmAprovaPadrao.edtRedeLoginExit(Sender: TObject);
begin
      if AllTrim(edtRedeLogin.Text) = '' then
    begin
        Informacao('Informe a Rede!','Aviso!');
        edtRedeLogin.SetFocus;
        Abort;
        exit;
    end;

    if (AllTrim(edtRedeLogin.Text) <> '10') and
       (AllTrim(edtRedeLogin.Text) <> '30') and
       (AllTrim(edtRedeLogin.Text) <> '40') and
       (AllTrim(edtRedeLogin.Text) <> '50') then
    begin
        Informacao('Rede Inv�lida!      '+#13+#13+
                   'Rede deve ser:      '+#13+
                   '10 - GRAZZIOTIN     '+#13+
                   '30 - PORMENOS       '+#13+
                   '40 - FRANCO         '+#13+
                   '50 - TOTTAL         '+#13,'Aviso!');
        edtRedeLogin.SetFocus;
        Abort;
        exit;
    end;
 


   dtmSistema.sGrupo_UsuarioNL := '8'+edtRedeLogin.Text;
   dtmSistema.sRede := edtRedeLogin.Text;

   pnlInformeRede.Visible := False;

   edtSetor.SetFocus;
end;

procedure TfrmAprovaPadrao.edtRedeLoginKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case key of
   VK_RETURN:  edtSetor.SetFocus;
   end;
end;

procedure TfrmAprovaPadrao.edtRedeLoginKeyPress(Sender: TObject;
  var Key: Char);
begin
       if key = #27 then
  key := #0;

end;

end.
