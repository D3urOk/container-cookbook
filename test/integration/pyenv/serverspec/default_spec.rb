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

bins = ['/usr/local/pyenv/shims/pip',
        '/usr/local/pyenv/shims/python',
        '/usr/local/pyenv/shims/tox',
        '/usr/local/pyenv/versions/2.7.6/bin/tox',
        '/usr/local/pyenv/versions/3.3.3/bin/tox']

bins.each do |command|
  describe file(command) do
    it { should be_file }
    it { should be_executable }
  end
end

describe file('/usr/local/pyenv/version') do
  its(:content) { should match(/2.7.6/) }
end
