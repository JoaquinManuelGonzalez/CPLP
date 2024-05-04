def ej1
    Puts 'Hola, ¿Cuál es tu nombre?'                                        # Sintáctico: Es "puts".
    nom = gets.chomp
    puts 'Mi nombre es ', + nom                                             # Sintáctico: La "," está de más.
    puts 'Mi sobrenombre es 'Juan''
    puts 'Tengo 10 años'
    meses = edad*12                                                         # Semántico: La variable "edad" no existe. Detectado en Ejecución.
    dias = 'meses' *30                                                      # Sintáctico: No es posible multiplicar strings.
    hs= 'dias * 24'
    puts 'Eso es: meses + ' meses o ' + dias + ' días o ' + hs + ' horas'   # Semántico: Los "+" para concatenar van por fuera de las comillas.
                                                                            # Detectado en Ejecución. 
    puts 'vos cuántos años tenés'
    edad2 = gets.chomp
    edad = edad + edad2.to_i
    puts 'entre ambos tenemos ' + edad + ' años'
    puts '¿Sabes que hay ' + name.length.to_s + ' caracteres en tu nombre, ' + name + '?'   #Sintáctico: la variable "name" no está definida.
end
