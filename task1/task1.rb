# print "Input a:"
# a = gets.to_f
# print "Input b:"
# b=gets.to_f
# print "Input c:"
# c = gets.to_f
# print "Input starting x:"
# x_start = gets.to_f
# print "Input ending x:"
# x_end = gets.to_f
# print "Input the step(dx):"
# dx = gets.to_f

def calculate_f(x,a,b,c)
    if x<1 && c!=0
        result = a*x**2+b/c
    elsif x>15 && c==0
        result = (x-a)/(x-c)**2
    else
        result = x**2/c**2
    end

    ac = a.to_i
    bc = b.to_i
    cc = c.to_i
    if (ac&bc)^cc == 0
        result = result.to_i
    elsif (ac&bc)^cc!=0
        result = result.to_f
    end
    return result
end

puts "x|F(x)"

def get_results(a,b,c,x_start,x_end,dx)
    results=[]
    x=x_start
        i=0
    while x<=x_end
        results.push(calculate_f(x,a,b,c))
        puts "#{x} #{results[i]}"
        x+=dx
        i+=1
    end
    return results
end







