def linea_continua
  puts '-------------------------------------------'
end

def menu
  linea_continua
  puts 'Ingresa el numero segun corresponda: '
  puts ' (1) Agregar Item'
  puts ' (2) Eliminar Item'
  puts ' (3) Actualizar Informacion'
  puts ' (4) Ver stock'
  puts ' (5) Item con mas stock'
  puts ' (6) Item existe en inventario'
  puts ' (7) Salir'
  linea_continua
end

def existe?(producto, arreglo)
  if arreglo.has_key?(producto)
    true
  else
    puts 'No existe ese nombre de Item'
    false
  end
end

inventario = {'Notebooks'=> 4, 'PC Escritorio'=> 6, 'Routers'=> 10, 'Impresoras'=> 6}

salida = false
begin
  menu
  numero = gets.chomp.to_i

  case numero
    when 1
      # Agregar Item "nombre, valor"
      puts '-> Agregar Item "nombre, valor"'
      item_agr = gets.chomp
      arr = item_agr.split(',')
      inventario[arr[0]] = arr[1].to_i
    when 2
      # Eliminar Item
      puts 'Eliminar Item "nombre"'
      item_agr = gets.chomp
      inventario.delete(item_agr) if existe?(item_agr, inventario)
    when 3
      # Actualizar Informacion
      puts 'Cual es el "nombre" del Item a actualizar?'
      item_agr = gets.chomp.to_s
      if existe?(item_agr, inventario)
        puts 'Cual es el "valor" a actualizar?'
        item_val = gets.chomp.to_i
        inventario[item_agr] = item_val
      end
    when 4
      # Ver stock
      linea_continua
      puts inventario
    when 5
      # Item con mas stock
      linea_continua
      puts inventario.invert.max
    when 6
      # Item existe en inventario
      puts 'Cual es el "nombre" del item a preguntar?'
      item_agr = gets.chomp
      linea_continua
      puts '-> Existe! ' if existe?(item_agr, inventario)
    when 7
      # Salir
      puts 'Tu necesitas salir!!! Chao!'
      salida = true
    else
      puts 'Error en selección. Intente otro número.'
  end
end until salida
