require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.map do |attribute, options|
    binding.pry
    options.map do |option, birds|
      birds.each do |bird|
        binding.pry
      end
    end
  end
end
