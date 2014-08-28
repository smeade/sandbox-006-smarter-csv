## Readme

A Rails application to experiment with CSV imports.

Demonstrates:

* smarter-csv gem

Demo Heroku app is [here](http://sandbox-006-smarter-csv.herokuapp.com/).

## Notes

**smarter-csv**

* See the [gem documentation](https://github.com/tilo/smarter_csv).

**Styling file inputs**

* See [Cory LaViska's solution](http://www.abeautifulsite.net/whipping-file-inputs-into-shape-with-bootstrap-3/).

## Getting Started

1. Install gems:

        bundle install

2. Create the database:

        rake db:create

2. Migrate the database:

        rake db:migrate

4. Start the web server:

        rails server

5. Using a browser, go to [http://localhost:3000](http://localhost:3000) and you'll see:
"Listing products"

6. A sample .csv file is included.

## Running the test suite

        rake

## Deploying to Heroku

1. Install the [Heroku toolbelt](https://devcenter.heroku.com/articles/getting-started-with-rails4#local-workstation-setup) on local workstation (if not already installed).

2. Create the [Heroku app](https://devcenter.heroku.com/articles/getting-started-with-rails4#deploy-your-application-to-heroku) (if not already created).

        heroku apps:create

3. [Deploy](https://devcenter.heroku.com/articles/git#deploying-code)

        git push heroku master

4. Run migrations

        heroku run rake db:migrate

5. Visit the deployed app

        heroku open

## License

This project is released under the [MIT License](http://www.opensource.org/licenses/MIT).