# code here!
require 'pry'
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade].nil?
            @roster[grade] = [] 
            @roster[grade] << name
        else
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster =[]
        @roster.each do |grade, students_arr|
            sorted_roster = students_arr.sort
            @roster[grade] = sorted_roster
        end
        @roster
    end
end