

Dado('que o usuario queira se logar') do
  login_page.load
end

Quando('ele digitar as credenciais validas') do
  login_page.user_login(CREDENTIAL[:user][:email], CREDENTIAL[:user][:password])
end

Entao('deve acessar o site com sucesso') do
  home_page.check_user_logged_in
end