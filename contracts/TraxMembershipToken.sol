pragma solidity ^0.4.17;

import "../node_modules/zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";
import "../node_modules/zeppelin-solidity/contracts/token/ERC20/BurnableToken.sol";
import "../node_modules/zeppelin-solidity/contracts/token/ERC20/PausableToken.sol";

contract TraxMembershipToken is MintableToken, BurnableToken, PausableToken {

    // Public variables of the token
    string public name = "Trax Membership coin";
    string public symbol = "TMT";
    uint public decimals = 18;
    // 18 decimals is the strongly suggested default, avoid changing it
    uint public INITIAL_SUPPLY = 1000000000 * (10 ** decimals);

    function TraxMembershipToken() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
    }
}