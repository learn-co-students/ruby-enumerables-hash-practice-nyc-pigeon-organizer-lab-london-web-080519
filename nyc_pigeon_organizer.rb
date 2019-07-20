def nyc_pigeon_organizer(data)
  result = {}
  data.each { |key, val|
    val.each { |prop, names|
      names.each { |name|
        if !result[name]
          result[name] = {}
        end
        
        if !result[name][key]
          result[name][key] = []
        end
        
        result[name][key] << prop.to_s
      }
    }
  }
  
  result
end
