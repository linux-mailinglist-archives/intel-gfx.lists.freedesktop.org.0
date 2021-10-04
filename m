Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7522A421246
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 17:07:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D418F6EA19;
	Mon,  4 Oct 2021 15:06:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 66A5C6EA13;
 Mon,  4 Oct 2021 15:06:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5CCF6A363C;
 Mon,  4 Oct 2021 15:06:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Len Baker" <len.baker@gmx.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 04 Oct 2021 15:06:56 -0000
Message-ID: <163336001635.1480.8607663479789072755@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211003104258.18550-1-len.baker@gmx.com>
In-Reply-To: <20211003104258.18550-1-len.baker@gmx.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Prefer_struct=5Fsize_over_open_coded_arithmetic?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Prefer struct_size over open coded arithmetic
URL   : https://patchwork.freedesktop.org/series/95408/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/i915_syncmap.o
drivers/gpu/drm/i915/i915_syncmap.c:86:3: error: expected specifier-qualifier-list before ‘DECLARE_FLEX_ARRAY’
   DECLARE_FLEX_ARRAY(u32, seqno);
   ^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_syncmap.c: In function ‘__sync_seqno’:
drivers/gpu/drm/i915/i915_syncmap.c:106:10: error: ‘struct i915_syncmap’ has no member named ‘seqno’
  return p->seqno;
          ^~
drivers/gpu/drm/i915/i915_syncmap.c: In function ‘__sync_child’:
drivers/gpu/drm/i915/i915_syncmap.c:112:10: error: ‘struct i915_syncmap’ has no member named ‘child’
  return p->child;
          ^~
In file included from ./include/linux/slab.h:16,
                 from drivers/gpu/drm/i915/i915_syncmap.c:25:
drivers/gpu/drm/i915/i915_syncmap.c: In function ‘__sync_alloc_leaf’:
./include/linux/overflow.h:194:18: error: ‘struct i915_syncmap’ has no member named ‘seqno’
       sizeof(*(p)->member) + __must_be_array((p)->member),\
                  ^~
drivers/gpu/drm/i915/i915_syncmap.c:207:14: note: in expansion of macro ‘struct_size’
  p = kmalloc(struct_size(p, seqno, KSYNCMAP), GFP_KERNEL);
              ^~~~~~~~~~~
In file included from ./include/linux/bits.h:22,
                 from ./include/linux/ratelimit_types.h:5,
                 from ./include/linux/printk.h:10,
                 from ./include/asm-generic/bug.h:22,
                 from ./arch/x86/include/asm/bug.h:84,
                 from ./include/linux/bug.h:5,
                 from ./include/linux/mmdebug.h:5,
                 from ./include/linux/gfp.h:5,
                 from ./include/linux/slab.h:15,
                 from drivers/gpu/drm/i915/i915_syncmap.c:25:
./include/linux/overflow.h:194:49: error: ‘struct i915_syncmap’ has no member named ‘seqno’
       sizeof(*(p)->member) + __must_be_array((p)->member),\
                                                 ^~
./include/linux/build_bug.h:16:62: note: in definition of macro ‘BUILD_BUG_ON_ZERO’
 #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
                                                              ^
./include/linux/compiler.h:258:46: note: in expansion of macro ‘__same_type’
 #define __must_be_array(a) BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
                                              ^~~~~~~~~~~
./include/linux/overflow.h:194:30: note: in expansion of macro ‘__must_be_array’
       sizeof(*(p)->member) + __must_be_array((p)->member),\
                              ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_syncmap.c:207:14: note: in expansion of macro ‘struct_size’
  p = kmalloc(struct_size(p, seqno, KSYNCMAP), GFP_KERNEL);
              ^~~~~~~~~~~
./include/linux/overflow.h:194:49: error: ‘struct i915_syncmap’ has no member named ‘seqno’
       sizeof(*(p)->member) + __must_be_array((p)->member),\
                                                 ^~
./include/linux/build_bug.h:16:62: note: in definition of macro ‘BUILD_BUG_ON_ZERO’
 #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
                                                              ^
./include/linux/compiler.h:258:46: note: in expansion of macro ‘__same_type’
 #define __must_be_array(a) BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
                                              ^~~~~~~~~~~
./include/linux/overflow.h:194:30: note: in expansion of macro ‘__must_be_array’
       sizeof(*(p)->member) + __must_be_array((p)->member),\
                              ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_syncmap.c:207:14: note: in expansion of macro ‘struct_size’
  p = kmalloc(struct_size(p, seqno, KSYNCMAP), GFP_KERNEL);
              ^~~~~~~~~~~
./include/linux/build_bug.h:16:51: error: bit-field ‘<anonymous>’ width not an integer constant
 #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
                                                   ^
./include/linux/compiler.h:258:28: note: in expansion of macro ‘BUILD_BUG_ON_ZERO’
 #define __must_be_array(a) BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
                            ^~~~~~~~~~~~~~~~~
