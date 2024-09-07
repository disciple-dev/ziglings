//
// Zig lets you express integer literals in several convenient
// formats. These are all the same value:
//
//     const a1: u8 = 65;          // decimal
//     const a2: u8 = 0x41;        // hexadecimal
//     const a3: u8 = 0o101;       // octal
//     const a4: u8 = 0b1000001;   // binary
//     const a5: u8 = 'A';         // ASCII code point literal
//     const a6: u16 = '\u{0041}'; // Unicode code points can take up to 21 bits
//
// You can also place underscores in numbers to aid readability:
//
//     const t1: u32 = 14_689_520 // Ford Model T sales 1909-1927
//     const t2: u32 = 0xE0_24_F0 // same, in hex pairs
//
// Please fix the message:

const print = @import("std").debug.print;

pub fn main() void {
    const zig = [_]u8{
        // looking for Z, which is ASCII 90, so:
        // 90 / 8 = 11, remainder 2
        // 11 / 8 = 1, remainder 3
        // 1 / 8 = 0/ remainder 1
        // Octal 90 = 132
        0o132, // octal
        // 7 bits, pad to 01101000
        // 64 + 32 + 8 = 104 // letter h in ASCII
        // Add one least significant bit
        0b1101001, // binary
        // hexidecimal 66 to ASCII int:
        // 6 * 1 = 6
        // 6 * 16 = 96
        // Hex 0x66 = 102, we want 103
        // So the 1's place should be 7 to get a 'g'
        0x67, // hex
    };

    print("{s} is cool.\n", .{zig});
}
