#!/bin/bash
set -e

zypper --non-interactive --gpg-auto-import-keys ref --no-gpg-checks

zypper --non-interactive in --no-gpg-checks aaa_base aaa_base-extras net-tools timezone vim less sudo tar python apache2 apache2-prefork
