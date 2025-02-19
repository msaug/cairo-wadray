%lang starknet

from starkware.cairo.common.uint256 import Uint256

from contracts.wad_ray import WadRay

@view
func test_assert_result_valid{range_check_ptr}(n) {
    WadRay.assert_result_valid(n);
    return ();
}

@view
func test_assert_result_valid_unsigned{range_check_ptr}(n) {
    WadRay.assert_result_valid_unsigned(n);
    return ();
}

@view
func test_floor{range_check_ptr}(n) -> (wad: felt) {
    return WadRay.floor(n);
}

@view
func test_ceil{range_check_ptr}(n) -> (wad: felt) {
    return WadRay.ceil(n);
}

@view
func test_add{range_check_ptr}(a, b) -> (wad: felt) {
    return WadRay.add(a, b);
}

@view
func test_add_unsigned{range_check_ptr}(a, b) -> (wad: felt) {
    return WadRay.add_unsigned(a, b);
}

@view
func test_sub{range_check_ptr}(a, b) -> (wad: felt) {
    return WadRay.sub(a, b);
}

@view
func test_sub_unsigned{range_check_ptr}(a, b) -> (wad: felt) {
    return WadRay.sub_unsigned(a, b);
}

@view
func test_wmul{range_check_ptr}(a, b) -> (wad: felt) {
    return WadRay.wmul(a, b);
}

@view
func test_wsigned_div{range_check_ptr}(a, b) -> (wad: felt) {
    return WadRay.wsigned_div(a, b);
}

@view
func test_wunsigned_div{range_check_ptr}(a, b) -> (wad: felt) {
    return WadRay.wunsigned_div(a, b);
}

@view
func test_wunsigned_div_unchecked{range_check_ptr}(a, b) -> (wad: felt) {
    return WadRay.wunsigned_div_unchecked(a, b);
}

@view
func test_rmul{range_check_ptr}(a, b) -> (ray: felt) {
    return WadRay.rmul(a, b);
}

@view
func test_rsigned_div{range_check_ptr}(a, b) -> (ray: felt) {
    return WadRay.rsigned_div(a, b);
}

@view
func test_runsigned_div{range_check_ptr}(a, b) -> (ray: felt) {
    return WadRay.runsigned_div(a, b);
}

@view
func test_runsigned_div_unchecked{range_check_ptr}(a, b) -> (ray: felt) {
    return WadRay.runsigned_div_unchecked(a, b);
}

@view
func test_to_uint(n) -> (uint: Uint256) {
    return WadRay.to_uint(n);
}

@view
func test_from_uint{range_check_ptr}(n: Uint256) -> (wad: felt) {
    return WadRay.from_uint(n);
}

@view
func test_to_wad{range_check_ptr}(n) -> (wad: felt) {
    return WadRay.to_wad(n);
}

@view
func test_wad_to_felt{range_check_ptr}(n) -> (wad: felt) {
    return WadRay.wad_to_felt(n);
}

@view
func test_wad_to_ray{range_check_ptr}(n) -> (ray: felt) {
    return WadRay.wad_to_ray(n);
}

@view
func test_wad_to_ray_unchecked(n) -> (ray: felt) {
    return WadRay.wad_to_ray_unchecked(n);
}
