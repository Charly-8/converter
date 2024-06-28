def main_menu
    puts "Bienvenido al Conversor de Unidades"
    puts "Por favor, elige una opción:"
    puts "1. Conversión de Longitud"
    puts "2. Conversión de Peso"
    puts "3. Conversión de Temperatura"
    puts "4. Salir"
  end
  
  def longitud_menu
    puts "Conversión de Longitud"
    puts "1. Kilómetros a Millas"
    puts "2. Metros a Pies"
    puts "3. Volver al Menú Principal"
  end
  
  def peso_menu
    puts "Conversión de Peso"
    puts "1. Kilogramos a Libras"
    puts "2. Gramos a Onzas"
    puts "3. Volver al Menú Principal"
  end
  
  def temperatura_menu
    puts "Conversión de Temperatura"
    puts "1. Celsius a Fahrenheit"
    puts "2. Fahrenheit a Celsius"
    puts "3. Volver al Menú Principal"
  end
  
  def convertir_longitud(opcion)
    case opcion
    when 1
      puts "Ingrese la cantidad en kilómetros:"
      km = gets.chomp.to_f
      millas = km * 0.621371
      puts "#{km} kilómetros son #{millas} millas"
    when 2
      puts "Ingrese la cantidad en metros:"
      metros = gets.chomp.to_f
      pies = metros * 3.28084
      puts "#{metros} metros son #{pies} pies"
    else
      puts "Opción no válida"
    end
  end
  
  def convertir_peso(opcion)
    case opcion
    when 1
      puts "Ingrese la cantidad en kilogramos:"
      kg = gets.chomp.to_f
      libras = kg * 2.20462
      puts "#{kg} kilogramos son #{libras} libras"
    when 2
      puts "Ingrese la cantidad en gramos:"
      gramos = gets.chomp.to_f
      onzas = gramos * 0.035274
      puts "#{gramos} gramos son #{onzas} onzas"
    else
      puts "Opción no válida"
    end
  end
  
  def convertir_temperatura(opcion)
    case opcion
    when 1
      puts "Ingrese la temperatura en Celsius:"
      celsius = gets.chomp.to_f
      fahrenheit = (celsius * 9/5) + 32
      puts "#{celsius}°C son #{fahrenheit}°F"
    when 2
      puts "Ingrese la temperatura en Fahrenheit:"
      fahrenheit = gets.chomp.to_f
      celsius = (fahrenheit - 32) * 5/9
      puts "#{fahrenheit}°F son #{celsius}°C"
    else
      puts "Opción no válida"
    end
  end
  
  loop do
    main_menu
    opcion = gets.chomp.to_i
  
    case opcion
    when 1
      longitud_menu
      opcion_longitud = gets.chomp.to_i
      convertir_longitud(opcion_longitud)
    when 2
      peso_menu
      opcion_peso = gets.chomp.to_i
      convertir_peso(opcion_peso)
    when 3
      temperatura_menu
      opcion_temperatura = gets.chomp.to_i
      convertir_temperatura(opcion_temperatura)
    when 4
      puts "Gracias por usar el Conversor de Unidades. ¡Adiós!"
      break
    else
      puts "Opción no válida, por favor intenta de nuevo."
    end
  end
  