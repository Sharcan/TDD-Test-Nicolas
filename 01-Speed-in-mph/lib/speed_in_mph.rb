# frozen_string_literal: true

# TO DO: write a method that takes a float as an argument and
# returns it converted from kph (km/h) to mph (mi/h)
def speed_in_mph(speed)
  return 'Please pass a valid speed.' unless speed.is_a?(Numeric)

  mph = 0.6213711922
  new_speed_value = speed * mph
  new_speed_value.round(2)
end
