programa
{
	
	funcao inicio()
	{ real saldo = 0
	  real saque, deposito
		cadeia controle
	  inteiro menu = 1
		cadeia extrato = ""
		real investimento = 0
		inteiro meses = 0
		real rendimento = 0 
	 enquanto(menu != 0){
	  escreva("|-----MENU-----|\n")
	  escreva("| 1- SAQUE |\n")
    escreva("| 2- DEPOSITO |\n")
    escreva("| 3- EXTRATO |\n")
    escreva("| 4- SALDO R$ ", saldo ,"|\n")
		escreva("| 5- INVESTIMENTO |\n")
	  escreva("| 0- SAIR |\n")
	  escreva("| ESCOLHA : ")
	 leia(menu)
	 limpa()
	 }
   escolha(menu){
		caso 1:
		escreva("qual o valor do saque: ")
		leia(saque)
		se(saque <= 0){
			escreva("saque invalido\n")
		}
		senao se(saque <= saldo){
			escreva("seu saque foi realizado com sucesso\n")
		
		extrato = extrato + "saque------R$"+ saque + "\n"
		saldo = saldo - saque
		}
		senao{
			escreva("saque invalido\n")
		}
		pare
		caso 2:
		escreva("qual o valor do deposito: ")
		leia(deposito)
		saldo = deposito + saldo
		extrato = extrato +"deposito------R$" + deposito + "\n"
		pare
		caso 3:
		escreva(extrato)
		pare
		caso 4:
		escreva("seu saldo � de: " + saldo + "\n")
		pare
		caso 5:
		escreva("digite a quantidade do invetimento: ")
		leia(investimento)
		escreva("digite a quantidade de meses que deseja investir: ")
		leia(meses)
		se(saldo >= investimento){
			saldo = saldo - investimento
			para(inteiro contador = 1; contador <= meses; contador++){
				rendimento = investimento * 1.02
				investimento = rendimento
			}
			escreva(meses + "meses se passaram!\n")
			escreva("seu rendimento foi de: ", investimento , "\n")
      saldo = saldo + investimento
		}
		senao{
			escreva("nao autorizado!\n")
		}
	 }
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 326; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */