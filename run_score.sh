#!/bin/bash

# simple bash script to run an inference file against the ground truth label
# files for the XVIEW3: DARK VESSELS challenge.

# path and script
XVIEW3_PATH='/data/bdar/xview3-reference'
METRIC_SCRIPT=$XVIEW3_PATH'/reference/metric.py'

# Input Params for metric script
# DIST_TOLERANCE (Meters) and SHORE_TOLERANCE (Kilometers) default values are
# referenced in the XVIEW3 CHALLENGE document as the values used for scoring
# the baseline model on the scoreboard.

SCENE_ID=None
INFERENCE_FILE='/data/bdar/data/predict_0157baf3866b2cf9v.csv'
LABEL_FILE='/data/bdar/data/validation.csv'
OUTPUT='/data/bdar/data/scores/score_output.json'

DIST_TOLERANCE=200
SHORE_TOLERANCE=2
SHORE_ROOT=None
SCORE_ALL=True

python $METRIC_SCRIPT \
 --inference_file $INFERENCE_FILE \
 --label_file $LABEL_FILE \
 --output $OUTPUT \
 --distance_tolerance $DIST_TOLERANCE \
 --shore_tolerance $SHORE_TOLERANCE \
 --score_all $SCORE_ALL