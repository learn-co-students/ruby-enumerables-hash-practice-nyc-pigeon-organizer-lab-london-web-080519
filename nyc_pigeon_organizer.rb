require "pry"
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  name_p = ""
  
  data.each do |hash, att| # hash --> :color in first iterat. att --> purple: [], grey: [] ..etc
    
    att.each do |key, value| # key --> :purple. value --> ["Theo", "Peter Jr.", "Lucky"]
      value.each do |name| # name --> "Theo"
      
        if !pigeon_list[name] 
          pigeon_list[name]={}
          
        end # if name
       
      
        if !pigeon_list[name][hash]
          
          pigeon_list[name][hash]= []
          

        end # if name & hash  
          # if name is exist and hash add keys as string in array --> ["Theo"][color]= [purple]
          pigeon_list[name][hash].push(key.to_s)
             
         
        

      end # value 
     
     
    end # att
    
  end # data

   
 pigeon_list
  # binding.pry
end

