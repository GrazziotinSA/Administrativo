object frmConsultaDiretor: TfrmConsultaDiretor
  Left = 324
  Top = 144
  ClientHeight = 529
  ClientWidth = 894
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlRelatorio: TPanel
    Left = -1
    Top = 0
    Width = 895
    Height = 523
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 584
      Top = 3
      Width = 98
      Height = 46
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333388888888888F333301BBBBBBBB033333883F3333338F3333011BBBBBBB
        0333338F83F333338F33330111BBBBBB0333338F383F33338F333301110BBBBB
        0333338F338F33338F333301110BBBBB0333338F338F33338F333301110BBBB9
        0333338F338F33338F333301110BBB990333338F338F33338F333301110BB999
        9993338F338F33338F333301110B99999993338F338FF3338F33330111B0B999
        9993338F338833338F333301110BBB990333338F338F33338F333301110BBBB9
        0333338F3F8F33338F333301E10BBBBB0333338F8F8F33338F333301EE0BBBBB
        0333338F888FFFFF8F3333000000000003333388888888888333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 893
      Height = 53
      Align = alTop
      TabOrder = 1
      object Label9: TLabel
        Left = 13
        Top = 14
        Width = 210
        Height = 25
        Caption = 'Consulta Solicita'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnFecharRel: TBitBtn
        Left = 777
        Top = 3
        Width = 98
        Height = 46
        Caption = '&Fechar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333388888888888F333301BBBBBBBB033333883F3333338F3333011BBBBBBB
          0333338F83F333338F33330111BBBBBB0333338F383F33338F333301110BBBBB
          0333338F338F33338F333301110BBBBB0333338F338F33338F333301110BBBB9
          0333338F338F33338F333301110BBB990333338F338F33338F333301110BB999
          9993338F338F33338F333301110B99999993338F338FF3338F33330111B0B999
          9993338F338833338F333301110BBB990333338F338F33338F333301110BBBB9
          0333338F3F8F33338F333301E10BBBBB0333338F8F8F33338F333301EE0BBBBB
          0333338F888FFFFF8F3333000000000003333388888888888333}
        Layout = blGlyphTop
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnClick = btnFecharRelClick
      end
      object btnPesquisaRelatorio: TBitBtn
        Left = 677
        Top = 3
        Width = 98
        Height = 46
        Caption = 'Pesquisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          76050000424D7605000000000000360000002800000015000000150000000100
          18000000000040050000C30E0000C30E00000000000000000000BFB8BFBFB8BF
          BFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BF00FFFFFFFFFF00FFFFFFFF
          FF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00BFB8BFBFB8BF
          BFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00BFB8BFBFB8BF
          BFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BF00FFFFFFFFFF00FFFFFFFF
          FF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00BFB8BFBFB8BF
          BFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00BFB8BFBFB8BF
          BFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BF00FFFFFFFFFF00FFFFFFFF
          FF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00BFB8BFBFB8BF
          BFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00BFB8BFBFB8BF
          BFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BF00000000FFFFFFFFFF00FFFFFFFF
          FF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00BFB8BFBFB8BF
          BFB8BFBFB8BFBFB8BFBFB8BFBFB8BF000000000070000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00BFB8BFBFB8BF
          BFB8BFBFB8BFBFB8BFBFB8BFBFB8BF00000000007070787000000000FFFFFFFF
          FF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00BFB8BFBFB8BF
          BFB8BFBFB8BFBFB8BFBFB8BFBFB8BF000000000070000070707870000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00BFB8BFBFB8BF
          BFB8BFBFB8BFBFB8BFBFB8BF0000008080800000700000700000700000FF0000
          0000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00BFB8BFBFB8BF
          BFB8BFBFB8BFBFB8BFBFB8BF000000BFB8BFBFB8BF0000700000FF0000FF0000
          FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00BFB8BFBFB8BF
          BFB8BFBFB8BFBFB8BF000000BFB8BFBFB8BFFFFFFFFFFFFF0000FF0000FF0000
          FF0000FF000000BFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BF00BFB8BFBFB8BF
          BFB8BFBFB8BF000000BFB8BFBFB8BFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
          00000000BFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BF00BFB8BFBFB8BF
          BFB8BF000000BFB8BFBFB8BFFFFFFFFFFFFFFFFFFF000000000000BFB8BFBFB8
          BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BF00BFB8BFBFB8BF
          000000BFB8BFBFB8BFFFFFFFFFFFFFFFFFFF000000BFB8BFBFB8BFBFB8BFBFB8
          BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BF00BFB8BF000000
          BFB8BFBFB8BFFFFFFFFFFFFFFFFFFF0000000000FFBFB8BFBFB8BFBFB8BFBFB8
          BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BF00BFB8BF000000
          BFB8BFFFFFFFFFFFFFFFFFFF0000000000FFBFB8BFBFB8BFBFB8BFBFB8BFBFB8
          BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BF00BFB8BFBFB8BF
          000000FFFFFFFFFFFF000000BFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8
          BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BF00BFB8BFBFB8BF
          BFB8BF000000000000BFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8
          BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BF00BFB8BFBFB8BF
          BFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8
          BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BFBFB8BF00}
        Layout = blGlyphTop
        ParentFont = False
        TabOrder = 1
        OnClick = btnPesquisaRelatorioClick
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 54
      Width = 893
      Height = 468
      Align = alClient
      DataSource = dtmSistema.dtsGridRelatorio
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_UNIDADE'
          Title.Caption = 'Unidade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTA_SOLICITACAO'
          Title.Caption = 'Data Solic.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_ESTRUTURADO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DES_ITEM'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 188
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PADRAO_ANTERIOR'
          Title.Caption = 'Padr'#227'o Ant.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD_SOLICITACAO'
          Title.Caption = 'Qtd. Solic.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Caption = 'Status'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD_APROVADA'
          Title.Caption = 'Qtd. Aprov.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTA_APROVACAO'
          Title.Caption = 'Data Aprov.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PADRAO_ATUAL'
          Title.Caption = 'Padr'#227'o Atual'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object pnlPesqRelatorio: TPanel
      Left = 312
      Top = 128
      Width = 273
      Height = 311
      TabOrder = 3
      Visible = False
      object Panel: TPanel
        Left = 17
        Top = 14
        Width = 241
        Height = 283
        TabOrder = 0
        object Label1: TLabel
          Left = 27
          Top = 60
          Width = 52
          Height = 13
          Caption = 'Unidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 34
          Top = 119
          Width = 39
          Height = 13
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 17
          Top = 151
          Width = 61
          Height = 13
          Caption = 'SubGrupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 14
          Top = 183
          Width = 64
          Height = 13
          Caption = 'Dta Solicit:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 16
          Top = 24
          Width = 173
          Height = 13
          Caption = 'Par'#226'metros   Inicial         Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 39
          Top = 89
          Width = 35
          Height = 13
          Caption = 'Setor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtLojaIni: TEdit
          Left = 89
          Top = 57
          Width = 38
          Height = 21
          MaxLength = 4
          TabOrder = 0
          OnExit = edtLojaIniExit
          OnKeyDown = edtLojaIniKeyDown
        end
        object edtLojaFim: TEdit
          Left = 161
          Top = 57
          Width = 39
          Height = 21
          MaxLength = 4
          TabOrder = 1
          OnExit = edtLojaFimExit
          OnKeyDown = edtLojaFimKeyDown
        end
        object edtGrupIni: TEdit
          Left = 89
          Top = 116
          Width = 39
          Height = 21
          MaxLength = 2
          TabOrder = 4
          OnExit = edtGrupIniExit
          OnKeyDown = edtGrupIniKeyDown
        end
        object edtGrupFim: TEdit
          Left = 161
          Top = 116
          Width = 39
          Height = 21
          MaxLength = 2
          TabOrder = 5
          OnExit = edtGrupFimExit
          OnKeyDown = edtGrupFimKeyDown
        end
        object edtSubGIni: TEdit
          Left = 89
          Top = 149
          Width = 39
          Height = 21
          MaxLength = 2
          TabOrder = 6
          OnExit = edtSubGIniExit
          OnKeyDown = edtSubGIniKeyDown
        end
        object edtSubGFim: TEdit
          Left = 161
          Top = 148
          Width = 39
          Height = 21
          MaxLength = 2
          TabOrder = 7
          OnExit = edtSubGFimExit
          OnKeyDown = edtSubGFimKeyDown
        end
        object btnPesquisar: TBitBtn
          Left = 3
          Top = 224
          Width = 74
          Height = 29
          Caption = 'Filtrar'
          Glyph.Data = {
            DE020000424DDE02000000000000B60000002800000016000000170000000100
            08000000000028020000C30E0000C30E0000200000000000000000FF0000FFFF
            FF0080808000C0C0C00000000000FF000000FFFF00000000FF0000FFFF0045CA
            BF004B737F00D0B4B400CC625700FF31310000CEFF000079FF000029FF005E5E
            FF00BDBDFF00502B2D0000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000010101010101
            0101010101010101010101010101010100000103030303030303030303030303
            0303030404040301000001030303030303030303030303030303040701070401
            0000010303030303030303030303030303040701010704010000010303030303
            0303030303030303040701010707040100000103030303030303030303030304
            0701010707040301000001030303030303030303030304070101070704030301
            0000010303030303030303030304070101070704030303010000010303030303
            0303030304070101070704030303030100000103030303030303030404040307
            0704030303030301000001030303030304040404040404070403030303030301
            0000010303030404060106010104040403030303030303010000010303040106
            0106010101010403030303030303030100000103030406010601060106010403
            0303030303030301000001030406010601010106010601040303030303030301
            0000010304010601060106010601010403030303030303010000010304060106
            0106010601060104030303030303030100000103040106010601060106010104
            0303030303030301000001030304010601010106010604030303030303030301
            0000010303040601060106010601040303030303030303010000010303030404
            0101010604040303030303030303030100000103030303030404040403030303
            0303030303030301000001010101010101010101010101010101010101010101
            0000}
          TabOrder = 10
          OnClick = btnPesquisarClick
        end
        object btnLimpar_pesq: TBitBtn
          Left = 82
          Top = 224
          Width = 74
          Height = 29
          Caption = 'Limpar'
          Glyph.Data = {
            7E030000424D7E030000000000003600000028000000120000000F0000000100
            1800000000004803000000000000000000000000000000000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BF3F3700BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFCF6760CF67
            60CF6760CF6760000000BFBFBFBFBFBFBFBFBFBFBFBF000000000000BFBFBFBF
            BFBFBFBFBFBFBFBF0000BFBFBFBFBFBF007F00007F00007F00007F00007F0000
            0000BFBFBFBFBFBFBFBFBF000000A0983F000000BFBFBFBFBFBFBFBFBFBFBFBF
            0000BFBFBFA0983FA0983FA0983FA0983F007F00000000BFBFBFBFBFBFBFBFBF
            3F3700A0983F00FF007F7F003F37003F3700BFBFBFBFBFBF0000BFBFBFA0983F
            00FF00A0983F007F00000000BFBFBFBFBFBFBFBFBF3F3700A0983F00FF00A098
            3FA0983F007F003F3700007F00BFBFBF0000BFBFBFA0983F00FF00A0983F0000
            00BFBFBFBFBFBFBFBFBFA0983FA0983F00FF00A0983F00FF00A0983F007F0000
            7F003F3700BFBFBF0000BFBFBFA0983F90FF2FA0983F007F003F3700BFBFBFBF
            BFBF90FF2FFFFFFFA0983F90FF2FA0983FA0983F007F003F37003F3700BFBFBF
            0000BFBFBFA0983F90FF2FA0983FA0983F007F003F3700BFBFBFBFBFBF90FF2F
            FFFFFFA0983F90FF2FA0983F007F00007F003F3700BFBFBF0000BFBFBFA0983F
            90FF2FFFFFFF90FF2F90FF2F007F003F370000000000000090FF2FFFFFFFA098
            3FA0983F007F003F37003F3700BFBFBF0000BFBFBFA0983FFFFFFFA0983F0000
            0000000000000000000000000000000000000000FF00FFFFFF00000090FF2F00
            7F003F3700BFBFBF0000BFBFBFA0983F90FF2F0000000000003F37000000003F
            37000000003F370000000000000000FF0000000000000090FF2F3F3700BFBFBF
            0000BFBFBFA0983F90FF2FA0983F3F370000000060302F00000060302F000000
            000000000000000000000000000000A0983F007F00BFBFBF0000BFBFBFBFBFBF
            A0983F90FF2FCF67603F37003F37003F37000000003F37000000000000000000
            00000000007F00007F00BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFA0983FA098
            3FA0983F007F00007F00007F00007F00007F00007F00007F00007F00007F00BF
            BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            0000}
          TabOrder = 11
          OnClick = btnLimpar_pesqClick
        end
        object btnFecharPesq: TBitBtn
          Left = 160
          Top = 225
          Width = 75
          Height = 28
          Caption = 'Cancelar'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777777777777777777777777777777777777777777777777777777777777
            7777777777777778477777444447777748777744447777777477774447777777
            7477774474777777747777477744777748777777777744448777777777777777
            7777777777777777777777777777777777777777777777777777}
          TabOrder = 12
          OnClick = btnFecharPesqClick
        end
        object edtDtaIn: TMaskEdit
          Left = 88
          Top = 176
          Width = 68
          Height = 21
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 8
          Text = '  /  /    '
          OnExit = edtDtaInExit
          OnKeyDown = edtDtaInKeyDown
        end
        object edtDtaFi: TMaskEdit
          Left = 160
          Top = 177
          Width = 67
          Height = 21
          EditMask = '99/99/9999;1;_'
          MaxLength = 10
          TabOrder = 9
          Text = '  /  /    '
          OnExit = edtDtaFiExit
          OnKeyDown = edtDtaFiKeyDown
        end
        object edtSetorIni: TEdit
          Left = 89
          Top = 86
          Width = 38
          Height = 21
          MaxLength = 2
          TabOrder = 2
          OnExit = edtSetorIniExit
          OnKeyDown = edtSetorIniKeyDown
        end
        object edtSetorFim: TEdit
          Left = 161
          Top = 86
          Width = 38
          Height = 21
          MaxLength = 2
          TabOrder = 3
          OnExit = edtSetorFimExit
          OnKeyDown = edtSetorFimKeyDown
        end
      end
    end
  end
end
