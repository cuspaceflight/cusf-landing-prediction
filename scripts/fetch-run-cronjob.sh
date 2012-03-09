#!/bin/bash
#
# Script to run the two cronjobs (fetch and grab) consecutively
#
# Jon Sowman 2012 <jon@hexoc.com>
#
# The root where all utilites are located
ROOT=/societies/cuspaceflight/

# The data fetcher
FETCHER=${ROOT}/git/cusf-landing-prediction/scripts/grabdata-cronjob.sh

# The predictor cronjob to run predictions for the next x days
HOURLY=${ROOT}/git/cusf-landing-prediction/scripts/hourly-predictions-cronjob.sh

# Call each of the scripts in turn
${FETCHER}
${HOURLY}

