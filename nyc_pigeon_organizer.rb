def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key, value_array|
    value_array.each do |value, name_array|
      name_array.each do |names|
        if !new_hash[names]
          new_hash[names] = {}
        end

        if !new_hash[names][key]
          new_hash[names][key] = []
        end

        new_hash[names][key].push(value.to_s)
      end
    end
  end
  return new_hash
end
