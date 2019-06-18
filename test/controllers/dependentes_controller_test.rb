require 'test_helper'

class DependentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dependente = dependentes(:one)
  end

  test "should get index" do
    get dependentes_url
    assert_response :success
  end

  test "should get new" do
    get new_dependente_url
    assert_response :success
  end

  test "should create dependente" do
    assert_difference('Dependente.count') do
      post dependentes_url, params: { dependente: { cpf: @dependente.cpf, filiacao: @dependente.filiacao, funcionario_id: @dependente.funcionario_id, nome: @dependente.nome } }
    end

    assert_redirected_to dependente_url(Dependente.last)
  end

  test "should show dependente" do
    get dependente_url(@dependente)
    assert_response :success
  end

  test "should get edit" do
    get edit_dependente_url(@dependente)
    assert_response :success
  end

  test "should update dependente" do
    patch dependente_url(@dependente), params: { dependente: { cpf: @dependente.cpf, filiacao: @dependente.filiacao, funcionario_id: @dependente.funcionario_id, nome: @dependente.nome } }
    assert_redirected_to dependente_url(@dependente)
  end

  test "should destroy dependente" do
    assert_difference('Dependente.count', -1) do
      delete dependente_url(@dependente)
    end

    assert_redirected_to dependentes_url
  end
end
