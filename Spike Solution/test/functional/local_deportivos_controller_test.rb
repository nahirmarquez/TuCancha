require 'test_helper'

class LocalDeportivosControllerTest < ActionController::TestCase
  setup do
    @local_deportivo = local_deportivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:local_deportivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create local_deportivo" do
    assert_difference('LocalDeportivo.count') do
      post :create, local_deportivo: { contacto: @local_deportivo.contacto, descripcion: @local_deportivo.descripcion, direccion: @local_deportivo.direccion, email: @local_deportivo.email, nombre: @local_deportivo.nombre, servicios: @local_deportivo.servicios, telefono: @local_deportivo.telefono }
    end

    assert_redirected_to local_deportivo_path(assigns(:local_deportivo))
  end

  test "should show local_deportivo" do
    get :show, id: @local_deportivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @local_deportivo
    assert_response :success
  end

  test "should update local_deportivo" do
    put :update, id: @local_deportivo, local_deportivo: { contacto: @local_deportivo.contacto, descripcion: @local_deportivo.descripcion, direccion: @local_deportivo.direccion, email: @local_deportivo.email, nombre: @local_deportivo.nombre, servicios: @local_deportivo.servicios, telefono: @local_deportivo.telefono }
    assert_redirected_to local_deportivo_path(assigns(:local_deportivo))
  end

  test "should destroy local_deportivo" do
    assert_difference('LocalDeportivo.count', -1) do
      delete :destroy, id: @local_deportivo
    end

    assert_redirected_to local_deportivos_path
  end
end
