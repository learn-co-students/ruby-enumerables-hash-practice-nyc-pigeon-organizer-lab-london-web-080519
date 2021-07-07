pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer (data)
  pigeons = {}

  data.each do |first_level, other_levels|
    other_levels.each do |category, array|
      array.each do |name|
        pigeons[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end 
  d = pigeons.keys
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      d.each do |item|
        if bird_name === item
          pigeons[item][:color] << bird_color.to_s
        end 
      end 
    end 
  end 
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      d.each do |item|
        if bird_name === item
          pigeons[item][:gender] << gender.to_s
        end 
      end 
    end 
  end 
  data[:lives].each do |location, name|
    name.each do |bird_name|
      d.each do |item|
        if bird_name === item
          pigeons[item][:lives] << location
        end 
      end 
    end 
  end 
  
  return pigeons 
end 

nyc_pigeon_organizer(pigeon_data)