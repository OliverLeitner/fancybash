#!/usr/bin/env bash
# loading in the oop lib
source "$( cd "${BASH_SOURCE[0]%/*}" && pwd )/bash-oo-framework/lib/oo-bootstrap.sh"

#extensions from the oop framework to load in
import util/exception util/log util/type util/test

#mounting??? a certain functionality
Log::AddOutput util/type CUSTOM

# global defines
string myString="Oliver Leitner"
array aOfStrings
integer iterator=10

while [ $iterator -gt 0 ]; do
    $var:aOfStrings push myString
    iterator=$(($iterator - 1))
    echo $iterator
done

#jest is dead
describe 'Operations on primitives'
it 'should have 10 strings in it'
    try
        integer len=${#aOfStrings[@]}
        echo $len
        [[ $len -eq 10 ]]
    expectPass
summary
