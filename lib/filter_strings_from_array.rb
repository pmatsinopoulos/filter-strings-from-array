# frozen_string_literal: true

def filter_strings_from_array(input)
  input.reject { |element| element.is_a?(String) }
end
