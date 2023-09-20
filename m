Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8677A71D7
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 07:21:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 527F110E055;
	Wed, 20 Sep 2023 05:21:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3972110E055;
 Wed, 20 Sep 2023 05:21:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 30E59A0093;
 Wed, 20 Sep 2023 05:21:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shekhar Chauhan" <shekhar.chauhan@intel.com>
Date: Wed, 20 Sep 2023 05:21:14 -0000
Message-ID: <169518727416.6466.17551062883505170736@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230920040547.181861-1-shekhar.chauhan@intel.com>
In-Reply-To: <20230920040547.181861-1-shekhar.chauhan@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Add_Wa=5F18028616096?=
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

Series: drm/i915: Add Wa_18028616096
URL   : https://patchwork.freedesktop.org/series/123951/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/gt/intel_workarounds.o
In file included from ./include/linux/container_of.h:5,
                 from ./include/linux/plist.h:76,
                 from ./include/linux/pm_qos.h:15,
                 from ./drivers/gpu/drm/i915/i915_drv.h:35,
                 from drivers/gpu/drm/i915/gt/intel_workarounds.c:6:
drivers/gpu/drm/i915/gt/intel_workarounds.c: In function ‘general_render_compute_wa_init’:
./include/linux/build_bug.h:16:51: error: negative width in bit-field ‘<anonymous>’
   16 | #define BUILD_BUG_ON_ZERO(e) ((int)(sizeof(struct { int:(-!!(e)); })))
      |                                                   ^
./drivers/gpu/drm/i915/i915_reg_defs.h:22:9: note: in expansion of macro ‘BUILD_BUG_ON_ZERO’
   22 |         BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&  \
      |         ^~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_gt_regs.h:1232:40: note: in expansion of macro ‘REG_BIT’
 1232 | #define   UGM_FRAGMENT_THRESHOLD_TO_3  REG_BIT(58)
      |                                        ^~~~~~~
drivers/gpu/drm/i915/gt/intel_workarounds.c:2919:43: note: in expansion of macro ‘UGM_FRAGMENT_THRESHOLD_TO_3’
 2919 |   wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, UGM_FRAGMENT_THRESHOLD_TO_3);
      |                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~
make[6]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/gt/intel_workarounds.o] Error 1
make[5]: *** [scripts/Makefile.build:480: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:480: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:480: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:480: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1913: .] Error 2
make: *** [Makefile:234: __sub-make] Error 2
Build failed, no error log produced


