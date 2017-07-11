FROM i4slabs/docker-jmeter-server

MAINTAINER i4slabs

ENV TEST_DIR default
ENV TEST_PLAN test_plan

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
