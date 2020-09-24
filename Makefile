default:
	@echo "=============> building Local API <============="
	docker build -f Dockerfile -t learningtdd .

up: default
	@echo "=============> starting learningtdd locally <============="
	docker-compose up -d

logs:
	docker-compose logs -f

down:
	docker-compose down

test:
	go test -v -cover ./...

clean: down
	@echo "=============> cleaning up <============="
	rm -f learningtdd
	docker system prune -f
	docker volume prune -f