ifeq ($(MVN),)
    MVN  := ./mvnw
endif


# backend commands

backend-clean:
	@ cd backend && $(MVN) clean

backend-test:  backend-clean
	@ cd backend && $(MVN) test


# frontend commands

frontend-clean:
	@ cd frontend && npm run clean

frontend-test:  frontend-clean
	@ cd frontend && npm run test


# TODO
# backend-lint:
# frontend-lint:



.PHONY: backend-clean backend-test frontend-clean frontend-test