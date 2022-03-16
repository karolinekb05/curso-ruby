puts "Digite o mês que você nasceu: "

mes = gets.chomp.to_i

case mes
when 1..3
    "Você nasceu no começo do ano"