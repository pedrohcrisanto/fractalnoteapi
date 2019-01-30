<h1>Fractal Note Api</h1>

API desenvolvida por Pedro Crisanto para fins de teste de conhecimento.

<h2>Instruções para configurar o projeto:</h2>

- sudo docker-compose run --rm website bundle install

- sudo docker-compose run --rm website bundle exec db:create db:migrate

- sudo docker-compose run up 
**(deixar um terminal aberto rodando a aplicação, antes de popular o banco)**

- sudo docker-compose run --rm website bundle exec rails dev:setup 
**(Popular Banco de Dados)**

- sudo docker-compose run --rm website bundle exec rspec 
**(Roda os Testes)**
<h3> Informações Extras </h3>
- Para acessar o Sidekiq => https://localhost:3000/sidekiq

- Documentação da API => https://web.postman.co/collections/4825441-830c5c40-3e1c-4db0-9c38-b5b5186f9564?workspace=3aa778d2-ad8f-4232-8e1b-41c6a3d81483