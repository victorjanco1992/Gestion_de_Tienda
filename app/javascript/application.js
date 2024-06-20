// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import 'jquery'
import "jquery_ujs"

window.jQuery = jQuery;
window.$ = jQuery;

//=requiere jquery
//=require jquery_ujs
//=requiere popper
//=requiere bootstrap
//=requiere sb-admin-2.min

document.addEventListener("turbolinks:load", function() {
    $("#buscador_productos").keyup(function(event){
        let termino = $(this).val();
        let id_modelo = $(this).data("model");
        let tipo_modelo = $(this).data("tipo");
        if(termino.length == 0) {
            $("#tabla_buscador tbody").empty();
        }
        else {
          request_url = getRootUrl() + "/buscador_productos/" + termino;
          $.get(request_url, function(data, status){
            if(data.length > 0)  {
                $("#tabla_buscador tbody").empty();  //borramos resultados anteriores
                for(x in data){
                  let nombre_producto = data[x].nombre_producto;
                  let existencia = data[x].existencia;
                  let id_producto = data[x].id;
                  console.log(nombre_producto);
                  //construyo nueva fila con los datos
                  newRowContent = `<tr> 
                                      <td>${nombre_producto}</td>
                                      <td>${existencia}</td>
                                      <td><button type="button" class="btn btn-primary" onclick="seleccionarProducto(${id_producto}, ${id_modelo}, '${tipo_modelo}')">
                                          Agregar
                                          </button>
                                      </td>
                                   </tr>`;
                  $("#tabla_buscador tbody").append(newRowContent);
                }
            }
          });
        }
    });

    
function getRootUrl() {
    return window.location.origin;
}