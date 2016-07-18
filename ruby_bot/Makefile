APP_HOME="/usr/src/app"

all: docker database

docker:
	docker-compose build
	$(MAKE) rails cmd="cp -v /tmp/Gemfile.lock $(APP_HOME)"

build:
	$(MAKE) rails cmd="bundle install"

db-cli:
	DOCKER_IP="$(shell docker inspect rng_db_1 | grep IPAddress | awk '{ print $$2 }' | tr -d ',"''"' | head -1)"; psql -h $$DOCKER_IP -d rng_development -U postgres

database:
	$(MAKE) rails cmd="rake db:create db:migrate"

rails:
	docker-compose run rng $(cmd)

run:
	rm tmp/pids/server.pid || true
	@docker-compose up

runr:
	docker-compose up --force-recreate

cli:
	$(MAKE) rails cmd="/bin/bash"

baza:
	docker exec -it rng_rng_1 /bin/bash -l

clean:
	docker-compose rm rng db
