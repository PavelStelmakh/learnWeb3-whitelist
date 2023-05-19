require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config({ path: '.env' });

const QUICKNODE_HTTP_URL = process.env.QUICKNODE_HTTP_URL;
const PRIVATE_KEY = process.env.PRIVATE_KEY;

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  networks: {
    sepolia: {
      url: QUICKNODE_HTTP_URL,
      accounts: [PRIVATE_KEY]
    }
  }
};

// Whitelist Contract Address: 0xe217b65AfC00f493Ec1bdceC9b23cc724A0D5975
