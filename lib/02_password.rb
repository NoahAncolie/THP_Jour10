def signup
  puts "Definir mot de passe"
  print ">"
  return gets
end

def login(mdp)
  puts "Quel est votre mdp ?"
  print ">"
  while gets != mdp
    puts "entrez le bon mdp"
    print ">"
  end
  puts "/****************************************\\
  \n      ECRAN D'ACCUEIL DE LA NSA
  \n
  \n
  \n illuminati.list
  \n
  \n Illuminati_dinner.jpg
  \n
  \n whatsapp.txt
  \n
  \n secrets.pdf
  \n
  \n next_president.pdf
  \n
  \\****************************************/"
end

def perform
    login(signup)
end

perform
