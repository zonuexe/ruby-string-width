module StringWidth
  module Tanasinn
    def self.string_width_as_single(str)
      str.each_char.inject(0){ |acc, char|
        acc + wcwidth_amb_as_single(char)
      }
    end

    def self.string_width_as_double(str)
      str.each_char.inject(0){ |acc, char|
        acc + wcwidth_amb_as_double(char)
      }
    end
  end
end
