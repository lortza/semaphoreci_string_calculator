require 'string_calculator'

describe StringCalculator do

  describe '.add' do
    context 'given an empty string' do
      it 'returns zero' do
        expect(StringCalculator.add('')).to eql(0)
      end
    end

    context 'given a single number' do
      context 'that is single-digit' do
        it 'returns that single-digit number' do
          expect(StringCalculator.add('1')).to eql(1)
        end
      end

      context 'that is multi-digit' do
        it 'returns that multi-digit number' do
          expect(StringCalculator.add('12')).to eql(12)
        end
      end
    end# single number

    context 'given two numbers' do
      context '3,5' do
        it 'returns 8' do
          expect(StringCalculator.add('3,5')).to eql(8)
        end
      end
      context '-3,5' do
        it 'returns 2' do
          expect(StringCalculator.add('-3,5')).to eql(2)
        end
      end
      context '3,-5' do
        it 'returns -2' do
          expect(StringCalculator.add('3,-5')).to eql(-2)
        end
      end
      context '-3,-5' do
        it 'returns -8' do
          expect(StringCalculator.add('-3,-5')).to eql(-8)
        end
      end
    end# two numbers
  end #describe '.add'


end