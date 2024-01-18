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
2. Create the file `settings/github-api-token.txt` containing only your GitHub token.
   It will be propagated as a Docker secret to the `mordred` instance
3. OPTIONAL: Run `./scripts/generate-projects-json` to generate or refresh the projects configuration file.
   To generate test data to speedup development, use the `USE_TEST_DATA` variable.
   E.g. `USE_TEST_DATA=true ./scripts/generate-projects-json`
4. Run `docker compose up`
5. Wait...
   The production configuration includes many repositories,
   and it may take a while until GrimoireLab loads all the data.
   Normally it takes about 10 minutes

The service will be exposed on the port `80` by default.

## Editing organization mappings

The setup pre-configures [SortingHat](https://chaoss.github.io/grimoirelab-tutorial/sortinghat)
by the list of known organizations,
originally sourced from [here](https://github.com/chaoss/grimoirelab-hatstall/blob/master/docker/orgs_file.json).
This list is dated and for sure not complete.

You can add organizations from your community to [settings/orgs_file.json](settings/orgs_file.json).

## Wishlist

- [ ] Nice2Have: Support for the application tokens. Now the menu is hardcoded.
- [ ] Non-GitHub analytics OOTB
- [ ] Actually consume the `menu.yaml` file
- [ ] Include the NLP sentiment server to the setup to do comments/impressions

## License

GNU GPL 3 is used as the repository adopts some code and configurations from
GrimoireLab and its repositories
