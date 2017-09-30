Rails.application.routes.draw do
 root 'todos#index'
get 'todos' => "todos#index"
get 'todos/:id' => 'todos#show'
end
