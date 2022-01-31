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
