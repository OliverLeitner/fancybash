#!/usr/bin/env bash

# TODO: expand on that fancy array stuff
source "$( cd "${BASH_SOURCE[0]%/*}" && pwd )/bash-oo-framework/lib/oo-bootstrap.sh"

import util/log util/type
Log::AddOutput util/type CUSTOM

returnCustomers() {
    qry='select customerNumber,customerName from customers LIMIT 0,5'
    usr='demo'
    pass='123'

    array customerData

    # query against dbtable
    echo "["
    mysql --default-character-set="utf8" -B -N -u"$usr" -p"$pass" classicmodels -e"$qry" | while IFS=$'\t' read customerNumber customerName
    do
        echo "{ name: " $customerNumber ", number: " $customerName "}," # TODO: remove , on last item
    done
    echo "]"
}

returnCustomers

exit 0
