# Turbo Response Slowdown

The problem is that response times consistently and gradually increase when there is an n+1 query and prosopite is enabled.

## How To Reproduce

- Install the required gems with `bundle install`
- Run the migrations with `bundle exec rails db:migrate`
- Set up the seed data with `bundle exec rails db:seed`
- Run `bundle exec rails s` to start the server
- Visit <http://localhost:3000/posts>
- Open the Network tab of the browser developer tools
- If "Duration" is not visible, right click on the column title bar, navigate into "Timings" and select "Duration"
- Click the "Next" button until you reach the end or you've seen the duration value noticably increase enough
