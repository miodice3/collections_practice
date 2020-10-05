require 'pry'

def sort_array_asc(array)
    return array.sort do |a,b|
        a <=> b
    end
end

def sort_array_desc(array)
    return array.sort do |a,b|
        b <=> a
    end
end

def sort_array_char_count(array)
    return array.sort do |a,b|
        a.length <=> b.length
    end
end

def swap_elements(array)
    a = array[1]
    b = array[2]
    c = a
    array[1] = b
    array[2] = c
    return array
end

def reverse_array(array)
    reversed_array = []
    array.collect{|item| reversed_array.unshift(item)}
    reversed_array
end

# def kesha_maker(array)
#     keshad = []
#     i = 0
#     array.collect do |item|
#         var = item.split('')
#         #puts var.inspect
#         var[2] = "$"
#         keshad[i] = var.join
#         i += 1
#     end
#     keshad
# end


def kesha_maker(array)
    keshad = []
    array.each_with_index {|item, index|
    var = item.split('') 
    var[2] = "$" 
    keshad[index] = var.join}
    keshad
end

def find_a(array)
    found_a = []
    array.each do |item|
            if (item[0].split(//)).join == "A" || (item[0].split(//)).join == "a"
                found_a << item
            end
    end
    found_a
end

def sum_array(array)
    return array.inject(:+)
end

def add_s(array)
    array.each_with_index do |item, index|
            if index == 1
            elsif index != 1
                array[index] << "s"
            end
    end
    array
end
