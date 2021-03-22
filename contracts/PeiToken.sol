pragma solidity >=0.4.22 <0.9.0;

contract PeiToken {

    string public name = "Pei Token";
    string public symbol = "PEI";
    string public standard = "Pei Token v1.0";
    uint256 public totalSupply;

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );

    mapping(address => uint256) public balanceOf;

    constructor(uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
    }

    // Transfer of Tokens
    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value); 
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        // Transfer event
        Transfer(msg.sender, _to, _value);

        return true;
    }
}
