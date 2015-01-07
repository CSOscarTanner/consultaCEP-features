# coding: utf-8
Dado(/^que estou na tela inicial$/) do
  wait_for(:timeout => 5) { element_exists "* marked:'CEP_SCREEN'" }
end

Quando(/^digitar um CEP$/) do
  touch("* marked:'CAMPO_TEXTO_CEP'")
  sleep(1)
  keyboard_enter_text "04565001"
end

Quando(/^clicar no botão consultar$/) do
  touch("* marked:'Buscar'")
end

Então(/^devo ver o nome da rua na tela$/) do
  wait_for(:timeout => 5) { element_exists "* {text CONTAINS[c] 'Rua Flórida'}" }
end
