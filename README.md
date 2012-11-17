== FauxFile

A sample (and reprehensible) application that demonstrates built-in Rails profiling and benchmarking tests.

= Getting started

    bundle install
    bundle exec rake db:migrate

FauxFile uses ruby-prof, which may have build dependencies; I'm not really sure.

Profile the test suite

    rake test:profile

Then take a peek at `tmp/performance` for a gazillion files with detailed profiles.

- How do I read this mess?

I'm no expert. [ruby-prof.rubyforge.org](http://ruby-prof.rubyforge.org) has lots of information.