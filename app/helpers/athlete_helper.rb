module AthleteHelper
  def full_name_for(athlete)
    [athlete['firstname'], athlete['lastname']].join(' ')
  end

  def friends_links(athlete, friends)
    if friends
      friends.map { |friend| link_to full_name_for(friend), athlete_path(friend[:id]) }.join(', ').html_safe
    else
      link_to athlete['friend_count'], get: :friends
    end
  end

  def strava_url_for(athlete)
    "//www.strava.com/athletes/#{athlete['id']}"
  end
end