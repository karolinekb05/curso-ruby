#Puts significa: ‘coloque (put) alguma coisa na tela’.
puts 2 + 6

#As aspas marcam o ínicio e o fim da string.
"Karoline"

#Métodos significam ações!

#Método para reverter as letras
"Karoline".reverse

#Para verificar a quantidade de caracteres (válido para conferir a senha)
"Karoline".length

#Transformando o número em string para utilizar o método, pois apenas strings podem ser invertidas
40.to_s.reverse

#Enquanto você pode usar métodos com qualquer objeto em Ruby, alguns métodos só funcionam com certos tipos de coisas. Mas você pode sempre converter diferentes tipos usando os métodos “to”.
#to_s converte coisas para strings
#to_i converte coisas para integers (números)
#to_a converte coisas para arrays

#O que são arrays? São listas! Listas (arrays) guardam coisas em alguma ordem.
[] #isto é uma lista (array) vazia
[12, 47, 35, 20] #isto é uma lista (array) guardando valores

#Verificando qual é o maior número
[12, 47, 35, 20].max
#Verificando qual é o primeiro número
[12, 47, 35, 20].first
#Verificando qual é o último número
[12, 47, 35, 20].last

#Salvando a lista dentro de uma variável
bilhete = [12, 47, 35, 20]
bilhete #chamando os valores que estão guardados na variável

#Métodos podem ter exclamações (e também interrogações) em seus nomes. Isto são apenas formas de explicar melhor qual é sua função.
bilhete.sort! #ordenando os valores

#Mas e se você quiser um elemento específico? Ruby usa colchetes [ ] para obter um elemento específico.
puts bilhete[0]
puts bilhete[1]
puts bilhete[2]

#Array na variável para os exemplos abaixo
poema = ["Minha torrada voou da minha mão
E minha torrada se foi para a lua.
Mas quando eu vejo isso na televisão,
Colocando nossa bandeira no cometa Halley,
Mais ainda eu quero come-la."]

puts poema

#O método gsub é abreviação para substituição global.
poema.gsub("torrada", "manga") #Substitui todas as palavras "torradas" por "manga"

#Tornando o poema em um array usando o método lines. 
#O método lines decide a forma como a string será dividida e converte isso em um array.
poema.lines.reverse

#Combinando métodos desta forma é chamado de encadeamento de métodos.
#O método join pega este array de linhas e junta todas elas em uma string.
puts poema.lines.reverse.join

#Um hash é como um array, porém cada um dos seus elementos tem um nome.
livros = {} #isto é um hash vazio
livros["O Arco-Íris da Gravidade"] = :esplendido #populando o hash criado
livros["Até o Fim"]  = :lixo #populando o hash criado
livros["Cores Vivas"] = :mediocre #populando o hash criado

puts livros #Consultando o hash

puts livros.length #Verificando o tamanho do hash

#O método length trabalha com strings, arrays e hashes

#Quando você coloca dois pontos a frente de uma simples palavra (por exemplo: :esplendido), você obtém um symbol (símbolo). 
#Símbolos são mais baratos que strings (em termos de custo de memória). Se você usar uma palavra várias e várias vezes no seu programa, troque por um símbolo. 
#Ao invés de ter milhares de cópias desta palavra na memória, o computador irá armazenar o símbolo apenas uma vez.

puts livros["O Arco-Íris da Gravidade"] #consultando um elemento específico do hash

#Hashes não mantém as coisas ordenadas. Este não é o trabalho dele. Ele apenas faz pares, os pares são: uma key (chave) e um value (valor).
#Em suas análises, o título do livro é a key, e a classificação é o value. Exemplo: key = ["O Arco-Íris da Gravidade"] e o value = ":esplendido"

livros.keys #exibe os títulos dos livros que estão no hash
livros.valeus #exibe a classificação dos livros que estão no hash

#Dando uma pontuação com um novo hash classificacoes
classificacoes = Hash.new {0}

livros.values.each { |classificacao|
  classificacoes[classificacao] += 1 #+= 1 significa: some 1 ao valor.
}

puts classificacoes

#Blocos são sempre associados a métodos. Como o método times, que pega o bloco e roda o código dele várias e várias vezes.
5.times { print "Odelay! " } #roda o código 5 vezes


#o método .times (significa vezes) envia o valor para a variável |vez| . Porém, note que a variável vez só é conhecida dentro do bloco.
#A variável fica sempre dentro do bloco com os pipes ||
5.times { |vez|
  puts vez
}

#O método gsub precisa de dois argumentos, que nós passamos para o gsub ao incluir duas strings entre parênteses. 
#Argumentos falam para o método exatamente o que fazer

#Sobre os parênteses no Ruby: você pode fazer o que você quiser com parênteses desde que a legibilidade do seu código seja boa.
puts "Olá!"
puts("Olá!")

#DICAS
#Para fazer o seu programa ficar menor:
#Se você tem que fazer a mesma coisa em mais de uma parte do seu código, é mais fácil colocar este código em um método separado. Seu código será menor.

#Para tornar o seu código mais fácil de ler:
#Suponha que o seu programa precise fazer um monte de coisas diferentes. 
#Você poderia colocar tudo em um pedaço longo de código. Mas isso tornaria díficil de ler e entender o seu código depois.
#Ao invés disso, você deve dividir seu código em diferentes métodos e dar a cada métodos um nome de fácil entendimento. 

#Definindo um método
def domar( numero_de_megeras )
end

#Criando uma regra para o método
def domar( numero_de_megeras )
  numero_de_megeras.times {
    puts "Megera domada"
  }
end

#Podemos omitir a palavra return da última linha do método. O Ruby irá automaticamente retornar o valor da última variável usada dentro do método.
#Assim, nós podemos mudar a última linha para apenas numero_de_megeras.
#Mas, uma vez que o método .times também retorna o numero_de_megeras nós podemos remover a última linha inteira.
#Retornando um valor
def domar( numero_de_megeras )
  numero_de_megeras.times {
    puts "Megera domada"
  }
  return numero_de_megeras #nesse caso, essa linha é opcional
end

puts domar(3)

#DICAS
#Métodos podem ser definidos com def e têm um nome. Métodos tornam os seus programas mais curtos e fáceis de ler.
#Parâmetros: Métodos podem receber parâmetros.
#Retornar valores: Métodos (quase) sempre retornam valores.

#O método get_shakey converte um arquivo json em Hash. Porém, uma vez que a estrutura do json é convertida em um hash, ela se torna um pouco difícil de ler. Vamos então escrever um método para exibir as peças de forma legível.

