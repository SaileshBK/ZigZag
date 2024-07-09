const std = @import("std");
const base64 = std.base64;

pub fn encode_string(input: []const u8) ![]const u8 {
    var expect: [128]u8 = undefined;
    const encodedString = base64.url_safe.Encoder.encode(expect[0..base64.url_safe.Encoder.calcSize(input.len)], input);
    return encodedString;
}
