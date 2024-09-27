Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B58988BE8
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 23:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7AE610ED33;
	Fri, 27 Sep 2024 21:41:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1734F10ED33;
 Fri, 27 Sep 2024 21:41:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_gpu=3A_drm=3A_i915=3A_dis?=
 =?utf-8?q?play=3A_Avoid_null_values_intel=5Fplane=5Fatomic=5Fcheck=5Fwith?=
 =?utf-8?q?=5Fstate?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2024 21:41:45 -0000
Message-ID: <172747330508.1113320.9121339400146624392@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240927000146.50830-1-alessandro.zanni87@gmail.com>
In-Reply-To: <20240927000146.50830-1-alessandro.zanni87@gmail.com>
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

Series: gpu: drm: i915: display: Avoid null values intel_plane_atomic_check_with_state
URL   : https://patchwork.freedesktop.org/series/139197/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_atomic_plane.o
In file included from ./arch/x86/include/asm/bug.h:87,
                 from ./include/linux/bug.h:5,
                 from ./include/linux/thread_info.h:13,
                 from ./include/linux/spinlock.h:60,
                 from ./include/linux/wait.h:9,
                 from ./include/linux/dma-fence.h:17,
                 from ./include/linux/dma-fence-chain.h:13,
                 from drivers/gpu/drm/i915/display/intel_atomic_plane.c:34:
drivers/gpu/drm/i915/display/intel_atomic_plane.c: In function ‘intel_plane_atomic_check_with_state’:
drivers/gpu/drm/i915/display/intel_atomic_plane.c:632:25: error: ‘display’ undeclared (first use in this function)
  632 |         if (drm_WARN_ON(display->drm, new_plane_state->uapi.visible && !fb))
      |                         ^~~~~~~
./include/asm-generic/bug.h:106:31: note: in definition of macro ‘__WARN_printf’
  106 |                 __warn_printk(arg);                                     \
      |                               ^~~
./include/drm/drm_print.h:687:9: note: in expansion of macro ‘WARN’
  687 |         WARN(condition, "%s %s: [drm] " format,                         \
      |         ^~~~
./include/drm/drm_print.h:697:9: note: in expansion of macro ‘drm_WARN’
  697 |         drm_WARN((drm), (x), "%s",                                      \
      |         ^~~~~~~~
drivers/gpu/drm/i915/display/intel_atomic_plane.c:632:13: note: in expansion of macro ‘drm_WARN_ON’
  632 |         if (drm_WARN_ON(display->drm, new_plane_state->uapi.visible && !fb))
      |             ^~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_atomic_plane.c:632:25: note: each undeclared identifier is reported only once for each function it appears in
  632 |         if (drm_WARN_ON(display->drm, new_plane_state->uapi.visible && !fb))
      |                         ^~~~~~~
./include/asm-generic/bug.h:106:31: note: in definition of macro ‘__WARN_printf’
  106 |                 __warn_printk(arg);                                     \
      |                               ^~~
./include/drm/drm_print.h:687:9: note: in expansion of macro ‘WARN’
  687 |         WARN(condition, "%s %s: [drm] " format,                         \
      |         ^~~~
./include/drm/drm_print.h:697:9: note: in expansion of macro ‘drm_WARN’
  697 |         drm_WARN((drm), (x), "%s",                                      \
      |         ^~~~~~~~
drivers/gpu/drm/i915/display/intel_atomic_plane.c:632:13: note: in expansion of macro ‘drm_WARN_ON’
  632 |         if (drm_WARN_ON(display->drm, new_plane_state->uapi.visible && !fb))
      |             ^~~~~~~~~~~
make[6]: *** [scripts/Makefile.build:244: drivers/gpu/drm/i915/display/intel_atomic_plane.o] Error 1
make[5]: *** [scripts/Makefile.build:485: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:485: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:485: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:485: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1926: .] Error 2
make: *** [Makefile:224: __sub-make] Error 2
Build failed, no error log produced


