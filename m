Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC6F4E7A6D
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 20:27:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 123D310E3B7;
	Fri, 25 Mar 2022 19:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3611C10E3B7;
 Fri, 25 Mar 2022 19:27:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 312D0A3C0D;
 Fri, 25 Mar 2022 19:27:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhi Wang" <zhi.wang.linux@gmail.com>
Date: Fri, 25 Mar 2022 19:27:45 -0000
Message-ID: <164823646516.24039.8485501462580596364@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220325175251.167164-1-zhi.a.wang@intel.com>
In-Reply-To: <20220325175251.167164-1-zhi.a.wang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5Bv7=2C1/3=5D_i915/gvt=3A_Separate_the_MMI?=
 =?utf-8?q?O_tracking_table_from_GVT-g?=
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

Series: series starting with [v7,1/3] i915/gvt: Separate the MMIO tracking table from GVT-g
URL   : https://patchwork.freedesktop.org/series/101803/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/intel_gvt_mmio_table.o
drivers/gpu/drm/i915/intel_gvt_mmio_table.c: In function ‘iterate_bxt_mmio’:
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1232:9: error: ‘BXT_DSI_PLL_CTL’ undeclared (first use in this function); did you mean ‘BXT_DE_PLL_CTL’?
  MMIO_D(BXT_DSI_PLL_CTL);
         ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:56: note: in definition of macro ‘MMIO_F’
  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
                                                        ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1232:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(BXT_DSI_PLL_CTL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1232:9: note: each undeclared identifier is reported only once for each function it appears in
  MMIO_D(BXT_DSI_PLL_CTL);
         ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:56: note: in definition of macro ‘MMIO_F’
  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
                                                        ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1232:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(BXT_DSI_PLL_CTL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1233:9: error: ‘BXT_DSI_PLL_ENABLE’ undeclared (first use in this function); did you mean ‘BXT_DE_PLL_ENABLE’?
  MMIO_D(BXT_DSI_PLL_ENABLE);
         ^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:35:56: note: in definition of macro ‘MMIO_F’
  ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), s); \
                                                        ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:1233:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(BXT_DSI_PLL_ENABLE);
  ^~~~~~
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/intel_gvt_mmio_table.o' failed
make[4]: *** [drivers/gpu/drm/i915/intel_gvt_mmio_table.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2


