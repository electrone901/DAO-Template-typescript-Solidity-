import { HardhatRuntimeEnvironment } from 'hardhat/types' //  to run all our scripts in one go
import { DeployFunction } from 'hardhat-deploy/types'
import { ethers } from 'ethers'
const deployGovernanceToken: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment,
) {
  //  gets namedAccounts, deployments from
  const { getNamedAccounts, deployments, network } = hre
  const { deploy, log } = deployments
  const { deployer } = await getNamedAccounts()
  log('------------------------------------–----------------')
  log('Deploying GovernanceToken and waiting for confirmations...')
  const governanceToken = await deploy('GovernanceTokenVoting', {
    from: deployer,
    args: [],
    log: true,
    // we need to wait if on a live network so we can verify properly
    // waitConfirmations: networkConfig[network.name].blockConfirmations || 1,
  })
  log(`GovernanceToken at ${governanceToken.address}`)
}
const delegate = async (
  deployGovernanceToken: string,
  delegateAccount: string,
) => {
  const governanceToken = await ethers.getContractAt(
    'GovernanceToken',
    governanceTokenAddress,
  );
  const tx = await 
}

export default deployGovernanceToken
