# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

pp @candidates

# Output the candidates
qualified_candidates_list = qualified_candidates(@candidates)
puts "Qualified Candidates:"
pp qualified_candidates_list

# Sort the candidates
sorted_candidates = sorted_by_qualifications(@candidates)
puts "Sorted Candidates:"
pp sorted_candidates