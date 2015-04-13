# coding: utf-8
require 'rails_helper'

feature 'gerenciar Aluno' do

  scenario 'Incluir Aluno' do # , :js => true do
    visit new_aluno_path
    preencher_e_verificar_aluno
  end

  scenario 'Alterar Aluno' do #, :js => true do
    aluno = FactoryGirl.create(:aluno)
    visit edit_aluno_path(aluno)
    preencher_e_verificar_aluno
  end

  scenario 'Excluir aluno' do #, :javascript => true do
    aluno = FactoryGirl.create(:aluno)
    visit alunos_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_aluno
    fill_in 'Nome', :with => "Luiz"
    fill_in 'Endereço', :with => "Rua XXX"
    fill_in 'Telefone', :with => "99999"

    click_button 'Salvar'

    expect(page).to have_content 'Nome: Luiz'
    expect(page).to have_content 'Endereço: Rua XXX'
    expect(page).to have_content 'Telefone: 99999'

  end

end
