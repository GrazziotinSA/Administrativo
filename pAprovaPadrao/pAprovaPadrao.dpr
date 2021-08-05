program pAprovaPadrao;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frmAprovaPadrao},
  udtmSistema in 'udtmSistema.pas' {dtmSistema: TDataModule},
  UFunc in 'UFunc.pas',
  Ufuncoes in 'Ufuncoes.pas',
  UEscolhaUsuario in 'UEscolhaUsuario.pas' {frmEscolhaUsuario},
  uPesquisa in 'uPesquisa.pas' {frmPesquisa},
  uConsultaDiretor in 'uConsultaDiretor.pas' {frmConsultaDiretor},
  uCarregaSenha in 'uCarregaSenha.pas';

{$R *.res}
var iTipo_Form : Integer;
begin
  Application.Initialize;
  Application.CreateForm(TdtmSistema, dtmSistema);
  //Cria o form de escolha de usu�rio
    iTipo_Form := dtmSistema.iTipo_User;
    //01- comprador, 02-diretor!!
    if(iTipo_Form = 01 ) then
    begin
         Application.CreateForm(TfrmAprovaPadrao, frmAprovaPadrao);
    END;
    if(iTipo_Form = 02 ) then
    begin
         Application.CreateForm(TfrmConsultaDiretor, frmConsultaDiretor);
    end;
   //Application.CreateForm(TfrmEscolhaUsuario, frmEscolhaUsuario);
  // Application.CreateForm(TfrmPesquisa, frmPesquisa);
  Application.Run;
end.
