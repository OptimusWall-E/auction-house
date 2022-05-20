# README

This codebase was created with:

```
$ rails new auction-house --skip-action-mailbox -a propshaft -T -c bootstrap
```

## Setup

 - `bundle`
 - `yarn`
 - `rails db:create db:migrate`

## Running

 - `bin/dev`

 Visit http://localhost:3000

## Testing

Make sure you have chromedriver installed and working on your machine. If you
have trouble you can change the default `driven_by` in `spec/rails_helper.rb`
to something else that works for you.

 - `bundle exec rspec`
