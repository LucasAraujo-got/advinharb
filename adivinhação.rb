puts "Bem-vindo ao jogo Adivinhe o Número!"

# Escolha do nível de dificuldade
puts "Escolha o nível de dificuldade:"
puts "1 - Fácil (números de 1 a 50)"
puts "2 - Médio (números de 1 a 100)"
puts "3 - Difícil (números de 1 a 200)"
print "Digite o número correspondente ao nível de dificuldade: "
dificuldade = gets.chomp.to_i

# Gera um número aleatório com base na dificuldade escolhida
case dificuldade
when 1
  numero_aleatorio = rand(1..50)
when 2
  numero_aleatorio = rand(1..100)
when 3
  numero_aleatorio = rand(1..200)
end

# Inicializa o número de tentativas como zero
tentativas = 0

# Loop principal do jogo
loop do
  print "Digite um número entre 1 e 100: "
  palpite = gets.chomp.to_i
  
  # Checagem da senha secreta 
  if palpite == -1512
    puts "O número secreto é #{numero_aleatorio}."
    next
  end
  
  tentativas += 1
  
  if palpite == numero_aleatorio
    puts "Parabéns! Você acertou em #{tentativas} tentativas."
    break
  elsif palpite < numero_aleatorio
    puts "O número é maior que #{palpite}. Tente novamente."
  else
    puts "O número é menor que #{palpite}. Tente novamente."
  end
end