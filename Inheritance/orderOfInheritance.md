contract Person {}
contract Employee is Person {}
contract Teacher is Employee, Person {} // will not compile!
contract Teacher is Person, Employee {} // will compile
