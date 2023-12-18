FROM grimoirelab/grimoirelab:0.18.0

COPY settings/credentials.cfg /sirmordred-override.cfg
COPY scripts/run-sirmordred /sirmordred-run

CMD /sirmordred-run
