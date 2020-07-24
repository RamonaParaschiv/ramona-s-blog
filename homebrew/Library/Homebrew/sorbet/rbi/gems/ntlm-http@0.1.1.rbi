# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   tapioca sync

# typed: true

module Net::NTLM
  def self.apply_des(plain, keys); end
  def self.decode_utf16le(str); end
  def self.encode_utf16le(str); end
  def self.gen_keys(str); end
  def self.lm_hash(password); end
  def self.lm_response(arg); end
  def self.lmv2_response(arg, opt = _); end
  def self.ntlm2_session(arg, opt = _); end
  def self.ntlm_hash(password, opt = _); end
  def self.ntlm_response(arg); end
  def self.ntlmv2_hash(user, password, target, opt = _); end
  def self.ntlmv2_response(arg, opt = _); end
  def self.pack_int64le(val); end
  def self.split7(str); end
  def self.swap16(str); end
end

class Net::NTLM::Blob < ::Net::NTLM::FieldSet
  def blob_signature; end
  def blob_signature=(val); end
  def challenge; end
  def challenge=(val); end
  def reserved; end
  def reserved=(val); end
  def target_info; end
  def target_info=(val); end
  def timestamp; end
  def timestamp=(val); end
  def unknown1; end
  def unknown1=(val); end
  def unknown2; end
  def unknown2=(val); end

  def self.inherited(subclass); end
end

class Net::NTLM::Field
  def initialize(opts); end

  def active; end
  def active=(_); end
  def size; end
  def value; end
  def value=(_); end
end

class Net::NTLM::FieldSet
  def initialize; end

  def [](name); end
  def []=(name, val); end
  def disable(name); end
  def enable(name); end
  def parse(str, offset = _); end
  def serialize; end
  def size; end

  def self.define(&block); end
  def self.int16LE(name, opts); end
  def self.int32LE(name, opts); end
  def self.int64LE(name, opts); end
  def self.names; end
  def self.opts; end
  def self.prototypes; end
  def self.security_buffer(name, opts); end
  def self.string(name, opts); end
  def self.types; end
end

class Net::NTLM::Int16LE < ::Net::NTLM::Field
  def initialize(opt); end

  def parse(str, offset = _); end
  def serialize; end
end

class Net::NTLM::Int32LE < ::Net::NTLM::Field
  def initialize(opt); end

  def parse(str, offset = _); end
  def serialize; end
end

class Net::NTLM::Int64LE < ::Net::NTLM::Field
  def initialize(opt); end

  def parse(str, offset = _); end
  def serialize; end
end

class Net::NTLM::Message < ::Net::NTLM::FieldSet
  def data_size; end
  def decode64(str); end
  def dump_flags; end
  def encode64; end
  def has_flag?(flag); end
  def head_size; end
  def serialize; end
  def set_flag(flag); end
  def size; end

  private

  def data_edge; end
  def deflag; end
  def security_buffers; end

  def self.decode64(str); end
  def self.parse(str); end
end

class Net::NTLM::Message::Type0 < ::Net::NTLM::Message
  def sign; end
  def sign=(val); end
  def type; end
  def type=(val); end

  def self.inherited(subclass); end
end

class Net::NTLM::Message::Type1 < ::Net::NTLM::Message
  def domain; end
  def domain=(val); end
  def flag; end
  def flag=(val); end
  def padding; end
  def padding=(val); end
  def parse(str); end
  def sign; end
  def sign=(val); end
  def type; end
  def type=(val); end
  def workstation; end
  def workstation=(val); end

  def self.inherited(subclass); end
  def self.parse(str); end
end

class Net::NTLM::Message::Type2 < ::Net::NTLM::Message
  def challenge; end
  def challenge=(val); end
  def context; end
  def context=(val); end
  def flag; end
  def flag=(val); end
  def padding; end
  def padding=(val); end
  def parse(str); end
  def response(arg, opt = _); end
  def sign; end
  def sign=(val); end
  def target_info; end
  def target_info=(val); end
  def target_name; end
  def target_name=(val); end
  def type; end
  def type=(val); end

  def self.inherited(subclass); end
  def self.parse(str); end
end

class Net::NTLM::Message::Type3 < ::Net::NTLM::Message
  def domain; end
  def domain=(val); end
  def flag; end
  def flag=(val); end
  def lm_response; end
  def lm_response=(val); end
  def ntlm_response; end
  def ntlm_response=(val); end
  def session_key; end
  def session_key=(val); end
  def sign; end
  def sign=(val); end
  def type; end
  def type=(val); end
  def user; end
  def user=(val); end
  def workstation; end
  def workstation=(val); end

  def self.create(arg, opt = _); end
  def self.inherited(subclass); end
  def self.parse(str); end
end

class Net::NTLM::SecurityBuffer < ::Net::NTLM::FieldSet
  def initialize(opts); end

  def active; end
  def active=(_); end
  def allocated; end
  def allocated=(val); end
  def data_size; end
  def length; end
  def length=(val); end
  def offset; end
  def offset=(val); end
  def parse(str, offset = _); end
  def serialize; end
  def value; end
  def value=(val); end

  def self.inherited(subclass); end
end

class Net::NTLM::String < ::Net::NTLM::Field
  def initialize(opts); end

  def parse(str, offset = _); end
  def serialize; end
  def value=(val); end
end

module Net::NTLM::VERSION
end

Net::NTLM::VERSION::MAJOR = T.let(T.unsafe(nil), Integer)

Net::NTLM::VERSION::MINOR = T.let(T.unsafe(nil), Integer)

Net::NTLM::VERSION::STRING = T.let(T.unsafe(nil), String)

Net::NTLM::VERSION::TINY = T.let(T.unsafe(nil), Integer)
