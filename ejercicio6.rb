def promedio(gente)
  suma = 0.0
  gente.each { |key,value| suma += value }
  suma/gente.length
end

restaurant_menu = { 'Ramen' => 3, 'Dal Makhani' => 4, 'Coffee' => 2 }

# 1.- Plato mas caro
puts restaurant_menu.invert.max

# 2.- Plato mas barato
puts restaurant_menu.invert.min

# 3.- Promedio
puts promedio(restaurant_menu)

# 4.- Solo nombre de los platos
nombres_menu = restaurant_menu.keys.to_a

# 5.- Solo valores de los platos
valores_menu = restaurant_menu.values.to_a

# 6.- Valores mas iva
restaurant_menu = restaurant_menu.transform_values { |v| v * 1.19 }

# 7.- Descuento con platos de mas de una palabra
restaurant_menu.each do |key, value|
  restaurant_menu[key] = value * 0.8 if key.split(' ').count > 1
end
