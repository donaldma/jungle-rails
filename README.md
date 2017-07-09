# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Screenshots

![Homepage](https://github.com/donaldma/jungle-rails/blob/master/docs/soldout.png)
![Admin Categories](https://github.com/donaldma/jungle-rails/blob/master/docs/admin%20categories.png)
![Admin add Categories](https://github.com/donaldma/jungle-rails/blob/master/docs/admin%20new%20cat.png)
![Signup](https://github.com/donaldma/jungle-rails/blob/master/docs/signup.png)
![Login](https://github.com/donaldma/jungle-rails/blob/master/docs/login.png)
![Order Details](https://github.com/donaldma/jungle-rails/blob/master/docs/order%20details.png)
![Email](https://github.com/donaldma/jungle-rails/blob/master/docs/mail.png)
![Admin Auth](https://github.com/donaldma/jungle-rails/blob/master/docs/admin%20auth.png)
![Filled Cart](https://github.com/donaldma/jungle-rails/blob/master/docs/full%20cart.png)
![Empty Cart](https://github.com/donaldma/jungle-rails/blob/master/docs/empty%20cart.png)
![Logged out Reviews](https://github.com/donaldma/jungle-rails/blob/master/docs/reviews:logged-out.png)
![Logged in Reviews](https://github.com/donaldma/jungle-rails/blob/master/docs/reviews:logged-in.png)

## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
