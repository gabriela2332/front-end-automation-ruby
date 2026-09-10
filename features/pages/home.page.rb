class HomePage < SitePrism::Page
  set_url 'https://www.linkedin.com/feed/'

  element :userName, :xpath, "//button[contains(@aria-label, 'Início')]"
  element :navbarHome, :xpath, "//*[@id='primaryNavLinksComponentRef']/div/nav/ul/li[2]/a"
  element :myIcon, :xpath, "(//img[contains(@alt, 'Profile photo') or contains(@alt, 'Foto do perfil')])[1]"

    def check_user_logged_in
      expect(userName).to be_visible
      expect(navbarHome).to be_visible
      expect(myIcon).to be_visible
    end
end
