productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos.each { |valor,producto| puts valor }

productos['cereal'] = 2200
productos['bebida'] = 2000

products = productos.to_a
productos.delete('galletas')

puts productos
puts products
