# -*- coding: utf-8 -*-
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
require 'serverspec'
set :backend, :exec

bins = ['/opt/rbenv/shims/ruby',
        '/opt/rbenv/shims/gem',
        '/opt/rbenv/shims/bundler',
        '/opt/rbenv/versions/1.9.3-p547/bin/bundler',
        '/opt/rbenv/versions/2.0.0-p598/bin/bundler',
        '/opt/rbenv/versions/2.1.0/bin/bundler',
        '/opt/rbenv/versions/2.1.5/bin/bundler']

bins.each do |command|
  describe file(command) do
    it { should be_file }
    it { should be_executable }
  end
end

describe file('/opt/rbenv/version') do
  its(:content) { should match(/1.9.3-p547/) }
end
