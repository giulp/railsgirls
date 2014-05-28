Esercizio per railsgirls Udine 5 e 6 giugno 2014



TODO: probabilmente per windows è più semplice usare sass-bootstrap



rails new contabilita_domestica;

cd contabilita_domestica;

mkdir -p lib/templates/erb/scaffold;

vi lib/templates/erb/scaffold/_form.html.erb;

vi gemfile;

vi config/application.rb

bundle install;

rails g bootstrap:install;

rails g scaffold Category nome:string tipo:boolean periodico:boolean data:date;

rails g scaffold Log valore:integer note:text category:references;

rake db:migrate RAILS_ENV=development;

rails s

--------------------------------------------------------------------------------------
```
<%%= form_for(@<%= singular_table_name %>) do |f| %>
  <%% if @<%= singular_table_name %>.errors.any? %>
    <div id="error_explanation">
      <h2><%%= pluralize(@<%= singular_table_name %>.errors.count, "error") %> prohibited this <%= singular_table_name %> from being saved:</h2>

      <ul>
      <%% @<%= singular_table_name %>.errors.full_messages.each do |msg| %>
        <li><%%= msg %></li>
      <%% end %>
      </ul>
    </div>
  <%% end %>

<% attributes.each do |attribute| -%>
  <div class="field">
<% if attribute.password_digest? -%>
    <%%= f.label :password %><br>
    <%%= f.password_field :password %>
  </div>
  <div>
    <%%= f.label :password_confirmation %><br>
    <%%= f.password_field :password_confirmation %>

<%- elsif attribute.reference? -%>
     <%%= f.label :<%= attribute.name %> %><br>
     <%%= f.collection_select :<%= attribute.name %>, <%= attribute.name.camelize %>.all, :id, :nome, prompt: false  %>
<% else -%>
    <%%= f.label :<%= attribute.name %> %><br>
    <%%= f.<%= attribute.field_type %> :<%= attribute.name %> %>
<% end -%>
  </div>
<% end -%>
  <div class="actions">
    <%%= f.submit %>
  </div>
<%% end %>
```

----------------------------------------------------------------------------

decommento therubyracer

twitter bootstrap


gem 'twitter-bootstrap-rails'

gem 'simple_form', '~> 2.0'

-------------------------------------------------------------------------------

config.assets.enabled = true
