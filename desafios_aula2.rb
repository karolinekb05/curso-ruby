#No irb, faça todos os tipos de dados

var = 10
var.class
var = 1.5
var.class
var = :ola
var.class
var = [10, 20, 30]
var.class
var[0]
var[2]
var[1]
var = true
var.class
var = false
var.class
var = "Ruby"
var.class
var = {curso: "Ruby", tipo: "programação", aulas: 10}
var[:aulas]
var[:tipo]
var[:curso]

#Crie um programa que receba o nome e idade de uma pessoa e no final exiba esses dados em uma única frase

print "Digite seu nome: "

nome = gets.chomp

print "Digite sua idade: "

idade = gets.chomp.to_i

puts "O seu nome é #{nome} e você tem #{idade} anos."


#Crie um programa que receba dois números inteiros e exiba a soma, subtração, multiplicação e divisão entre eles

print "Digite o primeiro número: "

num1 = gets.chomp.to_i

print "Digite o segundo número: "

num2 = gets.chomp.to_i

soma = num1 + num2
subtracao = num1 - num2
multiplicacao = num1 * num2
divisao = num1 / num2

puts "Soma: #{soma}"
puts "Subtração: #{subtracao}"
puts "Multiplicação: #{multiplicacao}"
puts "Divisão: #{divisao}"