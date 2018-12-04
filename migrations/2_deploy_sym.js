var Migrations = artifacts.require("./SymphonyProtocol.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
