require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |hol, sup|
    sup.push(supply)   
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  str = supply.split(" ").map{|w|w.capitalize}
   str = str.join(" ")
  holiday_hash[:spring][:memorial_day].push(str)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # new_hsh = holiday_hash.clone.each do |sea, hol|
    # if sea == season
    #   hol.each do |h, s|
        
    #     if h != holiday_name
             holiday_hash[season][holiday_name] = supply_array
            # s.each do |sup|
           
            #   if sup.include?(supply_array)
                
            #   end
            # end
  #       end
  #     end
  #   end
  # end
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
   n_arr = []
   ans = []
   n_arr = holiday_hash[:winter].merge
   #binding.pry
   n_arr.each do |h, s|
     ans.push(s)
     #binding.pry
     
    #binding.pry
   end
   ans = ans.flatten
   #binding.pry
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.map do |sea, hol|
    puts "#{sea.capitalize}:"
    hol.map do |h, s|
    if h.to_s.include?"_"
      puts "  #{h.to_s.split("_").map(&:capitalize).join(' ')}:" " #{s.each{|sup|}.join(", ")}"
    else
      #h.to_s.each_char{|c|c}.split("_").join(", ")
       puts "  #{h.capitalize}:"" #{s.each{|sup|}.join(", ")}"
       end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  arr = []
   holiday_hash.map do |sea, hol|
      hol.map do |h, s|
        if s.include?("BBQ")
           
         arr.push(h)
  
        end
      end
     end
     arr
end







