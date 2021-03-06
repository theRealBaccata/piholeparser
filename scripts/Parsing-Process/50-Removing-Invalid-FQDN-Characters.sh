#!/bin/bash
# shellcheck disable=SC1090
## Invalid Characters
## FQDN's  can only have . _ and -
## apparently you can have an emoji domain name?

## Variables
SCRIPTDIRA=$(dirname $0)
source "$SCRIPTDIRA"/foldervars.sh

if [[ -f $BFILETEMP ]]
then
  cat $BFILETEMP | sed '/[][`~!@#$%^&*()=+{}\";:?/><,|]/d; /'\''/d' > $BTEMPFILE
fi

if [[ -f $BFILETEMP ]]
then
  rm $BFILETEMP
fi
