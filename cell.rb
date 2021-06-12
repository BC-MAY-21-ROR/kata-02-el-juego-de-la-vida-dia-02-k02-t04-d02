# frozen_string_literal: true

class Cell
  def initialize(status, neighbours)
    @status = status
    @neighbours = neighbours
  end

  def check_lives_neighbors
    neighbours_lives = 0

    @neighbours.each do |_neighbours|
      neighbours_lives += 1 if neighbours = '*'
    end

    neighbours_lives
  end

  def check_cell_live_die
    neighbours_lives = check_lives_neighbors

    # Condiciones
    # celula viva con mas de 3 vecinos vivos muere
    @status = '.' if neighbours_lives > 3 && @status == '*'

    # celula viva con menor de dos vecinos vivos muere
    @status = '.' if neighbours_lives < 2 && @status == '*'

    # celula muerta con 3 vecinos vivos  revive
    @status = '*' if neighbours_lives == 3 && @status == '.'
  end

  def change_state
    check_cell_live_die
  end

  def set_new_state_cell_in_grid
    @status
  end
end
