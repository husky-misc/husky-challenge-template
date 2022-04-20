# Husky Challenge

Esse é um projeto base para te ajudar na solução do [desafio Husky](https://github.com/husky-misc/code-challenge/issues/33).

Você vai encontrar um setup inicial da autenticação, controle das invoices e e-mail de notificação.

A ideia aqui é dar um empurrão inicial para te ajudar nas implementações, mas... cuidado, esse empurrão pode não ser para a direção correta.

O projeto foi implementado de uma forma bem básica, fazendo uso de uma abordagem diferente do que praticamos na Husky. Nós queremos ver justamente o seu processo de trabalho e decisões para melhorar a arquitetura e funcionamento da aplicação.

> Dica: leve em consideração o que descrevemos nos tópicos `Solução`, `Expectativas` e `Contexto: O que utilizamos / fazemos na Husky` do [desafio](https://github.com/husky-misc/code-challenge/issues/33).

**Importante:** você não precisa ficar preso a estrutra desse projeto. Sinta-se a vontade para modificar o que achar necessário. Ex: README, adicionar/modificar/remover dependências, arquivos e diretórios...

## Configuração

### Dependências de ambiente

- Ruby `>= 3.1.0`
  - bundler `>= 2.3.4`
  - rails `>= 7`
- Node.js `>= 16.13.2`
  - npm `>= 8.0`
  - yarn `>= 1.22.0`
- Postgresql

### Preparando ambiente de desenvolvimento

1) Instale as dependências de ambiente.

2) Crie o arquivo `config/master.key`.

```sh
echo '2500af7274898ae80b2c62be1bbbb64f' > config/master.key

chmod 600 config/master.key
```

3) Crie o aquivo `config/database.yml` a partir do `config/database.yml.sample`.

4) Configure o arquivo `config/database.yml`.

5) Execute `bin/setup`

## Desenvolvimento

### Executando a aplicação

```sh
bin/dev
```

### Executando os testes

```sh
bin/rails spec
```

-----

Entrega do desafio de geração de invoices.

Prioriazação o desenvolvimento da plataforma na versão web para que o usuário possa utilizar 100% da mesma.

Uma vez que vocês utilizam use-cases para o atual desenvolvimento, foi utilizada a gem `u-case` para organizar os mesmos. Também foi utilizada a gem `wicked_pdf` para geração do arquivo PDF e a gem `active_model_serializers` para serializar os retornos da API.

Para os testes foram adicionadas a gems `guard-rspec`, `factory_bot_rails` e `shoulda-matchers` e também foram criados custom matchers para facilitar os testes de use-cases e outros. A gem `annotate` foi adicionada para facilitar a visualização da estrutura dos modelos.

Esta foi a primeira utilização da gem `u-case` e portanto as estruturas podem não estar 100% otimizadas.

