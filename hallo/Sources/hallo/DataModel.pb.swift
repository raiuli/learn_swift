// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: DataModel.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

///package snazzy.items;
struct BookInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: Int64 = 0

  var title: String = String()

  var author: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Requests {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var requestOneof: Requests.OneOf_RequestOneof? = nil

  var appRequest: AppRequest {
    get {
      if case .appRequest(let v)? = requestOneof {return v}
      return AppRequest()
    }
    set {requestOneof = .appRequest(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_RequestOneof: Equatable {
    case appRequest(AppRequest)

  #if !swift(>=4.1)
    static func ==(lhs: Requests.OneOf_RequestOneof, rhs: Requests.OneOf_RequestOneof) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.appRequest, .appRequest): return {
        guard case .appRequest(let l) = lhs, case .appRequest(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  init() {}
}

struct AppRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var refID: UInt32 = 0

  var metadata: MetaData {
    get {return _metadata ?? MetaData()}
    set {_metadata = newValue}
  }
  /// Returns true if `metadata` has been explicitly set.
  var hasMetadata: Bool {return self._metadata != nil}
  /// Clears the value of `metadata`. Subsequent reads from it will return its default value.
  mutating func clearMetadata() {self._metadata = nil}

  var resourceList: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _metadata: MetaData? = nil
}

struct AppRequest2 {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var refID: UInt32 = 0

  var resourceList: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct MetaData2 {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var codeOrURLOneof2: AppRequest2.MetaData2.OneOf_CodeOrURLOneof2? = nil

    var path: String {
      get {
        if case .path(let v)? = codeOrURLOneof2 {return v}
        return String()
      }
      set {codeOrURLOneof2 = .path(newValue)}
    }

    var url: String {
      get {
        if case .url(let v)? = codeOrURLOneof2 {return v}
        return String()
      }
      set {codeOrURLOneof2 = .url(newValue)}
    }

    var externalDependencies: String = String()

    var internalDependencies: String = String()

    var externalFlow: String = String()

    var internalFlow: String = String()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    enum OneOf_CodeOrURLOneof2: Equatable {
      case path(String)
      case url(String)

    #if !swift(>=4.1)
      static func ==(lhs: AppRequest2.MetaData2.OneOf_CodeOrURLOneof2, rhs: AppRequest2.MetaData2.OneOf_CodeOrURLOneof2) -> Bool {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch (lhs, rhs) {
        case (.path, .path): return {
          guard case .path(let l) = lhs, case .path(let r) = rhs else { preconditionFailure() }
          return l == r
        }()
        case (.url, .url): return {
          guard case .url(let l) = lhs, case .url(let r) = rhs else { preconditionFailure() }
          return l == r
        }()
        default: return false
        }
      }
    #endif
    }

    init() {}
  }

  init() {}
}

struct MetaData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///CodeOrURL code_or_url =1;
  var codeOrURLOneof: MetaData.OneOf_CodeOrURLOneof? = nil

  var path: String {
    get {
      if case .path(let v)? = codeOrURLOneof {return v}
      return String()
    }
    set {codeOrURLOneof = .path(newValue)}
  }

  var url: String {
    get {
      if case .url(let v)? = codeOrURLOneof {return v}
      return String()
    }
    set {codeOrURLOneof = .url(newValue)}
  }

  var externalDependencies: String = String()

  var internalDependencies: String = String()

  var externalFlow: String = String()

  var internalFlow: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  ///CodeOrURL code_or_url =1;
  enum OneOf_CodeOrURLOneof: Equatable {
    case path(String)
    case url(String)

  #if !swift(>=4.1)
    static func ==(lhs: MetaData.OneOf_CodeOrURLOneof, rhs: MetaData.OneOf_CodeOrURLOneof) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.path, .path): return {
        guard case .path(let l) = lhs, case .path(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.url, .url): return {
        guard case .url(let l) = lhs, case .url(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension BookInfo: @unchecked Sendable {}
extension Requests: @unchecked Sendable {}
extension Requests.OneOf_RequestOneof: @unchecked Sendable {}
extension AppRequest: @unchecked Sendable {}
extension AppRequest2: @unchecked Sendable {}
extension AppRequest2.MetaData2: @unchecked Sendable {}
extension AppRequest2.MetaData2.OneOf_CodeOrURLOneof2: @unchecked Sendable {}
extension MetaData: @unchecked Sendable {}
extension MetaData.OneOf_CodeOrURLOneof: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension BookInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "BookInfo"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "title"),
    3: .same(proto: "author"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.title) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.author) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularInt64Field(value: self.id, fieldNumber: 1)
    }
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 2)
    }
    if !self.author.isEmpty {
      try visitor.visitSingularStringField(value: self.author, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: BookInfo, rhs: BookInfo) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.title != rhs.title {return false}
    if lhs.author != rhs.author {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Requests: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "Requests"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "app_request"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: AppRequest?
        var hadOneofValue = false
        if let current = self.requestOneof {
          hadOneofValue = true
          if case .appRequest(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.requestOneof = .appRequest(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if case .appRequest(let v)? = self.requestOneof {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Requests, rhs: Requests) -> Bool {
    if lhs.requestOneof != rhs.requestOneof {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension AppRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "AppRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "ref_id"),
    2: .same(proto: "metadata"),
    3: .standard(proto: "resource_list"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.refID) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._metadata) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.resourceList) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.refID != 0 {
      try visitor.visitSingularUInt32Field(value: self.refID, fieldNumber: 1)
    }
    try { if let v = self._metadata {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    if !self.resourceList.isEmpty {
      try visitor.visitSingularStringField(value: self.resourceList, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: AppRequest, rhs: AppRequest) -> Bool {
    if lhs.refID != rhs.refID {return false}
    if lhs._metadata != rhs._metadata {return false}
    if lhs.resourceList != rhs.resourceList {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension AppRequest2: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "AppRequest2"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "ref_id"),
    3: .standard(proto: "resource_list"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.refID) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.resourceList) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.refID != 0 {
      try visitor.visitSingularUInt32Field(value: self.refID, fieldNumber: 1)
    }
    if !self.resourceList.isEmpty {
      try visitor.visitSingularStringField(value: self.resourceList, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: AppRequest2, rhs: AppRequest2) -> Bool {
    if lhs.refID != rhs.refID {return false}
    if lhs.resourceList != rhs.resourceList {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension AppRequest2.MetaData2: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = AppRequest2.protoMessageName + ".MetaData2"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "Path"),
    2: .same(proto: "Url"),
    3: .standard(proto: "external_dependencies"),
    4: .standard(proto: "internal_dependencies"),
    5: .standard(proto: "external_flow"),
    6: .standard(proto: "internal_flow"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {
          if self.codeOrURLOneof2 != nil {try decoder.handleConflictingOneOf()}
          self.codeOrURLOneof2 = .path(v)
        }
      }()
      case 2: try {
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {
          if self.codeOrURLOneof2 != nil {try decoder.handleConflictingOneOf()}
          self.codeOrURLOneof2 = .url(v)
        }
      }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.externalDependencies) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.internalDependencies) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.externalFlow) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.internalFlow) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.codeOrURLOneof2 {
    case .path?: try {
      guard case .path(let v)? = self.codeOrURLOneof2 else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    }()
    case .url?: try {
      guard case .url(let v)? = self.codeOrURLOneof2 else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    if !self.externalDependencies.isEmpty {
      try visitor.visitSingularStringField(value: self.externalDependencies, fieldNumber: 3)
    }
    if !self.internalDependencies.isEmpty {
      try visitor.visitSingularStringField(value: self.internalDependencies, fieldNumber: 4)
    }
    if !self.externalFlow.isEmpty {
      try visitor.visitSingularStringField(value: self.externalFlow, fieldNumber: 5)
    }
    if !self.internalFlow.isEmpty {
      try visitor.visitSingularStringField(value: self.internalFlow, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: AppRequest2.MetaData2, rhs: AppRequest2.MetaData2) -> Bool {
    if lhs.codeOrURLOneof2 != rhs.codeOrURLOneof2 {return false}
    if lhs.externalDependencies != rhs.externalDependencies {return false}
    if lhs.internalDependencies != rhs.internalDependencies {return false}
    if lhs.externalFlow != rhs.externalFlow {return false}
    if lhs.internalFlow != rhs.internalFlow {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension MetaData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "MetaData"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "Path"),
    2: .same(proto: "Url"),
    3: .standard(proto: "external_dependencies"),
    4: .standard(proto: "internal_dependencies"),
    5: .standard(proto: "external_flow"),
    6: .standard(proto: "internal_flow"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {
          if self.codeOrURLOneof != nil {try decoder.handleConflictingOneOf()}
          self.codeOrURLOneof = .path(v)
        }
      }()
      case 2: try {
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {
          if self.codeOrURLOneof != nil {try decoder.handleConflictingOneOf()}
          self.codeOrURLOneof = .url(v)
        }
      }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.externalDependencies) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.internalDependencies) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.externalFlow) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.internalFlow) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.codeOrURLOneof {
    case .path?: try {
      guard case .path(let v)? = self.codeOrURLOneof else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    }()
    case .url?: try {
      guard case .url(let v)? = self.codeOrURLOneof else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    if !self.externalDependencies.isEmpty {
      try visitor.visitSingularStringField(value: self.externalDependencies, fieldNumber: 3)
    }
    if !self.internalDependencies.isEmpty {
      try visitor.visitSingularStringField(value: self.internalDependencies, fieldNumber: 4)
    }
    if !self.externalFlow.isEmpty {
      try visitor.visitSingularStringField(value: self.externalFlow, fieldNumber: 5)
    }
    if !self.internalFlow.isEmpty {
      try visitor.visitSingularStringField(value: self.internalFlow, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: MetaData, rhs: MetaData) -> Bool {
    if lhs.codeOrURLOneof != rhs.codeOrURLOneof {return false}
    if lhs.externalDependencies != rhs.externalDependencies {return false}
    if lhs.internalDependencies != rhs.internalDependencies {return false}
    if lhs.externalFlow != rhs.externalFlow {return false}
    if lhs.internalFlow != rhs.internalFlow {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
