"""LCM type definitions
This file automatically generated by lcm.
DO NOT MODIFY BY HAND!!!!
"""

try:
    import cStringIO.StringIO as BytesIO
except ImportError:
    from io import BytesIO
import struct

class poseRef_t(object):
    __slots__ = ["timestampJetson", "position", "orientEuler"]

    def __init__(self):
        self.timestampJetson = 0
        self.position = [ 0.0 for dim0 in range(3) ]
        self.orientEuler = [ 0.0 for dim0 in range(3) ]

    def encode(self):
        buf = BytesIO()
        buf.write(poseRef_t._get_packed_fingerprint())
        self._encode_one(buf)
        return buf.getvalue()

    def _encode_one(self, buf):
        buf.write(struct.pack(">q", self.timestampJetson))
        buf.write(struct.pack('>3d', *self.position[:3]))
        buf.write(struct.pack('>3d', *self.orientEuler[:3]))

    def decode(data):
        if hasattr(data, 'read'):
            buf = data
        else:
            buf = BytesIO(data)
        if buf.read(8) != poseRef_t._get_packed_fingerprint():
            raise ValueError("Decode error")
        return poseRef_t._decode_one(buf)
    decode = staticmethod(decode)

    def _decode_one(buf):
        self = poseRef_t()
        self.timestampJetson = struct.unpack(">q", buf.read(8))[0]
        self.position = struct.unpack('>3d', buf.read(24))
        self.orientEuler = struct.unpack('>3d', buf.read(24))
        return self
    _decode_one = staticmethod(_decode_one)

    _hash = None
    def _get_hash_recursive(parents):
        if poseRef_t in parents: return 0
        tmphash = (0xb045739930f188a3) & 0xffffffffffffffff
        tmphash  = (((tmphash<<1)&0xffffffffffffffff)  + (tmphash>>63)) & 0xffffffffffffffff
        return tmphash
    _get_hash_recursive = staticmethod(_get_hash_recursive)
    _packed_fingerprint = None

    def _get_packed_fingerprint():
        if poseRef_t._packed_fingerprint is None:
            poseRef_t._packed_fingerprint = struct.pack(">Q", poseRef_t._get_hash_recursive([]))
        return poseRef_t._packed_fingerprint
    _get_packed_fingerprint = staticmethod(_get_packed_fingerprint)

