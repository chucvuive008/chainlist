pragma solidity ^0.4.18;

contract Ownable {
    // state variables
    address owner;
    
    // modifiers
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
        //_ is the placeholder that represents the code of the function that the modifier is applied to
    }

    //contructor 
    function Ownable() public {
        owner = msg.sender;
    }

}