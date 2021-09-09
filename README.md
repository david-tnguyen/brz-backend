## Getting Started

- Install latest version of Ruby
- Install Rails
- Install bundler
- Clone repo and run `bundle install` to install all required gems

## Development

- Run `rails server` or `rails s` for short
- To run on a different port, run `rails s -p 5000`

## API keys required

- [TIINGO](https://api.tiingo.com/)

## Environment variables

| ENV                             | DESCRIPTION                              |
| ------------------------------- | ---------------------------------------- |
| YAHOO_FINANCE_QUOTES_URL        | URL from Yahoo Finance to pull in quotes |
| YAHOO_FINANCE_QUOTE_SUMMARY_URL | URL from Yahoo Finance to pull in prices |
| TIINGO_SEARCH_URL               | Search symbols with Tiingo               |
| TIINGO_API_TOKEN                | API token generated from Tiingo          |
