def promedio(gente)
  suma = 0.0
  gente.each { |key,value| suma += value }
  suma/gente.length
end

personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

gente = personas.zip(edades).to_h
puts promedio(gente)
