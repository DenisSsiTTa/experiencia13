meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

anno = meses.zip(ventas).to_h
anno = anno.invert

mes_top = nil
cambio = 0
anno.each { |key,value| (mes_top = value; cambio = key) if cambio < key }

puts mes_top
