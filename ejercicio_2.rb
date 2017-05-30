#Dado el arreglo

nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
p "Arreglo Nombres = #{nombres}"

p "Extraer todos los elementos que excedan mas de 5 caracteres."

extraer = []
nombres.each do |e|
	 if e.length > 5
	 	extraer << e
	 end
end
p "Result = #{extraer}"


p "- Realizar el ejercicio utilizando el método .select"

usandoselect = nombres.select {|x| x.length > 5}
p "Utilizando .select = #{usandoselect}"


p "- Utilizando .map crear una arreglo con los nombres en minúscula"

minuscula = nombres.map { |e| e.downcase! }
p "Nombres en minúscula = #{minuscula}"


p "- Utilizando .select para crear un arreglo con todos los nombres que empiecen con P"

conP = nombres.select do |s|
	if s.chars.first == "P" || s.chars.first == "p"
		s
	end
end
p "Nombres que empiezan con P = #{conP}"


p "- Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre."

unico = nombres.map { |e| e.length}
p "Cantidad de letra que tiene cada nombre = #{unico}"
