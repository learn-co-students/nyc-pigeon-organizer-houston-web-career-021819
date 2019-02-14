def nyc_pigeon_organizer(data)
  resorted_hash = {}
  data.each do |key, value|
    if key == :color
      value.each do |color, name_array|
        name_array.each do |i|
        new_hash = {}
          if resorted_hash[i] == nil
            color_array = []
            color_array << color.to_s
            new_hash[key] = color_array
            resorted_hash[i] = new_hash
          else
            color_array = []
            color_array = resorted_hash[i][:color]
            color_array << color.to_s
            new_hash[key] = color_array
            resorted_hash[i] = new_hash
          end
        end
      end
    elsif key == :gender
      value.each do |gender, name_array|
        name_array.each do |i|
          new_hash = resorted_hash[i]
          new_hash[key] = [gender.to_s]
          resorted_hash[i] = new_hash
        end
      end
    elsif key == :lives
      value.each do |home, name_array|
        name_array.each do |i|
          new_hash = resorted_hash[i]
          new_hash[key] = [home.to_s]
          resorted_hash[i] = new_hash
        end
      end
    end
  end
  resorted_hash
end
