#!/bin/bash

kubectl -n application get pod web1  -o jsonpath={.status.phase}
