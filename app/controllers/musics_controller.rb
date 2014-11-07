class MusicsController < ApplicationController
  before_action :set_music, only: [:show, :edit, :update, :destroy]
  before_action :set_artist, only: [:new, :edit, :create, :destroy, :update]

  def index
    @musics = Music.all
  end

  def show
  end

  def new
    @music = Music.new
  end

  def edit
  end

  def create
    @music = Music.new(music_params)

    respond_to do |format|
      if @music.save
        @artist.musics.create(@music, {})

        format.html { redirect_to [@music.artist, @music], notice: 'Music was successfully created.' }
        format.json { render :show, status: :created, location: [@music.artist, @music] }
      else
        format.html { render :new }
        format.json { render json: @music.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @music.update(music_params)
        format.html { redirect_to [@music.artist, @music], notice: 'Music was successfully updated.' }
        format.json { render :show, status: :ok, location: [@music.artist, @music] }
      else
        format.html { render :edit }
        format.json { render json: @music.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @music.destroy
    respond_to do |format|
      format.html { redirect_to musics_url, notice: 'Music was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_music
      @music = Music.find(params[:id])
    end

    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    def music_params
      params.require(:music).permit(:title, :link)
    end

end
