#!/bin/bash
# Set things up
export PATH="$TRAVIS_BUILD_DIR/vendor/bin:$PATH"

# Wipe out the DB
#drush psite-ewipe $PUUID $PENV -y

# Insure we are in SFTP mode for a clean install
#drush psite-cmode $PUUID $PENV sftp

# Install
#drush @pantheon.$PNAME.$PENV si --account-pass=$RANDPASS --site-name="Travis Did It" -y

# Run the barebones behat test
export BEHAT_PARAMS="extensions[Behat\MinkExtension\Extension][base_url]=$PHOST_2"
behat
