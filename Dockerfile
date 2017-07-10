FROM i4slabs/docker-jmeter-server

MAINTAINER Adrian Cepillo <adrian.cepillo@i4s.com>

ENV TEST_DIR default
ENV TEST_PLAN test_plan

COPY load_tests /
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
