Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6267A917D
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 06:41:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA45510E4B0;
	Thu, 21 Sep 2023 04:41:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1B32910E4B0;
 Thu, 21 Sep 2023 04:41:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F422A00CC;
 Thu, 21 Sep 2023 04:41:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shekhar Chauhan" <shekhar.chauhan@intel.com>
Date: Thu, 21 Sep 2023 04:41:49 -0000
Message-ID: <169527130903.7233.3647143930575674628@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230921042727.362710-1-shekhar.chauhan@intel.com>
In-Reply-To: <20230921042727.362710-1-shekhar.chauhan@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Add_Wa=5F18028616096_=28rev2=29?=
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

Series: drm/i915: Add Wa_18028616096 (rev2)
URL   : https://patchwork.freedesktop.org/series/123951/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/gt/intel_workarounds.o
In file included from ./drivers/gpu/drm/i915/intel_uncore.h:34,
                 from ./drivers/gpu/drm/i915/gt/intel_engine_types.h:26,
                 from ./drivers/gpu/drm/i915/gt/intel_context_types.h:18,
                 from ./drivers/gpu/drm/i915/gem/i915_gem_context_types.h:20,
                 from ./drivers/gpu/drm/i915/i915_drv.h:42,
                 from drivers/gpu/drm/i915/gt/intel_workarounds.c:6:
drivers/gpu/drm/i915/gt/intel_workarounds.c: In function ‘general_render_compute_wa_init’:
./drivers/gpu/drm/i915/i915_reg_defs.h:273:25: error: incompatible type for argument 3 of ‘wa_mcr_write_or’
  273 | #define MCR_REG(offset) ((const i915_mcr_reg_t){ .reg = (offset) })
      |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      |                         |
      |                         i915_mcr_reg_t {aka const struct <anonymous>}
drivers/gpu/drm/i915/gt/intel_gt_regs.h:1235:40: note: in expansion of macro ‘MCR_REG’
 1235 | #define   UGM_FRAGMENT_THRESHOLD_TO_3  MCR_REG(58 - 32)
      |                                        ^~~~~~~
drivers/gpu/drm/i915/gt/intel_workarounds.c:2919:47: note: in expansion of macro ‘UGM_FRAGMENT_THRESHOLD_TO_3’
 2919 |   wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, UGM_FRAGMENT_THRESHOLD_TO_3);
      |                                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_workarounds.c:272:67: note: expected ‘u32’ {aka ‘unsigned int’} but argument is of type ‘i915_mcr_reg_t’ {aka ‘const struct <anonymous>’}
  272 | wa_mcr_write_or(struct i915_wa_list *wal, i915_mcr_reg_t reg, u32 set)
      |                                                               ~~~~^~~
make[6]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/gt/intel_workarounds.o] Error 1
make[5]: *** [scripts/Makefile.build:480: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:480: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:480: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:480: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1913: .] Error 2
make: *** [Makefile:234: __sub-make] Error 2
Build failed, no error log produced


