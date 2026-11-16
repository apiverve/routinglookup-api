# Routing Number Lookup API - Dart/Flutter Client

Routing Number Lookup is a bank routing number lookup and validation API for US ABA numbers. It checks the check digit, finds the bank name and state, identifies the routing type and Federal Reserve district, and says whether the number takes FedACH payments and Fedwire transfers, while paid plans add full street addresses, branch details, Fedwire and ACH directory details, and replacement numbers.

[![pub package](https://img.shields.io/pub/v/apiverve_routinglookup.svg)](https://pub.dev/packages/apiverve_routinglookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Routing Number Lookup API](https://apiverve.com/marketplace/routinglookup?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_routinglookup: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_routinglookup/apiverve_routinglookup.dart';

void main() async {
  final client = RoutinglookupClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'routing': '121000358'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "routing_number": "121000358",
    "office_code": "O",
    "record_type_code": "1",
    "new_routing_number": "000000000",
    "bank": "BANK OF AMERICA, N.A.",
    "address": "8001 VILLA PARK DRIVE",
    "city": "HENRICO",
    "state": "VA",
    "zip": "23228",
    "zip_extension": "0000",
    "country": "US",
    "federal_reserve_district": "San Francisco",
    "federal_reserve_district_number": 12,
    "federal_reserve_states": [
      "AK",
      "AS",
      "AZ",
      "CA",
      "GU",
      "HI",
      "ID",
      "MP",
      "NV",
      "OR",
      "UT",
      "WA"
    ],
    "address_in_district": false,
    "states_served": [
      "CA"
    ],
    "latitude": 37.621745,
    "longitude": -77.48896,
    "timezone": "America/New_York",
    "routing_type": "primary",
    "is_valid_checksum": true,
    "routing_analysis": {
      "is_head_office": true,
      "is_branch": false,
      "is_federal_reserve_bank": false,
      "is_active": true,
      "replaced_by": null
    }
  }
}
```

## API Reference

- **API Home:** [Routing Number Lookup API](https://apiverve.com/marketplace/routinglookup?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/routinglookup](https://docs.apiverve.com/ref/routinglookup?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
