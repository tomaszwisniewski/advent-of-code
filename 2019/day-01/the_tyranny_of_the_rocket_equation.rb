MODULES_MASSES = './input.txt'.freeze

def calc_fuel_for(mass)
  (mass / 3).ceil - 2
end

def with_each_operator
  total_fuel_needed = 0
  File.open(MODULES_MASSES).each do |mass_string|
    mass = mass_string.to_i
    fuel_for_module = calc_fuel_for(mass)
    total_fuel_needed += fuel_for_module
  end

  puts total_fuel_needed
end

def with_reduce_operator
  total_fuel = File.open(MODULES_MASSES).reduce(0) do |total_fuel_needed, mass_string|
    mass = mass_string.to_i
    total_fuel_needed + calc_fuel_for(mass)
  end

  puts total_fuel
end

with_each_operator
with_reduce_operator
