class RestosController < ApplicationController
  before_action :set_resto, only: [:show, :edit, :update, :destroy]

  # GET /restos
  # GET /restos.json
  def index
    @restos = Resto.all
  end

  # GET /restos/1
  # GET /restos/1.json
  def show
  end

  # GET /restos/new
  def new
    @resto = Resto.new
  end

  # GET /restos/1/edit
  def edit
  end

  # POST /restos
  # POST /restos.json
  def create
    @resto = Resto.new(resto_params)

    respond_to do |format|
      if @resto.save
        format.html { redirect_to @resto, notice: 'Resto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @resto }
      else
        format.html { render action: 'new' }
        format.json { render json: @resto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restos/1
  # PATCH/PUT /restos/1.json
  def update
    respond_to do |format|
      if @resto.update(resto_params)
        format.html { redirect_to @resto, notice: 'Resto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @resto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restos/1
  # DELETE /restos/1.json
  def destroy
    @resto.destroy
    respond_to do |format|
      format.html { redirect_to restos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resto
      @resto = Resto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resto_params
      params.require(:resto).permit(:name)
    end
end
