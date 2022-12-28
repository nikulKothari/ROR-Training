class TvShowsController < ApplicationController
    def index
        if params[:search]
            # fetch only the records which matches with search content
            @tv_shows = TvSeries.search(params[:search]).order("created_at DESC").paginate(page: params[:page], per_page: 5)
        else
            # fetch all the shows records
            @tv_shows = TvSeries.all.order("created_at DESC").paginate(page: params[:page], per_page: 5)
        end
        
    end


    def add_to_favorites
        @tv_show = Show.find(params[:id])
        if current_user.favorite(@tv_show)
          flash[:success] = 'Marked as favorite.'
        else
          flash[:alert] = 'Cannot mark favorite. Please try again later.'
        end
        redirect_back fallback_location: root_path
    end

    # method to remove tv show from favorites
    def remove_from_favorites
        @tv_show = Show.find(params[:id])
        if current_user.unfavorite(@tv_show)
            flash[:success] = 'Removed from favorites.'
        else
            flash[:alert] = 'Cannot remove from favorites. Please try again later.'
        end
        redirect_back fallback_location: root_path
    end    
end
