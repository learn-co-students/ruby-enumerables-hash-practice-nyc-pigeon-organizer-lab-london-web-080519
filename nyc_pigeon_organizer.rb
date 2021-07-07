def nyc_pigeon_organizer(data)
  result = {}
  data.each { |key, val|
    val.each { |prop, names|
      names.each { |name|
        
        result[name] = {} if !result[name]
        
        result[name][key] = [] if !result[name][key]
        
        result[name][key] << prop.to_s
      }
    }
  }
  result
end
