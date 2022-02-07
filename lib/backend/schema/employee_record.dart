import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'employee_record.g.dart';

abstract class EmployeeRecord
    implements Built<EmployeeRecord, EmployeeRecordBuilder> {
  static Serializer<EmployeeRecord> get serializer =>
      _$employeeRecordSerializer;

  @nullable
  String get email;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  int get phoneNumber;

  @nullable
  int get salary;

  @nullable
  String get funcao;

  @nullable
  @BuiltValueField(wireName: 'dado_bancarios')
  String get dadoBancarios;

  @nullable
  @BuiltValueField(wireName: 'BI')
  String get bi;

  @nullable
  String get address;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EmployeeRecordBuilder builder) => builder
    ..email = ''
    ..uid = ''
    ..displayName = ''
    ..photoUrl = ''
    ..phoneNumber = 0
    ..salary = 0
    ..funcao = ''
    ..dadoBancarios = ''
    ..bi = ''
    ..address = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('employee');

  static Stream<EmployeeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<EmployeeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EmployeeRecord._();
  factory EmployeeRecord([void Function(EmployeeRecordBuilder) updates]) =
      _$EmployeeRecord;

  static EmployeeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEmployeeRecordData({
  String email,
  String uid,
  String displayName,
  String photoUrl,
  DateTime createdTime,
  int phoneNumber,
  int salary,
  String funcao,
  String dadoBancarios,
  String bi,
  String address,
}) =>
    serializers.toFirestore(
        EmployeeRecord.serializer,
        EmployeeRecord((e) => e
          ..email = email
          ..uid = uid
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..salary = salary
          ..funcao = funcao
          ..dadoBancarios = dadoBancarios
          ..bi = bi
          ..address = address));
