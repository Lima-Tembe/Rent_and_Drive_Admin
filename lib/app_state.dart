import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _contindividualclient =
        prefs.getInt('ff_contindividualclient') ?? _contindividualclient;
    _resRef = prefs.getString('ff_resRef')?.ref ?? _resRef;
    _carRef = prefs.getString('ff_carRef')?.ref ?? _carRef;
  }

  SharedPreferences prefs;

  int _contindividualclient = 0;
  int get contindividualclient => _contindividualclient;
  set contindividualclient(int _value) {
    _contindividualclient = _value;
    prefs.setInt('ff_contindividualclient', _value);
  }

  DocumentReference _resRef;
  DocumentReference get resRef => _resRef;
  set resRef(DocumentReference _value) {
    _resRef = _value;
    prefs.setString('ff_resRef', _value.path);
  }

  DocumentReference _carRef;
  DocumentReference get carRef => _carRef;
  set carRef(DocumentReference _value) {
    _carRef = _value;
    prefs.setString('ff_carRef', _value.path);
  }
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
