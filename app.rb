require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/rock") do 
  options = ["rock", "paper", "scissors"]

  @comp_choice = options.sample 

  if @comp_choice == "rock"
    @decision = "We tied!"
  elsif @comp_choice == "paper"
    @decision = "We lost!"
  elsif @comp_choice == "scissors"
    @decision = "We won!"
  end

  erb(:rock)
end 

get("/paper") do 
  options = ["rock", "paper", "scissors"]

  @comp_choice = options.sample 

  if @comp_choice == "rock"
    @decision = "We won!"
  elsif @comp_choice == "paper"
    @decision = "We tied!"
  elsif @comp_choice == "scissors"
    @decision = "We lost!"
  end

  erb(:paper)
end 

get("/scissors") do 
  options = ["rock", "paper", "scissors"]

  @comp_choice = options.sample 

  if @comp_choice == "rock"
    @decision = "We lost!"
  elsif @comp_choice == "paper"
    @decision = "We won!"
  elsif @comp_choice == "scissors"
    @decision = "We tied!"
  end

  erb(:scissors)
end 
