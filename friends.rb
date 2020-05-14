require("pry")

def get_name(person)
  return person[:name]
end

def get_favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  access_food = person[:favourites][:snacks]
  binding.pry
  access_food.include?(food)
  binding.pry
end


