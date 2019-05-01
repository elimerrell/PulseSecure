class StudentExamResultsController < ApplicationController
    def index
        @results = StudentExamResult.all 
    end 
end
