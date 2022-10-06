"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function default_1(s, join) {
    if (!s)
        return '';
    const a = s.split('\n').map(s => s.trim()).filter(e => e);
    // Default to join lines with new line
    return (join === undefined) ?
        a.join('\n') :
        join ? a.join('\n') : a;
}
exports.default = default_1;
