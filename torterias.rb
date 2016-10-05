class Torta 
  attr_reader :main_ingredient

  def initialize (main_ingredient) 
    @main_ingredient = main_ingredient
  end 

  def time_in_oven(main_ingredient)
      if main_ingredient == "jamon"
        oven_time = 5          
      elsif main_ingredient === "pollo"
        oven_time = 8         
      elsif main_ingredient === "queso"
        oven_time = 3        
      elsif main_ingredient === "bistec"
        oven_time = 10 
      end 
      p "#{oven_time} miniutos de horneado"   
  end 
end

class LoteTortas < Torta
   @@lote = []

   def initialize
   end 

  def add_torta(*tray)
    lote_original = []
    1.times do 
      lote_original << tray
    end
    @@lote = lote_original.flatten
  end 

  def get_torta
    @@lote.each do |torta|
      time_in_oven(torta.main_ingredient)
    end
  end 
end    


class OvenAlarm < Torta 
  def initialize 
  end 

  def start_baking  
    @start = Time.now
  end   

  def open_oven 
      if main_ingredient == "jamon" && Time.now == @start + 60 * 5 
        "Abre el horno, tortas de jamón listas" 
      elsif main_ingredient == "pollo" && Time.now == @start + 60 * 8 
        "Abre el horno, tortas de pollo listas" 
      elsif main_ingredient == "queso" && Time.now == @start + 60 * 3 
        "Abre el horno, tortas de queso listas"
      elsif main_ingredient == "bistec" && Time.now == @start + 60 * 10 
        "Abre el horno, tortas de bistec listas"  
      end 
  end

  end 


torta1 = Torta.new("pollo")
torta2 = Torta.new("jamon")
torta3 = Torta.new("queso")


lote_tortas = LoteTortas.new
lote_tortas1 = OvenAlarm.new 


p torta1.time_in_oven("pollo")

tortas_tray = [torta1, torta2, torta3]

lote_tortas.add_torta(torta1, torta2, torta3)
lote_tortas.get_torta
lote_tortas1.open_oven
