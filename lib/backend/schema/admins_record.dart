import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'admins_record.g.dart';

abstract class AdminsRecord
    implements Built<AdminsRecord, AdminsRecordBuilder> {
  static Serializer<AdminsRecord> get serializer => _$adminsRecordSerializer;

  @nullable
  String get email;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AdminsRecordBuilder builder) => builder
    ..email = ''
    ..uid = ''
    ..photoUrl = ''
    ..phoneNumber = ''
    ..displayName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('admins');

  static Stream<AdminsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AdminsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AdminsRecord._();
  factory AdminsRecord([void Function(AdminsRecordBuilder) updates]) =
      _$AdminsRecord;

  static AdminsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAdminsRecordData({
  String email,
  String uid,
  DateTime createdTime,
  String photoUrl,
  String phoneNumber,
  String displayName,
}) =>
    serializers.toFirestore(
        AdminsRecord.serializer,
        AdminsRecord((a) => a
          ..email = email
          ..uid = uid
          ..createdTime = createdTime
          ..photoUrl = photoUrl
          ..phoneNumber = phoneNumber
          ..displayName = displayName));
