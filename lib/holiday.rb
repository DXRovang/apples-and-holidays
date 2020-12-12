require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day][1] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    # iterate over seasons, turn them into strings
    s = season.to_s 
    puts s.capitalize + ":"

    holiday_cap = " "
    sup = " "

    holiday_hash[season].each do |holidays, supplies|
      #iterate over holidays and supplies
      holiday = holidays.to_s.split("_")
      # turn symbol into a string
      # turn the string into an array
      holiday.map do |word|
        # iterate each word in array
        word.capitalize!
        end
      holiday_cap = holiday.join(" ")
      # turn array back into string
      supply = supplies.join(", ")
      puts "  " + holiday_cap + ": " + supply
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  return_array = []
  holiday_hash.each do |season, holidays|
    # season is :winter (key), holiday is {hash} christmas
    holidays.each do |holiday, supplies|
      supplies.each do |supply|
        if supply == "BBQ"
          return_array << holiday
        end
      end
    end
  end
  return_array
end

=begin
  holiday_hash = {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
    :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
=end





