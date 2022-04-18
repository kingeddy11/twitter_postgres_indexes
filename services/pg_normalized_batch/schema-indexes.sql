-- 1
create index tweet_tags_idx1 on tweet_tags(tag, id_tweets);
-- 2
create index tweet_tags_idx2 on tweet_tags(id_tweets, tag);
-- 3
create index tweets_idx on tweets(id_tweets, lang);
--4,5
create index tweets_gin on tweets using gin(to_tsvector('english',text)) where lang='en';
