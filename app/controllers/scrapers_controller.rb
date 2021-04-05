class ScrapersController < ActionController::Base
    before_action :set_url, only: %i[ show]

    def index
        @scraper = Scraper.new
    end

    def create
        @scraper = Scraper.new(scraper_params)
        
        if @scraper.save
            redirect_to @scraper, notice: "Scrapped successfully."
        else
            redirect_to scrapers_path, status: :unprocessable_entity
        end
    end

    def show
        
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_url
      @scraper = Scraper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scraper_params
      params.require(:scraper).permit(:url, :source_code)
    end
end