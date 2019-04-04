require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.map do |attribute, options|
    options.map do |option, birds|
      birds.each do |bird|
        if not(pigeon_list.key?(bird))
          pigeon_list.update(bird => {})
        end

        if not(pigeon_list[bird].key?(attribute.to_s))
          pigeon_list[bird].update(attribute.to_s => [])
        end

        if not(pigeon_list[bird][attribute.to_s].include?(option))
          pigeon_list[bird][attribute.to_s] << option
        end
      end
    end
  end
  return pigeon_list
end
