# The exercise is part of a cell based simulation. 
# The simulation is given a 3x3 grid with specific cells active.
# Count the number of active neighbors around a given cell.
# Every cell has eight neighbors, which are the cells that are
# horizontally, vertically, or diagonally adjacent. 
#
# For example:
# ┌─────┬─────┬─────┐ 
# │  1  │  2  │  3  │ 
# ├─────┼─────┼─────┤
# │  4  │cell │  5  │
# ├─────┼─────┼─────┤
# │  6  │  7  │  8  │
# └─────┴─────┴─────┘
# 
# Write a program that counts the number of active cells 
# around the center cell (labeled cell).

###################################################
# Example 1:
# ┌─────┬─────┬─────┐
# │     │     │     │
# │     │     │     │
# ├─────┼─────┼─────┤
# │     │█████│     │
# │     │█████│     │
# ├─────┼─────┼─────┤
# │     │     │     │
# │     │     │     │
# └─────┴─────┴─────┘
# The answer should be 0.

grid_one = [
    ['inactive', 'inactive', 'inactive'],
    ['inactive', 'active', 'inactive'],
    ['inactive', 'inactive', 'inactive']
]

# Example 2:
# ┌─────┬─────┬─────┐
# │█████│█████│     │
# │█████│█████│     │
# ├─────┼─────┼─────┤
# │     │█████│     │
# │     │█████│     │
# ├─────┼─────┼─────┤
# │     │     │     │
# │     │     │     │
# └─────┴─────┴─────┘
# The answer should be 2.

grid_two = [
    ['active', 'active', 'inactive'],
    ['inactive', 'active', 'inactive'],
    ['inactive', 'inactive', 'inactive']
]

# Example 3:
# ┌─────┬─────┬─────┐
# │█████│█████│█████│
# │█████│█████│█████│
# ├─────┼─────┼─────┤
# │     │█████│     │
# │     │█████│     │
# ├─────┼─────┼─────┤
# │     │     │     │
# │     │     │     │
# └─────┴─────┴─────┘
# The answer should be 3.

grid_three = [
    ['active', 'active', 'active'],
    ['inactive', 'active', 'inactive'],
    ['inactive', 'inactive', 'inactive']
]

# Example 4:
# ┌─────┬─────┬─────┐
# │█████│█████│█████│
# │█████│█████│█████│
# ├─────┼─────┼─────┤
# │     │█████│     │
# │     │█████│     │
# ├─────┼─────┼─────┤
# │     │█████│     │
# │     │█████│     │
# └─────┴─────┴─────┘
# The answer should be 4.

grid_four = [
    ['active', 'active', 'active'],
    ['inactive', 'active', 'inactive'],
    ['inactive', 'active', 'inactive']
]

###################################################
# In this example, we assume it is always a 3x3 grid
# in which the center cell is the 'active' cell
# Since every cell in this grid is adjacent to the center
# either horizontally, vertically, or diagonally,
# we can just count the number of active cells in the grid 
# (minus 1 for the center cell) and return that count
###################################################

def count_active_cells_center(grid_array)
    counter = 0
    grid_array.each do |row|
      row.each do |square|
        counter += 1 if (square == 'active') 
      end
    end
    puts counter - 1
  end
  
  # count_active_cells_center(grid_one)
  # count_active_cells_center(grid_two)
  # count_active_cells_center(grid_three)
  # count_active_cells_center(grid_four)

###################################################
# Bonus Exercise:
# Write a program that counts the number of active cells 
# around the top left cell (labeled 1).
###################################################

# Example 5:
# ┌─────┬─────┬─────┐
# │█████│     │     │
# │█████│     │     │
# ├─────┼─────┼─────┤
# │     │     │     │
# │     │     │     │
# ├─────┼─────┼─────┤
# │     │█████│     │
# │     │█████│     │
# └─────┴─────┴─────┘
# The answer should be 0.

grid_five = [
    ['active', 'inactive', 'inactive'],
    ['inactive', 'inactive', 'inactive'],
    ['inactive', 'active', 'inactive']
]

# Example 6:
# ┌─────┬─────┬─────┐
# │█████│█████│     │
# │█████│█████│     │
# ├─────┼─────┼─────┤
# │     │     │█████│
# │     │     │█████│
# ├─────┼─────┼─────┤
# │     │     │█████│
# │     │     │█████│
# └─────┴─────┴─────┘
# The answer should be 1.

grid_six = [
    ['active', 'active', 'inactive'],
    ['inactive', 'inactive', 'active'],
    ['inactive', 'inactive', 'active']
]

###################################################
# In this example, we assume it is always a 3x3 grid
# in which the top left cell is the 'active' cell
# This position is grid[0][0]
# The only cells in this grid that are adjacent to the
# top left cell either horizontally, vertically, or diagonally 
# are grid[0][1], grid[1][0], and grid[1][1]
# So we need to do an additional step using the indices
# of these three cells, comparing whether active or !active
# Then we can return the count of the active cells
###################################################

def count_active_cells_top_left(grid_array)
    counter = 0
    flat_grid_array = grid_array.flatten
    flat_grid_array.each.with_index do |square, index|
        if (index == 1 || index == 3 || index == 4)
        counter += 1 if (square == 'active')
        end
    end
    puts counter
end

# count_active_cells_top_left(grid_one)
# count_active_cells_top_left(grid_two)
# count_active_cells_top_left(grid_three)
# count_active_cells_top_left(grid_four)

# count_active_cells_top_left(grid_five)
# count_active_cells_top_left(grid_six)

###################################################




