Rails.application.routes.draw do
  root 'api#welcome'
  get '*url', :to => 'errors#missing_route'
  post '*url', :to=> 'errors#missing_route'
end
