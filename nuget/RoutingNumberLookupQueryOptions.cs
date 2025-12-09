using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.RoutingNumberLookup
{
    /// <summary>
    /// Query options for the Routing Number Lookup API
    /// </summary>
    public class RoutingNumberLookupQueryOptions
    {
        /// <summary>
        /// The routing number to lookup information about
        /// Example: 121000358
        /// </summary>
        [JsonProperty("routing")]
        public string Routing { get; set; }
    }
}
