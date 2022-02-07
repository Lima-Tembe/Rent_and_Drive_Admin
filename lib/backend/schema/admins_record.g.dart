// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admins_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AdminsRecord> _$adminsRecordSerializer =
    new _$AdminsRecordSerializer();

class _$AdminsRecordSerializer implements StructuredSerializer<AdminsRecord> {
  @override
  final Iterable<Type> types = const [AdminsRecord, _$AdminsRecord];
  @override
  final String wireName = 'AdminsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AdminsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  AdminsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdminsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$AdminsRecord extends AdminsRecord {
  @override
  final String email;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String photoUrl;
  @override
  final String phoneNumber;
  @override
  final String displayName;
  @override
  final DocumentReference<Object> reference;

  factory _$AdminsRecord([void Function(AdminsRecordBuilder) updates]) =>
      (new AdminsRecordBuilder()..update(updates)).build();

  _$AdminsRecord._(
      {this.email,
      this.uid,
      this.createdTime,
      this.photoUrl,
      this.phoneNumber,
      this.displayName,
      this.reference})
      : super._();

  @override
  AdminsRecord rebuild(void Function(AdminsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminsRecordBuilder toBuilder() => new AdminsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminsRecord &&
        email == other.email &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        photoUrl == other.photoUrl &&
        phoneNumber == other.phoneNumber &&
        displayName == other.displayName &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, email.hashCode), uid.hashCode),
                        createdTime.hashCode),
                    photoUrl.hashCode),
                phoneNumber.hashCode),
            displayName.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AdminsRecord')
          ..add('email', email)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('photoUrl', photoUrl)
          ..add('phoneNumber', phoneNumber)
          ..add('displayName', displayName)
          ..add('reference', reference))
        .toString();
  }
}

class AdminsRecordBuilder
    implements Builder<AdminsRecord, AdminsRecordBuilder> {
  _$AdminsRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AdminsRecordBuilder() {
    AdminsRecord._initializeBuilder(this);
  }

  AdminsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _photoUrl = $v.photoUrl;
      _phoneNumber = $v.phoneNumber;
      _displayName = $v.displayName;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdminsRecord;
  }

  @override
  void update(void Function(AdminsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AdminsRecord build() {
    final _$result = _$v ??
        new _$AdminsRecord._(
            email: email,
            uid: uid,
            createdTime: createdTime,
            photoUrl: photoUrl,
            phoneNumber: phoneNumber,
            displayName: displayName,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
