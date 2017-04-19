Rails.application.routes.draw do
  root 'dog#list'
  get 'dog/list'
  get 'dog/new'
  post 'dog/create'
end
