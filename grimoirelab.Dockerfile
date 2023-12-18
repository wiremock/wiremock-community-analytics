FROM grimoirelab/grimoirelab:0.18.0

COPY settings/credentials.cfg /sirmordred-override.cfg
COPY scripts/run-sirmordred ${DEPLOY_USER_DIR}/run-custom

CMD ${DEPLOY_USER_DIR}/run-custom
