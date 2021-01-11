require 'rack'

#instances of proc automatically havea call method that runs the block that they're initialized with

my_server = Proc.new do
    [200, { 'Content-Type' => 'text/html' }, ['<em>Hello</em>']]
end 

run my_server