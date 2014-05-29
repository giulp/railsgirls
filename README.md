Esercizio per railsgirls Udine 5 e 6 giugno 2014


rails new contabilita_domestica

cd contabilita_domestica

--------------------------------------------------------------------------------------

(Sublime Text - aptana - notepad ++) gemfile

-----------------

decommento therubyracer

gem 'bootstrap-sass'

gem 'bootstrap-generators'

--------------------------------------------------------------------------------------

bundle install

rails g bootstrap:install

rails g scaffold Category nome:string tipo:boolean periodico:boolean data:date

rails g scaffold Log valore:integer note:text category:references

rake db:migrate RAILS_ENV=development



routes

modifica layout

modifiche form e tabelle

visualize



rails s

:feet:

:see_no_evil: :hear_no_evil: :speak_no_evil:


