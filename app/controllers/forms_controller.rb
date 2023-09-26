class FormsController < ApplicationController
  def square
    render({ :template => "calc_templates/square"})
  end

  def square_results
    @num = params.fetch("user_num")

    @result = @num.to_f ** 2

    render({ :template => "calc_templates/square_results"})
  end

  def square_root
    render({ :template => "calc_templates/square_root"})
  end

  def square_root_results
    @num = params.fetch("user_num")

    @result = Math.sqrt(@num.to_f)

    render({ :template => "calc_templates/square_root_results"})
  end

  def payment
    render({ :template => "calc_templates/payment"})
  end

  def payment_results
    apr = params.fetch("user_apr").to_f
    @apr_percentage = apr.to_fs(:percentage, { :precision => 4})

    @years = params.fetch("user_years").to_i

    principal = params.fetch("user_principal").to_f
    @principal_dollar = principal.to_fs(:currency)

    r = apr / 100 /12
    pv = principal
    n = @years * 12

    numerator = r * pv
    denominator = 1 - ((1 + r) ** -n)

    @payment = (numerator / denominator).to_fs(:currency)

    render({ :template => "calc_templates/payment_results"})
  end
end
