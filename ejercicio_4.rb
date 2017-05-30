# 1. Crear la clase punto, un punto tiene una posición x y una posición y.
class Punto
	
# 2. Crear métodos getter y setter para los atributos del punto.
	attr_accessor :x, :y
	def initialize(x, y)
		@x = x
		@y = y
	end

end

puntos = []

# 3. Crear 10 puntos al azar.
10.times do

	puntos << Punto.new(rand(1..10), rand(1..10))
end

puntos.each{|e| p "(#{e.x}, #{e.y})"}