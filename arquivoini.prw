//Agora quero criar o meu arquivo para ser usado. Para isso, usarei as funções FCreate(), FWrite() e FClose()
User Function CrirArqIni()
  Local oModelo := FCreate("\system\arquivo.ini",0)
  FWrite(oModelo, "[modelo]" + CRLF)
  FWrite(oModelo, "Arquivo = C:\MEUARQUIVO.CSV" + CRLF)
  FClose(oModelo)
Return

User Function LerArqIni()  
  Local cArquivo := GetPvProfString("modelo", "arquivo", Space(255), "\system\arquivo.ini")

  //Irei ler o conteudo da chave arquivo
  MsgInfo(cArquivo)
Return
