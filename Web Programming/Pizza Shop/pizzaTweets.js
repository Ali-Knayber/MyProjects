//to get tweets with the hashtags #pizza and #thecornerpizzeria
var Twitter = require('twitter');
require('dotenv', config);

const { config } = require('dotenv');



var client = new Twitter({
    consumer_key: apikey,
    consumer_secret: apiSecretKey,
  bearer_token: process.env.bearertoken
});

client.get('search/tweets', {q: '#pizza #thecornerpizzeria'}, function(error, tweets, response) {
   tweets.statuses.forEach(function(tweet) {
   	console.log("tweet: " + tweet.text)
   });
});