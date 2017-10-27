# Q0: Why is this error being thrown?
We have not created the Pokemon model or controller yet, so when home_controller references Pokemon it does not exist.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
A random pokemon is picked from the seed file in the home_controller from all of the pokemon that have no trainer(nil), and is then displayed via the home view. The pokemon that appear are all trainerless.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The line creates a button labeled Throw a Pokeball! that submits a patch request through the capture_path when it is submitted. The capture_path part tells it to use the route named capture_path and pass in the current wild pokemon's id.
# Question 3: What would you name your own Pokemon?
Slizha
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in trainer_path, which needed the pokemon's id.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
