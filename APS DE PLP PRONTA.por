programa
//@Autor: Saulo Gomes da Silva Catunda
{
	inclua biblioteca Util --> u
	inclua biblioteca Teclado --> t
		//variáveis de fluxo, controle e registro.
	cadeia nome
	inteiro pontos = 0
	cadeia respostas
	inteiro chances = 3
	logico funcionamento = verdadeiro
	inteiro vez = 0
	inteiro numerosortiado = 0
	cadeia dados
	inteiro telaboasvindas = 0
	inteiro limitadorchances = 0
		//funções
	//Imprime linha para separar perguntas
	   funcao vazio imprime_linha(){
        escreva("\n---------------------------------------------------------------------------------------------")
    }
     //Tempo curto para tonar suave a leitura
		funcao aguardeP(){
			u.aguarde(1500)//1500
	}
	 //Tempo de pausa maior de fluxo
		funcao aguardeG(){
			u.aguarde(2500)//4000
	}
	 //Caso a resposta seja incorreta, chamar essa função
	funcao incorreta(){
		aguardeP()
		escreva("\nResposta incorreta!\n")
		aguardeP()
		escreva("\nSua pontuação continua sendo de: " + pontos + " pontos.\n")
		aguardeP()
		contagemchances()
		aguardeP()
	}
	 //Caso a resposta seja correta, chamar essa função
	funcao correta(){
		adicionarpontos()
		aguardeP()
		escreva("\nResposta correta!!! Parabéns!!!\n")
		aguardeP()
		escreva("\nSua pontuação atual é de: " + pontos + " pontos.\n")
		aguardeP()
	}
	//Adicionar pontos
	funcao adicionarpontos(){
		pontos = pontos +10
	}
	//Contagem de chances
	funcao contagemchances(){
		chances = chances -1
		escreva("\nChances restantes: "+chances+"\n")
			se (chances == 0){
				funcionamento = falso
				escreva("\nSem mais chances!\n")
				se (limitadorchances == 0){
					ganharchance()
				}senao{
					escreva("\nSem mais dados para jogar\n")
				}
			}
	}
	//Função de ganhar chances - vida extra
	funcao ganharchance(){
			
			se (limitadorchances == 0){
			limitadorchances = limitadorchances + 1
			escreva("\nDeseja mais uma chance? Digite 'dados' abaixo para jogar o dado de 1 a 6, se tirar um número maior ou igual a 4, ganhará uma chance. Se não quiser, somente aperte Enter\n")
			leia (dados)
				se (dados == "dados"){
					sorteio()
					escreva("Número sorteado: "+numerosortiado)
					aguardeP()
					se (numerosortiado >=4){
						chances = chances +1
						escreva("\nParabéns, você ganhou + "+chances+" chance.\n")
						funcionamento = verdadeiro
						} senao {
							aguardeP()
							escreva("\nQue pena, paramos por aqui\n")
							aguardeP()
						}
					}senao{
						
					}
				}
	}
	//Função de sorteio
	funcao sorteio(){
		numerosortiado = u.sorteia(1, 6)
	}
	//Tela onde captura o nome
	funcao boasvindas(){
		se (telaboasvindas == 0){
		aguardeP()
		escreva ("Seja bem vindo(a) ao jogo de Quiz Educativo. Por favor, digite seu nick abaixo: \n")
		leia(nome)
		aguardeP()
		escreva ("\nSeja bem vindo(a) "+nome+".")
		telaboasvindas = telaboasvindas + 1
		aguardeP()
		escreva ("\n\nPrepare-se!!!")
		aguardeG()
		}
	}
	//Despedida
	funcao despedida(){
		u.aguarde(2000)
	 	escreva("\n\nFim de jogo "+nome+", sua pontuação total foi de: " + pontos + " pontos.\n\n")
	}
	//Passagem de questão
	funcao passagem(){
		imprime_linha()
		aguardeP()
		escreva ("\n\nPrepare-se para a próxima questão!")
		aguardeG()
	}
	//Perguntas de 1 a 7
	funcao perguntas(){
		vez = vez +1
		escolha(vez){
			caso 1:
			//questão1
		     escreva ("\n\n01 - Qual dessas linguagens é mais usada no back-end de sites?\n")
		     aguardeG()
			escreva("1 - PHP\n")
			aguardeP()
			escreva("2 - Java\n")
			aguardeP()
			escreva("3 - C#\n")
			aguardeP()
			escreva("Qual a alternativa correta?\n")
		     leia(respostas)
			     se(respostas == "1"){
					correta()
			     }senao se(respostas == "2"){
					incorreta()
			     }senao se(respostas == "3"){
					incorreta()
				}senao{	
					aguardeP()
					escreva("Não há essa alternativa") 		
				}
			pare
			caso 2:
			//questão 2
			escreva("\n\n02 - Qual o paradigma de programação que trata a computação como funções matemáticas e que evita dados mutáveis?\n")
			aguardeG()
			escreva("1 - Programação funcional\n")
			aguardeP()
			escreva("2 - Programação imperativa\n")
			aguardeP()
			escreva("3 - Programação linear\n")
			aguardeP()
			escreva("Qual a alternativa correta?\n")
		     leia(respostas)
				se(respostas == "1"){
					correta()
			     }senao se(respostas == "2"){
					incorreta()
			     }senao se(respostas == "3"){
					incorreta()
				}senao{
					aguardeP()
					escreva("Não há essa alternativa") 
				}
			pare
			caso 3:
			//questão3
			escreva("\n\n03 - Qual a linguagem de marcação abaixo é confundida por alguns como linguagem de programação?\n")
			aguardeG()
			escreva("1 - Python\n")
			aguardeP()
			escreva("2 - HTML\n")
			aguardeP()
			escreva("3 - CSS\n")
			aguardeP()
			escreva("Qual a alternativa correta?\n")
		     leia(respostas)
				se(respostas == "2"){
					correta()
			     }senao se(respostas == "1"){
					incorreta()
			     }senao se(respostas == "3"){
					incorreta()
				}senao{
					aguardeP()
					escreva("Não há essa alternativa") 
				}
			pare
			caso 4:
			//questão4
			escreva("\n\n04 - A classe “pai” na orientação a objetos é chamada de:\n")
			aguardeG()
			escreva("1 - Subclasse\n")
			aguardeP()
			escreva("2 - Superclasse\n")
			aguardeP()
			escreva("3 - Superherança\n")
			aguardeP()
			escreva("Qual a alternativa correta?\n")
		     leia(respostas)
				se(respostas == "2"){
					correta()
				}senao se (respostas == "1"){
					incorreta()
				}senao se (respostas == "3"){
					incorreta()
				}senao{
					aguardeP()
					escreva("Não há essa alternativa")
				}
			pare
			caso 5:
			//questão5
			escreva("\n\n05 - Complete a frase. O Java é _________\n")
			aguardeG()
			escreva("1 - Passado\n")
			aguardeP()
			escreva("2 - Pesado\n")
			aguardeP()
			escreva("3 - Multiparadigma\n")
			aguardeP()
			escreva("Qual a alternativa correta?\n")
		     leia(respostas)
				se(respostas == "3"){
					correta()
				}senao se (respostas == "1"){
					incorreta()
				}senao se (respostas == "2"){
					escreva("Embora não esteja totalmente errado(a), a resposta correta é a 3")
					aguardeP()
					incorreta()
				}senao{
					aguardeP()
					escreva("Não há essa alternativa")
				}
			pare
			caso 6:
			//questão6
			escreva("\n\n06 - Imagine o seguinte cenário: A classe 'A' estende a classe 'B', assinale a alternativa correta:\n")
			aguardeG()
			escreva("1 - A classe B é subclasse de A\n")
			aguardeP()
			escreva("2 - A classe A é derivada da B\n")
			aguardeP()
			escreva("3 - As classes A e B são irmãs.\n")
			aguardeP()
			escreva("Qual a alternativa correta?\n")
		     leia(respostas)
				se(respostas == "2"){
					correta()
				}senao se (respostas == "1"){
					incorreta()
				}senao se (respostas == "3"){
					incorreta()
				}senao{
					aguardeP()
					escreva("Não há essa alternativa")
				}
			pare
			caso 7:
			//questão7
			escreva("\n\n06 - Acerca da programação Orientada a Objetos, OVERLOADING é a habilidade de poder definir diversas propriedades, métodos ou procedimentos em uma classe com o mesmo nome, que também pode ser definida como:\n")
			aguardeG()
			escreva("1 - Pirâmide\n")
			aguardeP()
			escreva("2 - Morphing\n")
			aguardeP()
			escreva("3 - Sobrecarga\n")
			aguardeP()
			escreva("Qual a alternativa correta?\n")
		     leia(respostas)
				se(respostas == "3"){
					correta()
				}senao se (respostas == "1"){
					incorreta()
				}senao se (respostas == "2"){
					incorreta()
				}senao{
					aguardeP()
					escreva("Não há essa alternativa")
				}
			pare
			caso contrario:
			escreva("\nOpa! Sem mais perguntas!")
				se (vez > 7){
					funcionamento = falso
				}
		}
	}
	//O início da execução do programa começa por aqui
	funcao inicio(){
		boasvindas()
			enquanto (funcionamento != falso){
				passagem()
				perguntas()
		}despedida()
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 47; 
 * @DOBRAMENTO-CODIGO = [18, 22, 26, 30, 40, 49, 53, 67, 92, 96, 110, 115, 122, 296];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */