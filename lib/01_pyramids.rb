def half_pyramid(var)
  while var <= 0 || var > 25
    puts "la pyramide doit etre entre 1 et 25"
    print ">"
    var = gets.chomp.to_i
  end
  puts "Voici la pyramide :"
  var.times do |i|
    puts "#{' ' * (var - i - 1)}" "#{'#' * (i + 1)}"
  end
end

def full_pyramid(var)
  while var <= 0 || var > 25
    puts "la pyramide doit etre entre 1 et 25"
    print ">"
    var = gets.to_i
  end
  puts "Voici la pyramide :"
  var.times do |i|
    puts "#{' ' * (var - i - 1)}" "#{'#' * ((i * 2) + 1)}"
  end
end

def wtf_pyramide(var)
  while var <= 0 || var > 25 || var % 2 == 0
    puts "la hauteur doit être comprise entre 1 et 25 ainsi qu'impaire"
    print ">"
    var = gets.to_i
  end
  puts "voici la pyramide :"

  var.times do |i|
    if i <= (var / 2)
      puts "#{' ' * ((var / 2) - i)}" "#{'#' * ((i * 2) + 1)}"
    else
      puts "#{' ' * (i - var / 2)}" "#{'#' * ((2 * (var - i)) - 1)}"
    end
  end
end

py = 0

while py > 3 || py < 1
  puts "choisis ta pyramide (1, 2, 3)"
  print ">"
  py = gets.to_i
end

puts "Salut, ici la pyramide. Combien d'étages ?"
print ">"

if py == 3
  wtf_pyramide(gets.to_i)
end

if py == 2 
  half_pyramid
end

if py == 1
  full_pyramid
end
