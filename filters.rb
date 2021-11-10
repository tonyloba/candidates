# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program



def find(id)
  #  takes single candidate as id :
  @candidates.each do | candidate |
    if candidate[:id] == id      

    return candidate
    else 
      nil
    end
  end
end



def experienced?(candidate)
  # Your code Here
  if candidate[:years_of_experience] >= 2
    @experienced = true
  else
    @experienced = false
  end

end



# More methods will go below


def ordered_by_qualifications(candidates)

  return @candidates.sort_by{ |candidate| [candidate[:years_of_experience], candidate[:github_points]] }

end



def qualified_candidates(candidates)
  # Your code Here
  candidates.each do |candidate|
    if experienced(candidate) && github_points_check(candidate) && language_check(candidate) && age_check(candidate) && application_date_check(candidate)
      return candidate
    end
  end

end


# helpers: 

def experienced(candidate)
  if candidate[:years_of_experience] >= 2
    @experienced = true
  else
    @experienced = false
  end
end

def github_points_check(candidate)
  if candidate[:github_points] >= 100
    @check = true
  else
    @check = false
  end
end

def language_check(candidate)
  if candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')
    @check = true
  else
    @check = false
  end
end

def application_date_check(candidate)
  if (candidate[:date_applied][0].to_i <= 15)
    @check = true
  else
    @check = false
  end
end

def age_check(candidate)
  if candidate[:age] > 17
    @check = true
  else
    @check = false
  end
end

