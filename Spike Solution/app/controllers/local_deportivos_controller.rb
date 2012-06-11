
class LocalDeportivosController < ApplicationController
  # GET /local_deportivos
  # GET /local_deportivos.json
  def index
    @local_deportivos = LocalDeportivo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @local_deportivos }
    end
  end

  # GET /local_deportivos/1
  # GET /local_deportivos/1.json
  def show
    @local_deportivo = LocalDeportivo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @local_deportivo }
    end
  end

  # GET /local_deportivos/new
  # GET /local_deportivos/new.json
  def new
    @local_deportivo = LocalDeportivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @local_deportivo }
    end
  end

  # GET /local_deportivos/1/edit
  def edit
    @local_deportivo = LocalDeportivo.find(params[:id])
  end

  # POST /local_deportivos
  # POST /local_deportivos.json
  def create
    @local_deportivo = LocalDeportivo.new(params[:local_deportivo])

    respond_to do |format|
      if @local_deportivo.save
        format.html { redirect_to @local_deportivo, notice: 'Local deportivo fue creado correctamente.' }
        format.json { render json: @local_deportivo, status: :created, location: @local_deportivo }
      else
        format.html { render action: "new" }
        format.json { render json: @local_deportivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /local_deportivos/1
  # PUT /local_deportivos/1.json
  def update
    @local_deportivo = LocalDeportivo.find(params[:id])

    respond_to do |format|
      if @local_deportivo.update_attributes(params[:local_deportivo])
        format.html { redirect_to @local_deportivo, notice: 'Local deportivo fue actualizado correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @local_deportivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /local_deportivos/1
  # DELETE /local_deportivos/1.json
  def destroy
    @local_deportivo = LocalDeportivo.find(params[:id])
    @local_deportivo.destroy

    respond_to do |format|
      format.html { redirect_to local_deportivos_url }
      format.json { head :no_content }
    end
  end
end
