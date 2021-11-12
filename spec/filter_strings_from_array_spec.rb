# frozen_string_literal: true

RSpec.describe 'filter_strings_from_array' do
  {
    [1, 2, 3, 'a', 'b', 4] => [1, 2, 3, 4],
    ['A', 0, 'Edabit', 1729, 'Ruby', '1729'] => [0, 1729],
    %w[Nothing here] => []
  }.each do |input, expected_output|
    it "takes #{input} and returns #{expected_output}" do
      expect(filter_strings_from_array(input)).to eq(expected_output)
    end
  end
end
