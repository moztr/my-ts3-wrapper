FROM debian:jessie

RUN    useradd teamspeak && mkdir -p /srv/ts3 && chown teamspeak:teamspeak /srv/ts3
VOLUME ["/srv/ts3"]
USER   teamspeak
CMD    ["/srv/ts3/ts3server_minimal_runscript.sh"]

