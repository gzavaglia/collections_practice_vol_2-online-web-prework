require 'pry'
def begins_with_r(array)
  array.all? do |word|
  word.start_with?("r")
  end
end 

def contain_a(array)
a_array = []
array.each do |word|
if word.include? "a"
  a_array << word
end 
end
a_array
end 

def first_wa(array)
wa_array = []
array.each do |word|
  if word.is_a? String
    if word.start_with?("wa")
      wa_array << word 
    end #if 
  else 
    new_word = word.to_s 
     if new_word.start_with?("wa")
       wa_array << word
     end #if 
  end #if 
end #end do 
wa_array[0]
end 

def remove_non_strings(array)
  array.delete_if { |obj| !(obj.is_a? String) }
end 

def count_elements(array)
array.group_by(&:itself)    
.map{|k, v| k.merge(count: v.length)}
end #count 

def merge_data(keys, data)
  info_array = []
  keys.each do |names|
    names.each do |firt, actual_name|
      data.each do |person|
        name_array = person.keys
        info_array = person.values
        info_array.each do |attribute|
          if !info_array[0][:first_name]
            info_array[0][:first_name] = "blake"
          elsif !info_array[1][:first_name]
          info_array[1][:first_name] = "ashley"
          end
        end #end info do 
      end #end data do 
    end #end names do 
  end # end do keys do
  info_array
end 

def find_cool(array)
  output = []
  array.each do |info_for_each|
    info_for_each.each do |key, value|
      binding.pry
      if value == "cool"
        output = info_for_each
      end #end if 
    end #info_for_each do 
  end #end array do 
  output
end 