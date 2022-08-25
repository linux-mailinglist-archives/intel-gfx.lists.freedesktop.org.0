Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 040DE5A092E
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 08:54:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC301D83D7;
	Thu, 25 Aug 2022 06:53:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BB92FD83AF;
 Thu, 25 Aug 2022 06:53:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BC901A00E8;
 Thu, 25 Aug 2022 06:53:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 25 Aug 2022 06:53:47 -0000
Message-ID: <166141042774.24645.16585457131957935637@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220825064701.768595-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20220825064701.768595-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Remove_frontbuffer_tracking_from_gem=2E?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Remove frontbuffer tracking from gem.
URL   : https://patchwork.freedesktop.org/series/107715/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  LD [M]  drivers/gpu/drm/i915/i915.o
  LD [M]  drivers/gpu/drm/i915/kvmgt.o
  HDRTEST drivers/gpu/drm/i915/display/intel_frontbuffer.h
In file included from <command-line>:
./drivers/gpu/drm/i915/display/intel_frontbuffer.h:49:35: error: ‘struct intel_framebuffer’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
 void __intel_fb_invalidate(struct intel_framebuffer *front,
                                   ^~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/display/intel_frontbuffer.h:64:56: error: ‘struct intel_framebuffer’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
 static inline bool intel_frontbuffer_invalidate(struct intel_framebuffer *fb,
                                                        ^~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/display/intel_frontbuffer.h: In function ‘intel_frontbuffer_invalidate’:
./drivers/gpu/drm/i915/display/intel_frontbuffer.h:72:36: error: dereferencing pointer to incomplete type ‘struct intel_framebuffer’
  frontbuffer_bits = atomic_read(&fb->bits);
                                    ^~
./drivers/gpu/drm/i915/display/intel_frontbuffer.h:76:24: error: passing argument 1 of ‘__intel_fb_invalidate’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  __intel_fb_invalidate(fb, origin, frontbuffer_bits);
                        ^~
./drivers/gpu/drm/i915/display/intel_frontbuffer.h:49:54: note: expected ‘struct intel_framebuffer *’ but argument is of type ‘struct intel_framebuffer *’
 void __intel_fb_invalidate(struct intel_framebuffer *front,
                            ~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~
./drivers/gpu/drm/i915/display/intel_frontbuffer.h: At top level:
./drivers/gpu/drm/i915/display/intel_frontbuffer.h:80:30: error: ‘struct intel_framebuffer’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
 void __intel_fb_flush(struct intel_framebuffer *fb,
                              ^~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/display/intel_frontbuffer.h:92:51: error: ‘struct intel_framebuffer’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
 static inline void intel_frontbuffer_flush(struct intel_framebuffer *fb,
                                                   ^~~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/display/intel_frontbuffer.h: In function ‘intel_frontbuffer_flush’:
./drivers/gpu/drm/i915/display/intel_frontbuffer.h:100:36: error: dereferencing pointer to incomplete type ‘struct intel_framebuffer’
  frontbuffer_bits = atomic_read(&fb->bits);
                                    ^~
./drivers/gpu/drm/i915/display/intel_frontbuffer.h:104:19: error: passing argument 1 of ‘__intel_fb_flush’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  __intel_fb_flush(fb, origin, frontbuffer_bits);
                   ^~
./drivers/gpu/drm/i915/display/intel_frontbuffer.h:80:49: note: expected ‘struct intel_framebuffer *’ but argument is of type ‘struct intel_framebuffer *’
 void __intel_fb_flush(struct intel_framebuffer *fb,
                       ~~~~~~~~~~~~~~~~~~~~~~~~~~^~
./drivers/gpu/drm/i915/display/intel_frontbuffer.h: At top level:
./drivers/gpu/drm/i915/display/intel_frontbuffer.h:107:37: error: ‘struct intel_framebuffer’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
 void intel_frontbuffer_track(struct intel_framebuffer *old,
                                     ^~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
drivers/gpu/drm/i915/Makefile:361: recipe for target 'drivers/gpu/drm/i915/display/intel_frontbuffer.hdrtest' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_frontbuffer.hdrtest] Error 1
scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:465: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1853: recipe for target 'drivers' failed
make: *** [drivers] Error 2


