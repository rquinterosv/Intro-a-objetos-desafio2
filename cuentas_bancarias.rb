class Usuario 
    attr :nombre

    def initialize(nombre, saldo_total, cuentas_bancarias)
        @nombre = nombre
        @saldo_total = saldo_total
        @cuentas_bancarias = cuentas_bancarias
        puts "Hola #{@nombre}, tienes $#{@saldo_total} en tu cuenta"
    end
    def suma(saldo_total)
        @saldo_total = reduce.saldo
    end
end

class CuentaBancaria
    attr_accessor :banco, :numero_de_cuenta, :saldo

    def initialize(banco, numero_de_cuenta, saldo = 0)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
        puts "Se creo la cuenta en #{@banco}"
    end

    def transferir(monto, c_destino)
        
        if @saldo >= monto
            @saldo -= monto
            c_destino.saldo += monto
        else
            "No tienes dinero"
        end
        puts "El nuevo saldo para #{@numero_de_cuenta} es #{@saldo}"
        puts "#{c_destino.numero_de_cuenta} saldo nuevo #{c_destino.saldo}"
    end

end


c1 = CuentaBancaria.new("Banco A", "12345678-9", 20000)
c2 = CuentaBancaria.new("Banco B", "98765423-1", 20000)
c3 = CuentaBancaria.new("Banco B", "4565456456-9", 20000)
p1 = Usuario.new("Rafa", 0, [c1, c3])
p2 = Usuario.new("Ignacio", 0, [c2])

c1.transferir(10000, c2)
