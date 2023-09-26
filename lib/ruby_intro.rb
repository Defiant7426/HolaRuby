# Parte 1

def sum arr
  arr.inject(0, :+)
end


def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.size == 1
  arr = arr.sort
  arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  return false if arr.empty?
  res = arr.combination(2).any?{|x,y| n == x+y}
  res
end

# Parte 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.empty?
  letra = /^[\w]/
  return false if !s.match(letra)
  vocales = /^[aeiou]/i
  if s.match(vocales) then false else true end
end

def binary_multiple_of_4? s
  patron = /^[01]+$/
  if patron.match(s) then s.to_i(2)%4==0 else false end
end

# Parte 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError.new("Numero ISBN no valido") if isbn.length ==0
    raise ArgumentError.new("El precio no puede ser 0") if price <= 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    "$%.2f" % @price
  end
end