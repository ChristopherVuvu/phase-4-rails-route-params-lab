Rails.application.routes.draw do

  #use resource to fetch individual student data
  resources :students, only: [:index, :show]

  #generate the other get requests i.e index, grades and highest-grade
  get '/students', to: 'students#index'
  get '/students/grades', to: 'students#grades'
  get '/students/highest-grade', to: 'students#highest_grade'
end
