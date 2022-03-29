BLUE='\033[0;34m'

all: test commit version clean

test:
	@echo "\n${BLUE} Running the tests..."
	@pipenv run test 

commit:
	git add .
	git commit -m "${cm}"

version:
	@echo "\n${BLUE} Bumping the version..."
	pipenv run cz bump
	pipenv run cz changelog
	git push 

clean:
	rm -rf .pytest_cache .coverage coverage.xml
