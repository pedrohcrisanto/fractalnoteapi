<h1>Fractal Note Api</h1>

API desenvolvida por Pedro Crisanto para fins de teste de conhecimento.

<h2>Instruções para configurar o projeto</h2>

- (sudo) docker-compose run --rm website bundle install

- (sudo) docker-compose run --rm website bundle exec rails db:create db:migrate

- (sudo) docker-compose up 
**(deixar um terminal aberto rodando a aplicação, antes de popular o banco)**

- (sudo) docker-compose run --rm website bundle exec rails db:seed 
**(Popular Banco de Dados)**

- (sudo) docker-compose run --rm website bundle exec rspec 
**(Rodar os Testes)**

<h3>Outras Informações</h3>

* Aplicação no Heroku: https://fractalnoteapi.herokuapp.com

* Documentação da API: https://documenter.getpostman.com/view/4825441/Rztms8oX