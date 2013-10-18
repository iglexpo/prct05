 Practica 5 de Lenguajes y Paradigmas de la Programación

- Cuestiones:
- ¿Cual es el error en el codigo del metodo para calcular el maximo comun divisor?

El error en el codigo está en la parte de la condición de parada del "while". La condición establecida es "while v==0", el problema es que a la hora de entrar en el bucle, v no es igual a cero, por eso no itera y devuelve nil. Para corregirlo hay que cambiar esa condicion, quitando lo de igual a cero, por distinto de cero y quedaría de la forma "while v != 0" y ahora iterara dentro del bucle y devolvera el maximo comun divisor.

- ¿Que comandos del depurador utilizo para calcular el maximo comun divisor? Describa la sesión de depuración.
	- Comandos:
		- "s" para poder ejecutar el programa paso a paso y ver con detalle la ejecucion del mismo
		- "b" que establece un punto de ruptura en el programa en el numero de linea que sea establecido


- Descripcion de la implementacion de la practica

	- gcd.rb => fichero donde se encuentra implementado el maximo comun divisor
		
	- racional.rb => fichero donde se encuentra implementada la clase "Fraccion" en la cual están implemtandos y descritos los metodos necesarios para el funcionamiento del programa acorde con lo solicitado en la descripción de la practica.
	
	- Main.rb => fichero que contiene el programa principal, incluyendo la clase Fraccion, contenida en el fichero racional.rb y especificado en las primeras lienas en requiere "./racional.rb". En este fichero se crean dos objetos que son dos numeros raciones y donde se ejecutan las operaciones requeridas en la practica. Una de las fracciones es reducible y la otra no.

	- tc_racional.rb => fichero que contiene la test unit de la clase racional en la cual se han establecido una serie de pruebas para comprobar el correcot funcionamiento del codigo. Resultado de la pruebas:

					Loaded suite tc_racional
					Started
					F.
					Finished in 0.007806 seconds.

  					1) Failure:  # Fallo intencionado
					test_Fallo(Test_Fraccion) [tc_racional.rb:16]:
					<"31/9"> expected but was
					<"21/22">.

					2 tests, 4 assertions, 1 failures, 0 errors



