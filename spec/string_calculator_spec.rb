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


  describe '.subtract' do
    context 'given an empty string' do
      it 'returns zero' do
        expect(StringCalculator.subtract('')).to eql(0)
      end
    end

    context 'given a single number' do
      it 'returns that single-digit number' do
        expect(StringCalculator.subtract('1')).to eql(1)
      end
    end# single number

    context 'given two numbers' do
      context 'it subtracts the second number from the first number' do

        context '5,3' do
          it 'returns 2' do
            expect(StringCalculator.subtract('5,3')).to eql(2)
          end
        end
        context '-5,3' do
          it 'returns -8' do
            expect(StringCalculator.subtract('-5,3')).to eql(-8)
          end
        end
        context '5,-3' do
          it 'returns 8' do
            expect(StringCalculator.subtract('5,-3')).to eql(8)
          end
        end
        context '3,5' do
          it 'returns -2' do
            expect(StringCalculator.subtract('3,5')).to eql(-2)
          end
        end
      end #subtracts first from second
    end# two numbers
  end #.subtract

  describe '.multiply' do
    context 'given an empty string' do
      it 'returns zero' do
        expect(StringCalculator.multiply('')).to eql(0)
      end
    end

    context 'given a single number' do
      context 'that is single-digit' do
        it 'returns that single-digit number' do
          expect(StringCalculator.multiply('5')).to eql(5)
        end
      end

      context 'that is multi-digit' do
        it 'returns that multi-digit number' do
          expect(StringCalculator.multiply('10')).to eql(10)
        end
      end
    end# single number

    context 'given two numbers' do
      context '2,5' do
        it 'returns 10' do
          expect(StringCalculator.multiply('2,5')).to eql(10)
        end
      end
      context '-2,5' do
        it 'returns -10' do
          expect(StringCalculator.multiply('-2,5')).to eql(-10)
        end
      end
      context '-2,-5' do
        it 'returns 10' do
          expect(StringCalculator.multiply('-2,-5')).to eql(10)
        end
      end
    end# two numbers
  end #describe '.multiply'


end