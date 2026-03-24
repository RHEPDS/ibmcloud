#!/bin/bash

Xvfb :99 -screen 0 640x480x8 -nolisten tcp &
jupyter lab --ip=0.0.0.0
