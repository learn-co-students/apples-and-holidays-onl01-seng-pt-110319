require 'pry'
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday|
    holiday[1] << supply
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day] << supply
holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name]=supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supplies=[]
  holiday_hash[:winter].each do |x|
    supplies << x.flatten
  end
  p supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  answer = ""
  holiday_hash.each do |season, holiday|
    capital_season = season.to_s.capitalize
    answer << "#{capital_season}:\n"
    holiday.each do |name, supplies|
      capital_name_array = name.to_s.split('_')
        capital_name = ""
        capital_name_array.each do |array|
          capital_name << " #{array.capitalize}"
        end
      capital_supplies = supplies.join(', ')
      answer << " #{capital_name}: #{capital_supplies}\n"
    end
  end
  puts answer
end

def all_holidays_with_bbq(holiday_hash)
  holiday_symbols = []
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.each do |season, holiday|
    holiday.each do |name, supplies|
      if supplies.include?("BBQ")
        holiday_symbols << holiday.keys
      end
  end
end
  holiday_symbols.flatten
end
