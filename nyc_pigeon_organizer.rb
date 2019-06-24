def nyc_pigeon_organizer(data)
  #create an empty hash to store data
 my_pigeons = {}
 #puts "keys: #{data.keys} / values: #{data.values}"
 data.values.each do |attribute|  #look inside the first structure, color/gender/lives
   attribute.each do | value, array | #look inside the next structure, values(options) for attributes
      array.each do |name| #third, containing the names is an array. get the names out of the arrays
           my_pigeons[name] =
            {
              color: nil,
              gender: nil,
              lives: nil
            }
       end
    end

 end
my_pigeons
end
