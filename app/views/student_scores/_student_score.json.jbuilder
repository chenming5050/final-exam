json.extract! student_score, :id, :name, :stu_no, :score, :created_at, :updated_at
json.url student_score_url(student_score, format: :json)
