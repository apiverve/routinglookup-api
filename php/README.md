# Routing Number Lookup API - PHP Package

Routing Number Lookup is a bank routing number lookup API that verifies US ABA routing numbers to confirm bank names, states, and checksum validity. It identifies the routing type and Federal Reserve district, while paid plans add full street addresses, branch details, and replacement numbers.

## Installation

Install via Composer:

```bash
composer require apiverve/routinglookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Routinglookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['routing' => '121000358']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Routinglookup\Client;
use APIVerve\Routinglookup\Exceptions\APIException;
use APIVerve\Routinglookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['routing' => '121000358']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/routinglookup?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/routinglookup?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/routinglookup?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
