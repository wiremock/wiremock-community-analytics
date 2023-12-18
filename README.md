# WireMock Community Analytics

WireMock community analytics setup, based on [GrimoireLab](https://chaoss.github.io/grimoirelab/)
by CHAOSS.
The project is distributed as Docker Compose, and can be reused as needed.

## Configured analytics

- git
- github, github:repo, github:issues, github:pulls
- githubql
- github2:issues, github2:pulls

## Running locally

1. Check out this repository
2. Take `settings/credentials.cfg.template` and create local `settings/credentials.cfg`
   by replacing stubs with a proper token
3. OPTIONAL: Run `./scripts/generate-projects-json` to generate or refresh the projects configuration file
4. Run `docker compose up`
5. Wait...
   The production configuration includes many repositories,
   and it may take a while until GrimoireLab loads all the data.
   Normally it takes about 10 minutes

## Wishlist

- [ ] Sorting Hat can be initialized with the organizations
- [ ] Nice2Have: Support for the application tokens
- [ ] Non-GitHub analytics OOTB

## License

GNU GPL 3 is used as the repository adopts some code and configurations from
GrimoireLab and its repositories
