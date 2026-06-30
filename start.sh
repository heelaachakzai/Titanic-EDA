#!/bin/bash

superset db upgrade
superset init

exec superset run -h 0.0.0.0 -p 8088