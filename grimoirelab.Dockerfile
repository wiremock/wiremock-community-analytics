FROM grimoirelab/grimoirelab:0.18.0

COPY settings/setup.cfg.template /sirmordred-setup.cfg.template

COPY scripts/run-sirmordred /sirmordred-run

CMD /sirmordred-run
