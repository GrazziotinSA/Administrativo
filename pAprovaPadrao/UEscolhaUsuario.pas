{-------------------------------------------------------------------------------

 Programa..: uEscolhaUsuario                                                                       
 Empresa...: Grazziotin S.A
 Finalidade: QUANDO OCORRER DE TER MAIS DE 1 USU?RIO LOGADO DEVEMOS SELECIONAR QUAL DESEJAMOS!!!

 AUTOR                     DATA              OPERA??O   DESCRI??O
 Igor Scherer           NOVEMBRO/2014         Cria??o    Cria??o

--------------------------------------------------------------------------------}

unit UEscolhaUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB, DBTables, Buttons, jpeg;

type
  TfrmEscolhaUsuario = class(TForm)
    pnlEscolhaUser: TPanel;
    Label34: TLabel;
    grdUsuarios: TDBGrid;
    dtsEscolha: TDataSource;
    qryEscolha: TQuery;
    btnOK: TBitBtn;
    spbHelp1: TSpeedButton;
    pnlInformativo: TPanel;
    Image1: TImage;
    lblTipo: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btnAbortar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure grdUsuariosDblClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure grdUsuariosKeyPress(Sender: TObject; var Key: Char);
    procedure EvitarMovimentacao(var Msg: TWmWindowPosChanging); 
    message WM_WINDOWPOSCHANGING;
    procedure spbHelp1Click(Sender: TObject);
    procedure btnAbortarClick(Sender: TObject);
  private
    
  public
    sCod_Colaborador : String;
  end;

var
  frmEscolhaUsuario: TfrmEscolhaUsuario;

implementation

uses udtmSistema;

{$R *.dfm}

procedure TfrmEscolhaUsuario.FormShow(Sender: TObject);
begin
     grdUsuarios.SetFocus;
end;

procedure TfrmEscolhaUsuario.grdUsuariosDblClick(Sender: TObject);
begin
    if((qryEscolha.Active = True) and (qryEscolha.RecordCount > 0) ) then
    begin
        dtmSistema.sCod_UsuarioNL   := qryEscolha.FieldByName('COD').AsString;
        dtmSistema.sGrupo_UsuarioNL := qryEscolha.fieldByName('GRUPO').AsString;
        dtmSistema.sRede            := copy(qryEscolha.fieldByName('GRUPO').AsString,2,2);
        Close;
    end else
    begin
         Close;
    end;
end;

procedure TfrmEscolhaUsuario.EvitarMovimentacao(var Msg: TWmWindowPosChanging);
var 
  R: TRect; 
begin
  R := Rect(0, 0, Screen.Width, Screen.Height); 
  Msg.WindowPos.x := (R.Right - R.Left - Width) div 2; 
  Msg.WindowPos.y := (R.Bottom - R.Top - Height) div 2;
  Msg.Result := 0;
end;

procedure TfrmEscolhaUsuario.btnOKClick(Sender: TObject);
begin
    if((qryEscolha.Active = True) and (qryEscolha.RecordCount > 0) ) then
    begin
        dtmSistema.sCod_UsuarioNL   := qryEscolha.FieldByName('COD').AsString;
        dtmSistema.sGrupo_UsuarioNL := qryEscolha.fieldByName('GRUPO').AsString;
        dtmSistema.sRede            := copy(qryEscolha.fieldByName('GRUPO').AsString,2,2);
        Close;
    end else
    begin
        Close;
    end;
end;

procedure TfrmEscolhaUsuario.grdUsuariosKeyPress(Sender: TObject;
  var Key: Char);
begin
    if(key =#13) then
    begin
        if((qryEscolha.Active = True) and (qryEscolha.RecordCount > 0) ) then
        begin
            dtmSistema.sCod_UsuarioNL   := qryEscolha.FieldByName('COD').AsString;
            dtmSistema.sGrupo_UsuarioNL := qryEscolha.fieldByName('GRUPO').AsString;
            dtmSistema.sRede            := copy(qryEscolha.fieldByName('GRUPO').AsString,2,2);
            qryEscolha.Close;
            Close;
        end else
        begin
            Close;
        end;
    end;
end;

procedure TfrmEscolhaUsuario.spbHelp1Click(Sender: TObject);
begin
   pnlInformativo.Visible := True;
end;

procedure TfrmEscolhaUsuario.btnAbortarClick(Sender: TObject);
begin
   pnlInformativo.Visible := False;
end;

end.
