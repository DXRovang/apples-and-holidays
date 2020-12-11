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
  # season is :winter, holiday is :new_years
  # this code seems fine
  s = season.to_s 
  puts s.capitalize + ":"

  holiday_hash[season].each do |holidays, supplies|
    # holiday is :new_years, supplies are Party Hats
     holiday = holidays.to_s
     

    sup = supplies.join(", ")
    puts sup
    end
  end
end

def all_holidays_with_bbq(holiday_hash)

  return_array = []
  holiday_hash.each do |season, holidays|
    # season is winter, holidays are christmas & NY
    holidays.each do |supplies|
      # supplies are Lights and BBQ
      if supplies == "BBQ"
        # put the holiday into an array
        return_array.push(holidays)
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





