class DependentesController < ApplicationController
  before_action :set_dependente, only: [:show, :edit, :update, :destroy]

  # GET /dependentes
  # GET /dependentes.json
  def index
    @dependentes = Dependente.all
  end

  # GET /dependentes/1
  # GET /dependentes/1.json
  def show
  end

  # GET /dependentes/new
  def new
    @dependente = Dependente.new
  end

  # GET /dependentes/1/edit
  def edit
  end

  # POST /dependentes
  # POST /dependentes.json
  def create
    @dependente = Dependente.new(dependente_params)

    respond_to do |format|
      if @dependente.save
        format.html { redirect_to @dependente, notice: 'Dependente was successfully created.' }
        format.json { render :show, status: :created, location: @dependente }
      else
        format.html { render :new }
        format.json { render json: @dependente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dependentes/1
  # PATCH/PUT /dependentes/1.json
  def update
    respond_to do |format|
      if @dependente.update(dependente_params)
        format.html { redirect_to @dependente, notice: 'Dependente was successfully updated.' }
        format.json { render :show, status: :ok, location: @dependente }
      else
        format.html { render :edit }
        format.json { render json: @dependente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dependentes/1
  # DELETE /dependentes/1.json
  def destroy
    @dependente.destroy
    respond_to do |format|
      format.html { redirect_to dependentes_url, notice: 'Dependente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dependente
      @dependente = Dependente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dependente_params
      params.require(:dependente).permit(:nome, :cpf, :filiacao, :funcionario_id)
    end
end
