
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
* creacion de un proyecto en rails

--verificar estar en las terminal con ubuntu --

* ...conexion virtual box Y visual ...................
codigo para conexion con el proyecto
--ssh -p 2222 inforcap@127.0.0.1
....................................

* --crear un proyecto nuevo en rails
rails new demo -d postgresql
o
rails new demo --database postgresql
..................................

* bundle install para intalar todas las gemas necesarias dentro de la carpeta del proyecto
-------------------------------------
apagar la maquina virtual para que reconozca la carpeta RoR
.............................................
* --desplegar el servidor---
rails s
.............................................
* revisar el archivo Gemfile
............................................
* config/database.yml
*crea por defecto la base de datos demo/development***
****rails db:create usa por defecto las bases de datos preexistentes******
modificamos el archivo config/d\latabase.yml en test y developer
agregar usuario y clave
username: inforcap
password: admin1234
pasa salir de la base de datos en consola se escribe **exit** *******
rails db -> para acceder desde la tarminal a la base de datos 
\l para revisar la lista de las bases de datos existentes.
 .....................................
* --ejecutar la creacion de la database----
rails db:create
rails db -> para acceder desde la tarminal a la base de datos 
 .....................................
* --crear un controlador--
rails g controller welcome index
..................................................
app
    assets/images 
    assets/css
    controllers/
    javascript/
    models/
    view/layout

* config( dentro de los archivos mas importantes)
    database
    routes.db

* db
    seed.rb(precargar data en las tablas)
    migration(nos sirven para crear las tablas en la base de datos)

...........................

* --crear un controlador
--welcome = welcome_controller y una carpeta llamada welcome
rails g controller welcome index
--index =>metodo en el controlador y es una pagina llamada index.html.erb
--------------------------------------------------------
rails g controller post index show create  delete update 
rails g controller 
--------------------------------------------------------
* ----escritura ruby------
#<% %> uno se usa para imprimir 
#<%= %> es para hacer alguna evaluacion 
........................................................
* agregar bootstrap como gema al proyecto
gem install bootstrap
gem install jquery-rails

* agregamos la gema al Gemfile y ejecuta un bundle install
bundle add bootstrap
bundle add jquery-rails o gem 'jquery-rails'

* cambiar el nombre application.css a application.scss

* agregar en application.scss la linea
@import "bootstrap";

* agregar a application.js 
//= require jquery3
//= require popper
//= require bootstrap
...........................................................
crear un proyecto de 
creacion base de datos
ejecutar bootstrap
ejecutar una vista
controlador
agregar el navbar
.....................
* bootstrap

..........................
modifcamos en routes (descomentar)
 root "welcome#index"
       cambiamos articles por welcome
 esto genera que la pagina DE inicio sea welcome
 .........................

* agregan en application.js
import "popper"
import "bootstrap"

 

* agregar en la siguiente ruta 
config/initializers/assets.rb
Rails.application.config.assets.precompile += %w(application.scss bootstrap.min.js popper.js)

* agregar en config/importmap.rb
pin "popper", to: 'popper.js' preload:true
pin "bootstrap", to: 'bootstrap.min.js', preload: true
***esto puede generar un error.. revisar bien si es necesario.

* agregar en config/view/layouts/application.html.erb
<%= javascript_importmap_tags %>

* ****creamos un controlador con nuestro nombre*******

1.- class SixtoController < ApplicationController
    def mostrar
    end
2.-luego en view, creamos la carpeta del controlador, y dentro, un html.erb con el metodo
mostrar.html.erb esto es un html, por lo que podemos poner dentro lo que queramos. 
 
3.- creamos la ruta en routes.rb como lo hicimos con welcome e index.
get "sixto/mostrar"

get "sixto", to: "sixto#mostrar"


* crear una carpeta en view, con el nombre de shared. dentro de la misma, crear un html 
_navbar.html
luego de guardarlo, cambiamos a extension del mismo a .erb

* poner en application.html.erb el yield dentro de un div
<div class="container">
    <%= yield %>
    </div>


*  dentro del body en application.html.erb inyectamos el navbar con la ruta y render.
<%= render 'shared/navbar' %>    

* welcome es un metodo dentro del controlador y es una pagina llamada index.html.erb
controlador : welcome  metodo: index
        routes
        controller/metodo
    
        https://;localhost:3000/welcome/index
                           .                              .welcome_controller
                            .                            . index.
                             .                          .        .
                              .routes controller/metodo.          .
                                                                   .
                                                                    .
                                                         views/welcome index.html.erb
                    
 
