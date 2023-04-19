pragma solidity ^0.8.15;

import "../lib/forge-std/src/Test.sol";
import "../src/Spacebear.sol";

contract SpacebearTest is Test  {
    Spacebear spacebear;

    function setUp() public {
        spacebear = new Spacebear();
    }
    function testNameIsSpacebear () public {
        assertEq(spacebear.name(),"Spacebear");
    }


    function testMintingNFT() public {
        spacebear.safeMint(msg.sender,"spacebear_1.json");
        assertEq(spacebear.ownerOf(0),msg.sender);
    }

}




