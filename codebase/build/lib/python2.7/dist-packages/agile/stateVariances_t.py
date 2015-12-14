"""LCM type definitions
This file automatically generated by lcm.
DO NOT MODIFY BY HAND!!!!
"""

try:
    import cStringIO.StringIO as BytesIO
except ImportError:
    from io import BytesIO
import struct

class stateVariances_t(object):
    __slots__ = ["timestampJetson", "position", "orient", "veloPositionBody", "veloOrientBody", "imuBiasAccel", "imuBiasGyro", "imuVarianceAccel", "imuVarianceGyro", "variances"]

    def __init__(self):
        self.timestampJetson = 0
        self.position = [ 0.0 for dim0 in range(3) ]
        self.orient = [ 0.0 for dim0 in range(4) ]
        self.veloPositionBody = [ 0.0 for dim0 in range(3) ]
        self.veloOrientBody = [ 0.0 for dim0 in range(3) ]
        self.imuBiasAccel = [ 0.0 for dim0 in range(3) ]
        self.imuBiasGyro = [ 0.0 for dim0 in range(3) ]
        self.imuVarianceAccel = [ 0.0 for dim0 in range(3) ]
        self.imuVarianceGyro = [ 0.0 for dim0 in range(3) ]
        self.variances = [ [ 0.0 for dim1 in range(12) ] for dim0 in range(12) ]

    def encode(self):
        buf = BytesIO()
        buf.write(stateVariances_t._get_packed_fingerprint())
        self._encode_one(buf)
        return buf.getvalue()

    def _encode_one(self, buf):
        buf.write(struct.pack(">q", self.timestampJetson))
        buf.write(struct.pack('>3d', *self.position[:3]))
        buf.write(struct.pack('>4d', *self.orient[:4]))
        buf.write(struct.pack('>3d', *self.veloPositionBody[:3]))
        buf.write(struct.pack('>3d', *self.veloOrientBody[:3]))
        buf.write(struct.pack('>3d', *self.imuBiasAccel[:3]))
        buf.write(struct.pack('>3d', *self.imuBiasGyro[:3]))
        buf.write(struct.pack('>3d', *self.imuVarianceAccel[:3]))
        buf.write(struct.pack('>3d', *self.imuVarianceGyro[:3]))
        for i0 in range(12):
            buf.write(struct.pack('>12d', *self.variances[i0][:12]))

    def decode(data):
        if hasattr(data, 'read'):
            buf = data
        else:
            buf = BytesIO(data)
        if buf.read(8) != stateVariances_t._get_packed_fingerprint():
            raise ValueError("Decode error")
        return stateVariances_t._decode_one(buf)
    decode = staticmethod(decode)

    def _decode_one(buf):
        self = stateVariances_t()
        self.timestampJetson = struct.unpack(">q", buf.read(8))[0]
        self.position = struct.unpack('>3d', buf.read(24))
        self.orient = struct.unpack('>4d', buf.read(32))
        self.veloPositionBody = struct.unpack('>3d', buf.read(24))
        self.veloOrientBody = struct.unpack('>3d', buf.read(24))
        self.imuBiasAccel = struct.unpack('>3d', buf.read(24))
        self.imuBiasGyro = struct.unpack('>3d', buf.read(24))
        self.imuVarianceAccel = struct.unpack('>3d', buf.read(24))
        self.imuVarianceGyro = struct.unpack('>3d', buf.read(24))
        self.variances = []
        for i0 in range(12):
            self.variances.append(struct.unpack('>12d', buf.read(96)))
        return self
    _decode_one = staticmethod(_decode_one)

    _hash = None
    def _get_hash_recursive(parents):
        if stateVariances_t in parents: return 0
        tmphash = (0xa2003c3f59a5bade) & 0xffffffffffffffff
        tmphash  = (((tmphash<<1)&0xffffffffffffffff)  + (tmphash>>63)) & 0xffffffffffffffff
        return tmphash
    _get_hash_recursive = staticmethod(_get_hash_recursive)
    _packed_fingerprint = None

    def _get_packed_fingerprint():
        if stateVariances_t._packed_fingerprint is None:
            stateVariances_t._packed_fingerprint = struct.pack(">Q", stateVariances_t._get_hash_recursive([]))
        return stateVariances_t._packed_fingerprint
    _get_packed_fingerprint = staticmethod(_get_packed_fingerprint)
