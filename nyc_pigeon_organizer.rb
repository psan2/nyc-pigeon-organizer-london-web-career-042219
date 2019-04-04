require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.map do |attribute, options|
    options.map do |option, birds|
      birds.each do |bird|
        binding.pry
        attribute_str = attribute.to_s

        if not(pigeon_list.key?(bird))
          pigeon_list.update(bird => {})
        end

        if not(pigeon_list[bird].key?(attribute))
          pigeon_list[bird].update(attribute => [])
        end

        if not(pigeon_list[bird][attribute].include?(option))
          pigeon_list[bird][attribute] << option
        end
      end
    end
  end
  return pigeon_list
end
