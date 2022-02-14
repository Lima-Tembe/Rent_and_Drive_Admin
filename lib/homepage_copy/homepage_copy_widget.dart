import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import '../add_car/add_car_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../login/login_widget.dart';
import '../statitics/statitics_widget.dart';
import '../view_car/view_car_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomepageCopyWidget extends StatefulWidget {
  const HomepageCopyWidget({Key key}) : super(key: key);

  @override
  _HomepageCopyWidgetState createState() => _HomepageCopyWidgetState();
}

class _HomepageCopyWidgetState extends State<HomepageCopyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var qrcodeData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF333366),
        automaticallyImplyLeading: true,
        title: Text(
          'Rent & Drive',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Lexend Deca',
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.qr_code_scanner,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              await scanQRcode();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  qrcodeData == "invoice.info.number"
                      ? "Recibo válido"
                      : "Recibo inválido",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                duration: Duration(milliseconds: 5000),
                backgroundColor: qrcodeData == "invoice.info.number"
                    ? Colors.green
                    : Colors.redAccent,
              ));
              setState(() {});
            },
          ),
        ],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddCarWidget(),
            ),
          );
        },
        backgroundColor: Color(0xFF333366),
        elevation: 8,
        child: Icon(
          Icons.add,
          color: Color(0xFFE8EAF6),
          size: 24,
        ),
      ),
      drawer: Drawer(
        elevation: 16,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 52, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StatiticsWidget(),
                    ),
                  );
                },
                child: ListTile(
                  leading: Icon(
                    Icons.bar_chart,
                  ),
                  title: Text(
                    'Estatísticas',
                    style: FlutterFlowTheme.title3,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await signOut();
                    await Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginWidget(),
                      ),
                      (r) => false,
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.exit_to_app_rounded,
                      color: Color(0xFFEF5350),
                    ),
                    title: Text(
                      'Sair',
                      style: FlutterFlowTheme.title3.override(
                        fontFamily: 'Poppins',
                        color: Colors.red,
                      ),
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 44, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Olá,',
                            style: FlutterFlowTheme.title1.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF090F13),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                            child: AuthUserStreamWidget(
                              child: Text(
                                currentUserDisplayName,
                                style: FlutterFlowTheme.title1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF4B39EF),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Text(
                              'Administrador',
                              style: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF8B97A2),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              StreamBuilder<List<CarsRecord>>(
                stream: queryCarsRecord(
                  queryBuilder: (carsRecord) =>
                      carsRecord.orderBy('availability'),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: SpinKitCircle(
                          color: Color(0xFF333366),
                          size: 50,
                        ),
                      ),
                    );
                  }
                  List<CarsRecord> columnCarsRecordList = snapshot.data;
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(columnCarsRecordList.length,
                          (columnIndex) {
                        final columnCarsRecord =
                            columnCarsRecordList[columnIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ViewCarWidget(
                                        carRef: columnCarsRecord,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 8, 8, 8),
                                            child: Hero(
                                              tag: valueOrDefault<String>(
                                                columnCarsRecord.image,
                                                'https://www.colorado.edu/staffcouncil/sites/default/files/styles/medium/public/article-thumbnail/car_icon_2.png?itok=87MHaZpJ' +
                                                    '$columnIndex',
                                              ),
                                              transitionOnUserGestures: true,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.network(
                                                  valueOrDefault<String>(
                                                    columnCarsRecord.image,
                                                    'https://www.colorado.edu/staffcouncil/sites/default/files/styles/medium/public/article-thumbnail/car_icon_2.png?itok=87MHaZpJ',
                                                  ),
                                                  width: 74,
                                                  height: 74,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 1, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    columnCarsRecord.name,
                                                    style: FlutterFlowTheme
                                                        .subtitle1
                                                        .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF15212B),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    formatNumber(
                                                      columnCarsRecord.price,
                                                      formatType:
                                                          FormatType.decimal,
                                                      decimalType:
                                                          DecimalType.automatic,
                                                      currency: 'MZN ',
                                                    ),
                                                    style: FlutterFlowTheme
                                                        .bodyText2
                                                        .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF8B97A2),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 8, 0),
                                              child: Icon(
                                                Icons.chevron_right_outlined,
                                                color: Color(0xFF95A1AC),
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> scanQRcode() async {
    try {
      final qrcodeData = await FlutterBarcodeScanner.scanBarcode(
        "#333366",
        "Cancelar",
        true,
        ScanMode.QR,
      );
      if (!mounted) return;
      setState(() {
        this.qrcodeData = qrcodeData;
      });
    } on PlatformException {
      qrcodeData = '';
    }
  }
}
