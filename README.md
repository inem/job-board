Job Board
=========

A simple job board app written in Sinatra, Mongo, Effigy, & HTML5.

Example usage
-------------

Deploying to Heroku and MongoHQ:

    git clone git://github.com/dancroak/job-board.git
    cd job-board
    heroku create
    heroku config:add MONGO_DB=mongodatabasename MONGO_HOST=db.mongohq.com MONGO_USER=user MONGO_PASSWORD=password
    git push heroku master

Yay.
