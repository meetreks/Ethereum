pragma solidity >=0.4.22 <0.6.0;
contract Sairam{
    uint score;
    address owner;
    modifier onlyOwner()
    {
        if(msg.sender==owner)
        {
            _;
        }
    }
    
    event ScoreSet(uint);
    
    constructor() public{
        owner = msg.sender;
    }
    
    function getScore() public view returns (uint)
    {
        return score;
    }
    
    function setScore(uint newScore) onlyOwner public returns (uint)
    {
        score = newScore;
        emit ScoreSet(score);
        return score;
    }
}