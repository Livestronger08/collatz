def collatz(n)
    number = 1
    until n == 1
        n = (n.even?) ? (n / 2) : (3 * n + 1)
        number += 1
    end
    number
end

max = 0

1000000.downto(1) do |x|
    if collatz(x) > max
        max = collatz(x)
        puts x
        puts max
    end
end