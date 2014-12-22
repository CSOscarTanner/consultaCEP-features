# coding: utf-8
require 'calabash-android/calabash_steps'

Dado(/^que estou na tela inicial$/) do
  wait_for(:timeout => 5) { element_exists "* id:'input_cep'" }
end

Quando(/^digitar um CEP$/) do
  query "* id:'input_cep'", { :setText => "04565001" }
end

Quando(/^clicar no botão consultar$/) do
  touch "* id:'botao_consulta'"
end

Então(/^devo ver o nome da rua na tela$/) do
  wait_for(:timeout => 5) { element_exists "* {text CONTAINS[c] 'Rua Flórida'}" }
end
