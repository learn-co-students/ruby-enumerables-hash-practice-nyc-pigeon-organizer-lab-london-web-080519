


def nyc_pigeon_organizer(data)

output = {}

    data.each do |attri, val|
    val.each do |name, array|
    array.each do |pigeon|

            if !output[pigeon]
                    output[pigeon] =
                    {color: [], gender: [], lives: []}
            end
            if output[pigeon]
                    output[pigeon][attri] << "#{name}"
            end
      end
      end
    end
    p output
end
