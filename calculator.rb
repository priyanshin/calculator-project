$x = true
def calculator
    while $x == true
        puts "What operation would you like to perform (addition, subtraction, multiplication, division, modulus, or decimal to binary)"
        operation = gets.chomp
        puts "Please enter a number"
        num1= gets.chomp.to_f
        if operation == "add" or operation =="addition" or operation =="+"
            puts "Please enter a second number"
            num2= gets.chomp.to_f
            add = num1 + num2
            puts ""
            puts "#{num1} + #{num2} = #{add}"
        elsif operation == "subtraction" or operation == "subtract" or operation =="-" or operation =="sub"
            puts "Please enter a second number"
            num2= gets.chomp.to_f
            sub = num1 - num2
            puts ""
            puts "#{num1} - #{num2} = #{sub}"
        elsif operation == "division" or operation =="divide"  or operation =="/" 
            puts "Please enter a second number"
            num2= gets.chomp.to_f
            div = num1/num2
            puts ""
            puts "#{num1} / #{num2} = #{div}"
        elsif operation == "multiplication" or operation =="x" or operation =="multiply" or operation =="*"
            puts "Please enter a second number"
            num2= gets.chomp.to_f
            mult = num1 * num2
            puts ""
            puts "#{num1} * #{num2} = #{mult}"
        elsif operation == "modulus" or operation =="mod"  or operation =="%" 
            puts "Please enter a second number"
            num2= gets.chomp.to_f
            mod = num1%num2
            puts ""
            puts "#{num1} % #{num2} = #{mod}"
        elsif operation == "binary" or operation == "decimal to binary" or operation == "decimal"or operation == "decimal"
            num1 = num1.to_i
            binary_num = ""
            original_num = num1
            while num1 != 0
                store_num = num1
                num1 = num1 / 2
                remainder = store_num % 2
                binary_num = binary_num + "#{remainder}"
            end
        puts ""
        puts "#{original_num} in binary is #{binary_num.reverse!}"
        else
            puts "This operation is invalid"
        end
    puts "Would you like to do another calculation?"
    response = gets.chomp
        if response == "y" or response == "yes" or response == "Yes" or response == "Y"
            $x = true
        else
            $x = false
        end
    end
end

calculator()