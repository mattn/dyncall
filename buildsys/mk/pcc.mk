#//////////////////////////////////////////////////////////////////////////////
#
# Copyright (c) 2010 Daniel Adler <dadler@uni-goettingen.de>, 
#                    Tassilo Philipp <tphilipp@potion-studios.com>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
#
#//////////////////////////////////////////////////////////////////////////////

CC = pcc
AS = $BUILD_ASM

#@@@.if $(BUILD_CONFIG) == "debug"
#@@@ add -g option or similar
#@@@.endif
CFLAGS   = $CFLAGS   -D__Plan9__
CXXFLAGS = $CXXFLAGS -D__Plan9__
CPPFLAGS = -D__Plan9__ -D__i386__ #@@@ remove that and make it dependent on $objtype, a Plan9 env var
ASFLAGS  = -D__Plan9__
