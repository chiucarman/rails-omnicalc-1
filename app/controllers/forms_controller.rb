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
end
