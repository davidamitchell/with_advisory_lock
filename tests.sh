#!/bin/bash -e
export DB

rvm use ruby-2.1.5
for DB in postgresql ; do
  echo "$DB | $(ruby -v)"
  appraisal bundle update
  appraisal rake test --verbose
done
