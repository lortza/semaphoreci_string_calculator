class StringCalculator

  def self.add(nums='')
    nums == '' ? 0 : nums.split(',').map(&:to_i).reduce(:+)
  end

  def self.subtract(nums='')
    nums == '' ? 0 : nums.split(',').map(&:to_i).reduce(:-)
  end

  def self.multiply(nums='')
    nums == '' ? 0 : nums.split(',').map(&:to_i).reduce(:*)
  end

  def self.divide(nums='')

    if is_empty(nums)
      0
    else
      num1 = nums.split(',')[0].to_i
      num2 = nums.split(',')[-1].to_i
      if num1 % num2 == 0
        as_integers(nums).reduce(:/)
      else
        as_floats(nums).reduce(:/)
      end
    end
  end #divide

  private

  def self.is_empty(nums)
    nums == ''
  end

  def self.has_1_input(nums)
    nums.split(',').length == 1
  end

  def self.as_integers(nums)
    nums.split(',').map(&:to_i)
  end

  def self.as_floats(nums)
    nums.split(',').map(&:to_f)
  end

end #StringCalculator

# p StringCalculator.add('1,6')