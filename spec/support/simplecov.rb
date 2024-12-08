require 'simplecov'

SimpleCov.start 'rails' do
  add_filter '/bin'
  add_filter '/db'
  add_filter '/public'
  add_filter '/spec'
  add_filter '/spec/request'

  add_group 'Models', 'app/models'
  add_group 'Controllers', 'app/controllers'
  add_group 'Serializers', 'app/serializers'
end
