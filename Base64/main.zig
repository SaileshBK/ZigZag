const std = @import("std");
const base64Utils = @import("./base64_utils.zig");

pub fn main() !void {
    const input = "Hello";
    const encoded = try base64Utils.encode_string(input);
    std.debug.print("Encoded: {s}\n", .{encoded});
}
