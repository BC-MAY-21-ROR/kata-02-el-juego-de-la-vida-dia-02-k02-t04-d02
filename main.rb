# frozen_string_literal: true

require_relative 'grid'
require_relative 'cell'
require_relative 'display'

class Main
  def initialize
    puts('Ancho de la matriz: ')
    width_grid = gets.chomp.to_i
    puts('Largo de la matriz: ')
    long_grid = gets.chomp.to_i

    grid_builed = Grid.new(width_grid, long_grid)
    grid_builed.create_matrix

    matriz = grid_builed.get_matriz

    (0..grid_builed.get_long - 1).each do |i|
      count = 0
      (0..grid_builed.get_width - 1).each do |j|
        status_cell = matriz[i][j]
        neighbours = []
        # Imprime el estado de la celula
        # puts current_cell
        neighbours.push(matriz[i - 1][j - 1])
        neighbours.push(matriz[i - 1][j])
        neighbours.push(matriz[i - 1][j + 1])
        neighbours.push(matriz[i][j - 1])
        neighbours.push(matriz[i][j + 1])
        if i < 4
          neighbours.push(matriz[i + 1][j - 1])
          neighbours.push(matriz[i + 1][j])
          neighbours.push(matriz[i + 1][j + 1])

        end

        count += 1

        # puts count
        current_cell = Cell.new(status_cell, neighbours)

        current_cell.change_state

        matriz[i][j] = current_cell.set_new_state_cell_in_grid
      end
    end
    display = Display.new(grid_builed.get_matriz, matriz, width_grid, long_grid)
    display.prints
  end
end
main = Main.new
