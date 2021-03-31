#!/usr/bin/env bash
# loading in the oop lib
source "$( cd "${BASH_SOURCE[0]%/*}" && pwd )/bash-oo-framework/lib/oo-bootstrap.sh"

#lets have em a merry lil class
import util/namedParameters util/class

# my class to instantiate from
class:MyDemoClass() {
    public integer someNumber = 0
    public string someName = "just some other name"

    MyDemoClass.__getter__() {
        echo "I'm a human called $(this someNumber), $(this someName) cm tall."
    }
}

# required to initialize the class
Type::Initialize MyDemoClass

# create an object called 'Mark' of type Human
MyDemoClass Oliver

# invoke the getter
$var:Oliver


