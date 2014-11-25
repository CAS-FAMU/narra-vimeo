#
# Copyright (C) 2014 CAS / FAMU
#
# This file is part of Narra Core.
#
# Narra Core is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Narra Core is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Narra Core. If not, see <http://www.gnu.org/licenses/>.
#
# Authors:
#

require 'spec_helper'

describe Narra::Vimeo::Connector do
  before(:each) do
    # test url
    @url = 'http://www.vimeo.com'
  end

  it 'can be instantiated' do
    expect(Narra::Vimeo::Connector.new(@url)).to be_an_instance_of(Narra::Vimeo::Connector)
  end

  it 'should have accessible fields' do
    expect(Narra::Vimeo::Connector.identifier).to match(:vimeo)
    expect(Narra::Vimeo::Connector.title).to match('NARRA Vimeo Connector')
    expect(Narra::Vimeo::Connector.description).to match('Allows NARRA to connects to the Vimeo sources')
  end
end