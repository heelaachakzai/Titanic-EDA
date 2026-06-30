#!/bin/bash

superset db upgrade

superset fab create-admin \
  --username Heela \
  --firstname Heela \
  --lastname Achakzai \
  --email heelaachakzai2424@mail.com \
  --password 2424 || true

superset init

exec superset run -h 0.0.0.0 -p 8088