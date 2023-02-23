##
# Utility Makefile for running CI/CD tests locally.
#

.PHONY: all test lint clean


#
# Default target
#
all: test


#
# Run all CI/CD tests locally.
#
test: lint


#
# Lint the source files to ensure compliance with standards. This requires Node.js and Docker to be installed.
#
lint:
	@echo "Linting full repository..."
	@echo

	@npx mega-linter-runner


#
# Clean up artifacts from testing.
#
clean:
	-rm -rf *.log
	-rm -rf megalinter-reports
