#!/usr/bin/env bash

node2nix -i package.json -l package-lock.json -o node-packages.nix -c composition.nix -e node-env.nix
