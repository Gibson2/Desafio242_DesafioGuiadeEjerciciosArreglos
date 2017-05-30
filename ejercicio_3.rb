#Dado el siguiente código:
class Student
	attr_accessor :name, :nota
	def initialize(name)
		@name = name
		@nota
	end

end

nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)

p "1. Iterar los nombres para crear un nuevo arreglo de estudiantes."
estudiante = nombres.map { |e| Student.new(e) }
p estudiante


p "2. Modificar el objeto para que pueda recibir una nota del alumno."
estudiante.each_with_index do |e, i|
	e.nota = i + 1
	p "#{e.name} #{e.nota}"
end

# 3. Agregar un getter para la nota.
# con el attr_accessor

p "4. Modificar la iteración para asignar notas incrementales de 1 en adelante."
estudiante.each do |e|
	e.nota = (e.nota + rand(1..10))
	p "#{e.name} #{e.nota}"
end

p "5. Utilizar un map para obtener todas las notas de los alumnos a partir del arreglo de estudiantes."
arreglo = estudiante.map { |e| e.nota }
p arreglo