# frozen_string_literal: true

class Display
  def initialize(matrix_gen_one, matrix_gen_two, long, width)
    @matrix_one = matrix_gen_one
    @matrix_two = matrix_gen_two
    @long = long
    @width = width
  end

  def print_generation_one
    puts 'Generation One'
    (0..@long - 1).each do |i|
      cadena = ''
      (0..@width - 1).each do |x|
        cadena += @matrix_one[i][x]
      end
      puts cadena
    end
  end

  def print_generation_two
    puts 'Generation two'
    (0..@long - 1).each do |i|
      cadena = ''
      (0..@width - 1).each do |x|
        cadena += @matrix_two[i][x]
      end
      puts cadena
    end
  end

  def prints
    print_generation_one
    print_generation_two
  end
end
