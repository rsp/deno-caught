#!/bin/bash

fail () {
  echo TEST FAILED
  exit 1
}

cmp <(deno fail.ts 2>&1 || echo failed) <(echo caught) && fail

cmp <(deno test.ts 2>&1 || echo failed) <(echo caught) || fail

echo TEST PASSED
