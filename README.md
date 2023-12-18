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

## TODOs

- [ ] `settings/projects.json` management is PITA, a generator script is needed
- [ ] Sorting Hat can be initialized with the organizations

## License

GNU GPL 3 is used as the repository adopts some code and configurations from
GrimoireLab and its repositories
