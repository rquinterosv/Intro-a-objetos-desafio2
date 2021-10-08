require_relative ('carta.rb')

class Baraja
    attr_accessor :cartas
    def initialize()
        @cartas = []
        

        13.times do |numero|
            ["C", "T", "E", "D"].each do |pinta|
                carta_aux = Carta.new()
                carta_aux.pinta = pinta
                carta_aux.numero = numero + 1
                @cartas.push(carta_aux)
            end
        end
    end

    def barajar()
        @cartas = @cartas.shuffle
    end
    
    def sacar()
        return @cartas.pop
    end

    def repartir_mano()
        naipe = []
            5.times do
                 naipe.push(sacar())
         end
        return naipe
    end
end
# Al crear una baraja (constructor) se deben generar todas las combinaciones de números y pinta y guardarse dentro del arreglo cartas

#prueba = Baraja.new()
#prueba.cartas.each do |c|
#   puts c.to_s
#end


#Crear el método barajar que debe desordenar el arreglo de cartas Tip: Utilizar .shuffle .
#prueba = Baraja.new()
#prueba.barajar()
#prueba.cartas.each do |c|
#    puts c.to_s
#end

#Crear el método sacar que permita retirar la primera carta de la baraja Tip: Utilizar .pop .
#prueba = Baraja.new()
#prueba.sacar()
#puts prueba.sacar.to_s

#Crear el método repartir mano que devolverá un arreglo con las primeras 5 cartas de la baraja.

prueba = Baraja.new()
mano = prueba.repartir_mano()
mano.each do |m|
    puts m.to_s
end