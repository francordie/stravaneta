class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_strava

  def hello
    render html: 'Hello, ciclists!'
  end

  def strava
    @athlete = @strava.retrieve_current_athlete
    @friends = friends_list if params[:get] == 'friends'
  end

  def athlete
    @athlete = @strava.retrieve_another_athlete(params[:id]).with_indifferent_access
  end

  private

  def set_strava
    @strava = Strava::Api::V3::Client.new(:access_token => Rails.application.secrets.strava_access_token)
  end

  def friends_list
    @strava.list_athlete_friends.map { |friend| { id: friend['id'], firstname: friend['firstname'], lastname: friend['lastname'] }.with_indifferent_access }
  end
end
