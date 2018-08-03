def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, value)
  return pet_shop[:admin][:total_cash] += value
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number)
  pet_shop[:admin][:pets_sold] += number
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop,breed)
  pets_of_breed = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      pets_of_breed.push(pet)
    end
  end
  return pets_of_breed
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

#def remove_pet_by_name(pet_shop, pet_name)
#  index = 0
#  for pet in pet_shop[:pets]
#    if pet[:name] == pet_name
#      pet_shop[:pets].delete_at(index)
#      break
#    end
#    index += 1
#  end
#end
def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
      break
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

# Optional

def pet_cost(new_pet)
  return new_pet[:price]
end

def customer_can_afford_pet(customer, new_pet)
  return customer_cash(customer) >= pet_cost(new_pet)
end
