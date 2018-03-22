class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(params[lesson_params])
    @lesson.owner = current_user
    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      render :new
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson,find(params[:id])
    @lesson.update(lesson_params)
    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      render :new
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to lessons_path
  end



  private

  def lesson_params
    params.require(:lesson).permit(:description, :difficulty, :price)
  end
end