Documentação básica da api se encontra no arquivo [`./doc-api.md`](https://github.com/husky-misc/husky-challenge-template/blob/82f43971fb17159f6714cc7b53640c4c55656f35/doc-api.md).

Lista de algumas possíveis melhorias no tópico "Backlog"

## Screenshots

[invoice_6.pdf](https://github.com/husky-misc/husky-challenge-template/files/8508454/invoice_6.pdf)

<details><summary>Ver/esconder</summary>

![screencapture-localhost-3000-users-registrations-new-2022-04-18-18_42_44](https://user-images.githubusercontent.com/5757502/163886095-9604751f-3919-451a-a796-bca2e2621aff.png)

![screencapture-localhost-3000-users-recovery-tokens-new-2022-04-18-18_42_54](https://user-images.githubusercontent.com/5757502/163886111-d8341644-ced4-49b5-b324-53bfa05804a5.png)

![screencapture-localhost-3000-users-registrations-2022-04-18-18_43_07](https://user-images.githubusercontent.com/5757502/163886106-bf656f1b-3301-4847-a552-a19f62a0991e.png)

![screencapture-localhost-3000-2022-04-18-18_43_24](https://user-images.githubusercontent.com/5757502/163886154-7a76949b-6384-445a-b663-2cba0282f951.png)

![screencapture-localhost-3000-invoices-2022-04-18-18_46_12](https://user-images.githubusercontent.com/5757502/163886119-44867d3c-6818-4762-8168-a4579d44bc96.png)

![screencapture-localhost-3000-invoices-2022-04-18-18_46_22](https://user-images.githubusercontent.com/5757502/163886116-7e816c2c-05a0-4c4c-b104-d502974dd874.png)

![screencapture-localhost-3000-invoices-6-2022-04-18-18_47_07](https://user-images.githubusercontent.com/5757502/163886146-02a6008e-a87f-46e2-9e44-05275f7ae085.png)

![screencapture-localhost-3000-invoices-6-2022-04-18-18_47_15](https://user-images.githubusercontent.com/5757502/163886132-9c60f313-5489-484d-a7bb-c2864bb7af66.png)

![screencapture-localhost-3000-invoices-6-deliveries-new-2022-04-18-18_47_29](https://user-images.githubusercontent.com/5757502/163886123-50fcd07b-9368-4854-bd06-0c4114a3ff78.png)

![screencapture-file-home-dpedoneze-projects-husky-husky-challenge-template-tmp-letter-opener-1650318877-336254-1824304-rich-html-2022-04-18-18_54_55](https://user-images.githubusercontent.com/5757502/163886184-ca239c5e-d865-4721-810e-18b345945c64.png)

![screencapture-file-home-dpedoneze-projects-husky-husky-challenge-template-tmp-letter-opener-1650318201-941323-963584f-rich-html-2022-04-18-18_45_17](https://user-images.githubusercontent.com/5757502/163886196-197effe1-bcde-453a-8e16-b0c6cb123b04.png)

----

![mobile-screencapture-localhost-3000-invoices-new-2022-04-18-20_05_00](https://user-images.githubusercontent.com/5757502/163890866-30b302ea-f3e9-4db1-87ee-770823d0619e.png)
![screencapture-localhost-3000-invoices-6-2022-04-18-20_05_27](https://user-images.githubusercontent.com/5757502/163890869-335e8aaf-bf28-40f1-aa2f-ed304d090ed6.png)

</details>


## Ambiente de desenvolvimento

Foi criado um Dockerfile e um docker-compose para facilitar a execução do desafio localmente.

<details><summary>ver/esconder setup</summary>

### App

#### Setup

```
docker-compose build --no-cache app
docker-compose up
docker-compose run --rm app bin/setup
docker-compose down
```

#### Development
```
docker-compose up
```

### Tests

#### Setup

> Rodar o setup do APP primeiro

```
docker-compose run --rm -e RAILS_ENV=test app bundle exec rails db:create
```

#### Development

```
docker-compose exec app bundle exec guard
```

Caso queira executar toda a suite de testes:

```
docker-compose exec app bundle exec rspec
```
</details>


## Backlog
> Alguns itens que podem ser implementados:

- Encrypt/Decrypt para token do usuário, para não armazenar o mesmo de forma pura
- Cache para retornos da API
- Paginação na listagem de invoices
- Filtros parciais de invoice_number
- Ordenação na listagem de invoices
- Criação de um Presenter para show de um invoice
- Criação de um Policy para show de um invoice
- Adicionar expiração de recovery_token
- Adicionar rate-limit para requisitar novo recovery_token
- Criar nova view par exibição de invoice (com uuid para dificultar "descoberta" de outros invoices)
- Caso necessário realizar stream de arquivo pdf (baixando e enviando via controller logado etc)
- Criação do endpoint /api/invoices/:invoice_id/deliveries para feature de envio de invoice para novos e-mails via API
- Edição/exclusão de invoices
- Adicionar algum campo único (invoice_number?)
- Implementar validação de e-mails armazenados no invoice
- Repensar fluxo de armazenamento de e-mails
- indices para os campos de busca

---

Obrigado pelo desafio!
