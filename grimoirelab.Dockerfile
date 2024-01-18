FROM grimoirelab/grimoirelab:0.18.0

RUN apt update && apt install -y gettext

COPY settings/setup.cfg.template /sirmordred-setup.cfg.template
COPY settings/aliases.json /home/grimoire/aliases.json

COPY scripts/run-sirmordred /sirmordred-run

CMD /sirmordred-run
