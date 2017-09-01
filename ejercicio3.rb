list = [nombre: 'Andres', edad: 29, comuna: 'Ñuñoa', genero: 'Masculino']

def add_person(array)
	
	puts "Ingrese nombre"
	name = gets.chomp

	puts "Ingrese edad (sólo números)"
	age = gets.chomp

	puts "Ingrese comuna"
	commune = gets.chomp

	puts "Ingrese género (Masculino / Femenino)"
	gender = gets.chomp

	array.push(nombre: name, edad: age.to_i, comuna: commune, genero: gender)
	print "El usuario es: \n #{array} \n"

end

def edit_person(array)
	
	puts 'Ingrese el nombre de la persona que desea editar'
	search = gets.chomp
	print "La persona que modificará es:\n"
	print array.select { |e| e[:nombre] == search }
	puts "\n"

	array = array.reject { |e| e[:nombre] == search }

	puts 'A continuación se solicitarán los datos a modificar'
	
	add_person(array)

end

def delete_person(array)
	
	puts 'Ingrese el nombre de la persona que desea eliminar'
	search = gets.chomp
	print "La persona eliminada es:\n"
	print array.select { |e| e[:nombre] == search }
	puts "\n"

	array = array.delete_if { |e| e[:nombre] == search }

end

def total_person(array)
	i = 0
	print "\n El número de personas es:"
	array.each { |e| i += 1}
	print "#{i} \n"
end

puts 'Bienvenido al Sistema de Gestión de Alumnos!, seleccione su opción:'	

option = 0

while option != 10 
	puts "\n"
	puts '1. Ingresar datos de una persona'
	puts '2. Editar datos de una persona'
	puts '3. Eliminar una persona'
	puts '4. Mostrar la cantidad de personas en el sistema'
	puts '5. Mostrar comunas de todas personas'
	puts '6. Mostrar lista de personas entre 20 y 25 años'
	puts '7. Mostrar suma de todas las edades de personas'
	puts '8. Mostrar promedio edades del grupo'
	puts '9. Mostrar lista de alumnos por género'
	puts '10.Salir'

	option = gets.chomp.to_i

	case option 
		when 1
			add_person(list)

		when 2
			edit_person(list)

		when 3
			delete_person(list)

		when 4
			total_person(list)


		when 5
			puts "eligio 5"
		when 6
			puts "eligio 6"
		when 10
			puts "Adios!"
		else
			puts "Elija una opcion correcta"
	end
end