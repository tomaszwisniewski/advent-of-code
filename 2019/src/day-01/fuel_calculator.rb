class FuelCalculator
  def self.fuel_for(mass)
    fuel_mass = (mass / 3).floor - 2

    return 0 if fuel_mass <= 0
    fuel_mass + fuel_for(fuel_mass)
  end
end
