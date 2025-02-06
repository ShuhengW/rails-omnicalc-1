class OmnicalcController < ApplicationController

  def square_new
    render ({ :template => "calc_templates/square_form"})
  end
  
  def square_results
    @num = params[:number].to_f
    @result = @num * @num
    render ({ :template => "calc_templates/square_result"})
  end

  def square_root_new
    render ({ :template => "calc_templates/square_root_form"})
  end

  def square_root_results
    @num = params[:user_number].to_f
    @result = Math.sqrt(@num)
    render ({ :template => "calc_templates/square_root_result"})
  end

  def payment_new
    render ({ :template => "calc_templates/payment_form"})
  end

  def payment_results
    @apr_print = params[:user_apr].to_f
    @years_print = params[:user_years].to_i
    @principal_print = params[:user_pv].to_f
    @apr = params[:user_apr].to_f / 100 / 12
    @years = params[:user_years].to_i * 12
    @principal = params[:user_pv].to_f
    @monthly_payment = (@apr * @principal) / (1- (1 + @apr)**-@years)
    render ({ :template => "calc_templates/payment_result"})
  end

  def random_new
    render ({ :template => "calc_templates/random_form"})
  end

  def random_results
    @min_num = params[:user_min].to_f
    @max_num = params[:user_max].to_f

    @random_number = rand(@min_num..@max_num)
    render ({ :template => "calc_templates/random_result"})
  end
end 
