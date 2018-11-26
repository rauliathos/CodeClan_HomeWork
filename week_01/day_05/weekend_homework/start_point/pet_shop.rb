
#-----(1)-----{function retrun the pet shop name}-------------
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

#-----(2)-----{function retrun the total cash}-------------

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

#-----(3-4)-----{function add & remov cash}-------------

def add_or_remove_cash(pet_shop, num)
    pet_shop[:admin][:total_cash] += num
end

#-----(5)--------------{pets sold}----------------------

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

#-----(6)--------------{increase pets sold}----------------------

def increase_pets_sold(pet_shop, num)
  pet_shop[:admin][:pets_sold] += num
end

#-----(7)--------------{stock_count}----------------------

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

#-----(8-9)--------------{pets by breed__found and not found}----------------------

def pets_by_breed(pet_shop,breed)
  return pet_shop[:pets].select { |pet| pet[:breed] == breed}
end

#-----(10 -11)----------------------{find pet by name and find pet by name returnsnil}----------------------

def find_pet_by_name(pet_shop,name)
  return pet_shop[:pets].find {|pet| pet[:name] == name }
end

#-----(12)----------------------{remove pet by name}-------------------

def remove_pet_by_name(pet_shop, name)
  pet_shop[:pets].delete_if { |pet| pet[:name] == name}
end

#-----(13)----------------------{add pet to stock}-------------------

def add_pet_to_stock(pet_shop,new_pet)
  pet_shop[:pets] << new_pet
end

#-----(14)----------------------{customer cash}-------------------

def customer_cash(customer)
  return customer[:cash]
end

#-----(15)----------------------{remove customer cash}-------------------

def remove_customer_cash(customer, num)
  customer[:cash] = customer[:cash] - num
end

#-----(16)----------------------{return customer pet count}-------------------

def customer_pet_count(customer)
  return customer[:pets].length
end

#-----(17)----------------------{add pet to customer}-------------------

def add_pet_to_customer(customer,new_pet)
  customer[:pets] << new_pet
end

#------------------------------------{OPTIONAL}------------------------

#-----(18-19)----------------------{customer can afford pet}-------------------


def customer_can_afford_pet(customer, pet)
    return customer[:cash] >= pet[:price]
end

#-----(20-21-22 )----------------------{sell pet to customer found & not_found & insufficient_funds}-------------------
p "out .. "

def sell_pet_to_customer(pet_shop, pet, customer)
  return if (pet == nil)
    p " ..In"
    pet_name = pet[:name]
    pet_price = pet[:price]
    return if !(customer_can_afford_pet(customer, pet))
      remove_customer_cash(customer, pet_price)
      add_or_remove_cash(pet_shop, pet_price)
      remove_pet_by_name(pet_shop, pet_name)
      pet_shop[:admin][:pets_sold] += 1
      add_pet_to_customer(customer,pet)
end
