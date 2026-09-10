class LoginPage < SitePrism::Page
  set_url ENV['URL'] || 'https://linkedin.com/login'
  element :email_field, :css, "input[type='email']"
  element :password_field, :css, "input[type='password']"
  element :login_button, :css, "button[type='submit']"

def user_login(email, password)
  email_field.set(email)
  password_field.set(password).send_keys(:enter)
end
end