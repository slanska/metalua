-{extension "clist"}

-- integers from 2 to 50, by steps of 2:
x = { i for i = 2, 50, 2 }

-- the same, obtained by filtering over all integers <= 50:
y = { i for i = 1, 50 if i%2==0 }

-- prime numbers, implemented in an inefficient way:
local sieve, n = { i for i=2, 100 }, 1
while n < #sieve do
   sieve = { 
      i for i in values(sieve[1 ... n]);
      i for i in values(sieve[n+1 ... #sieve]) if i%sieve[n] ~= 0 }
   n += 1
end

table.print(sieve)

