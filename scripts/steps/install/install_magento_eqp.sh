#!/usr/bin/env bash

set -e
trap '>&2 echo Error: Command \`$BASH_COMMAND\` on line $LINENO failed with exit code $?' ERR

composer config repositories.marketplace_eqp vcs https://github.com/magento/magento-coding-standard
composer require magento/magento-coding-standard
