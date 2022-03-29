BLUE='\033[0;34m'

all: test version clean

test:
	@echo "\n${BLUE} Running the tests..."
	@pipenv run test 

version:
	@echo "\n${BLUE} Bumping the version..."
	pipenv run cz bump
	pipenv run cz changelog

clean:
	rm -rf .pytest_cache .coverage coverage.xml