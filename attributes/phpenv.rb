# -*- coding: utf-8 -*-
#
# Cookbook Name:: container
# Attribute:: phpenv
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

default['container']['phpenv']['versions'] = ['5.3.29', '5.4.35', '5.5.19']
default['container']['phpenv']['global'] = '5.3.29'
default['container']['phpenv']['pear_extensions'] = ['pecl/mongo']
default['container']['phpenv']['pyrus_extensions'] = ['pear/Archive_Tar-1.3.14',
                                                      'pear/PEAR']
default['container']['phpenv']['ini_config'] =
  ["date.timezone = 'Europe/Paris'"]
