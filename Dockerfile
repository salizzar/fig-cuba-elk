FROM	salizzar/debian-7-ruby

WORKDIR /var/www/fig-elk

ADD	Gemfile .

RUN	ruby -S bundle install

EXPOSE	3000

CMD	[ "/usr/bin/ruby", "-S", "bundle", "exec", "rackup", "-p", "3000" ]

