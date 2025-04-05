# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require 'date'

def find(id)
    # Your code Here
    @candidates.find { |candidate| candidate[:id] == id }
  end
  
  def experienced?(candidate)
    # Your code Here
    candidate[:years_of_experience] >= 2
  end

  # Added methods

  def has_github_points?(candidate)
    candidate[:github_points] >= 100
  end

  def knows_ruby_python?(candidate)
    candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')
  end

  def applied_recently?(candidate)
    (Date.today - candidate[:date_applied]).to_i <= 15
  end

  def over_17?(candidate)
    candidate[:age] > 17
  end

  
  def qualified_candidates(candidates)
    # Your code Here
    candidates.select do |candidate|
      experienced?(candidate) &&
      has_github_points?(candidate) &&
      knows_ruby_python?(candidate) &&
      applied_recently?(candidate) &&
      over_17?(candidate)
    end
  end

  # Sort base on experience and github points
  def sorted_by_qualifications(candidates)
    candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]] }
  end
 