import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'prestataire_list_page_widget.dart' show PrestataireListPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PrestataireListPageModel
    extends FlutterFlowModel<PrestataireListPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in PrestataireListPage widget.
  List<CategoriesRow>? prestatairesList;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
