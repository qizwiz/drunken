require 'ruby-dictionary'

class Object
  def metaclass
    class << self; self; end
  end
end

class Main

  def random_word
    # I'm going to bed
  end

  def dictionary
    Dictionary.from_file('/usr/share/dict/words')
  end

  def ask_num_drinks
    puts "How many drinks have you had? "
  end

  def drinks
    gets.chomp.to_i
  end

  def Main.create_method(name, args)
    klass = self.to_s
    metaclass.instance_eval do
      define_method(name) { return "nice! from #{klass} with #{args.inspect}" }
    end
  end
end
