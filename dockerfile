# Create a Jekyll container from ruby alpine image

# At a minimum, use Ruby 2.5 or later
FROM ruby:2.7.7-alpine3.16

# Add Jekyll dependecy to Alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Update the Ruby bundler and install Jekyll
RUN gem update bundler && gem install bundler 'jekyll:3.9.2'
# RUN gem install jekyll bundler
