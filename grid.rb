# frozen_string_literal: true

class Grid
  def initialize(width, long)
    @width = width
    @long = long
    @matriz = []
  end

  def get_long
    @long
  end

  def get_width
    @width
  end

  def get_matriz
    @matriz
  end

  def create_matrix
    @long.times do |i|
      @matriz.push([])
      @width.times do |_j|
        @matriz[i].push([' . ', ' * '].sample)
      end
    end

    # Imprime la matriz generada en este metodo
    # (0..@long-1).each do |i|
    #   cadena = ''
    #   (0..@width-1).each do |x|
    #     cadena += @matriz[i][x]

    #   end
    #   puts cadena

    # end
  end

  def fill; end
end
