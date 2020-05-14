

def get_name(person)
  return person[:name]
end

def get_favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  access_food = person[:favourites][:snacks]
  return access_food.include?(food)
end

def add_friend_to_friendlist(person, new_friend)
  access_friends_list= person[:friends]
  access_friends_list.push(new_friend)
end

def remove_friend_from_friendlist(person, friend_to_remove)
  access_friends_list =person[:friends]
  access_friends_list -= [friend_to_remove]
end
