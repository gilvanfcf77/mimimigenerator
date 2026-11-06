# Mimimi Generator

> **This is a study project.** It was built in 2016 for testing and learning Ruby on Rails. It is not maintained and is not meant for production use.

A small joke web app that "translates" Portuguese text into mimimi by replacing vowels with the letter "i". The interface is in Portuguese.

| Text | Translation |
|---|---|
| Por que você não amadurece | Pir qii vici nii imidirici |

## How it works

1. You type some text into the form on the home page and submit it.
2. A `POST /translate` request reaches `HomeController#translate`, which replaces the vowels `a`, `e`, `o` and `u` and some accented vowels with `i`.
3. The app redirects to the home page with the result in the URL, and the page shows it in a read-only field.

Nothing is saved, and the app has no database tables.

## Known limitations

- Only some accented letters are replaced. For example, `ó`, `õ`, `â` and `à` stay as they are.
- Accented capitals such as `É` become a lowercase `i`, while plain capitals become `I`.
- The result is passed in the URL, so very long text may not work.

## Tech stack

- Ruby on Rails 4.2.6
- PostgreSQL, which is configured but not used to store data
- twitter-bootstrap-rails and jQuery

## Running locally

You need PostgreSQL and an older Ruby 2.x version, such as 2.3, because Rails 4.2 does not support current Ruby versions.

```bash
git clone https://github.com/gilvanfcf77/mimimigenerator.git
cd mimimigenerator
bundle install
bin/rake db:create
bin/rails server
```

Then open http://localhost:3000.

## Where to look

- `app/controllers/home_controller.rb` - the translation logic.
- `app/views/home/index.html.erb` - the form and result page.
- `config/routes.rb` - the app's routes.
