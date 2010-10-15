require 'rubygems'
require 'sinatra'

get('/'){send_file "app.html"}

eval %w[/niupi].collect{|idea| "get('#{idea}'){send_file '#{idea[1..-1]}.html'}"}.join("; ")
