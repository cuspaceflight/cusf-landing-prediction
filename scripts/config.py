# This file contains constants describing the locations of various utilities on the SRCF

import os

CUSF_HOME = '/opt/'
CUSF_PYTHON_PATH = '/opt/python-packages/'
HOURLY_PREDICTIONS = os.path.join(CUSF_HOME, 'cusf-landing-prediction/web/hourly-predictions')
LAND_PRED_APP = os.path.join(CUSF_HOME, 'cusf-landing-prediction/pred_src/pred')
LAND_PRED_DATA = os.path.join(CUSF_HOME, 'landing-prediction-data/gfs/')

# vim:sw=4:ts=4:et:autoindent

