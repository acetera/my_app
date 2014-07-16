class UsersDbsController < ApplicationController
  before_action :set_users_db, only: [:show, :edit, :update, :destroy]

  # GET /users_dbs
  # GET /users_dbs.json
  def index
    @users_dbs = UsersDb.all
  end

  # GET /users_dbs/1
  # GET /users_dbs/1.json
  def show
  end

  # GET /users_dbs/new
  def new
    @users_db = UsersDb.new
  end

  # GET /users_dbs/1/edit
  def edit
  end

  # POST /users_dbs
  # POST /users_dbs.json
  def create
    @users_db = UsersDb.new(users_db_params)

    respond_to do |format|
      if @users_db.save
        format.html { redirect_to @users_db, notice: 'Users db was successfully created.' }
        format.json { render :show, status: :created, location: @users_db }
      else
        format.html { render :new }
        format.json { render json: @users_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_dbs/1
  # PATCH/PUT /users_dbs/1.json
  def update
    respond_to do |format|
      if @users_db.update(users_db_params)
        format.html { redirect_to @users_db, notice: 'Users db was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_db }
      else
        format.html { render :edit }
        format.json { render json: @users_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_dbs/1
  # DELETE /users_dbs/1.json
  def destroy
    @users_db.destroy
    respond_to do |format|
      format.html { redirect_to users_dbs_url, notice: 'Users db was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_db
      @users_db = UsersDb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_db_params
      params.require(:users_db).permit(:username, :email)
    end
end
