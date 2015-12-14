"""LCM type definitions
This file automatically generated by lcm.
DO NOT MODIFY BY HAND!!!!
"""

try:
    import cStringIO.StringIO as BytesIO
except ImportError:
    from io import BytesIO
import struct

class update_t(object):
    __slots__ = ["utime", "server_id", "sequence_number", "params"]

    def __init__(self):
        self.utime = 0
        self.server_id = 0
        self.sequence_number = 0
        self.params = ""

    def encode(self):
        buf = BytesIO()
        buf.write(update_t._get_packed_fingerprint())
        self._encode_one(buf)
        return buf.getvalue()

    def _encode_one(self, buf):
        buf.write(struct.pack(">qqi", self.utime, self.server_id, self.sequence_number))
        __params_encoded = self.params.encode('utf-8')
        buf.write(struct.pack('>I', len(__params_encoded)+1))
        buf.write(__params_encoded)
        buf.write(b"\0")

    def decode(data):
        if hasattr(data, 'read'):
            buf = data
        else:
            buf = BytesIO(data)
        if buf.read(8) != update_t._get_packed_fingerprint():
            raise ValueError("Decode error")
        return update_t._decode_one(buf)
    decode = staticmethod(decode)

    def _decode_one(buf):
        self = update_t()
        self.utime, self.server_id, self.sequence_number = struct.unpack(">qqi", buf.read(20))
        __params_len = struct.unpack('>I', buf.read(4))[0]
        self.params = buf.read(__params_len)[:-1].decode('utf-8', 'replace')
        return self
    _decode_one = staticmethod(_decode_one)

    _hash = None
    def _get_hash_recursive(parents):
        if update_t in parents: return 0
        tmphash = (0x9593c5c84406b29a) & 0xffffffffffffffff
        tmphash  = (((tmphash<<1)&0xffffffffffffffff)  + (tmphash>>63)) & 0xffffffffffffffff
        return tmphash
    _get_hash_recursive = staticmethod(_get_hash_recursive)
    _packed_fingerprint = None

    def _get_packed_fingerprint():
        if update_t._packed_fingerprint is None:
            update_t._packed_fingerprint = struct.pack(">Q", update_t._get_hash_recursive([]))
        return update_t._packed_fingerprint
    _get_packed_fingerprint = staticmethod(_get_packed_fingerprint)
