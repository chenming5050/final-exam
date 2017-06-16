class StudentScore < ApplicationRecord
  def display_score
     
    if self.score >= 90 
      rank = "S"
    end
    if self.score >= 80 
      rank = "A"
    end
    if self.score >= 70 
      rank = "B"
    end
    if self.score >= 60 
      rank = "C"
    end
    if self.score < 60
      rank = "D"
    end          
    return rank+" 級(#{score})"
  end
end
