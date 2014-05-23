# openssl-fips cookbook

Installs/Configures OpenSSL from source with FIPS 140-2 mode enabled

# Usage

Include `recipe[openssl-fips]` in your run_list and override the
defaults you want changed.

# Attributes

### `['fips']['version']`

Version of the FIPS canister to build. Default is `2.0.5`

### `['openssl']['version']`

Version of the OpenSSL product to build. Default is `1.0.1g`

### `['openssl']['prefix']`

Directory in which to install the completed OpenSSL product.
Default is `/opt/openssl-1.0.1g`

### `['openssl']['configure_flags']`

Additional (non-FIPS) flags to pass to OpenSSL's configure.
Defaults to `%W[ shared ]`

# Recipes

## default

Compiles OpenSSL with the FIPS module, installs it, and enables fips_mode
by default in its `openssl.cnf`

# License and Author

Author:: [Matt Campbell][https://github.com/xenolinguist] (matthew.campbell@asynchrony.com)

Copyright:: 2014 Asynchrony

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
implied.
See the License for the specific language governing permissions and
limitations under the License.
