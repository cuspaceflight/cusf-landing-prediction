#!/bin/bash
#
# Script to run the two cronjobs (fetch and grab) consecutively.
# Ensure this script is executable by the user whose crontab will
# be used to run it.
#
# Jon Sowman 2012 <jon@hexoc.com>
#
# The root where all utilites are located
ROOT=/opt

# The data fetcher
FETCHER=${ROOT}/cusf-landing-prediction/scripts/grabdata-cronjob.sh

# The predictor cronjob to run predictions for the next x days
HOURLY=${ROOT}/cusf-landing-prediction/scripts/hourly-predictions-cronjob.sh

# Check that the scripts exist and are executable
if [ ! -x ${FETCHER} ]; then
    echo "$0: ${FETCHER} does not exist or is not executable."
    exit 1
fi

if [ ! -x ${HOURLY} ]; then
    echo "$0: ${HOURLY} does not exist or is not executable."
    exit 1
fi

# Call each of the scripts in turn
${FETCHER}
${HOURLY}

