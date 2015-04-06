# Built using Docker 1.5.0
#
# To Build:
#   sudo docker build --force-rm=true -t visualjeff/transmission-daemon:test# .
# To Run:
#   sudo docker run -d -p 51413:51413 -p 9091:9091 -p 49152-65535:49152-65535 -t visualjeff/transmission-daemon:test 
# 

FROM alpine:3.1
RUN apk add --update transmission-daemon && rm -rf /var/cache/apk/*
EXPOSE 51413 9091 49152-65535
#ENTRYPOINT ["transmission-daemon"]
CMD ["bash"]
