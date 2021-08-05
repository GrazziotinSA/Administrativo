unit udtmSistema;

interface

uses
  SysUtils, Classes, DBTables, DB, Sockets, Encryp, Forms, Windows,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Phys.Oracle,
  FireDAC.Phys.OracleDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TdtmSistema = class(TDataModule)
    dtsGridSolicitacao: TDataSource;
    dtsGridRelatorio: TDataSource;
    Conexão: TFDConnection;
    qryConsulta: TFDQuery;
    dtsConsulta: TDataSource;
    qryGridSolicitacao: TFDQuery;
    qryGridRelatorio: TFDQuery;
    qryConsVendaMedia: TFDQuery;
    dtsConsVendaMedia: TDataSource;
    qryManutencao: TFDQuery;
    dtsManutencao: TDataSource;
    dtsManutencao2: TDataSource;
    qryManutencao2: TFDQuery;
  
    procedure DataModuleCreate(Sender: TObject);
    procedure CarregaParamsBanco;
  private
    { Private declarations }
  public
    { Public declarations }
    sUsuariot,Usuario_Maquina,sCod_UsuarioNL, sGrupo_UsuarioNL,sNomeColaborador, sRede, sSql: string;
    iTipo_User : Integer; // 1- Comprador 02 para diretor

  end;

var
  dtmSistema: TdtmSistema;
  sUsuario, sBanco, sSenha : String;
   size:Cardinal;

implementation

uses uCarregaSenha, UFunc, uFuncoes, uPrincipal, UEscolhaUsuario;

{$R *.dfm}

procedure TdtmSistema.DataModuleCreate(Sender: TObject);
var
  frmEscolha : TfrmEscolhaUsuario;

begin
    iTipo_User := 0;

   CarregaParamsBanco;
    try
     Conexão.Params.Database := sBanco;
     Conexão.Params.UserName := sUsuario;
     Conexão.Params.Password := sSenha;
     Conexão.Connected := True;
   except
       on E:EDatabaseError do
            begin
                 Informacao('Erro!!!'+#13+'Não pode se conectar ao banco!!!','Aviso!!!');
                 Application.Terminate;
            end;
   end;
    try
      Conexão.Connected := True;
      //Session1.Active := True;
    except
      Informacao('Erro!!!'+#13+'Não pode se conectar ao banco!!!','Aviso!!!');
      Application.Terminate;
    end;

    size:= 128;
    SetLength(sUsuarioT, size);
    GetUserName(PChar(sUsuarioT),size);
    Usuario_Maquina := sUsuarioT;
    sUsuariot := UpperCase(copy( Trim(Usuario_Maquina),1,6));


    QryConsulta.Close;
    QryConsulta.SQL.Clear;
    QryConsulta.SQL.Add(' select distinct usu.cod_usuario as cod, usu.cod_grupo as grupo'+
                        '   from ge_usuarios usu,(Select g.cod_usuario   '+
                        '   FROM v$session s, ge_sessoes g WHERE g.cod_sessao = s.audsid   '+
                        '    and UPPER(s.OSUSER) = UPPER('+sUsuariot+')) a'+
                        '  where usu.cod_usuario = a.cod_usuario ');
    QryConsulta.Open;
    if (QryConsulta.RecordCount >= 0)  then
    begin
        sCod_UsuarioNL   := dtmSistema.QryConsulta.FieldByName ('cod').AsString;
        sGrupo_UsuarioNL := dtmSistema.QryConsulta.FieldByName ('grupo').AsString;
        if Trim(sCod_UsuarioNL) = ''   then sCod_UsuarioNL   :='000';
        if Trim(sGrupo_UsuarioNL) = '' then sGrupo_UsuarioNL :='000';
        sRede := copy(sGrupo_UsuarioNL,2,2);
    end;

     if (QryConsulta.RecordCount > 1)  then
    begin
        frmEscolha := TfrmEscolhaUsuario.Create(Self);
        frmEscolha.qryEscolha.Close;
        frmEscolha.qryEscolha.SQL.Clear;
        frmEscolha.qryEscolha.SQL.Add(' select distinct usu.cod_usuario as cod, usu.cod_grupo as grupo'+
                                      '   from ge_usuarios usu,(Select g.cod_usuario   '+
                                      '   FROM v$session s, ge_sessoes g WHERE g.cod_sessao = s.audsid   '+
                                      '    and UPPER(s.OSUSER) = UPPER('+sUsuariot+')) a'+
                                      '  where usu.cod_usuario = a.cod_usuario ');
        frmEscolha.qryEscolha.Open;
        frmEscolha.ShowModal;
        frmEscolha.free;
        if Trim(sCod_UsuarioNL)   = ''   then sCod_UsuarioNL   :='000';
        if Trim(sGrupo_UsuarioNL) = ''   then sGrupo_UsuarioNL :='000';
        sRede := copy(sGrupo_UsuarioNL,2,2);   
    end;

    if Trim(sCod_UsuarioNL) = ''   then sCod_UsuarioNL   :='000';
    if Trim(sGrupo_UsuarioNL) = '' then sGrupo_UsuarioNL :='000';
    sRede := copy(sGrupo_UsuarioNL,2,2);
      //Essas variaves tao entrando vazia
     {sCod_UsuarioNL    := '225223';//'381928';//'258229'; // '363766'
     sGrupo_UsuarioNL  := '830';
     sRede             := '30';}

    // testa se é comprador ou diretor
    QryConsulta.Close;
    QryConsulta.SQL.Clear;
    QryConsulta.SQL.Add(' select * from grz_finan_diretores '+
                       '  WHERE COD_EMP = '+ Trim(sRede)+
                       '    AND COD_DIRETOR = '+ Trim(sCod_UsuarioNL));
    QryConsulta.Open;
    if (QryConsulta.RecordCount > 0)  then
    begin
         iTipo_User := 02; //diretor   
    end else
    begin
        iTipo_User := 01; //Comprador
    end;

    //testa o usuario logado e joga para o form o nome
    QryConsulta.Close;
    QryConsulta.SQL.Clear;
    QryConsulta.SQL.Add('select p.des_pessoa from ps_pessoas p '+
                                     ' Where p.cod_pessoa = (select a.cod_pessoa from ps_mascaras a '+
                                     ' where a.cod_mascara = 50 '+
                                     ' and a.cod_completo = ''01'+PadLeft(Trim(sCod_UsuarioNL),8,'0')+''')');

    sSql := qryConsulta.SQL.Text;
    QryConsulta.Open;
    if (QryConsulta.RecordCount > 0 ) then
    begin
        sNomeColaborador:= QryConsulta.fieldByName('des_pessoa').AsString;
    end;
    QryConsulta.Close;


end;

procedure TdtmSistema.CarregaParamsBanco;
var TomEncryption1: TTomEncryption;
begin
    TomEncryption1 := TTomEncryption.Create(Self);
    CarregaSenhasBancoOra('GRZPNL_BERLIN',TomEncryption1,sUsuario,sSenha,sBanco);
end;

end.
