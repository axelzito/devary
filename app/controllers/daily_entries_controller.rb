# frozen_string_literal: true

class DailyEntriesController < ApplicationController
  before_action :set_daily_entry, only: %i[show edit update destroy]

  # GET /daily_entries or /daily_entries.json
  def index
    @daily_entries = DailyEntry.all
  end

  # GET /daily_entries/1 or /daily_entries/1.json
  def show; end

  # GET /daily_entries/new
  def new
    @daily_entry = DailyEntry.new
  end

  # GET /daily_entries/1/edit
  def edit; end

  # POST /daily_entries or /daily_entries.json
  def create
    @daily_entry = DailyEntry.new(daily_entry_params)
    @daily_entry.user_id = current_user.id

    respond_to do |format|
      if @daily_entry.save
        format.html { redirect_to @daily_entry, notice: 'Daily entry was successfully created.' }
        format.json { render :show, status: :created, location: @daily_entry }
      else
        format.html { render :new }
        format.json { render json: @daily_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_entries/1 or /daily_entries/1.json
  def update
    respond_to do |format|
      if @daily_entry.update(daily_entry_params)
        format.html { redirect_to @daily_entry, notice: 'Daily entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @daily_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_entries/1 or /daily_entries/1.json
  def destroy
    @daily_entry.destroy
    respond_to do |format|
      format.html { redirect_to daily_entries_url, notice: 'Daily entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_daily_entry
    @daily_entry = DailyEntry.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def daily_entry_params
    params.require(:daily_entry).permit(:title, :content, :user_id)
  end
end
