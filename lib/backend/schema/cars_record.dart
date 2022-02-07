import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cars_record.g.dart';

abstract class CarsRecord implements Built<CarsRecord, CarsRecordBuilder> {
  static Serializer<CarsRecord> get serializer => _$carsRecordSerializer;

  @nullable
  String get name;

  @nullable
  int get price;

  @nullable
  @BuiltValueField(wireName: 'apolice_number')
  String get apoliceNumber;

  @nullable
  String get image;

  @nullable
  String get inspection;

  @nullable
  String get maintenance;

  @nullable
  String get availability;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CarsRecordBuilder builder) => builder
    ..name = ''
    ..price = 0
    ..apoliceNumber = ''
    ..image = ''
    ..inspection = ''
    ..maintenance = ''
    ..availability = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cars');

  static Stream<CarsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CarsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CarsRecord._();
  factory CarsRecord([void Function(CarsRecordBuilder) updates]) = _$CarsRecord;

  static CarsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCarsRecordData({
  String name,
  int price,
  String apoliceNumber,
  String image,
  String inspection,
  String maintenance,
  String availability,
}) =>
    serializers.toFirestore(
        CarsRecord.serializer,
        CarsRecord((c) => c
          ..name = name
          ..price = price
          ..apoliceNumber = apoliceNumber
          ..image = image
          ..inspection = inspection
          ..maintenance = maintenance
          ..availability = availability));
