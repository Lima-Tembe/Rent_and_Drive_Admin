import '../add_func/add_func_widget.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../view_func/view_func_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class FuncionarioWidget extends StatefulWidget {
  const FuncionarioWidget({Key key}) : super(key: key);

  @override
  _FuncionarioWidgetState createState() => _FuncionarioWidgetState();
}

class _FuncionarioWidgetState extends State<FuncionarioWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: Color(0xFF333366),
        elevation: 8,
        child: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddFuncWidget(),
              ),
            );
          },
          child: Icon(
            Icons.add,
            color: Color(0xFFE8EAF6),
            size: 24,
          ),
        ),
      ),
      body: SafeArea(
        child: StreamBuilder<List<EmployeeRecord>>(
          stream: queryEmployeeRecord(),
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
            List<EmployeeRecord> columnEmployeeRecordList = snapshot.data;
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: List.generate(columnEmployeeRecordList.length,
                    (columnIndex) {
                  final columnEmployeeRecord =
                      columnEmployeeRecordList[columnIndex];
                  return Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ViewFuncWidget(
                                    record: columnEmployeeRecord,
                                  ),
                                ),
                              );
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      child: Hero(
                                        tag: valueOrDefault<String>(
                                          columnEmployeeRecord.photoUrl,
                                          'https://media.istockphoto.com/vectors/profile-picture-vector-illustration-vector-id587805156?b=1&k=20&m=587805156&s=612x612&w=0&h=q0OpJcDkcnV-Ob_a2_kF9jdaV-bowOxR4yQinsDUM9Q=' +
                                              '$columnIndex',
                                        ),
                                        transitionOnUserGestures: true,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              columnEmployeeRecord.photoUrl,
                                              'https://media.istockphoto.com/vectors/profile-picture-vector-illustration-vector-id587805156?b=1&k=20&m=587805156&s=612x612&w=0&h=q0OpJcDkcnV-Ob_a2_kF9jdaV-bowOxR4yQinsDUM9Q=',
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
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
                                              columnEmployeeRecord.displayName,
                                              style: FlutterFlowTheme.subtitle1
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF15212B),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              columnEmployeeRecord.funcao,
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF8B97A2),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 8, 0),
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
      ),
    );
  }
}
