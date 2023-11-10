# Chat Forum

Dependencies can be found within the Gemfile at the root directory.

Before running the command below, you will need to have rails, ruby, and docker installed on your machine. For more info, here is the [rails documentation](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails)https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails

```
rails server
```

will start the development web server

```
docker-compose up -d
```
will start the MySql server for the application.

```
rails db:migrate
```

Now you can run migrations with this command.
