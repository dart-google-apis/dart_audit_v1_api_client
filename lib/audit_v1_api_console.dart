library audit_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_audit_v1_api/src/console_client.dart';

import "package:google_audit_v1_api/audit_v1_api_client.dart";

/** Lets you access user activities in your enterprise made through various applications. */
class Audit extends Client with ConsoleClient {

  final oauth2.OAuth2Console auth;

  Audit([oauth2.OAuth2Console this.auth]);
}
