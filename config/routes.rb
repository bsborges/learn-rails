#Rails.application.routes.draw do
#end

LearnRails::Application.routes.draw do
    # post 'contact', to: 'contacts#process_form'
    resources :contacts, only: [:new, :create]
    resources :visitors, only: [:new, :create]
    root to: 'visitors#new'
  # get "/pages/*id", to: 'pages#show' [the High Voltage gem already provides the route]
end