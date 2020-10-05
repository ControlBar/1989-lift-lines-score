#!/bin/sh -x

COMP="--file=LiftLines"

fs-filter "$COMP"
fs-route "$COMP"
fs-arrival "$COMP"
fs-effort "$COMP"
fs-score "$COMP"

ft-extract-input "$COMP" --give-fraction=0.0001 --give-distance=5 --vincenty
ft-task-length "$COMP"
ft-cross-zone "$COMP"
ft-tag-zone "$COMP"
ft-peg-frame "$COMP"
ft-align-time "$COMP"
ft-discard-further "$COMP"
ft-mask-track "$COMP"
ft-land-out "$COMP"
ft-gap-point "$COMP"

ft-comp-serve "$COMP"
