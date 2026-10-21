# Routing Number Lookup API - Ruby Gem

Routing Number Lookup is a bank routing number lookup API that verifies US ABA routing numbers to confirm bank names, states, and checksum validity. It identifies the routing type and Federal Reserve district, while paid plans add full street addresses, branch details, and replacement numbers.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_routinglookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_routinglookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_routinglookup'

# Initialize the client
client = APIVerve::Routinglookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ routing: "121000358" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ routing: "121000358" })
  puts response["data"]
rescue APIVerve::Routinglookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Routinglookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Routinglookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/routinglookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/routinglookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/routinglookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
