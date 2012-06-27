RailsAdmin.config do |config|
  config.authorize_with do
    redirect_to "/" unless current_user.try(:admin?)
  end

  config.model Meeting do
    list do
      field :title
      field :date
    end
    edit do
      field :title
      field :date
      field :description
      field :venue
      field :agendatech_link
      field :call4paperz_link
      field :talks do
      end
    end
  end



end

