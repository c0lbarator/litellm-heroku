# Litellm on Heroku deployment
1. `heroku create --stack container`
2. `heroku container:login`
3. `heroku container:push web`
4. `heroku container:release web`
5. `heroku open`