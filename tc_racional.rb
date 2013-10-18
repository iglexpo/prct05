#!/usr/bin/env ruby 

# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
	def test_Igualdad
    	assert_equal("-1/14", Fraccion.new(3,2).resta(11,7) )
    	assert_equal("33/14", Fraccion.new(11,7).producto(3,2) )
    	assert_not_equal("21/22", Fraccion.new(11,7).suma(3,2) )
 	end
  	
  	def test_Fallo
    	assert_equal("31/9", Fraccion.new(3,2).division(11,7) )
  	end
end
