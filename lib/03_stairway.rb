def menu
  puts "\n\n\n          === Stair Way ===\n\njouer (1)\nprobabilité (2)"
  print ">"

  choix = gets.to_i

  while choix != 1 && choix != 2
    print">"
    choix = gets.to_i
  end

  if choix == 1
    jeu 
  else
    average_finish_time
  end
end

def jeu
  fin = 0
  while fin != 10
    puts "vous êtes à l'étage #{fin}.
          \n\nLancer le dé (y/n) ?\nMenu (menu)"
    choix = gets.chomp
    if choix == "menu"
      menu
    end

    if choix == "n"
      terminer
    else
      de = 1 + rand(6)
      print "\n\nLe dé est tombé sur #{de}"
      if (de == 5 || de == 6)
        puts "\nTu avances de 1"
        fin += 1
      elsif (de >=2 && de <= 4)
        puts "\nTu reste sur place"
      else
        puts "\ntu descends d'un étage"
        if (de > 0)
          de -= 1
        end
      end
    end
  end
  puts "\n\n\n ====== GAGNÉ ======="
end

def average_finish_time
  fin = 0;
  sum = 0;
  i = 1

100.times do
  while (fin < 10)
      if (rand(6) + 1 == 6 || rand(6) + 1 == 5)
        fin += 1
      elsif (rand(6) + 1 == 1 && fin > 0)
        fin -= 1
      end
      i += 1
  end
  sum += (i)
end

puts "\nCette fois ci, sur 100 parties, il a fallu jouer en moyenne #{sum / 100} fois.\nterminer ? (y/n)"
choix = gets.chomp
  if choix == "n"
    menu
  end
  terminer
end

def terminer
  puts "\n\n=== Merci d'avoir joué ===\n\n"
  exit
end

menu
