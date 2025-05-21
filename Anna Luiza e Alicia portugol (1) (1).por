programa {
  inclua biblioteca Texto --> t
  
  inteiro i=1, idade[11], telefone[11], telefoneResponsavel[11], matricula[11]
  cadeia nome[11], email[11], nomeResponsavel[11], emailResponsavel[11], turno[11], curso[11]
  
  //Nesta funcao, caso a idade for menor do que um, ele retorna verdadeiro como se estivesse dizendo "E verdadeiro que a idade nao e valida"
  funcao logico verificaIdade(inteiro idade) {
    retorne (idade < 1)
  }

  //Nesta funcao, caso o email nao contenha um dos caracteres obrigatorios ("@" e "."), retornara falso como se estivesse dizendo "Esse email nao e valido, isso e uma falsa afirmacao"
  funcao logico verificaEmail(cadeia email) {
    retorne(((t.posicao_texto("@", email, 0)) != -1) e (t.posicao_texto(".", email, 0)) != -1)
    }


  //Faz o mesmo procedimento do aluno com excecao da idade, tem o fim de registrar o responsavel pelo aluno menor de 18 anos
  funcao dadosDoResponsavel() {
    escreva("-----------------------------------------------\n")
    escreva("Bem-Vindo ao Sistema de Cadastro do Responsavel\n")
    escreva("-----------------------------------------------\n")

    //O Responsavel da entrada do seu nome.
    escreva("\nDigite o Nome do Responsavel do aluno", i ,":")
    leia(nomeResponsavel[i])

    /*O Responsavel da entrada no seu email no qual e verificado pelo "verificaEmail", caso nao seja valido, 
      e digitado "Email Invalido, tente novamente" e faz-se novamente a entrada do email*/
      faca {
        escreva("\nDigite seu e-mail: ")
        leia(emailResponsavel[i])
        se (nao (verificaEmail(emailResponsavel[i]))) {
          escreva("Email Invalido por falta de pontuacao, tente novamente.")
        }
      } enquanto (nao (verificaEmail(emailResponsavel[i])))

      //O Responsavel da entrada no seu telefone
      escreva("\nDigite o numero do seu telefone")
      leia(telefoneResponsavel[i])
  }

  funcao inicio() {
    escreva("-----------------------------------------\n")
    escreva("Bem-Vindo ao Sistema de Cadastro do Aluno\n")
    escreva("-----------------------------------------\n")
    escreva("OBS: O aluno menor de idade tambem deve inserir os dados do responsavel\n")
    
    faca {
      //O aluno da entrada do seu nome.
      escreva("\nDigite o Nome do aluno", i ,": ")
      leia(nome[i])
      
      /*O aluno da entrada na sua idade na qual e verificada pelo "verificaIdade", caso nao seja valida, 
      e digitado "Idade Invalida, tente novamente" e faz-se novamente a entrada da idade*/
      faca {
        escreva("\nDigite sua idade: ")
        leia(idade[i])
        se (verificaIdade(idade[i])) {
          escreva("Idade Invalida, tente novamente")
        }
      } enquanto (verificaIdade(idade[i]))

      /*O aluno da entrada no seu email no qual e verificado pelo "verificaEmail", caso nao seja valido, 
      e digitado "Email Invalido, tente novamente" e faz-se novamente a entrada do email*/
      faca {
        escreva("\nDigite seu e-mail: ")
        leia(email[i])
        se (nao (verificaEmail(email[i]))) {
          escreva("Email Invalido por motivo de falta de pontuacao, tente novamente.")
        }
      } enquanto (nao (verificaEmail(email[i])))

      //O aluno da entrada no seu telefone
      escreva("\nDigite o numero do seu telefone: ")
      leia(telefone[i])

      escreva("\nDigite o numero da sua matricula: ")
      leia(matricula[i])

      escreva("\nDigite o nome do seu curso: ")
      leia(curso[i])

      escreva("\nDigite o numero do seu turno: ")
      leia(turno[i])
      limpa()

      se (idade[i] < 18) {
        dadosDoResponsavel(i)
        limpa()
      }

      i++
    } enquanto (i<11)

    para(inteiro k=1;k<11;k++) {
      escreva("\nDados do Aluno ", k, "\n")
      escreva("\nNome: ", nome[k])
      escreva("\nIdade: ", idade[k])
      escreva("\nEmail: ", email[k])
      escreva("\nTelefone: ", telefone[k])
      escreva("\nNum Matricula: ", matricula[k])
      escreva("\nCurso: ", curso[k])
      escreva("\nTurno: ", turno[k])

      se (idade[k] < 18) {
        escreva("\n\nDados do RESPONSAVEL DO ALUNO ", k, "\n")
        escreva("\nNome: ", nomeResponsavel[k])
        escreva("\nEmail: ", emailResponsavel[k])
        escreva("\nTelefone: ", telefoneResponsavel[k])
      }
    }
  }
}
