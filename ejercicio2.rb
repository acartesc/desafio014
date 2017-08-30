nombres = ['Violeta', 'Andino', 'Clemente', 'Javiera', 'Paula', 'Pia', 'Ray']

# 1. Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método .select.
a = nombres.select { |e| e.length > 5 }
print "#{a} \n"
print "######################### \n"

# 2. Utilizando .map crear una arreglo con los nombres en minúscula.
b = nombres.map(&:downcase)
print "#{b} \n"
print "######################### \n"

# 3. Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.
c = nombres.select { |e| e[0] == 'P' }
print "#{c} \n"
print "######################### \n"

# 4. Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.
d = nombres.map(&:length)
print "#{d} \n"
print "######################### \n"

# 5. Utilizando .map y .gsub eliminar las vocales de todos los nombres.
e = nombres.map { |e| e.gsub(/[AEIOUaeiou]/, '') }
print "#{e} \n"
print "######################### \n"
