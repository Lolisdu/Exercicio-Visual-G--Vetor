Algoritmo "Exercicio Agência de Viagem"
// Disciplina   : [Cadastro de Cliente]
// Dsiciplina: [Cadastro de destino]

Var
   cliente: vetor[0 ..3] de caractere
   saida : vetor [0..3] de caractere
   chegada : vetor [0..3] de caractere
   acompanhantes : vetor [0..3] de caractere

   destino:  caractere
   origem:  caractere
   opcao:caractere


   a , b : inteiro
   quantidade :inteiro
   i, dados, j: inteiro





Inicio
   Escreval ("......  Bem Vindos, a nossa Agência             ......")
   Escreval ("......  Vamos escolher seu destino de viagem.   ......")
   escreval
   escreval

   Escreval ("Digite por onde será seu embarque?")
   Escreval ("(1) - São Paulo | (2) - Rio de Janeiro | (3) - Manaus |")
   leia (a)
   
   se a > 3 entao
    escreval("Digite uma origem válida: ")
    leia(a)
   fimse
   
   escolha  a
   caso 1
      origem <-"São Paulo"
   caso 2
      origem <-"Rio de Janeiro"
   caso 3
      origem <-"Manaus"
   fimescolha
   
   escreval ("Qual o seu destino?")
   escreval ("(1) - Londres | (2) - Japão | (3) - Canadá |")
   leia (b)
   
   se b > 3 entao
      escreval("Digite um destino válido: ")
      leia(b)
   fimse
   
   escolha b
   caso 1

      destino <-"Londres"
   caso 2
      destino <-"Japão"
   caso 3
      destino <-"Canadá"
   outrocaso
      escreva ("Digite uma origem valida: ")
      leia(b)
   fimescolha
   escreval
   escreval
   
   escreval (" Sua viagem começa por ", origem, " seu destino é ", destino)

   escreval ("Podemos dar continuidade a viagem? (s/n): ")
   leia (opcao)
   se opcao <> "s" então
      escreval(" Obrigado(a), aguardamos você em breve.")
   senao
      para i de 0 ate 0 faca
         escreval ("Digite seu nome completo")
         leia(cliente[i])
         escreval("Quantas pessoas vão nesta viagem?")
         leia(quantidade)
         se quantidade > 0 entao
            dados[i] <- quantidade

            para j de 0 ate quantidade - 1 faca
               escreval (" Digite o(s) nome(s) completo do(s) acompanhante(s): ")
               leia(acompanhantes[j])
            fimpara
         fimse
         saida[i] <- origem
         chegada[i] <- destino
      fimpara
      
       escreval
   escreval(" Estamos finalizando, sua passagem está para:")
   escreval
   escreval("Nome do cliente: ", cliente[i], " saindo de ", saida[i], " chegada em ", chegada[i], " acompanhado por ", quantidade, " pessoas")

   para j de 0 ate quantidade - 1 faca
      escreva(" ", acompanhantes[j], ", ")
   fimpara

   fimse




Fimalgoritmo