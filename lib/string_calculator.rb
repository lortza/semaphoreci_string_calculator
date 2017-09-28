class StringCalculator

  def self.add(nums='')
    nums == '' ? 0 : nums.split(',').map(&:to_i).reduce(:+)
  end

end

# p StringCalculator.add('1,6')