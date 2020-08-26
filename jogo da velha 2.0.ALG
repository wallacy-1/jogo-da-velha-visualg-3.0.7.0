Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/08/2020
Var
   jogo,contador,o,jogada,c,v,k,aux,aux1,u,y,end,pontu:inteiro
   j,z:caractere
   p:vetor[1..9] de caractere
   jogada1:caractere
   vitoria:caractere

Inicio
   aux<-1
   vitoria<-"q"
   enquanto jogo <> 5 faca
      limpatela
      se aux =3 entao
         escreval("[",p[1],"][",p[2],"][",p[3],"]")   //jogo da velha
         escreval("[",p[4],"][",p[5],"][",p[6],"]")
         escreval("[",p[7],"][",p[8],"][",p[9],"]")
      senao
         escreval("[1][2][3]")
         escreval("[4][5][6]")
         escreval("[7][8][9]")
      fimse
      enquanto contador <10 faça
         p[1]<-"1"
         p[2]<-"2"
         p[3]<-"3"
         p[4]<-"4"
         p[5]<-"5"              //reseta posicoes util para quando jogo resetar
         p[6]<-"6"
         p[7]<-"7"
         p[8]<-"8"
         p[9]<-"9"
         escreva("Voce quer ser X ou O ?(letra maiúscula) ")
         leia(j)
         se j = "x" entao
            j<-"X"
            z<-"O"
            contador<-25
         fimse
         se j = "X" entao
            j<-"X"
            z<-"O"
            contador<-25
         fimse
         se j = "O" entao
            j<-"O"
            z<-"X"
            contador<-25
         fimse
         se j = "o" entao
            j<-"O"
            z<-"X"
            contador<-25
         fimse
      fimenquanto
      escreval()
      enquanto contador <50 faca
         escreval("Você e o ",j," qual posição gostaria de jogar ?")
         leia(jogada1)
         para o de 1 ate 9 faca
            se jogada1 = p[o] entao
               p[o]<-j
               contador<-60
            fimse
         fimpara
      fimenquanto
      aleatorio 1,9
      leia(jogada)
      aleatorio off
      aux1<-1
      u<-1
      enquanto contador <90 faca
         se jogada=0 entao
            contador<-100
            u<-20
         fimse
         se jogada= 1 entao
            jogada1<-"1"
         fimse
         se jogada= 2 entao
            jogada1<-"2"
         fimse
         se jogada= 3 entao
            jogada1<-"3"
         fimse                       //evitar erro onde o O rouba luga do X
         se jogada= 4 entao
            jogada1<-"4"
         fimse
         se jogada= 5 entao
            jogada1<-"5"
         fimse
         se jogada = 6 entao
            jogada1<-"6"
         fimse
         se jogada = 7 entao
            jogada1<-"7"
         fimse
         se jogada =8 entao
            jogada1<-"8"
         fimse
         se jogada =9 entao
            jogada1<-"9"
         fimse
         se aux1=3 entao
            contador<-100
         fimse
         se u = 1 entao
            se jogada1=p[jogada] entao
               p[jogada]<-z
               contador<-100
            fimse
         fimse
         se aux1=1 entao
            jogada<-9
            aux1<-20
         fimse
         se aux1>10 entao
            jogada<-jogada-1
         fimse
      fimenquanto

      k<-1
      c<-2
      v<-3
      enquanto k < 8 faca
         se p[k]= p[c] entao
            se p[c]= p[v] entao
               jogo<- 5
               vitoria<-p[k]      //verificar se ganhou na horizontal
            fimse                   // 123 456 e 789
         fimse
         k<-k+3
         c<-c+3
         v<-v+3
      fimenquanto
      k<-3
      c<-5
      v<-7
      enquanto k> 0 faca
         se p[k] = p[c] entao
            se p[c] =p[v] entao
               jogo<- 5
               vitoria<-p[k] //verificar se ganhou na diagonal
            fimse                //357 e 159
         fimse
         k<-k-2
         V<-V+2
      fimenquanto
      k<-1
      c<-4
      v<-7

      enquanto k <4 faca
         se p[k] = p[c] entao
            se p[c] = p[v] entao
               jogo<- 5
               vitoria<-p[k]    //verificar se ganhou na vertical
            fimse               // 147 258 369
         fimse
         k<-k+1
         c<-c+1
         v<-v+1
      fimenquanto

      se jogo <5 entao
         jogo<- jogo + 1
      fimse
      se jogo = 5 entao
         contador<- 100
      fimse
      limpatela
      escreval("[",p[1],"][",p[2],"][",p[3],"]")
      escreval("[",p[4],"][",p[5],"][",p[6],"]")
      escreval("[",p[7],"][",p[8],"][",p[9],"]")

      aux<-3
      contador<-30
      se vitoria =j entao
         escreval()
         escreval("Você venceu a rodada")
         pontu<-pontu+100
      fimse
      se vitoria =z entao
         escreval()
         escreval("Você perdeu a rodada")
         pontu<-pontu+25
      fimse
      se jogo = 5 entao
         se vitoria="q" entao
            escreval()             //se vitoria n recebeu x nem o ent empate
            escreval("Empate")
            pontu<-pontu+50
         fimse
      fimse
      se jogo = 5 entao
         enquanto y <10 faca
            escreval("Sua pontuação foi ",pontu)
            escreval("gostaria de jogar denovo 1 para sim 2 para não :")
            leia(end)
            se end= 1 entao
               aux<- 0
               contador<-0   //vai resetar o vetor p
               y<- 20
               jogo<-0
               vitoria<-"q"       //não vai terminar o jogo
            fimse
            se end= 2 entao  //sai do enquanto e termina o jogo
               y<- 20
            fimse
         fimenquanto
      fimse
      y<-5

   fimenquanto
Fimalgoritmo