require 'test_helper'

class KontaControllerTest < ActionController::TestCase
  setup do
    @kontum = konta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:konta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kontum" do
    assert_difference('Kontum.count') do
      post :create, kontum: { firma: @kontum.firma, mail: @kontum.mail, osoba: @kontum.osoba, telefon: @kontum.telefon }
    end

    assert_redirected_to kontum_path(assigns(:kontum))
  end

  test "should show kontum" do
    get :show, id: @kontum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kontum
    assert_response :success
  end

  test "should update kontum" do
    patch :update, id: @kontum, kontum: { firma: @kontum.firma, mail: @kontum.mail, osoba: @kontum.osoba, telefon: @kontum.telefon }
    assert_redirected_to kontum_path(assigns(:kontum))
  end

  test "should destroy kontum" do
    assert_difference('Kontum.count', -1) do
      delete :destroy, id: @kontum
    end

    assert_redirected_to konta_path
  end
end
