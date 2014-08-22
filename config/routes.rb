#Rails.application.routes.draw do
#end

LearnRails::Application.routes.draw do
  root to: 'visitors#new'
  # get "/pages/*id", to: 'pages#show' [the High Voltage gem already provides the route]
end