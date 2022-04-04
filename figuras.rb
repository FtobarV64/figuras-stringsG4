# Requerimientos
# ● Se debe imprimir en pantalla un menú. La estructura es la siguiente:
# Seleccione una figura:
# 1. Cuadrado
# 2. Triángulo
# 3. Pirámide
# 4. Salir
# ● El programa debe solicitar el ingreso de una opción.
# ● Si se ingresa una opción no válida, se debe mostrar en pantalla que la opción no es
# válida y volver a solicitar -al jugador número uno- el ingreso de una opción.
# ● Al ingresar una opción válida, distinta a la opción Salir (4), se debe preguntar por el
# ingreso de un número:
# Ingrese un número:

# Menu
puts "Seleccione una figura"
puts "1. Cuadrado"
puts "2. Triángulo"
puts "3. Pirámide"
puts "4. Salir"
opt = 0
opt_nbr=1
opt = gets.to_i
while opt <1 or opt >4
    puts "Opción no válida, favor ingrese una opción válida"
    opt = gets.to_i
end

if opt == 4
    puts "Gracias por participar"
else
    # Validamos que el número sea mayor a 1
    while opt_nbr<2
        puts "Ingrese un número: "
        opt_nbr = gets.to_i
    end
    # Validamos la opción de la figura seleccionada
    if opt == 1 #Cuadrado, dibujamos la figura de acuerdo al parámetro opt_nbr
        i=0
        while i<opt_nbr
            j=0
            while j<opt_nbr
                print "*"
                j+=1
            end
            print "\n"
            i+=1
        end
    elsif opt == 2 #Tríangulo, dibujamos la figura de acuerdo al parámetro opt_nbr
        i=0
        while i<opt_nbr
            j=0
            while j<i+1
                print "*"
                j+=1
            end
            print "\n"
            i+=1
        end 
    else #Piramide, dibujamos la figura de acuerdo al parámetro opt_nbr
        i=0
        while i<opt_nbr
            j=0
            while j<i+1
                print "*"
                j+=1
            end
            print "\n"
            i+=1
        end

        i=opt_nbr-1
        while i>0
            j=i
            while j>0
                print "*"
                j=j-1
            end
            print "\n"
            i-=1
        end
    end
end