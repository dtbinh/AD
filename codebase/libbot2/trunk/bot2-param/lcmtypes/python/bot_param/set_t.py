"""LCM type definitions
This file automatically generated by lcm.
DO NOT MODIFY BY HAND!!!!
"""

try:
    import cStringIO.StringIO as BytesIO
except ImportError:
    from io import BytesIO
import struct

import bot_param.entry_t

class set_t(object):
    __slots__ = ["utime", "server_id", "sequence_number", "numEntries", "entries"]

    def __init__(self):
        self.utime = 0
        self.server_id = 0
        self.sequence_number = 0
        self.numEntries = 0
        self.entries = []

    def encode(self):
        buf = BytesIO()
        buf.write(set_t._get_packed_fingerprint())
        self._encode_one(buf)
        return buf.getvalue()

    def _encode_one(self, buf):
        buf.write(struct.pack(">qqii", self.utime, self.server_id, self.sequence_number, self.numEntries))
        for i0 in range(self.numEntries):
            assert self.entries[i0]._get_packed_fingerprint() == bot_param.entry_t._get_packed_fingerprint()
            self.entries[i0]._encode_one(buf)

    def decode(data):
        if hasattr(data, 'read'):
            buf = data
        else:
            buf = BytesIO(data)
        if buf.read(8) != set_t._get_packed_fingerprint():
            raise ValueError("Decode error")
        return set_t._decode_one(buf)
    decode = staticmethod(decode)

    def _decode_one(buf):
        self = set_t()
        self.utime, self.server_id, self.sequence_number, self.numEntries = struct.unpack(">qqii", buf.read(24))
        self.entries = []
        for i0 in range(self.numEntries):
            self.entries.append(bot_param.entry_t._decode_one(buf))
        return self
    _decode_one = staticmethod(_decode_one)

    _hash = None
    def _get_hash_recursive(parents):
        if set_t in parents: return 0
        newparents = parents + [set_t]
        tmphash = (0x5cb86f2a57453b76+ bot_param.entry_t._get_hash_recursive(newparents)) & 0xffffffffffffffff
        tmphash  = (((tmphash<<1)&0xffffffffffffffff)  + (tmphash>>63)) & 0xffffffffffffffff
        return tmphash
    _get_hash_recursive = staticmethod(_get_hash_recursive)
    _packed_fingerprint = None

    def _get_packed_fingerprint():
        if set_t._packed_fingerprint is None:
            set_t._packed_fingerprint = struct.pack(">Q", set_t._get_hash_recursive([]))
        return set_t._packed_fingerprint
    _get_packed_fingerprint = staticmethod(_get_packed_fingerprint)

