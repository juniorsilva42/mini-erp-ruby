require "application_system_test_case"

class DependentesTest < ApplicationSystemTestCase
  setup do
    @dependente = dependentes(:one)
  end

  test "visiting the index" do
    visit dependentes_url
    assert_selector "h1", text: "Dependentes"
  end

  test "creating a Dependente" do
    visit dependentes_url
    click_on "New Dependente"

    fill_in "Cpf", with: @dependente.cpf
    fill_in "Filiacao", with: @dependente.filiacao
    fill_in "Funcionario", with: @dependente.funcionario_id
    fill_in "Nome", with: @dependente.nome
    click_on "Create Dependente"

    assert_text "Dependente was successfully created"
    click_on "Back"
  end

  test "updating a Dependente" do
    visit dependentes_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @dependente.cpf
    fill_in "Filiacao", with: @dependente.filiacao
    fill_in "Funcionario", with: @dependente.funcionario_id
    fill_in "Nome", with: @dependente.nome
    click_on "Update Dependente"

    assert_text "Dependente was successfully updated"
    click_on "Back"
  end

  test "destroying a Dependente" do
    visit dependentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dependente was successfully destroyed"
  end
end
