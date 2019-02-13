=begin
### this is not an efficient way to do it, it needs to repeat according to how many birds and how many features we have, it doesn't work (unrealistic to work) when the data is massive.
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.collect do |info_type, info|
    if info_type == :color
      pigeon_list["Theo"]={}
      pigeon_list["Theo"][info_type] = []
     info.collect do |each_color, names|
      if names.include?("Theo")
       pigeon_list["Theo"][info_type] << each_color.to_s
      end
     end
    end
  end
  pigeon_list
end

=end

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.collect do |categories, hashes|
    hashes.collect do |features, names|
    names.collect do |name|
    pigeon_list[name] ||= {}
    pigeon_list[name][categories] ||= []
    pigeon_list[name][categories]  << features.to_s
  end
 end
 end
 pigeon_list
end