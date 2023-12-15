FROM grimoirelab/grimoirelab:latest

COPY settings/credentials.cfg /sirmordred-override.cfg
COPY scripts/run-sirmordred ${DEPLOY_USER_DIR}/run-custom

CMD ${DEPLOY_USER_DIR}/run-custom
