class Fixnum
    define_method(:ping_pong) do
        new_array = []
        range = (1..self)
        range.each() do |num|
        if num.%(3) == (0) && num.%(5) == (0)
            new_array.push("pingpong")
        elsif num.%(5) == (0)
            new_array.push("pong")
            
        elsif num.%(3) == (0)
            
            new_array.push("ping")
        else
            new_array.push(num)

            end  
        end
        new_array
    end
end








# (1..5).each do |n|
#     puts n
# end

# 0.upto(5) do |n|
#   puts n
# end
# class Fixnum
#     define_method (:ping)
#         {1.upto(self).to_a}
#     end