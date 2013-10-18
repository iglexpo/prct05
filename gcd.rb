#!/usr/bin/env ruby 

#Implementacion en Ruby del maximo comun divisor

def gcd(u, v)
  
  u, v = u.abs, v.abs
  
  while v != 0
    u, v = v, u % v
  end
  u
end

