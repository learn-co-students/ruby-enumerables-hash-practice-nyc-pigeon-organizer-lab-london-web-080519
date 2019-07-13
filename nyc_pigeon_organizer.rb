def nyc_pigeon_organizer(data)
  # write your code here!

    names_array = data[:gender].values.flatten.uinq
    object = Hash.new

    names_array.each do |item|
      object[item] = {}
    end

    object.keys.each do |item|
      data[:color].keys.each do |element|
        if data[:color][element].include?(object[item])
          object[item][:color].push(element)
        end
      end
      data[:gender].keys.each do |element|
        if data[:gender][element].include?(object[item])
          object[item][:gender].push(element)
        end
      end
      data[:lives].keys.each do |element|
        if data[:lives][element].include?(object[item])
          object[item][:lives].push(element)
        end
      end
      object
end
