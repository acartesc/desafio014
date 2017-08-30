a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

#1. Utilizando map aumentar el valor de cada elemento del array en 1.
b = a.map {|e| e + 1}
print "#{b} \n"
print "######################### \n"

#2. Utilizando map convertir todos los valores a float.
c = a.map {|e| e.to_f}
#otra forma c = a.map(&:to_f)
print "#{c} \n"
print "######################### \n"

#3. Utilizando map convertir todos los valores a string.
d = a.map {|e| e.to_s}
print "#{d} \n"
print "######################### \n"

#4. Utilizando reject descartar todos los elementos menores a 5 en el array.
e = a.reject {|e| e < 5}
print "#{e} \n"
print "######################### \n"

#5. Utilizando select descartar todos los elementos mayores a 5 en el array.
f = a.select {|e| e > 5}
print "#{f} \n"
print "######################### \n"

#6. Utilizando inject obtener la suma de todos los elementos del array.
g = a.inject {|sum, e| sum += e}
print "#{g} \n"
print "######################### \n"

#7. Utilizando group_by agrupar todos los números por paridad (si son pares, es un grupos, si son impares es otro grupo).
h = a.group_by {|e| e.even?}
print "#{h} \n"
print "######################### \n"

#8. Utilizando group_by agrupar todos los números mayores y menores que 6.
i = a.group_by {|e| e != 6}
print "#{i} \n"
print "######################### \n"