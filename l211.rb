class L211
end

puts Object.constants.grep(/L211/)

puts Object::L211.new

#Object.remove_const(:L211)


Object.send(:remove_const, :L211)

#puts L211.new  # This should not work

#const_set


Object.const_set(:NewClass, Class.new do
                            def p
                              "p!"
                            end
                          end)

puts NewClass.new.p