Rails.application.routes.draw do
#  homepage
  get("/", { :controller => "forms", :action => "square"})

#  square
 get("/square/new", { :controller => "forms", :action => "square"})
 get("/square/results", { :controller => "forms", :action => "square_results"})

# #  square_root
 get("/square_root/new", { :controller => "forms", :action => "square_root"})
 get("/square_root/results", { :controller => "forms", :action => "square_root_results"})

# #  payment
#  get("/payment/new", { :controller => "forms", :action => "payment"})
end
