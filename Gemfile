source "https://rubygems.org"

gem "rails", "~> 7.2.2", ">= 7.2.2.1"
gem "sprockets-rails"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem "sass-rails"
gem "devise"

# 開発・テスト環境は SQLite
group :development, :test do
  gem 'sqlite3'
  gem 'dotenv-rails'
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

# 開発環境専用
group :development do
  gem "web-console"
end

# テスト専用
group :test do
  gem "capybara"
  gem "selenium-webdriver"
end


# PostgreSQL → 本番用
group :production do

end

  gem 'pg'