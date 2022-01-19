def say_hello(name)
  puts "bonjour " + name
end

def ask_first_name
  puts "Ton nom"
  print ">"
  name = gets
  return (name)
end

name = ask_first_name
say_hello(name)
