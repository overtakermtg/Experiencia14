# Dado el arreglo
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
# Se pide:
# 1. Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método
# .select.
# 2. Utilizando .map crear una arreglo con los nombres en minúscula.
# 3. Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.
# 4. Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada
# nombre.
# 5. Utilizando .map y .gsub eliminar las vocales de todos los nombres.

print nombres.select{|i| i.size() > 5}
print "\n"


print nombres.map{|i| i.downcase()}
print "\n"


print nombres.select{|i| i[0] == "P"}
print "\n"


print nombres.map{|i| [i.size()] }
print "\n"


print nombres.map{|i| i.gsub(/[aeiou]/, '*')    }
print "\n"