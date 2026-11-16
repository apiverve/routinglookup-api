/// Routing Number Lookup API client for Dart/Flutter
///
/// Routing Number Lookup is a bank routing number lookup and validation API for US ABA numbers. It checks the check digit, finds the bank name and state, identifies the routing type and Federal Reserve district, and says whether the number takes FedACH payments and Fedwire transfers, while paid plans add full street addresses, branch details, Fedwire and ACH directory details, and replacement numbers.
///
/// For more information, visit: https://apiverve.com/marketplace/routinglookup?utm_source=dart&utm_medium=referral&utm_content=readme
library apiverve_routinglookup;

export 'src/client.dart';
export 'src/models.dart';
