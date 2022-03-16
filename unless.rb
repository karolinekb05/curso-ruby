status = 'fechado'

unless status == 'aberto' #if not poderia ser usado, que troca o verdadeiro por falso
    check = 'pode'
else
    check = 'não pode'
end

puts "Você #{check} entrar aqui"