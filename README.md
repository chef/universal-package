# Universal Package

This is an [omnibus](https://github.com/chef/omnibus) project set up to create a MacOS Universal installer for [Chef Infra Client](https://www.chef.io/downloads/tools/infra-client).

## Requirements

The project needs to be built on macOS Intel or ARM system.

## Getting Started

1. Clone this repository to your workspace
1. Make sure you have Ruby installed on your system.
1. Update omnibus [configuration](https://github.com/chef/universal-package/blob/main/omnibus/omnibus.rb) to build locally. 
    * Uncomment `base_dir './local'`
    * Set `use_s3_caching` to `false`
    * Update `install_dir` to `"/tmp/#{name}"` in project [configuration](https://github.com/chef/universal-package/blob/main/omnibus/config/projects/universal-package.rb) if you cannot run `omnibus build universal-package` with `sudo`
1. Change directory `cd omnibus`
1. Run `omnibus build universal-package`
1. The wrapper installer will be created in `universal-package/pkg` folder.


## License

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
