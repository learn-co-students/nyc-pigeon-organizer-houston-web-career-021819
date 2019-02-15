require "pry"

def nyc_pigeon_organizer(data)
org_data = {}
    data.each do |attributes, attribute|
      attribute.each do |option, names|
        names.each do |name|
          org_data[name] = {:color => [], :gender => [], :lives => []}
        end
      end
    end

    org_data.each do |name, attributes|
      attributes.each do |attribute, value|
        data.each do |orig_attributes, orig_attribute|
          orig_attribute.each do |orig_attribute, names|
            if names.include?(name) && attribute == orig_attributes
              value << orig_attribute.to_s
            end
          end
        end
      end
    end
org_data
end
