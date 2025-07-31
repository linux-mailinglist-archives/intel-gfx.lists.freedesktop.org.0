Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BB2B16B82
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 07:29:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB92910E6FA;
	Thu, 31 Jul 2025 05:29:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D34F510E6FA;
 Thu, 31 Jul 2025 05:29:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_eDP_Data_Override_=28rev4?=
 =?utf-8?q?=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Jul 2025 05:29:34 -0000
Message-ID: <175393977486.201030.2259537241349449164@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250731051646.3009255-1-suraj.kandpal@intel.com>
In-Reply-To: <20250731051646.3009255-1-suraj.kandpal@intel.com>
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

Series: eDP Data Override (rev4)
URL   : https://patchwork.freedesktop.org/series/151688/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_dp.o
drivers/gpu/drm/i915/display/intel_dp.c: In function ‘intel_edp_set_data_override_rates’:
drivers/gpu/drm/i915/display/intel_dp.c:4287:50: error: invalid use of undefined type ‘const struct intel_bios_encoder_data’
 4287 |         if (!encoder->devdata || encoder->devdata->display->vbt.version < 263)
      |                                                  ^~
In file included from ./arch/x86/include/asm/bitops.h:427,
                 from ./include/linux/bitops.h:67,
                 from ./include/linux/kernel.h:23,
                 from ./include/linux/cpumask.h:11,
                 from ./arch/x86/include/asm/paravirt.h:21,
                 from ./arch/x86/include/asm/irqflags.h:102,
                 from ./include/linux/irqflags.h:18,
                 from ./include/linux/spinlock.h:59,
                 from ./include/linux/mmzone.h:8,
                 from ./include/linux/gfp.h:7,
                 from ./include/linux/slab.h:16,
                 from ./include/linux/resource_ext.h:11,
                 from ./include/linux/acpi.h:13,
                 from ./include/linux/i2c.h:13,
                 from drivers/gpu/drm/i915/display/intel_dp.c:29:
drivers/gpu/drm/i915/display/intel_dp.c:4294:23: error: ‘devdata’ undeclared (first use in this function); did you mean ‘_edata’?
 4294 |         if (hweight32(devdata->child.edp_data_rate_override) >= 11)
      |                       ^~~~~~~
./include/asm-generic/bitops/const_hweight.h:28:44: note: in definition of macro ‘hweight32’
   28 | #define hweight32(w) (__builtin_constant_p(w) ? __const_hweight32(w) : __arch_hweight32(w))
      |                                            ^
drivers/gpu/drm/i915/display/intel_dp.c:4294:23: note: each undeclared identifier is reported only once for each function it appears in
 4294 |         if (hweight32(devdata->child.edp_data_rate_override) >= 11)
      |                       ^~~~~~~
./include/asm-generic/bitops/const_hweight.h:28:44: note: in definition of macro ‘hweight32’
   28 | #define hweight32(w) (__builtin_constant_p(w) ? __const_hweight32(w) : __arch_hweight32(w))
      |                                            ^
make[6]: *** [scripts/Makefile.build:287: drivers/gpu/drm/i915/display/intel_dp.o] Error 1
make[5]: *** [scripts/Makefile.build:555: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:555: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:555: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:555: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2003: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


