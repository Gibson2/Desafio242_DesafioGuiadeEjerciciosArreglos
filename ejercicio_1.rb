# Dado el array [1,2,3,9,1,4,5,2,3,6,6]

array = [1,2,3,9,1,4,5,2,3,6,6]
p "1. Utilizando map sumarle 1 a cada uno de los valores del array"

suma = array.map { |e| e += 1  }
p "Suma = #{suma}"

p "2. Utilizando map convertir todos los valores a float"

float = array.map { |e| e.to_f }
p "Números Float = #{float}"

p "3. Utilizando select descartar todos los elementos menores a 5 en el array"

descarte = array.select {|x| x > 5 }
p "Todos los número mayores a 5 = #{descarte}"

p "4. Utilizando inject sumar todos los valores del array."

suma_inject = array.inject{|sum, x| sum += x }
p "Sumar del Array = #{suma_inject}"

p "5. Agrupar todos los números por paridad (si son pares en un grupos, si son impares es otro grupo)."

paridad = array.group_by {|e| e.even?}
p "Agrupa los Impares y Pares #{paridad}"

