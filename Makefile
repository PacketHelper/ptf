.PHONY: format-check
format-check:
	@echo "Checking format..."
	python -m black src/

.PHONY: format-isort
format-isort:
	@echo "Checking imports..."
	python -m isort --check src/ --profile black

.PHONY: format
format:
	@echo "Formatting..."
	python -m black src/

.PHONY: set-dev
set-dev:
	@echo "Installing dev-dependencies..."
	python -m pip install -r requirements-dev.txt
