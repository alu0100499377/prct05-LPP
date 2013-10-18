# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
   
	
	def initialize(n, d)
	   @num = n
	   @denom = d	
	end

	#nos muestra la representacion en racional
	def to_s
	   "(#{@num}/#{@denom})"
	end

	#FUNCION SUMA
	def suma(n, d)
	   
	      aux_d = @denom*d
	      aux_n1 = (aux_d/@denom)*@num
	      aux_n2 = (aux_d/d)*n
	      aux_n = aux_n1+aux_n2
	   
	
	   #reduzco el resultado a la minima expresion
	   max = gcd(aux_n, aux_d)
	   @denominador = aux_d/max
	   @numerador = aux_n/max

	   fraccion = Fraccion.new(@numerador, @denominador)
	   return fraccion
	
	end

	#FUNCION RESTA
	def resta(n, d)
	   
	      aux_d = @denom*d
	      aux_n1 = (aux_d/@denom)*@num
	      aux_n2 = (aux_d/d)*n
	      aux_n = aux_n1-aux_n2
	   
	
	   #reduzco el resultado a la minima expresion
	   max = gcd(aux_n, aux_d)
	   @denominador = aux_d/max
	   @numerador = aux_n/max

	   #return @numerador, @denominador
	   fraccion = Fraccion.new(@numerador, @denominador)
	   return fraccion
	
	end


	#FUNCION MULTIPLICA
	def mul(n, d)
	   #multiplico y reduzco el resultado a la minima expresion
	   
	   aux_n = n*@num
	   aux_d = d*@denom

	   max = gcd(aux_n, aux_d)
	   @denominador = aux_d/max
	   @numerador = aux_n/max

	   fraccion = Fraccion.new(@numerador, @denominador)
	   return fraccion
	   #return @numerador, @denominador
	end


	#FUNCION DIVIDE
	def div(n, d)
	   #divido y reduzco el resultado a la minima expresion
	   
	   aux_d = n*@denom
	   aux_n = d*@num

	   max = gcd(aux_n, aux_d)
	   @denominador = aux_d/max
	   @numerador = aux_n/max

	   fraccion = Fraccion.new(@numerador, @denominador)
	   return fraccion
	   #return @numerador, @denominador
	end
	
end
