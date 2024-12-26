# AgeVerification - Blockchain-Based Age Verification System

## Project Title

**AgeVerification - Blockchain-Based Age Verification System**

## Project Description

The **AgeVerification** project is a decentralized solution built on the Ethereum blockchain for verifying a user's age without exposing sensitive personal information. Instead of sharing a user's birthdate directly, the system uses a cryptographic hash of the user's birthdate, ensuring that the sensitive information is never revealed but can still be validated securely.

This solution is particularly useful for online services that need to verify a user's age (e.g., age-restricted content or services) but wish to avoid handling sensitive personal data, such as birthdates. The verification process ensures that the user is above the required age without compromising privacy.

The project utilizes a smart contract that stores the hash of a user's birthdate, and when users request age verification, the system compares the user's provided proof with the stored hash to confirm if they meet the required age criteria.

## Contract Address

The **AgeVerification** smart contract is deployed on the Ethereum blockchain. To interact with it, use the following contract address:

```
0x461b957e9e097e2c1B49366263Ed4200DD5DD430
```

> **Note**: Replace `0xYourContractAddressHere` with the actual deployed contract address on the Ethereum network.

## Project Vision

The vision of the **AgeVerification** project is to create a more secure, privacy-conscious alternative to traditional age verification systems. The project seeks to leverage blockchain's decentralization, immutability, and transparency to eliminate the risks associated with storing and handling personal data.

By using cryptographic hashing, this system ensures that only the necessary information is stored (the hash of the birthdate), and sensitive data such as the actual birthdate is never exposed or transmitted. This gives users complete control over their personal information while still allowing third parties to verify their age in a secure and transparent manner.

The key objectives include:

- **Privacy Preservation**: Users’ birthdates are never directly shared or stored on the blockchain; only hashed data is kept.
- **Decentralized Verification**: The blockchain provides a decentralized and trustless environment for verifying age without needing centralized authorities.
- **Security**: By leveraging cryptographic techniques, the system avoids risks of data breaches and unauthorized access to sensitive data.
- **User Control**: Users have full control over when and how their age is verified without having to share personal details with external entities.

## Key Features

- **Decentralized Age Verification**: Users can verify their age using blockchain technology without revealing their actual birthdate. The system uses a hash of the birthdate for validation.
- **Privacy-Centric**: Only the hash of a user’s birthdate is stored, ensuring that no sensitive information (e.g., exact birthdate) is shared or exposed.
- **Smart Contract-Based**: The entire verification process is handled by an Ethereum smart contract, ensuring transparency, security, and trustlessness.
- **Hashing for Security**: Users store a cryptographic hash of their birthdate, which ensures that only the user (who knows the original birthdate) can prove their age when needed.
- **Real-Time Verification**: The system provides real-time age verification by comparing the user's proof (hashed birthdate) with the stored hash.
- **Transparency and Immutability**: The blockchain ensures that all data is immutable, and the entire verification process is transparent to all participants.
- **MetaMask Integration**: Users can interact with the smart contract through their Ethereum wallet (MetaMask), enabling seamless and secure blockchain interaction.
- **User-Friendly Frontend**: A simple and intuitive frontend is provided to enable users to input their birthdate, hash it, and store it on the blockchain. Users can also verify their age directly via the frontend interface.

## Getting Started

### Prerequisites

- **MetaMask**: MetaMask or another Ethereum wallet is required to interact with the Ethereum blockchain. Install MetaMask [here](https://metamask.io/).
- **Web3**: The frontend is built using Web3.js to interact with the Ethereum blockchain. Ensure that you have Web3-enabled in your browser.

### Steps to Use the AgeVerification dApp

1. **Install MetaMask**: Ensure that MetaMask is installed and connected to your browser.
2. **Deploy the Contract**: Deploy the **AgeVerification** contract to an Ethereum test network (e.g., Rinkeby, Kovan) or the Mainnet. Take note of the deployed contract address.
3. **Update Frontend Contract Address**: Replace the contract address in the `index.html` file with the deployed address of your smart contract.
4. **Interact with the dApp**:
   - Open the `index.html` file in a Web3-enabled browser (such as one with MetaMask installed).
   - Input your birthdate in the provided field and click "Store Birthdate Hash" to hash and store your birthdate.
   - Click "Verify Age" to check if you meet the required age (e.g., 18 years or older). The system will return whether you are over the required age or not.

### Example Workflow

1. **Store Birthdate Hash**: Users enter their birthdate (in YYYY-MM-DD format) into the input field, and the system hashes it before storing it on the blockchain. The user is notified when the hash is successfully stored.
2. **Verify Age**: When users want to verify their age, the system uses the hash of their birthdate to check if they meet the required age, without needing to share their birthdate with any third party.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
