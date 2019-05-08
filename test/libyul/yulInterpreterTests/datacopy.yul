object "main"
{
    code {
        datacopy(0, dataoffset("main"), datasize("main"))
        datacopy(32, dataoffset("sub"), datasize("sub"))
        sstore(0, mload(0))
        sstore(1, mload(32))
    }
    object "sub" { code { sstore(0, 1) } }
}
// ----
// Trace:
//   MSTORE_AT_SIZE(0, 2916)
//   MSTORE_AT_SIZE(32, 265)
//   MLOAD_FROM_SIZE(0, 32)
//   SSTORE(0, 0)
//   MLOAD_FROM_SIZE(32, 32)
//   SSTORE(1, 0)
// Memory dump:
//      0: 0000000000000000000000000000000000000000000000000000000000000000
//     20: 0000000000000000000000000000000000000000000000000000000000000000
//     40: 0000000000000000000000000000000000000000000000000000000000000000
//     60: 0000000000000000000000000000000000000000000000000000000000000000
//     80: 0000000000000000000000000000000000000000000000000000000000000000
//     a0: 0000000000000000000000000000000000000000000000000000000000000000
//     c0: 0000000000000000000000000000000000000000000000000000000000000000
//     e0: 0000000000000000000000000000000000000000000000000000000000000000
//    100: 0000000000000000000000000000000000000000000000000000000000000000
//    120: 0000000000000000000000000000000000000000000000000000000000000000
//    140: 0000000000000000000000000000000000000000000000000000000000000000
//    160: 0000000000000000000000000000000000000000000000000000000000000000
//    180: 0000000000000000000000000000000000000000000000000000000000000000
//    1a0: 0000000000000000000000000000000000000000000000000000000000000000
//    1c0: 0000000000000000000000000000000000000000000000000000000000000000
//    1e0: 0000000000000000000000000000000000000000000000000000000000000000
//    200: 0000000000000000000000000000000000000000000000000000000000000000
//    220: 0000000000000000000000000000000000000000000000000000000000000000
//    240: 0000000000000000000000000000000000000000000000000000000000000000
//    260: 0000000000000000000000000000000000000000000000000000000000000000
//    280: 0000000000000000000000000000000000000000000000000000000000000000
//    2a0: 0000000000000000000000000000000000000000000000000000000000000000
//    2c0: 0000000000000000000000000000000000000000000000000000000000000000
//    2e0: 0000000000000000000000000000000000000000000000000000000000000000
//    300: 0000000000000000000000000000000000000000000000000000000000000000
//    320: 0000000000000000000000000000000000000000000000000000000000000000
//    340: 0000000000000000000000000000000000000000000000000000000000000000
//    360: 0000000000000000000000000000000000000000000000000000000000000000
//    380: 0000000000000000000000000000000000000000000000000000000000000000
//    3a0: 0000000000000000000000000000000000000000000000000000000000000000
//    3c0: 0000000000000000000000000000000000000000000000000000000000000000
//    3e0: 0000000000000000000000000000000000000000000000000000000000000000
//    400: 0000000000000000000000000000000000000000000000000000000000000000
//    420: 0000000000000000000000000000000000000000000000000000000000000000
//    440: 0000000000000000000000000000000000000000000000000000000000000000
//    460: 0000000000000000000000000000000000000000000000000000000000000000
//    480: 0000000000000000000000000000000000000000000000000000000000000000
//    4a0: 0000000000000000000000000000000000000000000000000000000000000000
//    4c0: 0000000000000000000000000000000000000000000000000000000000000000
//    4e0: 0000000000000000000000000000000000000000000000000000000000000000
//    500: 0000000000000000000000000000000000000000000000000000000000000000
//    520: 0000000000000000000000000000000000000000000000000000000000000000
//    540: 0000000000000000000000000000000000000000000000000000000000000000
//    560: 0000000000000000000000000000000000000000000000000000000000000000
//    580: 0000000000000000000000000000000000000000000000000000000000000000
//    5a0: 0000000000000000000000000000000000000000000000000000000000000000
//    5c0: 0000000000000000000000000000000000000000000000000000000000000000
//    5e0: 0000000000000000000000000000000000000000000000000000000000000000
//    600: 0000000000000000000000000000000000000000000000000000000000000000
//    620: 0000000000000000000000000000000000000000000000000000000000000000
//    640: 0000000000000000000000000000000000000000000000000000000000000000
//    660: 0000000000000000000000000000000000000000000000000000000000000000
//    680: 0000000000000000000000000000000000000000000000000000000000000000
//    6a0: 0000000000000000000000000000000000000000000000000000000000000000
//    6c0: 0000000000000000000000000000000000000000000000000000000000000000
//    6e0: 0000000000000000000000000000000000000000000000000000000000000000
//    700: 0000000000000000000000000000000000000000000000000000000000000000
//    720: 0000000000000000000000000000000000000000000000000000000000000000
//    740: 0000000000000000000000000000000000000000000000000000000000000000
//    760: 0000000000000000000000000000000000000000000000000000000000000000
//    780: 0000000000000000000000000000000000000000000000000000000000000000
//    7a0: 0000000000000000000000000000000000000000000000000000000000000000
//    7c0: 0000000000000000000000000000000000000000000000000000000000000000
//    7e0: 0000000000000000000000000000000000000000000000000000000000000000
//    800: 0000000000000000000000000000000000000000000000000000000000000000
//    820: 0000000000000000000000000000000000000000000000000000000000000000
//    840: 0000000000000000000000000000000000000000000000000000000000000000
//    860: 0000000000000000000000000000000000000000000000000000000000000000
//    880: 0000000000000000000000000000000000000000000000000000000000000000
//    8a0: 0000000000000000000000000000000000000000000000000000000000000000
//    8c0: 0000000000000000000000000000000000000000000000000000000000000000
//    8e0: 0000000000000000000000000000000000000000000000000000000000000000
//    900: 0000000000000000000000000000000000000000000000000000000000000000
//    920: 0000000000000000000000000000000000000000000000000000000000000000
//    940: 0000000000000000000000000000000000000000000000000000000000000000
//    960: 0000000000000000000000000000000000000000000000000000000000000000
//    980: 0000000000000000000000000000000000000000000000000000000000000000
//    9a0: 0000000000000000000000000000000000000000000000000000000000000000
//    9c0: 0000000000000000000000000000000000000000000000000000000000000000
//    9e0: 0000000000000000000000000000000000000000000000000000000000000000
//    a00: 0000000000000000000000000000000000000000000000000000000000000000
//    a20: 0000000000000000000000000000000000000000000000000000000000000000
//    a40: 0000000000000000000000000000000000000000000000000000000000000000
//    a60: 0000000000000000000000000000000000000000000000000000000000000000
//    a80: 0000000000000000000000000000000000000000000000000000000000000000
//    aa0: 0000000000000000000000000000000000000000000000000000000000000000
//    ac0: 0000000000000000000000000000000000000000000000000000000000000000
//    ae0: 0000000000000000000000000000000000000000000000000000000000000000
//    b00: 0000000000000000000000000000000000000000000000000000000000000000
//    b20: 0000000000000000000000000000000000000000000000000000000000000000
//    b40: 0000000000000000000000000000000000000000000000000000000000000000
//    b60: 0000000000000000000000000000000000000000000000000000000000000000
// Storage dump:
//   0000000000000000000000000000000000000000000000000000000000000000: 0000000000000000000000000000000000000000000000000000000000000000
//   0000000000000000000000000000000000000000000000000000000000000001: 0000000000000000000000000000000000000000000000000000000000000000