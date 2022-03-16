#Aula 2
#Programa 2

#Entradas
puts "Digite o primeiro número: "

#.to_i transforma a string em um número inteiro
num1 = gets.chomp.to_i

puts "Digite o segundo número: "

num2 = gets.chomp.to_i

soma = num1 + num2
subtracao = num1 - num2
divisao = num1 / num2
multiplicacao = num1 * num2
modulo = num1 % num2
expoente = num1 ** num2

#Saídas
puts "A soma foi: #{soma}"
puts "A subtração foi: #{subtracao}"
puts "A divisão foi: #{divisao}"
puts "A multiplicacao foi: #{multiplicacao}"
puts "O módulo foi: #{modulo}"
puts "O expoente foi: #{expoente}"