// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EmployeeRecord> _$employeeRecordSerializer =
    new _$EmployeeRecordSerializer();

class _$EmployeeRecordSerializer
    implements StructuredSerializer<EmployeeRecord> {
  @override
  final Iterable<Type> types = const [EmployeeRecord, _$EmployeeRecord];
  @override
  final String wireName = 'EmployeeRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, EmployeeRecord object,
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
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.salary;
    if (value != null) {
      result
        ..add('salary')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.funcao;
    if (value != null) {
      result
        ..add('funcao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dadoBancarios;
    if (value != null) {
      result
        ..add('dado_bancarios')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bi;
    if (value != null) {
      result
        ..add('BI')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
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
  EmployeeRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmployeeRecordBuilder();

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
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'salary':
          result.salary = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'funcao':
          result.funcao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dado_bancarios':
          result.dadoBancarios = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'BI':
          result.bi = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
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

class _$EmployeeRecord extends EmployeeRecord {
  @override
  final String email;
  @override
  final String uid;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final DateTime createdTime;
  @override
  final int phoneNumber;
  @override
  final int salary;
  @override
  final String funcao;
  @override
  final String dadoBancarios;
  @override
  final String bi;
  @override
  final String address;
  @override
  final DocumentReference<Object> reference;

  factory _$EmployeeRecord([void Function(EmployeeRecordBuilder) updates]) =>
      (new EmployeeRecordBuilder()..update(updates)).build();

  _$EmployeeRecord._(
      {this.email,
      this.uid,
      this.displayName,
      this.photoUrl,
      this.createdTime,
      this.phoneNumber,
      this.salary,
      this.funcao,
      this.dadoBancarios,
      this.bi,
      this.address,
      this.reference})
      : super._();

  @override
  EmployeeRecord rebuild(void Function(EmployeeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmployeeRecordBuilder toBuilder() =>
      new EmployeeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmployeeRecord &&
        email == other.email &&
        uid == other.uid &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        salary == other.salary &&
        funcao == other.funcao &&
        dadoBancarios == other.dadoBancarios &&
        bi == other.bi &&
        address == other.address &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, email.hashCode),
                                                uid.hashCode),
                                            displayName.hashCode),
                                        photoUrl.hashCode),
                                    createdTime.hashCode),
                                phoneNumber.hashCode),
                            salary.hashCode),
                        funcao.hashCode),
                    dadoBancarios.hashCode),
                bi.hashCode),
            address.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EmployeeRecord')
          ..add('email', email)
          ..add('uid', uid)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('salary', salary)
          ..add('funcao', funcao)
          ..add('dadoBancarios', dadoBancarios)
          ..add('bi', bi)
          ..add('address', address)
          ..add('reference', reference))
        .toString();
  }
}

class EmployeeRecordBuilder
    implements Builder<EmployeeRecord, EmployeeRecordBuilder> {
  _$EmployeeRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  int _phoneNumber;
  int get phoneNumber => _$this._phoneNumber;
  set phoneNumber(int phoneNumber) => _$this._phoneNumber = phoneNumber;

  int _salary;
  int get salary => _$this._salary;
  set salary(int salary) => _$this._salary = salary;

  String _funcao;
  String get funcao => _$this._funcao;
  set funcao(String funcao) => _$this._funcao = funcao;

  String _dadoBancarios;
  String get dadoBancarios => _$this._dadoBancarios;
  set dadoBancarios(String dadoBancarios) =>
      _$this._dadoBancarios = dadoBancarios;

  String _bi;
  String get bi => _$this._bi;
  set bi(String bi) => _$this._bi = bi;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  EmployeeRecordBuilder() {
    EmployeeRecord._initializeBuilder(this);
  }

  EmployeeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _uid = $v.uid;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _salary = $v.salary;
      _funcao = $v.funcao;
      _dadoBancarios = $v.dadoBancarios;
      _bi = $v.bi;
      _address = $v.address;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmployeeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmployeeRecord;
  }

  @override
  void update(void Function(EmployeeRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EmployeeRecord build() {
    final _$result = _$v ??
        new _$EmployeeRecord._(
            email: email,
            uid: uid,
            displayName: displayName,
            photoUrl: photoUrl,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            salary: salary,
            funcao: funcao,
            dadoBancarios: dadoBancarios,
            bi: bi,
            address: address,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
