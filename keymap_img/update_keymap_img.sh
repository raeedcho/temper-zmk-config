#!/bin/sh

echo 'Parsing ZMK keymap...'
keymap -c temper_keymap_config.yaml parse -c 10 -z ../config/boards/shields/temper/temper.keymap --base-keymap temper_keymap_base.yaml > temper_keymap.yaml

echo '\n\nAdjusting keymap yaml...'
# ./keymap_img_adjuster.py temper_keymap.yaml

echo '\n\nDrawing keymap...'
keymap -c temper_keymap_config.yaml draw --select-layers default num nav fun -k chocofi temper_keymap.yaml > temper_keymap.svg
