#!/usr/bin/ruby
# Copyright © 2015 Dylan Baker
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, see <http://www.gnu.org/licenses/>.

# Hook that prevents git-ck commits from being pushed to remotes

EMPTY = '0000000000000000000000000000000000000000'

local_ref, local_sha, _, remote_sha = $stdin.read.split(' ')

if local_sha == EMPTY
  # If we're deleting a branch we don't care, just delete it
  exit(0)
elsif remote_sha == EMPTY
  # If pushing a new branch
  range = local_sha
else
  # If pushing to an existing branch
  range = "#{remote_sha}..#{local_sha}"
end

commit = %x(git rev-list -n 1 --grep "^git-ck:" "#{range}")
if !commit.split('\n').empty?
  $stderr.puts("Error: Found git-ck commit in #{local_ref}, not pushing")
  exit(1)
end

exit(0)

# vim: ft=ruby
