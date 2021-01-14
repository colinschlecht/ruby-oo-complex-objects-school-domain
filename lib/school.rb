require 'pry'


class School
    def initialize(name)
        @name = name
        @roster = {}
    end
    def name
        @name
    end
    def roster
        @roster
    end
    def add_student(student_name, grade)
        if @roster[grade]
           @roster[grade].push(student_name)
        else 
            @roster[grade] = [student_name]
        end
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.each do |key, value| value.sort!
        end
    end
end
