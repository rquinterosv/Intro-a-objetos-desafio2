class Carta
    attr_accessor :numero, :pinta
    def initialize()
        @numero = Random.rand (1..13)
        @pinta = ["C", "T", "E", "D"].sample
    end
    def to_s
        return "#{numero} - #{pinta}"
    end
end