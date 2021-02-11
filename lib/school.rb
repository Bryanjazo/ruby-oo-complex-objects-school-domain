# code here!
require "pry"
class School
attr_accessor :name, :roster

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(student, level)
   roster[level] ||= []
   roster[level] << student

end

def grade(level)
    roster.detect do |x, y|
      if x == level
        #binding.pry
        return y

      end
      #binding.pry
      end
    end

    def sort
      new_hash = {}
      roster.each do |name,number|
        new_hash[name] = number.sort
      end
      new_hash
    end
  end
