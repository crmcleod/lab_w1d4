

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

def total_of_everyones_money(people)
  total_money=0
  for person in people
    each_persons_money = person[:monies]
    total_money += each_persons_money
  end
  return total_money
end

def new_money_balance(lender, lendee, amount_to_loan)
  #access money of lender
  money_lenders_wallet = lender[:monies]
  #access money of lendee
  money_lendees_wallet = lendee[:monies]
  #deduct amount from lender
  new_money_lenders_balance = money_lenders_wallet - amount_to_loan
  #add amount to lendee
  new_money_lendees_balance = money_lendees_wallet + amount_to_loan 
  #put those into array
  new_amounts = [new_money_lenders_balance, new_money_lendees_balance]
  
  return new_amounts
end