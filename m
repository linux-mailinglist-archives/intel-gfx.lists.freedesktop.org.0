Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B60830722
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 14:34:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2409910E114;
	Wed, 17 Jan 2024 13:33:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1168F10E114;
 Wed, 17 Jan 2024 13:33:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915=3A_move_interrup?=
 =?utf-8?q?t_save/restore_into_vblank_section_helpers?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Date: Wed, 17 Jan 2024 13:33:48 -0000
Message-ID: <170549842806.536878.10004126521524457379@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240117094613.1401573-1-luciano.coelho@intel.com>
In-Reply-To: <20240117094613.1401573-1-luciano.coelho@intel.com>
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

Series: drm/i915: move interrupt save/restore into vblank section helpers
URL   : https://patchwork.freedesktop.org/series/128869/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_vblank.o
In file included from ./include/linux/bitops.h:7,
                 from ./include/linux/kernel.h:23,
                 from ./arch/x86/include/asm/percpu.h:27,
                 from ./arch/x86/include/asm/current.h:10,
                 from ./include/linux/mutex.h:14,
                 from ./include/linux/notifier.h:14,
                 from ./include/linux/pm_qos.h:16,
                 from ./drivers/gpu/drm/i915/i915_drv.h:35,
                 from drivers/gpu/drm/i915/display/intel_vblank.c:6:
drivers/gpu/drm/i915/display/intel_vblank.c: In function ‘intel_vblank_section_enter’:
drivers/gpu/drm/i915/display/intel_vblank.c:282:17: error: ‘irqflags’ undeclared (first use in this function); did you mean ‘ifr_flags’?
  282 |  local_irq_save(irqflags);
      |                 ^~~~~~~~
./include/linux/typecheck.h:11:9: note: in definition of macro ‘typecheck’
   11 |  typeof(x) __dummy2; \
      |         ^
./include/linux/irqflags.h:222:3: note: in expansion of macro ‘raw_local_irq_save’
  222 |   raw_local_irq_save(flags);  \
      |   ^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_vblank.c:282:2: note: in expansion of macro ‘local_irq_save’
  282 |  local_irq_save(irqflags);
      |  ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_vblank.c:282:17: note: each undeclared identifier is reported only once for each function it appears in
  282 |  local_irq_save(irqflags);
      |                 ^~~~~~~~
./include/linux/typecheck.h:11:9: note: in definition of macro ‘typecheck’
   11 |  typeof(x) __dummy2; \
      |         ^
./include/linux/irqflags.h:222:3: note: in expansion of macro ‘raw_local_irq_save’
  222 |   raw_local_irq_save(flags);  \
      |   ^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_vblank.c:282:2: note: in expansion of macro ‘local_irq_save’
  282 |  local_irq_save(irqflags);
      |  ^~~~~~~~~~~~~~
./include/linux/typecheck.h:12:18: error: comparison of distinct pointer types lacks a cast [-Werror]
   12 |  (void)(&__dummy == &__dummy2); \
      |                  ^~
./include/linux/irqflags.h:178:3: note: in expansion of macro ‘typecheck’
  178 |   typecheck(unsigned long, flags); \
      |   ^~~~~~~~~
./include/linux/irqflags.h:222:3: note: in expansion of macro ‘raw_local_irq_save’
  222 |   raw_local_irq_save(flags);  \
      |   ^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_vblank.c:282:2: note: in expansion of macro ‘local_irq_save’
  282 |  local_irq_save(irqflags);
      |  ^~~~~~~~~~~~~~
./include/linux/typecheck.h:12:18: error: comparison of distinct pointer types lacks a cast [-Werror]
   12 |  (void)(&__dummy == &__dummy2); \
      |                  ^~
./include/linux/irqflags.h:194:3: note: in expansion of macro ‘typecheck’
  194 |   typecheck(unsigned long, flags); \
      |   ^~~~~~~~~
./include/linux/irqflags.h:223:8: note: in expansion of macro ‘raw_irqs_disabled_flags’
  223 |   if (!raw_irqs_disabled_flags(flags)) \
      |        ^~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_vblank.c:282:2: note: in expansion of macro ‘local_irq_save’
  282 |  local_irq_save(irqflags);
      |  ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_vblank.c: In function ‘intel_vblank_section_exit’:
drivers/gpu/drm/i915/display/intel_vblank.c:294:20: error: ‘irqflags’ undeclared (first use in this function); did you mean ‘ifr_flags’?
  294 |  local_irq_restore(irqflags);
      |                    ^~~~~~~~
./include/linux/typecheck.h:11:9: note: in definition of macro ‘typecheck’
   11 |  typeof(x) __dummy2; \
      |         ^
./include/linux/irqflags.h:229:8: note: in expansion of macro ‘raw_irqs_disabled_flags’
  229 |   if (!raw_irqs_disabled_flags(flags)) \
      |        ^~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_vblank.c:294:2: note: in expansion of macro ‘local_irq_restore’
  294 |  local_irq_restore(irqflags);
      |  ^~~~~~~~~~~~~~~~~
./include/linux/typecheck.h:12:18: error: comparison of distinct pointer types lacks a cast [-Werror]
   12 |  (void)(&__dummy == &__dummy2); \
      |                  ^~
./include/linux/irqflags.h:194:3: note: in expansion of macro ‘typecheck’
  194 |   typecheck(unsigned long, flags); \
      |   ^~~~~~~~~
./include/linux/irqflags.h:229:8: note: in expansion of macro ‘raw_irqs_disabled_flags’
  229 |   if (!raw_irqs_disabled_flags(flags)) \
      |        ^~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_vblank.c:294:2: note: in expansion of macro ‘local_irq_restore’
  294 |  local_irq_restore(irqflags);
      |  ^~~~~~~~~~~~~~~~~
./include/linux/typecheck.h:12:18: error: comparison of distinct pointer types lacks a cast [-Werror]
   12 |  (void)(&__dummy == &__dummy2); \
      |                  ^~
./include/linux/irqflags.h:183:3: note: in expansion of macro ‘typecheck’
  183 |   typecheck(unsigned long, flags); \
      |   ^~~~~~~~~
./include/linux/irqflags.h:231:3: note: in expansion of macro ‘raw_local_irq_restore’
  231 |   raw_local_irq_restore(flags);  \
      |   ^~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_vblank.c:294:2: note: in expansion of macro ‘local_irq_restore’
  294 |  local_irq_restore(irqflags);
      |  ^~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_vblank.c: In function ‘i915_get_crtc_scanoutpos’:
drivers/gpu/drm/i915/display/intel_vblank.c:309:16: error: unused variable ‘irqflags’ [-Werror=unused-variable]
  309 |  unsigned long irqflags;
      |                ^~~~~~~~
drivers/gpu/drm/i915/display/intel_vblank.c: In function ‘intel_get_crtc_scanline’:
drivers/gpu/drm/i915/display/intel_vblank.c:441:16: error: unused variable ‘irqflags’ [-Werror=unused-variable]
  441 |  unsigned long irqflags;
      |                ^~~~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/display/intel_vblank.o] Error 1
make[5]: *** [scripts/Makefile.build:480: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:480: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:480: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:480: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1911: .] Error 2
make: *** [Makefile:234: __sub-make] Error 2
Build failed, no error log produced


