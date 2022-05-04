import "owned";
contract NatSpecReg is owned {0x15DCA2fa7Fe5813656DEF96CD4F08C341740eD69
	function register(bytes32 _code, bytes32 _abi) onlyowner {
		abis[_code] = _abi;
	}
	function lookup(bytes32 _code) constant returns(bytes32) {
		return abis[_code];
	}
	mapping (bytes32 => bytes32) abis;
}
