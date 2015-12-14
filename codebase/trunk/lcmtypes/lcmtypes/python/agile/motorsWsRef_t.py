"""LCM type definitions
This file automatically generated by lcm.
DO NOT MODIFY BY HAND!!!!
"""

try:
    import cStringIO.StringIO as BytesIO
except ImportError:
    from io import BytesIO
import struct

class motorsWsRef_t(object):
    __slots__ = ["timestampJetson", "wsRef"]

    def __init__(self):
        self.timestampJetson = 0
        self.wsRef = [ 0.0 for dim0 in range(4) ]

    def encode(self):
        buf = BytesIO()
        buf.write(motorsWsRef_t._get_packed_fingerprint())
        self._encode_one(buf)
        return buf.getvalue()

    def _encode_one(self, buf):
        buf.write(struct.pack(">q", self.timestampJetson))
        buf.write(struct.pack('>4d', *self.wsRef[:4]))

    def decode(data):
        if hasattr(data, 'read'):
            buf = data
        else:
            buf = BytesIO(data)
        if buf.read(8) != motorsWsRef_t._get_packed_fingerprint():
            raise ValueError("Decode error")
        return motorsWsRef_t._decode_one(buf)
    decode = staticmethod(decode)

    def _decode_one(buf):
        self = motorsWsRef_t()
        self.timestampJetson = struct.unpack(">q", buf.read(8))[0]
        self.wsRef = struct.unpack('>4d', buf.read(32))
        return self
    _decode_one = staticmethod(_decode_one)

    _hash = None
    def _get_hash_recursive(parents):
        if motorsWsRef_t in parents: return 0
        tmphash = (0xd67174971b512eb8) & 0xffffffffffffffff
        tmphash  = (((tmphash<<1)&0xffffffffffffffff)  + (tmphash>>63)) & 0xffffffffffffffff
        return tmphash
    _get_hash_recursive = staticmethod(_get_hash_recursive)
    _packed_fingerprint = None

    def _get_packed_fingerprint():
        if motorsWsRef_t._packed_fingerprint is None:
            motorsWsRef_t._packed_fingerprint = struct.pack(">Q", motorsWsRef_t._get_hash_recursive([]))
        return motorsWsRef_t._packed_fingerprint
    _get_packed_fingerprint = staticmethod(_get_packed_fingerprint)
