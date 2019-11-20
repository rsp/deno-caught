#!/bin/bash

fail () {
  echo TEST FAILED
  exit 1
}

echo deno fail; deno fail.ts
echo deno test; deno test.ts

cmp <(deno run fail.ts 2>&1 || echo failed) <(echo caught) && fail

cmp <(deno run test.ts 2>&1 || echo failed) <(echo caught) || fail

echo TEST PASSED
