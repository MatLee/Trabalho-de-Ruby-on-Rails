# coding: utf-8
require 'rails_helper'

feature 'gerenciar Disciplina' do

  scenario 'Incluir Disciplina' do # , :js => true do
    visit new_disciplina_path
    preencher_e_verificar_disciplina
  end

  scenario 'Alterar Disciplina' do #, :js => true do
    disciplina = FactoryGirl.create(:disciplina)
    visit edit_disciplina_path(disciplina)
    preencher_e_verificar_disciplina
  end

  scenario 'Excluir disciplina' do #, :javascript => true do
    disciplina = FactoryGirl.create(:disciplina)
    visit disciplinas_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_disciplina
    fill_in 'Nome', :with => "Nome"
    fill_in 'Periodo', :with => 1

    click_button 'Salvar'

    expect(page).to have_content 'Nome: Nome'
    expect(page).to have_content 'Periodo: 1'

  end

end
