class MathController < ApplicationController
  before_action :process_params

  def add
    @result = 0
    @values.each { |v| @result += Integer(v) } if @values
  end

  def multiply
    @values.each do |v| 
      @result ||= Integer(v) 
      @result = @result * Integer(v) 
    end if @values
  end

  def process_params
    @values = params[:values].split(',')
  end
end

