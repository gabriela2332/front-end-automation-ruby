Dir[File.join(__dir__, '../pages/*.rb')].each { |file| require file }

module Page
  def home_page
    @home_page ||= HomePage.new
  end

  def login_page
    @login_page ||= LoginPage.new
  end
end