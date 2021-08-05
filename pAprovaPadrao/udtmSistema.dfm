object dtmSistema: TdtmSistema
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 494
  Width = 441
  object dtsGridSolicitacao: TDataSource
    DataSet = qryGridSolicitacao
    Left = 120
    Top = 200
  end
  object dtsGridRelatorio: TDataSource
    DataSet = qryGridRelatorio
    Left = 120
    Top = 256
  end
  object Conexão: TFDConnection
    Params.Strings = (
      'Database=192.168.200.110:1522/GRZPROD'
      'User_Name=nl'
      'Password=nl'
      'DriverID=Ora')
    LoginPrompt = False
    Left = 42
    Top = 14
  end
  object qryConsulta: TFDQuery
    Connection = Conexão
    Left = 24
    Top = 144
  end
  object dtsConsulta: TDataSource
    DataSet = qryConsulta
    Left = 84
    Top = 144
  end
  object qryGridSolicitacao: TFDQuery
    Connection = Conexão
    SQL.Strings = (
      'select E.*,I.DES_ITEM  '
      #9'    From GRZ_LOJAS_SOLICITACAO_PADRAO E ,IE_ITENS I '
      '       WHERE E.COD_ITEM = I.COD_ITEM '
      ''
      ''
      ''
      '       AND E.IND_STATUS = 0 '
      '       order by E.DTA_SOLICITACAO,E.COD_UNIDADE,E.COD_ITEM ')
    Left = 32
    Top = 200
  end
  object qryGridRelatorio: TFDQuery
    Connection = Conexão
    Left = 32
    Top = 256
  end
  object qryConsVendaMedia: TFDQuery
    Connection = Conexão
    Left = 40
    Top = 320
  end
  object dtsConsVendaMedia: TDataSource
    DataSet = qryConsVendaMedia
    Left = 144
    Top = 320
  end
  object qryManutencao: TFDQuery
    Connection = Conexão
    Left = 40
    Top = 368
  end
  object dtsManutencao: TDataSource
    DataSet = qryManutencao
    Left = 144
    Top = 368
  end
  object dtsManutencao2: TDataSource
    DataSet = qryManutencao2
    Left = 144
    Top = 424
  end
  object qryManutencao2: TFDQuery
    Connection = Conexão
    Left = 40
    Top = 424
  end
end
