def return_10
  return 10
end

#----------------add-------------------#

def add(num1,num2)
  return num1 + num2
end

#----------------subtract-------------------#

def subtract(num1, num2)
  return num1 - num2
end

#---------------multiply--------------------#

def multiply(num1,num2)
  return num1 * num2
end

#---------------divide--------------------#

def divide(num1,num2)
  return num1/num2
end

#---------------length_of_string--------------------#

def length_of_string(str)
  return str.length
end

#---------------join_string--------------------#

def join_string(str1, str2)
  return str1 + str2
end

#---------------add_string_as_number--------------------#

def add_string_as_number(str1, str2)
  return str1.to_i + str2.to_i
end

#---------------number_to_full_name__month_1--------------------#

def number_to_full_month_name(num)
  case num
  when 1
    return "January"
  when 2
    return "February"
  when 3
    return "March"
  when 4
    return "April"
  when 5
    return "May"
  when 6
    return "Jun"
  when 7
    return "July"
  when 8
    return "August"
  when 9
    return "September"
  when 10
    return "October"
  when 11
    return "November"
  when 12
    return "December"
  else
    return "none"

  end
end

#---------------number_to_short_month_name--------------------#

def number_to_short_month_name(num)
  case num
  when 1
    return "Jan"
  when 2
    return "Feb"
  when 3
    return "Mar"
  when 4
    return "Apr"
  when 5
    return "May"
  when 6
    return "Jun"
  when 7
    return "Jul"
  when 8
    return "Aug"
  when 9
    return "Sep"
  when 10
    return "Oct"
  when 11
    return "Nov"
  when 12
    return "Dec"
  else
    return "none"

  end
end

#---------------volume_of_cube--------------------#

def volume_of_cube(num)
  return num ** 3
end

#---------------volume_of_sphere--------------------#

def volume_of_sphere(num)
  return ((4.0/3.0) * (Math::PI) * (num**3)).round(2)
end

#---------------fahrenheit_to_celsius--------------------#

def fahrenheit_to_celsius(f)
  return (f - 32) * 5.0 / 9.0
end
