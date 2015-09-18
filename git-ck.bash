# Bash completions for git-ck
# Copyright © 2015 Dylan Baker

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, see <http://www.gnu.org/licenses/>.

# FIXME: This almost certainly is not distro safe, it works on Arch, and thats
#        a start
source /usr/share/git/completion/git-completion.bash


_git_ck()
{
    _git_checkout
}
