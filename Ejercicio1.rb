# Dado el array:
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
# 1. Utilizando map aumentar el valor de cada elemento del array en 1.
# 2. Utilizando map convertir todos los valores a float.
# 3. Utilizando map convertir todos los valores a string.
# 4. Utilizando reject descartar todos los elementos menores a 5 en el array.
# 5. Utilizando select descartar todos los elementos mayores a 5 en el array.
# 6. Utilizando inject obtener la suma de todos los elementos del array.
# 7. Utilizando group_by agrupar todos los números por paridad (si son pares, es un
# grupos, si son impares es otro grupo).
# 8. Utilizando group_by agrupar todos los números mayores y menores que 6.

aux = []
a.map do |v|
	aux += [v+1]
end
print aux
print "\n"


aux2 = []
a.map do |v|
	aux2 += [v.to_f]
end
print aux2
print "\n"


aux3 = []
a.map do |v|
	aux3 += [v.to_s]
end
print aux3
print "\n"


print a.reject{|i| i < 5}
print "\n"


print a.select{|i| i < 5}
print "\n"


print a.inject{ |sum, n| sum + n }   
print "\n"


print a.group_by {|x| x.even?}
print "\n"


print a.group_by {|x| x > 6}
print "\n"

