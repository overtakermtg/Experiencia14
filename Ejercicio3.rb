# 1. Crear un menú que permita registrar la información de los alumnos del curso.
# 2. Opción 1: Permite ingresar los datos de una persona:
# Nombre
# Edad
# Comuna
# Género
# 3. Opción 2: Permite editar los datos de la persona.
# 4. Opción 3: Permite eliminar una persona.
# Ejercicio 2: Arrays y strings
# Ejercicio 3: Array de hashes

# 5. Opción 4: Muestra la cantidad de personas ingresadas.
# 6. Opción 5: Muestra las comunas de todas las personas.
# hint: Generar un array con las comunas, eliminar repeticiones. Considerar que
# pueden haber nombres escritos con mayúscula y minúscula.
# 7. Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años.
# 8. Opción 7: Muestra la suma de las edades de todas las personas.
# 9. Opción 8: Muestra el promedio de las edades del grupo.
# 10. Opción 9: Muestra dos listas de personas, una por cada género.
# 11. El menú debe repetirse hasta que el usuario ingrese la opción 10 (salir).



def menu()
	puts '-----------------------------------  m e n u  ----  i n i c i a l  -------------------------------'
	puts '--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--'
	puts '         Opción [1]: Permite ingresar los datos de una persona:'
	puts '                                # Nombre, # Edad, # Comuna, # Género'
	puts '         Opción [2]: Permite editar los datos de la persona.'
	puts '         Opción [3]: Permite eliminar una persona.'
	puts '         Opción [4]: Muestra la cantidad de personas ingresadas.'
	puts '         Opción [5]: Muestra las comunas de todas las personas.'
	puts '         Opción [6]: Muestra una lista con todas las personas que tengan entre 20 y 25 años.'
	puts '         Opción [7]: Muestra la suma de las edades de todas las personas.'
	puts '         Opción [8]: Muestra el promedio de las edades del grupo.'
	puts '         Opción [9]: Muestra dos listas de personas, una por cada género.'
	puts '         Opción [10]: Salir'
	puts '         Opción [99]: Muestra todas las personas.....'
end

def solicita_opcion()
	puts '--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--'
	puts 'Ingrese una opción del menu: '
	opt = gets.chomp.to_i	
end

def pantalla(arry)
	opt = 0
	while opt != 10
		menu()
		opt = solicita_opcion()	

		case opt
		when 1
			arry = agrega_personas(arry)
		when 2 
			arry = edita_persona(arry)
		when 99
			muestrapersonas(arry)
		end

	end
	return arry
end

def agrega_personas(arraypersonas)
	puts 'Para agregar una persona debe ingresar los siguietes datos:'
	puts 'Nombre: '
	nom = gets.chomp.to_i	
	puts 'Edad: '
	ed = gets.chomp.to_i
	puts 'Comuna: '
	comu = gets.chomp.to_i
	puts 'Genero: '
	genero = gets.chomp.to_i
	puts 'La persona, fue agregada exitosamente'
	arraypersonas += [nom, ed, comu, genero] 
end

def edita_persona(arraypersonas)
	#primero listar los nombres 
	for v in arraypersonas
		print "Valor: #{v} "
	end 
	#Segundo editar al elejido 
end

def muestrapersonas(arry)
	print arry
end
# array donde vivira lo que se agregen
# perArray = ['Nombre', 'Edad', ' Comuna', 'Genero']
perArray = []
pantalla(perArray)


