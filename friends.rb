def get_name(person)
  return person[:name]
end

def get_fav_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
 for snack in person[:favourites][:snacks]
  if snack == food
    return true
  end
end
return false
end

def add_friend(person, new_friend)
  person[:friends].push(new_friend)
end


def remove_friend(person, friend)
  person[:friends].delete(friend)

end

def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def lend_money(lender, borrower, money)
  lender[:monies] -= money
  borrower[:monies] += money
end
#
# def fav_food_all(people)
#   fav_food = []
#   for person in people
#     fav_food << person[:favourites][:snacks]
#   end
#     return fav_food.flatten
# end

def fav_food_all(people)
  fav_food = []
  for person in people
   fav_food += person[:favourites][:snacks]
  end
return fav_food
end


def no_friends(people)
  friendless = []
  for person in people
    if person[:friends].length == 0
      friendless.push(person)
    end
  end
  return friendless
end
