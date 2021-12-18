// import TwitterApi from "twitter-api-v2";
// import '/dotenv/config';

// const twitterClient = new TwitterApi(process.env.bearertoken);

async function getFollowers(){
  let request = await fetch(`https://api.twitter.com/2/users/devsarah45/followers`);
  let result = request.json();
  console.log(result.data.length);
}

async function getTweets(){
  let request = await fetch(`https://api.twitter.com/2/users/devsarah45`);
  let result = request.json();
  let tweetCounter = result.includes.tweets.length;
  result.includes.tweets.forEach(tweet => await getTweetRetweets(tweet.id));
}

async function getTweetRetweets(id){
  let request = await fetch(`https://api.twitter.com/2/tweets/${id}/retweeted_by`);
  let result = request.json();
  return result.data.length;
}

getFollowers();
getTweets();

// const apikey = process.env.apikey;
// const apiSecretKey = process.env.apiSecretKey;
// const accessToken = process.env.accesstoken;
// const accessTokenSecret = process.env.accesstokensecret;

// var client = new Twitter({
//   consumer_key: apikey,
//   consumer_secret: apiSecretKey,
//   access_token_key: accessToken,
//   access_token_secret: accessTokenSecret,
// });

// async function get(){
//   let url =
//   'https://api.twitter.com/1.1/followers/list.json?cursor=-1&screen_name=sarahdev45&skip_status=true&include_user_entities=false&count=20';

//   let request = await fetch (url);
//   console.log(request);
// }

// get();


// var params = { screen_name: '@devsarah45' };
// client.get(url, params, function (error, tweets, response) {
//   if (!error) {
//     console.log(tweets);
//   }
// });
