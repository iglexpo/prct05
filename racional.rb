#!/usr/bin/env ruby 

# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion # define la clase Fraccion

  def initialize (numerador,denominador)
      # atributos      
      @numerador = numerador;
      @denominador = denominador; 
  end

  def simplificar
      divisor = gcd(@numerador, @denominador)
    if  divisor != 1 # Si el maximo comun divisor es 1, es q ambos numeros son primos entre si, sino se pueden simplificar
      puts " La fraccion #{@numerador}/#{@denominador} se puede simplificar"
      @numerador = @numerador / divisor       #Simplificamos el numerador
      @denominador = @denominador / divisor   #Simplificamos el denominador
      puts " Fraccion simplificada => #{@numerador}/#{@denominador} "
    else
      puts " La fraccion #{@numerador}/#{@denominador} no se puede simplificar"
      puts "y ya esta en su minima expresion"
    end
  end

  def numerador
    return @numerador
  end

  def denominador
    return @denominador
  end

  def to_s 
   "#{@numerador}/#{@denominador}"
  end
  
  def suma(a,b) # suma de fracciones
    "#{@numerador}/#{@denominador} + #{a}/#{b} ="
    aux = (@denominador/gcd(@denominador,b)) * b # Calculo del mcm usando la propiedad (a*b/mcd(a,b))
    aux2 = ((aux/@denominador) * @numerador) + ((aux/b) * a) # Calculo de la suma
    # Mostrar por pantalla resultado     
    if aux2 % aux == 0 # Compruebo si la divison es exacta para imprimir el resultado de la division
      aux3 = aux2/aux
    else
     "#{aux2}/#{aux}"
    end  
  end
   
   
  def resta(a,b) #resta de fracciones
    "#{@numerador}/#{@denominador} + #{a}/#{b} ="
    aux = (@denominador/gcd(@denominador,b)) * b # Calculo del mcm usando la propiedad (a*b/mcd(a,b)) 
    aux2 = ((aux/@denominador) * @numerador) - ((aux/b) * a) # Calculo de la resta
    # Mostrar por pantalla el resultado
    if aux2 % aux == 0 # Compruebo si la divison es exacta para imprimir el resultado de la division
      aux3 = aux2/aux
      "#{aux3}"
    else
      "#{aux2}/#{aux}"
    end
  end   
   
    
  def producto(a,b) # Producto de fracciones
    "#{@numerador}/#{@denominador} * #{a}/#{b} ="
    # Calculo del producto
    aux = @denominador * b
    aux2 = @numerador * a
    # Mostrar por pantalla resultado
    if aux2 % aux == 0 # Compruebo si la divison es exacta para imprimir el resultado de la division
      aux2/aux
    else
      "#{aux2}/#{aux}"
    end
  end
       
  def division(a,b) # Division de fracciones
    "#{@numerador}/#{@denominador} / #{a}/#{b} ="
    # Calculo del producto
    aux = @denominador * a
    aux2 = @numerador * b
    # Mostrar por pantalla resultado
    if aux2 % aux == 0 # Compruebo si la divison es exacta para imprimir el resultado de la division
      aux2/aux
    else
      "#{aux2}/#{aux}"
    end
  end
end


puts
puts "-  PRACTICA 5 - NUMEROS RACIONALES   -"
puts

racional1 = Fraccion.new(12,8)
racional2 = Fraccion.new(11,7)
print " 1ra Fraccion => "
puts racional1.to_s
print " 2da Fraccion => "
puts racional2.to_s
puts

racional1.simplificar
puts
racional2.simplificar

puts
puts " Operaciones con dos fracciones"
puts

print " Suma de dos fracciones = "
puts racional1.suma(racional2.numerador,racional2.denominador)

print " Resta de dos fracciones = "
puts racional1.resta(racional2.numerador,racional2.denominador)

print " Multiplicacion de dos fracciones = "
puts racional1.producto(racional2.numerador,racional2.denominador)

print " Division de dos fracciones = "
puts racional1.division(racional2.numerador,racional2.denominador)

puts

