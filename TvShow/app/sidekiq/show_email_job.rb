class ShowEmailJob
  include Sidekiq::Job

  def perform(*args)
    puts "hello"
  	# fetch all the shows will be begin after 30 minutes from current time (utf)
    @shows = TvShow.where(start_time: 30.minutes.from_now.beginning_of_minute)
    	# iterate jobs instance and fetch those users who have added shows in favorites
    @shows.each do |show|
        users = show.favoritors
        users.each do |user|
        	# iterate users instance to send notification using mailer about show shcedule 
          ShowNotificationMailer.notification(show, user).deliver_later
        end
    end
  end
end
