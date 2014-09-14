library audit_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_audit_v1_api/src/browser_client.dart';
import "package:google_audit_v1_api/audit_v1_api_client.dart";

/** Lets you access user activities in your enterprise made through various applications. */
@deprecated
class Audit extends Client with BrowserClient {

  final oauth.OAuth2 auth;

  Audit([oauth.OAuth2 this.auth]);
}
