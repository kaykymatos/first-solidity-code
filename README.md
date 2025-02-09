# My First Solidity Code

This is my first Solidity test code! I'm exploring and learning Solidity as part of my journey into the Web3 space.

## About the Project

This project is a simple test implementation in Solidity, aimed at getting familiar with the language and its features. I'm currently studying how to use Solidity for creating smart contracts and decentralized applications.

## Features

- Basic contract written in Solidity
- Exploration of common patterns and practices in smart contract development

## Prerequisites

Before you run this code, make sure you have the following installed:

- [Node.js](https://nodejs.org/)
- [npm](https://www.npmjs.com/) or [Yarn](https://yarnpkg.com/)
- [Truffle](https://www.trufflesuite.com/truffle)
- [Ganache](https://www.trufflesuite.com/ganache)

## Getting Started

1. Clone the repository: git clone https://github.com/kaykymatos/first-solidity-code.git 
2. Install dependencies: if you are using yarn: yarn install, if you are using npm: npm install
3. Start Ganache and configure it with Truffle:
- Open Ganache and create a new workspace or use the default one.
- Note the RPC server URL (usually `http://127.0.0.1:7545`).
- Update `truffle-config.js` to point to Ganache.
4. Compile the contract: truffle compile
5. Migrate the contract to Ganache: truffle migrate

## Interacting with the Contract using Truffle Console

You can interact with the deployed contract using the Truffle Console. Here's how you can do it:

### Step 1: Open the Truffle Console
Start the Truffle Console by running the following command in your terminal:

```bash```

truffle console
This will open the Truffle Console and connect it to the local network (Ganache) defined in your truffle-config.js.

## Step 2: Access the Contract in the Console
Once inside the Truffle Console, get an instance of your Simple contract like this:
```const simple = await Simple.deployed();```
This will fetch the deployed contract on your local network and store it in the simple variable.

## Step 3: Call the Read (View) Functions
To read the value of the name variable, call the getName() function:
```const name = await simple.getName();```
```console.log(name);```
This will log the current value stored in the name variable.

## Step 4: Call the Write Function
To change the value of name, you can use the setName(string newName) function:
```await simple.setName("John Doe");```
This will change the value of name to "John Doe". Since this is a state-changing operation, it will send a transaction and may ask for confirmation.

## Step 5: Verify the Change
After setting a new name, you can call the getName() function again to verify the change:
```const updatedName = await simple.getName();```
```console.log(updatedName);  // Should log "John Doe"```

Summary of Commands:
Access the contract: const simple = await Simple.deployed();
Read the name: ```const name = await simple.getName();```
Set a new name: ```await simple.setName("New Name");```
Verify the change: ```const updatedName = await simple.getName();```