./include/linux/overflow.h:194:30: note: in expansion of macro ‘__must_be_array’
       sizeof(*(p)->member) + __must_be_array((p)->member),\
                              ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_syncmap.c:207:14: note: in expansion of macro ‘struct_size’
  p = kmalloc(struct_size(p, seqno, KSYNCMAP), GFP_KERNEL);
              ^~~~~~~~~~~
In file included from ./include/linux/slab.h:16,
                 from drivers/gpu/drm/i915/i915_syncmap.c:25:
drivers/gpu/drm/i915/i915_syncmap.c: In function ‘__sync_set’:
./include/linux/overflow.h:194:18: error: ‘struct i915_syncmap’ has no member named ‘child’
       sizeof(*(p)->member) + __must_be_array((p)->member),\
                  ^~
drivers/gpu/drm/i915/i915_syncmap.c:289:19: note: in expansion of macro ‘struct_size’
    next = kzalloc(struct_size(next, child, KSYNCMAP),
                   ^~~~~~~~~~~
In file included from ./include/linux/bits.h:22,
                 from ./include/linux/ratelimit_types.h:5,
                 from ./include/linux/printk.h:10,
                 from ./include/asm-generic/bug.h:22,
                 from ./arch/x86/include/asm/bug.h:84,
                 from ./include/linux/bug.h:5,
                 from ./include/linux/mmdebug.h:5,
                 from ./include/linux/gfp.h:5,
                 from ./include/linux/slab.h:15,
                 from drivers/gpu/drm/i915/i915_syncmap.c:25:
./include/linux/overflow.h:194:49: error: ‘struct i915_syncmap’ has no member named ‘child’
       sizeof(*(p)->member) + __must_be_array((p)->member),\
                                                 ^~
./include/linux/build_bug.h:16:62: note: in definition of macro ‘BUILD_BUG_ON_ZERO’
 #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
                                                              ^
./include/linux/compiler.h:258:46: note: in expansion of macro ‘__same_type’
 #define __must_be_array(a) BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
                                              ^~~~~~~~~~~
./include/linux/overflow.h:194:30: note: in expansion of macro ‘__must_be_array’
       sizeof(*(p)->member) + __must_be_array((p)->member),\
                              ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_syncmap.c:289:19: note: in expansion of macro ‘struct_size’
    next = kzalloc(struct_size(next, child, KSYNCMAP),
                   ^~~~~~~~~~~
./include/linux/overflow.h:194:49: error: ‘struct i915_syncmap’ has no member named ‘child’
       sizeof(*(p)->member) + __must_be_array((p)->member),\
                                                 ^~
./include/linux/build_bug.h:16:62: note: in definition of macro ‘BUILD_BUG_ON_ZERO’
 #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
                                                              ^
./include/linux/compiler.h:258:46: note: in expansion of macro ‘__same_type’
 #define __must_be_array(a) BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
                                              ^~~~~~~~~~~
./include/linux/overflow.h:194:30: note: in expansion of macro ‘__must_be_array’
       sizeof(*(p)->member) + __must_be_array((p)->member),\
                              ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_syncmap.c:289:19: note: in expansion of macro ‘struct_size’
    next = kzalloc(struct_size(next, child, KSYNCMAP),
                   ^~~~~~~~~~~
./include/linux/build_bug.h:16:51: error: bit-field ‘<anonymous>’ width not an integer constant
 #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
                                                   ^
./include/linux/compiler.h:258:28: note: in expansion of macro ‘BUILD_BUG_ON_ZERO’
 #define __must_be_array(a) BUILD_BUG_ON_ZERO(__same_type((a), &(a)[0]))
                            ^~~~~~~~~~~~~~~~~
./include/linux/overflow.h:194:30: note: in expansion of macro ‘__must_be_array’
       sizeof(*(p)->member) + __must_be_array((p)->member),\
                              ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_syncmap.c:289:19: note: in expansion of macro ‘struct_size’
    next = kzalloc(struct_size(next, child, KSYNCMAP),
                   ^~~~~~~~~~~
drivers/gpu/drm/i915/i915_syncmap.c: In function ‘__sync_child’:
drivers/gpu/drm/i915/i915_syncmap.c:113:1: error: control reaches end of non-void function [-Werror=return-type]
 }
 ^
drivers/gpu/drm/i915/i915_syncmap.c: In function ‘__sync_seqno’:
drivers/gpu/drm/i915/i915_syncmap.c:107:1: error: control reaches end of non-void function [-Werror=return-type]
 }
 ^
cc1: all warnings being treated as errors
scripts/Makefile.build:277: recipe for target 'drivers/gpu/drm/i915/i915_syncmap.o' failed
make[4]: *** [drivers/gpu/drm/i915/i915_syncmap.o] Error 1
scripts/Makefile.build:540: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:540: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:540: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1868: recipe for target 'drivers' failed
make: *** [drivers] Error 2


