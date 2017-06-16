require 'test_helper'

class StudentScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_score = student_scores(:one)
  end

  test "should get index" do
    get student_scores_url
    assert_response :success
  end

  test "should get new" do
    get new_student_score_url
    assert_response :success
  end

  test "should create student_score" do
    assert_difference('StudentScore.count') do
      post student_scores_url, params: { student_score: { name: @student_score.name, score: @student_score.score, stu_no: @student_score.stu_no } }
    end

    assert_redirected_to student_score_url(StudentScore.last)
  end

  test "should show student_score" do
    get student_score_url(@student_score)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_score_url(@student_score)
    assert_response :success
  end

  test "should update student_score" do
    patch student_score_url(@student_score), params: { student_score: { name: @student_score.name, score: @student_score.score, stu_no: @student_score.stu_no } }
    assert_redirected_to student_score_url(@student_score)
  end

  test "should destroy student_score" do
    assert_difference('StudentScore.count', -1) do
      delete student_score_url(@student_score)
    end

    assert_redirected_to student_scores_url
  end
end
