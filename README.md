# README

## Summary
Hot Reads is a simple api service that logs link traffic and can serve out a list of the most read links of the past 24 hours.

Try it out [here](https://hotreads-jg.herokuapp.com/)


## To Clone: 

`git clone git@github.com:glassjoseph/hot_reads.git`

`cd hot_reads`

`bundle install`

## To Set Up Database:
`rake db:create`

`rake db:migrate`

`rake db:create`


## To run the test suite:
`rspec`


## Available Endpoints:


| Verb        | URL           | Action  |
| ------------- |-------------| -----|
| GET     | https://hotreads-jg.herokuapp.com/api/v1/reads| Returns a json formatted list of top ten links, ordered by popularity |
| POST      | https://hotreads-jg.herokuapp.com/api/v1/reads?url=your_link_here     |   Creates a read record of your_link |


