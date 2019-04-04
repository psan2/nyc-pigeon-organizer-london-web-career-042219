require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.map do |attribute, options|
    options.map do |option, birds|
      birds.each do |bird|
          binding.pry
          pigeon_list[bird][attribute] = option
        end
      end
    end
  end
end
