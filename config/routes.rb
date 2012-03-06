Twitterjm::Application.routes.draw do
  match 'pages/home' => 'pages#home'
  root :to => 'pages#home'
end
