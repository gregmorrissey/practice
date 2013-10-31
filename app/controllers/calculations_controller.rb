class CalculationsController < ApplicationController
  def home
  end

  def square
  	@the_number = params[:number].to_i
  	@answer = @the_number**2.to_i
  end


  def sqrt
    @the_number = params[:number].to_i
    @answer = Math.sqrt(@the_number).to_i
  end

  	def pmt
  		annual_rate = params[:interest_rate].to_f
  		monthly_rate = (annual_rate/12).to_f
  		interest_rate = (monthly_rate/100).to_f
  		number_of_payments = params[:number_of_payments].to_i
  		present_value = params[:present_value].to_i

		@payment = ((present_value * (interest_rate*((1+interest_rate)**number_of_payments)))/(((1+interest_rate)**number_of_payments)-1)).to_i
	end
end
