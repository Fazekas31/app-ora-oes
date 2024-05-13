import 'package:app_oracoes/screens/inicial_screen.dart';
import 'package:flutter/material.dart';
import 'package:nhost_dart/nhost_dart.dart';
import 'package:nhost_flutter_auth/nhost_flutter_auth.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';

void main() async {
  final nhost = NhostClient(
      serviceUrls: ServiceUrls(
          authUrl: 'https://mndfdrqkrknemcyfsfge.auth.sa-east-1.nhost.run/v1',
          graphqlUrl:
              'https://mndfdrqkrknemcyfsfge.graphql.sa-east-1.nhost.run/v1',
          functionsUrl:
              'https://mndfdrqkrknemcyfsfge.functions.sa-east-1.nhost.run/v1',
          storageUrl:
              'https://mndfdrqkrknemcyfsfge.storage.sa-east-1.nhost.run/v1')
      // subdomain: Subdomain(
      //   region: 'sa-east-1',
      //   subdomain: 'mndfdrqkrknemcyfsfge',
      );

  runApp(const MaterialApp(
    home: InicalScreen(),
  ));
}
