# Devary

## Heroku link:
- https://devary.herokuapp.com

## Using:

- Ruby 3.0.1
- Rails 6.1.4

## Download and Installation

```sh
git clone https://github.com/axelzito/devary.git project_name
```

```sh
cd project_name
```

```sh
bundle install
```

```sh
sudo -u postgres createuser -s devary -P
rails db:create

If the below step return any erro, try this:

sudo -u postgres psql
\password

Set your password, and try again:

rails db:create
```

```sh
rails db:migrate
```

```sh
rails s
```
