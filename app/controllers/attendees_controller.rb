class AttendeesController < ApplicationController
  before_action :set_lunch

  def create
    @attendee = @lunch.attendees.build(attendee_params)
    ch = choices_params
    ch.each do |c|
      @attendee.choices.build(:resto_id => c)
    end
    respond_to do |format|
      if @lunch.save
        format.html { redirect_to @lunch, notice: 'Lunch was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lunch }
      else
        format.html { render action: 'new' }
        format.json { render json: @lunch.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lunch
      @lunch = Lunch.find(params[:lunch_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attendee_params
      params.require(:attendee).permit(:name)
    end

    def choices_params
      if (params[:attendee][:choice])
        return params[:attendee][:choice][:resto_id]
      else
        return []
      end
    end

end
