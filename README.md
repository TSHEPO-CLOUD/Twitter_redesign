# Ruby on Rails Capstone Project.

In this project, I redesigned a twitter to create opinions about movies. I used a lot of knowledge acquired throughout the Ruby on Rails section, Model/View/Controller concepts, some of bootstrap from previous HTML & CSS, among other knowledge acquired on Microverse to create an MVP for this app.

The project consists of a Sing up/Login with username as the login information (as required). The user has a photo to show on his profile/opinions and a cover image that shows on his profile. The images should be provided as URL because I can't store images on heroku database. If no image is informed, or an invalid URL the app will show a default one instead.

Without logging in the user can see all user's opinions on a central 'timeline' and on the right a list of users who are registered. 

Logged in the user see a timeline with only opinions of the ones he follows and his own opinions. On that timeline, he can edit/delete his own opinions and on other user's opinions, he can 'retweet' (the created copied opinion will have a link for the original user who created it).

There is another view for the user profile, that shows a cover image above the specific user opinions and profile information on the right.

The functionality to follow/unfollow is very intuitive. '+' buttons to follow close to not followed users are shown as well as an explicit button to follow/unfollow on the profile user


## Screenshot of the page
![Screenshot Profile Page](./app/assets/images/front.png)

## Built With

   - Ruby,
   - Ruby on Rails,
   - SCSS,
   - Bootstrap,
   - Font Awesome,
   - RSpec(Testing)
   - Capybara(Testing)
   - Bullet(Developing)

## Getting Started

You can get a local copy of the repository please run the following commands on your terminal:

```
$ cd <folder>

$ git clone https://github.com/TSHEPO-CLOUD/Twitter_redesign/tree/feature-branch
```

You need to install the required gems:

```
$ bundle install or bundle update
```

Migrate the database

```
$ rails db:migrate
```

If you want to prepopulate the database you can run the seed.rb file(not required):

```
$ rails db:seed
```

And run the server:

```
$ rails s
```


To navigate on the app you can enter http://localhost:3000/ on your browser, set a new User and you are ready to log in.

## Tests

The tests were created with RSpec, to run the tests you should open the app folder on console and run 
 
```
$ rspec
```

It will run the 3 test files:

- spec/feature/features_spec.rb
- spec/models/following_spec.rb
- spec/models/user_spec.rb

## Authors

👤 **Author**

👤 **TSHEPO DAVID MOLEFE**

- GitHub: [@githubhandle](https://github.com/TSHEPO-CLOUD)
- Twitter: [@twitterhandle](https://twitter.com/tshepomolefem)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/tshepo-molefe-8153313b)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!
