class StudentScoresController < ApplicationController
  before_action :set_student_score, only: [:show, :edit, :update, :destroy]

  # GET /student_scores
  # GET /student_scores.json
  def index
    @student_scores = StudentScore.all
  end

  # GET /student_scores/1
  # GET /student_scores/1.json
  def show
  end

  # GET /student_scores/new
  def new
    @student_score = StudentScore.new
  end

  # GET /student_scores/1/edit
  def edit
  end

  # POST /student_scores
  # POST /student_scores.json
  def create
    @student_score = StudentScore.new(student_score_params)

    respond_to do |format|
      if @student_score.save
        format.html { redirect_to @student_score, notice: 'Student score was successfully created.' }
        format.json { render :show, status: :created, location: @student_score }
      else
        format.html { render :new }
        format.json { render json: @student_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_scores/1
  # PATCH/PUT /student_scores/1.json
  def update
    respond_to do |format|
      if @student_score.update(student_score_params)
        format.html { redirect_to @student_score, notice: 'Student score was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_score }
      else
        format.html { render :edit }
        format.json { render json: @student_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_scores/1
  # DELETE /student_scores/1.json
  def destroy
    @student_score.destroy
    respond_to do |format|
      format.html { redirect_to student_scores_url, notice: 'Student score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_score
      @student_score = StudentScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_score_params
      params.require(:student_score).permit(:name, :stu_no, :score)
    end
end
