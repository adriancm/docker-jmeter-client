# JMeter Client (Non-gui)

Docker image for JMeter (non-gui client) running Minimal Alpine Linux or Ubuntu. Make sure to open port 1099.

## Environment variables

Configure the following variables:

* TEST_DIR - Parent directory for the test plan (eg. load_tests)
* TEST_PLAN - Test plan, **do not** put extension and must be inside $TEST_DIR (eg. test)

On JMeter Client machine, you need to provide the full path for the test directory. It will be mapped to /load_tests/$TEST_DIR inside the container.

## Usage
```sh
$   docker run \
        --detach \
        --volume ~/host/tests_dir:$TEST_DIR \
        --env TEST_DIR=$TEST_DIR \
        --env TEST_PLAN=$TEST_PLAN \
        i4slabs/docker-jmeter-client
```

Result will be saved as $TEST_DIR/$TEST_PLAN.jtl file inside the container and ~/host/test_dir/$TEST_PLAN.jtl in the host. Download the result using scp.

## Sources
This repo is derived from **hhcordero/docker-jmeter-client**.
