/** THIS IS AN AUTOMATICALLY GENERATED FILE.  DO NOT MODIFY
 * BY HAND!!
 *
 * Generated by lcm-gen
 **/

#include <lcm/lcm_coretypes.h>

#ifndef __bot_frames_update_t_hpp__
#define __bot_frames_update_t_hpp__

#include <string>

namespace bot_frames
{

class update_t
{
    public:
        int64_t    utime;

        std::string frame;

        std::string relative_to;

        double     trans[3];

        double     quat[4];

    public:
        /**
         * Encode a message into binary form.
         *
         * @param buf The output buffer.
         * @param offset Encoding starts at thie byte offset into @p buf.
         * @param maxlen Maximum number of bytes to write.  This should generally be
         *  equal to getEncodedSize().
         * @return The number of bytes encoded, or <0 on error.
         */
        inline int encode(void *buf, int offset, int maxlen) const;

        /**
         * Check how many bytes are required to encode this message.
         */
        inline int getEncodedSize() const;

        /**
         * Decode a message from binary form into this instance.
         *
         * @param buf The buffer containing the encoded message.
         * @param offset The byte offset into @p buf where the encoded message starts.
         * @param maxlen The maximum number of bytes to reqad while decoding.
         * @return The number of bytes decoded, or <0 if an error occured.
         */
        inline int decode(const void *buf, int offset, int maxlen);

        /**
         * Retrieve the 64-bit fingerprint identifying the structure of the message.
         * Note that the fingerprint is the same for all instances of the same
         * message type, and is a fingerprint on the message type definition, not on
         * the message contents.
         */
        inline static int64_t getHash();

        /**
         * Returns "update_t"
         */
        inline static const char* getTypeName();

        // LCM support functions. Users should not call these
        inline int _encodeNoHash(void *buf, int offset, int maxlen) const;
        inline int _getEncodedSizeNoHash() const;
        inline int _decodeNoHash(const void *buf, int offset, int maxlen);
        inline static int64_t _computeHash(const __lcm_hash_ptr *p);
};

int update_t::encode(void *buf, int offset, int maxlen) const
{
    int pos = 0, tlen;
    int64_t hash = getHash();

    tlen = __int64_t_encode_array(buf, offset + pos, maxlen - pos, &hash, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = this->_encodeNoHash(buf, offset + pos, maxlen - pos);
    if (tlen < 0) return tlen; else pos += tlen;

    return pos;
}

int update_t::decode(const void *buf, int offset, int maxlen)
{
    int pos = 0, thislen;

    int64_t msg_hash;
    thislen = __int64_t_decode_array(buf, offset + pos, maxlen - pos, &msg_hash, 1);
    if (thislen < 0) return thislen; else pos += thislen;
    if (msg_hash != getHash()) return -1;

    thislen = this->_decodeNoHash(buf, offset + pos, maxlen - pos);
    if (thislen < 0) return thislen; else pos += thislen;

    return pos;
}

int update_t::getEncodedSize() const
{
    return 8 + _getEncodedSizeNoHash();
}

int64_t update_t::getHash()
{
    static int64_t hash = _computeHash(NULL);
    return hash;
}

const char* update_t::getTypeName()
{
    return "update_t";
}

int update_t::_encodeNoHash(void *buf, int offset, int maxlen) const
{
    int pos = 0, tlen;

    tlen = __int64_t_encode_array(buf, offset + pos, maxlen - pos, &this->utime, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    char* frame_cstr = (char*) this->frame.c_str();
    tlen = __string_encode_array(buf, offset + pos, maxlen - pos, &frame_cstr, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    char* relative_to_cstr = (char*) this->relative_to.c_str();
    tlen = __string_encode_array(buf, offset + pos, maxlen - pos, &relative_to_cstr, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __double_encode_array(buf, offset + pos, maxlen - pos, &this->trans[0], 3);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __double_encode_array(buf, offset + pos, maxlen - pos, &this->quat[0], 4);
    if(tlen < 0) return tlen; else pos += tlen;

    return pos;
}

int update_t::_decodeNoHash(const void *buf, int offset, int maxlen)
{
    int pos = 0, tlen;

    tlen = __int64_t_decode_array(buf, offset + pos, maxlen - pos, &this->utime, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    int32_t __frame_len__;
    tlen = __int32_t_decode_array(buf, offset + pos, maxlen - pos, &__frame_len__, 1);
    if(tlen < 0) return tlen; else pos += tlen;
    if(__frame_len__ > maxlen - pos) return -1;
    this->frame.assign(((const char*)buf) + offset + pos, __frame_len__ - 1);
    pos += __frame_len__;

    int32_t __relative_to_len__;
    tlen = __int32_t_decode_array(buf, offset + pos, maxlen - pos, &__relative_to_len__, 1);
    if(tlen < 0) return tlen; else pos += tlen;
    if(__relative_to_len__ > maxlen - pos) return -1;
    this->relative_to.assign(((const char*)buf) + offset + pos, __relative_to_len__ - 1);
    pos += __relative_to_len__;

    tlen = __double_decode_array(buf, offset + pos, maxlen - pos, &this->trans[0], 3);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __double_decode_array(buf, offset + pos, maxlen - pos, &this->quat[0], 4);
    if(tlen < 0) return tlen; else pos += tlen;

    return pos;
}

int update_t::_getEncodedSizeNoHash() const
{
    int enc_size = 0;
    enc_size += __int64_t_encoded_array_size(NULL, 1);
    enc_size += this->frame.size() + 4 + 1;
    enc_size += this->relative_to.size() + 4 + 1;
    enc_size += __double_encoded_array_size(NULL, 3);
    enc_size += __double_encoded_array_size(NULL, 4);
    return enc_size;
}

int64_t update_t::_computeHash(const __lcm_hash_ptr *)
{
    int64_t hash = 0xe81404582309d273LL;
    return (hash<<1) + ((hash>>63)&1);
}

}

#endif
