pragma solidity >=0.4.24;
import "../token/ERC1410/ERC1410.sol";


contract ERC1410Mock is ERC1410 {

  constructor(
    string name,
    string symbol,
    uint256 granularity,
    address[] controllers,
    address certificateSigner,
    bytes32[] tokenDefaultPartitions,
    address tokenHolderMock,
    uint256 valueMock
  )
    public
    ERC1410(name, symbol, granularity, controllers, certificateSigner, tokenDefaultPartitions)
  {
    _issue("", msg.sender, tokenHolderMock, valueMock, "", "");
  }

}
