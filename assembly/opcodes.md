In grammar, pre-defined identifiers are meant to represent opcodes.

- mul(a, b) a \_ b
- sub(a, b) a – b
- div(a, b) a / b
  add(a, b) a + b
  stop – stops execution, similar to return(0,0)
  mod(a, b) a % b
  sdiv(a, b) a / b, used with signed numbers in two’s complement
  not(a) ~a, each bit of a gets negated
  smod(a, b) a % b, for signed numbers in two’s complement
  exp(a, b) a to the power of b
  gt(a, b) 1 if a is greater than b, 0 otherwise
  lt(a, b) 1 if a is less then b, 0 otherwise
  sgt(a, b) 1 if a is greater than b, 0 otherwise, for signed numbers in two’s complement
  slt(a, b) 1 if a is less than b, 0 otherwise, for signed numbers in two’s complement
  iszero(a) 1 if a equals 0, 0 otherwise
  eq(a, b) 1 if a equals b, 0 otherwise
  xor(a, b) bitwise xor of a and b
  and(a, b) bitwise and of a and b
  or(a, b) bitwise or of a and b
  addmod(a, b, m) (a + b) % m with arbitrary precision arithmetics
  byte(n, a) nth byte of a, where the most significant byte is the 0th byte
  mulmod(a, b, m) (a \_ b) % m with arbitrary precision arithmetics
  signextend(i, a) sign extend from (i*8+7)th bit counting from least significant
  sha3(position, n) keccak(mem[position…(position+n)))
  keccak256(position, n) keccak(mem[position…(position+n)))
  jumpi(label, condition) – jump to label if condition is nonzero
  jump(label) – jump to label / code position
  pop(a) – remove that was pushed by a
  pc current position in code
  swap1 … swap16 * swap topmost and ith stack slot below it
  dup1 … dup16 copy slot of ith stack to the top (counts from top)
  mload(position) mem[position..(position+32))
  mstore8(position, v) – mem[position] := v & 0xff – only modifies a single byte
  mstore(position, v) – mem[position..(position+32)) := v
  sstore(position, v) – storage[position] := v
  msize size of memory, i.e. largest accessed memory index
  sload(position) storage[position]
  address address of the current contract / execution context
  gas gas still available to execution
  caller call sender (not including delegatecall)
  balance(address) wei balance at address a
  calldataload(position) call data starting from position (32 bytes)
  callvalue wei sent together with the current call
  calldatacopy(p2, p1, size) – copy size bytes from the calldata in position p1 to mem at position p2
  codesize size of the code of the current contract / execution context
  calldatasize size of call data in bytes
  codecopy(p2, p1, size) – copy size bytes from code at position p1 to mem at position p2
  extcodecopy(address, p2, p1, size) – like codecopy(p2, p1, size) but take code at address
  returndatasize size of the last returndata
  returndatacopy(p2, p1, size) – copy size bytes from returndata at position p1 to mem at position p2
  create(wei, position, size) create new contract with code mem[position..(position+s)) sending wei, returning a new address
  extcodesize(address) size of the code at address a
  call(gas, address, wei, input, insize, output, outsize) call contract at the address along with input mem[input..(input+insize)) providing gas and wei in addition to output area mem[output..(output+outsize)) will return 0 in case of an error (an out of gas exception, for example) and 1 if successful
  callcode(gas, address, wei, input, insize, output, outsize) identical to call but only use the code from a and stay in the context of the current contract otherwise
  delegatecall(gas, address, input, insize, output, outsize) identical to callcode but also keep caller and callvalue
  return(position, size) – end execution, return data mem[position..(position+size))
  create2(wei, n, position, size) create new contract with code mem[position..(position+size)) at address keccak256(<address> . n . keccak256(mem[position..(position+size))) sending wei, returning a new address
  revert(position, size) – end execution, revert state changes, return data mem[position..(position+size))
  invalid – end execution with invalid instruction
  staticcall(gas, address, input, insize, output, outsize) identical to call(gas, address, 0, input, insize, output, outsize) but do not allow state modifications
  selfdestruct(address) – end execution, destroy current contract, sending funds to address
  log0(position, size) – log without topics and data mem[position..(position+size))
  log1(position, size, topic1) – log with topic topic1 and data mem[position..(position+size))
  log2(position, size, topic1, topic2) – log with topics topic1, topic2 and data mem[position..(position+size))
  log3(position, size, topic1, topic2, topic3) – log with topics topic1, topic2, topic3 and data mem[position..(position+size))
  log4(position, size, topic1, topic2, topic3, topic4) – log with topics topic1, topic2, topic3, topic4 and data mem[position..(position+size))
  origin sender of the transaction
  blockhash(blockNum) hash of block nr blockNum – only for last 256 blocks excluding current
  gasprice gas price of the transaction
  timestamp current block’s timestamp in seconds past the epoch
  difficulty current block’s difficulty
  coinbase current mining beneficiary
  number number of the current block
  gaslimit current block’s gas limit