* asd es para revisar todas las rutas

*  ejemplo de uso del helper link_to
      <a class="navbar-brand" href="#">Sistema Web</a>
  esto es un Ancor, solo que se escribe de manera distinta.
  

* en el navbar, para que tome el estilo se le da la clase que corresponde a bootstrap
 ej:class:'navbar-brand'

*  con esta formula tenemos hora
<b><%= Time.now() %></b>


* para poder agregar con codigo ruby una imagen. todo lenguaje ruby comienza con <%=info dentro%>
<%=image_tag("ImagenDeApoyo.jpg", size:"300x200", alt: "Edit Entry")%>

* Scaffold.
rails g scaffold libro nombre descripcion
 invoke  active_record
      create    db/migrate/20230619195022_create_libros.rb
      create    app/models/libro.rb
      invoke    test_unit
      create      test/models/libro_test.rb
      create      test/fixtures/libros.yml
      invoke  resource_route
       route    resources :libros
      invoke  scaffold_controller
      create    app/controllers/libros_controller.rb
      invoke    erb
      create      app/views/libros
      create      app/views/libros/index.html.erb
      create      app/views/libros/edit.html.erb
      create      app/views/libros/show.html.erb
      create      app/views/libros/new.html.erb
      create      app/views/libros/_form.html.erb
      create      app/views/libros/_libro.html.erb
      invoke    resource_route
      invoke    test_unit
      create      test/controllers/libros_controller_test.rb
      create      test/system/libros_test.rb
      invoke    helper
      create      app/helpers/libros_helper.rb
      invoke      test_unit
      invoke    jbuilder
      create      app/views/libros/index.json.jbuilder
      create      app/views/libros/show.json.jbuilder
      create      app/views/libros/_libro.json.jbuilder

* gema que controla los assets
gem "sprockets-rails"
Esm
* en application.html.erb debemos poner
<%= render 'shared/header' %>
esto es para poder asociar las vistas compartidas en carpeta shared, con el mismo nombre.
* generador de controlador, vistas, rutas
rails g controller phantom index generic element
* 

cambiar version ruby
rbenv local y la version de la app

rbenv install 3.1.3 
rbenv local 3.1.3
gem install bundler 
bundle install
...................................
implementacion devise(gema)
gem install devise
bundle add devise
rails g devise:install
*create  config/initializers/devise.rb
         create  config/locales/devise.en.yml
rails g devise:views (ejecuta todas las vistas de la gema)
rails g devise User(crea una migracion y un modelo)
rails g devise:controllers users
*rollers users
      create  app/controllers/users/confirmations_controller.rb
      create  app/controllers/users/passwords_controller.rb
      create  app/controllers/users/registrations_controller.rb
      create  app/controllers/users/sessions_controller.rb
      create  app/controllers/users/unlocks_controller.rb
      create  app/controllers/users/omniauth_callbacks_controller.rb
descomentar linea 266 en config/initializer/devise.rb
rails db:migrate (corre todas las migraciones y crea la tabla usuario)
.....................................
crear una carpeta en views, con el nombre de shared. dentro
creamos un archivo navbar.hmtl
</button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Features</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Pricing</a>
        </li>
        <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        <% if user_signed_in? %>
                        <%= current_user.email%>
                        <%else%>
                            Opciones
                        <%end%>
                        
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <%= button_to 'Cerrar sesión' , destroy_user_session_path, class: 'dropdown-item' , method:
                                :delete %>
                        </li>
                        <li>
                            <%= link_to 'Iniciar sesión' , new_user_session_path, class: 'dropdown-item' %>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li>
                            <%= link_to 'Registro' , new_user_registration_path, class: 'dropdown-item' %>
                        </li>
                    </ul>
                </li>
      </ul>
    </div>
  </div>
</nav>
.........................
sobre el yield.

<%= "/shared/navbar"%> generamos el uso en todas las vistas 
del navbar.
.........................
crear el welcome index(pagina de bienvenida)

rails g controller welcome index

rails g controller home index

es para redirigir a todos los usuarios logueados. 

cambiamos la ruta a welcome#index

..........................
integrar pg search gema.

bundle add pg_search

incluir los siguientes datos en el modelo.

include PgSearch::Model
pg_search_scope :search_full_text,
against: {
    usuario: 'A',
    descripcion: 'B',
}
..........................
gem pagy 

incluir en el application_controller.rb

include Pagy::Backend
Pagy::DEFAULT[:items] = 10
require 'pagy/extras/bootstrap'

incluir en el application_helper.rb

  include Pagy::Frontend

  
