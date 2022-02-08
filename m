Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8BC4AD846
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 13:24:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59E7210E51A;
	Tue,  8 Feb 2022 12:24:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F108010E347;
 Tue,  8 Feb 2022 12:24:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ECB81A0096;
 Tue,  8 Feb 2022 12:24:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhi Wang" <zhi.wang.linux@gmail.com>
Date: Tue, 08 Feb 2022 12:24:03 -0000
Message-ID: <164432304394.22535.13738106853150627344@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220208111151.13115-1-zhi.a.wang@intel.com>
In-Reply-To: <20220208111151.13115-1-zhi.a.wang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5Bv6=2C1/3=5D_i915/gvt=3A_Introduce_the_mm?=
 =?utf-8?q?io_table_to_support_VFIO_new_mdev_API?=
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

Series: series starting with [v6,1/3] i915/gvt: Introduce the mmio table to support VFIO new mdev API
URL   : https://patchwork.freedesktop.org/series/99838/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/intel_gvt_mmio_table.o
drivers/gpu/drm/i915/intel_gvt_mmio_table.c: In function ‘iterate_generic_mmio’:
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:65:16: error: ‘RENDER_RING_BASE’ undeclared (first use in this function); did you mean ‘IDR_INIT_BASE’?
  MMIO_F(prefix(RENDER_RING_BASE), s, d); \
                ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
./drivers/gpu/drm/i915/gt/intel_engine_regs.h:73:27: note: in expansion of macro ‘_MMIO’
 #define RING_IMR(base)    _MMIO((base) + 0xa8)
                           ^~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:65:9: note: in expansion of macro ‘RING_IMR’
  MMIO_F(prefix(RENDER_RING_BASE), s, d); \
         ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:74:2: note: in expansion of macro ‘MMIO_RING_F’
  MMIO_RING_F(prefix, 4, d)
  ^~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:81:2: note: in expansion of macro ‘MMIO_RING_D’
  MMIO_RING_D(RING_IMR, D_ALL);
  ^~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:65:16: note: each undeclared identifier is reported only once for each function it appears in
  MMIO_F(prefix(RENDER_RING_BASE), s, d); \
                ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
./drivers/gpu/drm/i915/gt/intel_engine_regs.h:73:27: note: in expansion of macro ‘_MMIO’
 #define RING_IMR(base)    _MMIO((base) + 0xa8)
                           ^~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:65:9: note: in expansion of macro ‘RING_IMR’
  MMIO_F(prefix(RENDER_RING_BASE), s, d); \
         ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:74:2: note: in expansion of macro ‘MMIO_RING_F’
  MMIO_RING_F(prefix, 4, d)
  ^~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:81:2: note: in expansion of macro ‘MMIO_RING_D’
  MMIO_RING_D(RING_IMR, D_ALL);
  ^~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:66:16: error: ‘BLT_RING_BASE’ undeclared (first use in this function); did you mean ‘CTX_RING_TAIL’?
  MMIO_F(prefix(BLT_RING_BASE), s, d); \
                ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
./drivers/gpu/drm/i915/gt/intel_engine_regs.h:73:27: note: in expansion of macro ‘_MMIO’
 #define RING_IMR(base)    _MMIO((base) + 0xa8)
                           ^~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:66:9: note: in expansion of macro ‘RING_IMR’
  MMIO_F(prefix(BLT_RING_BASE), s, d); \
         ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:74:2: note: in expansion of macro ‘MMIO_RING_F’
  MMIO_RING_F(prefix, 4, d)
  ^~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:81:2: note: in expansion of macro ‘MMIO_RING_D’
  MMIO_RING_D(RING_IMR, D_ALL);
  ^~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:67:16: error: ‘GEN6_BSD_RING_BASE’ undeclared (first use in this function); did you mean ‘GEN8_CSB_PTR_MASK’?
  MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d); \
                ^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
./drivers/gpu/drm/i915/gt/intel_engine_regs.h:73:27: note: in expansion of macro ‘_MMIO’
 #define RING_IMR(base)    _MMIO((base) + 0xa8)
                           ^~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:67:9: note: in expansion of macro ‘RING_IMR’
  MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d); \
         ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:74:2: note: in expansion of macro ‘MMIO_RING_F’
  MMIO_RING_F(prefix, 4, d)
  ^~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:81:2: note: in expansion of macro ‘MMIO_RING_D’
  MMIO_RING_D(RING_IMR, D_ALL);
  ^~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:68:16: error: ‘VEBOX_RING_BASE’ undeclared (first use in this function); did you mean ‘CTX_RING_TAIL’?
  MMIO_F(prefix(VEBOX_RING_BASE), s, d); \
                ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
./drivers/gpu/drm/i915/gt/intel_engine_regs.h:73:27: note: in expansion of macro ‘_MMIO’
 #define RING_IMR(base)    _MMIO((base) + 0xa8)
                           ^~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:68:9: note: in expansion of macro ‘RING_IMR’
  MMIO_F(prefix(VEBOX_RING_BASE), s, d); \
         ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:74:2: note: in expansion of macro ‘MMIO_RING_F’
  MMIO_RING_F(prefix, 4, d)
  ^~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:81:2: note: in expansion of macro ‘MMIO_RING_D’
  MMIO_RING_D(RING_IMR, D_ALL);
  ^~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:70:17: error: ‘GEN8_BSD2_RING_BASE’ undeclared (first use in this function); did you mean ‘GEN8_CSB_PTR_MASK’?
   MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d); \
                 ^~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
./drivers/gpu/drm/i915/gt/intel_engine_regs.h:73:27: note: in expansion of macro ‘_MMIO’
 #define RING_IMR(base)    _MMIO((base) + 0xa8)
                           ^~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:70:10: note: in expansion of macro ‘RING_IMR’
   MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d); \
          ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:74:2: note: in expansion of macro ‘MMIO_RING_F’
  MMIO_RING_F(prefix, 4, d)
  ^~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:81:2: note: in expansion of macro ‘MMIO_RING_D’
  MMIO_RING_D(RING_IMR, D_ALL);
  ^~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:82:9: error: ‘SDEIMR’ undeclared (first use in this function); did you mean ‘IPEIR’?
  MMIO_D(SDEIMR, D_ALL);
         ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:82:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(SDEIMR, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:83:9: error: ‘SDEIER’ undeclared (first use in this function); did you mean ‘IPEIR’?
  MMIO_D(SDEIER, D_ALL);
         ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:83:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(SDEIER, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:84:9: error: ‘SDEIIR’ undeclared (first use in this function); did you mean ‘IPEIR’?
  MMIO_D(SDEIIR, D_ALL);
         ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:84:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(SDEIIR, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:85:9: error: ‘SDEISR’ undeclared (first use in this function); did you mean ‘IPEIR’?
  MMIO_D(SDEISR, D_ALL);
         ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:85:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(SDEISR, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:87:9: error: ‘GEN8_GAMW_ECO_DEV_RW_IA’ undeclared (first use in this function)
  MMIO_D(GEN8_GAMW_ECO_DEV_RW_IA, D_BDW_PLUS);
         ^~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:87:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(GEN8_GAMW_ECO_DEV_RW_IA, D_BDW_PLUS);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:88:9: error: ‘BSD_HWS_PGA_GEN7’ undeclared (first use in this function); did you mean ‘RING_HWS_PGA_GEN6’?
  MMIO_D(BSD_HWS_PGA_GEN7, D_ALL);
         ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:88:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(BSD_HWS_PGA_GEN7, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:89:9: error: ‘BLT_HWS_PGA_GEN7’ undeclared (first use in this function); did you mean ‘RING_HWS_PGA_GEN6’?
  MMIO_D(BLT_HWS_PGA_GEN7, D_ALL);
         ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:89:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(BLT_HWS_PGA_GEN7, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:90:9: error: ‘VEBOX_HWS_PGA_GEN7’ undeclared (first use in this function); did you mean ‘RING_HWS_PGA_GEN6’?
  MMIO_D(VEBOX_HWS_PGA_GEN7, D_ALL);
         ^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:90:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(VEBOX_HWS_PGA_GEN7, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:103:9: error: ‘GEN7_SC_INSTDONE’ undeclared (first use in this function); did you mean ‘RING_INSTDONE’?
  MMIO_D(GEN7_SC_INSTDONE, D_BDW_PLUS);
         ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:103:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(GEN7_SC_INSTDONE, D_BDW_PLUS);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:107:9: error: ‘GEN7_CXT_SIZE’ undeclared (first use in this function); did you mean ‘GEN6_PD_SIZE’?
  MMIO_D(GEN7_CXT_SIZE, D_ALL);
         ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:107:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(GEN7_CXT_SIZE, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:123:9: error: ‘GEN7_GT_MODE’ undeclared (first use in this function); did you mean ‘RING_MI_MODE’?
  MMIO_D(GEN7_GT_MODE, D_ALL);
         ^~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:123:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(GEN7_GT_MODE, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:124:9: error: ‘CACHE_MODE_0_GEN7’ undeclared (first use in this function); did you mean ‘RING_MODE_GEN7’?
  MMIO_D(CACHE_MODE_0_GEN7, D_ALL);
         ^~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:124:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(CACHE_MODE_0_GEN7, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:125:9: error: ‘CACHE_MODE_1’ undeclared (first use in this function); did you mean ‘ACC_MODE’?
  MMIO_D(CACHE_MODE_1, D_ALL);
         ^~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:125:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(CACHE_MODE_1, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:126:9: error: ‘CACHE_MODE_0’ undeclared (first use in this function); did you mean ‘ACC_MODE’?
  MMIO_D(CACHE_MODE_0, D_ALL);
         ^~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:126:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(CACHE_MODE_0, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:129:9: error: ‘_3D_CHICKEN3’ undeclared (first use in this function)
  MMIO_D(_3D_CHICKEN3, D_ALL);
         ^~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:129:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(_3D_CHICKEN3, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:131:9: error: ‘FF_SLICE_CS_CHICKEN2’ undeclared (first use in this function)
  MMIO_D(FF_SLICE_CS_CHICKEN2, D_ALL);
         ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:131:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(FF_SLICE_CS_CHICKEN2, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:133:9: error: ‘GAM_ECOCHK’ undeclared (first use in this function); did you mean ‘SHM_LOCK’?
  MMIO_D(GAM_ECOCHK, D_ALL);
         ^~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:133:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(GAM_ECOCHK, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:134:9: error: ‘GEN7_COMMON_SLICE_CHICKEN1’ undeclared (first use in this function)
  MMIO_D(GEN7_COMMON_SLICE_CHICKEN1, D_ALL);
         ^~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:134:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(GEN7_COMMON_SLICE_CHICKEN1, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:135:9: error: ‘COMMON_SLICE_CHICKEN2’ undeclared (first use in this function)
  MMIO_D(COMMON_SLICE_CHICKEN2, D_ALL);
         ^~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:135:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(COMMON_SLICE_CHICKEN2, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:144:9: error: ‘HALF_SLICE_CHICKEN3’ undeclared (first use in this function)
  MMIO_D(HALF_SLICE_CHICKEN3, D_ALL);
         ^~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:144:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(HALF_SLICE_CHICKEN3, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:145:9: error: ‘GEN7_HALF_SLICE_CHICKEN1’ undeclared (first use in this function)
  MMIO_D(GEN7_HALF_SLICE_CHICKEN1, D_ALL);
         ^~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:145:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(GEN7_HALF_SLICE_CHICKEN1, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:152:9: error: ‘DERRMR’ undeclared (first use in this function)
  MMIO_D(DERRMR, D_ALL);
         ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:152:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(DERRMR, D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:153:9: error: implicit declaration of function ‘PIPEDSL’ [-Werror=implicit-function-declaration]
  MMIO_D(PIPEDSL(PIPE_A), D_ALL);
         ^~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:153:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(PIPEDSL(PIPE_A), D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:153:9: error: incompatible type for argument 1 of ‘i915_mmio_reg_offset’
  MMIO_D(PIPEDSL(PIPE_A), D_ALL);
         ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:153:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(PIPEDSL(PIPE_A), D_ALL);
  ^~~~~~
In file included from drivers/gpu/drm/i915/display/intel_display.h:30,
                 from drivers/gpu/drm/i915/display/intel_cdclk.h:11,
                 from drivers/gpu/drm/i915/i915_drv.h:67,
                 from drivers/gpu/drm/i915/intel_gvt_mmio_table.c:25:
./drivers/gpu/drm/i915/i915_reg_defs.h:82:60: note: expected ‘i915_reg_t’ {aka ‘struct <anonymous>’} but argument is of type ‘int’
 static __always_inline u32 i915_mmio_reg_offset(i915_reg_t reg)
                                                 ~~~~~~~~~~~^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:154:9: error: incompatible type for argument 1 of ‘i915_mmio_reg_offset’
  MMIO_D(PIPEDSL(PIPE_B), D_ALL);
         ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:154:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(PIPEDSL(PIPE_B), D_ALL);
  ^~~~~~
In file included from drivers/gpu/drm/i915/display/intel_display.h:30,
                 from drivers/gpu/drm/i915/display/intel_cdclk.h:11,
                 from drivers/gpu/drm/i915/i915_drv.h:67,
                 from drivers/gpu/drm/i915/intel_gvt_mmio_table.c:25:
./drivers/gpu/drm/i915/i915_reg_defs.h:82:60: note: expected ‘i915_reg_t’ {aka ‘struct <anonymous>’} but argument is of type ‘int’
 static __always_inline u32 i915_mmio_reg_offset(i915_reg_t reg)
                                                 ~~~~~~~~~~~^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:155:9: error: incompatible type for argument 1 of ‘i915_mmio_reg_offset’
  MMIO_D(PIPEDSL(PIPE_C), D_ALL);
         ^~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:155:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(PIPEDSL(PIPE_C), D_ALL);
  ^~~~~~
In file included from drivers/gpu/drm/i915/display/intel_display.h:30,
                 from drivers/gpu/drm/i915/display/intel_cdclk.h:11,
                 from drivers/gpu/drm/i915/i915_drv.h:67,
                 from drivers/gpu/drm/i915/intel_gvt_mmio_table.c:25:
./drivers/gpu/drm/i915/i915_reg_defs.h:82:60: note: expected ‘i915_reg_t’ {aka ‘struct <anonymous>’} but argument is of type ‘int’
 static __always_inline u32 i915_mmio_reg_offset(i915_reg_t reg)
                                                 ~~~~~~~~~~~^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:156:9: error: incompatible type for argument 1 of ‘i915_mmio_reg_offset’
  MMIO_D(PIPEDSL(_PIPE_EDP), D_ALL);
         ^~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:156:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(PIPEDSL(_PIPE_EDP), D_ALL);
  ^~~~~~
In file included from drivers/gpu/drm/i915/display/intel_display.h:30,
                 from drivers/gpu/drm/i915/display/intel_cdclk.h:11,
                 from drivers/gpu/drm/i915/i915_drv.h:67,
                 from drivers/gpu/drm/i915/intel_gvt_mmio_table.c:25:
./drivers/gpu/drm/i915/i915_reg_defs.h:82:60: note: expected ‘i915_reg_t’ {aka ‘struct <anonymous>’} but argument is of type ‘int’
 static __always_inline u32 i915_mmio_reg_offset(i915_reg_t reg)
                                                 ~~~~~~~~~~~^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:157:9: error: implicit declaration of function ‘PIPECONF’; did you mean ‘PIPE_BUF’? [-Werror=implicit-function-declaration]
  MMIO_D(PIPECONF(PIPE_A), D_ALL);
         ^~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:157:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(PIPECONF(PIPE_A), D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:157:9: error: incompatible type for argument 1 of ‘i915_mmio_reg_offset’
  MMIO_D(PIPECONF(PIPE_A), D_ALL);
         ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:157:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(PIPECONF(PIPE_A), D_ALL);
  ^~~~~~
In file included from drivers/gpu/drm/i915/display/intel_display.h:30,
                 from drivers/gpu/drm/i915/display/intel_cdclk.h:11,
                 from drivers/gpu/drm/i915/i915_drv.h:67,
                 from drivers/gpu/drm/i915/intel_gvt_mmio_table.c:25:
./drivers/gpu/drm/i915/i915_reg_defs.h:82:60: note: expected ‘i915_reg_t’ {aka ‘struct <anonymous>’} but argument is of type ‘int’
 static __always_inline u32 i915_mmio_reg_offset(i915_reg_t reg)
                                                 ~~~~~~~~~~~^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:158:9: error: incompatible type for argument 1 of ‘i915_mmio_reg_offset’
  MMIO_D(PIPECONF(PIPE_B), D_ALL);
         ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:158:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(PIPECONF(PIPE_B), D_ALL);
  ^~~~~~
In file included from drivers/gpu/drm/i915/display/intel_display.h:30,
                 from drivers/gpu/drm/i915/display/intel_cdclk.h:11,
                 from drivers/gpu/drm/i915/i915_drv.h:67,
                 from drivers/gpu/drm/i915/intel_gvt_mmio_table.c:25:
./drivers/gpu/drm/i915/i915_reg_defs.h:82:60: note: expected ‘i915_reg_t’ {aka ‘struct <anonymous>’} but argument is of type ‘int’
 static __always_inline u32 i915_mmio_reg_offset(i915_reg_t reg)
                                                 ~~~~~~~~~~~^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:159:9: error: incompatible type for argument 1 of ‘i915_mmio_reg_offset’
  MMIO_D(PIPECONF(PIPE_C), D_ALL);
         ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:159:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(PIPECONF(PIPE_C), D_ALL);
  ^~~~~~
In file included from drivers/gpu/drm/i915/display/intel_display.h:30,
                 from drivers/gpu/drm/i915/display/intel_cdclk.h:11,
                 from drivers/gpu/drm/i915/i915_drv.h:67,
                 from drivers/gpu/drm/i915/intel_gvt_mmio_table.c:25:
./drivers/gpu/drm/i915/i915_reg_defs.h:82:60: note: expected ‘i915_reg_t’ {aka ‘struct <anonymous>’} but argument is of type ‘int’
 static __always_inline u32 i915_mmio_reg_offset(i915_reg_t reg)
                                                 ~~~~~~~~~~~^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:160:9: error: incompatible type for argument 1 of ‘i915_mmio_reg_offset’
  MMIO_D(PIPECONF(_PIPE_EDP), D_ALL);
         ^~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:160:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(PIPECONF(_PIPE_EDP), D_ALL);
  ^~~~~~
In file included from drivers/gpu/drm/i915/display/intel_display.h:30,
                 from drivers/gpu/drm/i915/display/intel_cdclk.h:11,
                 from drivers/gpu/drm/i915/i915_drv.h:67,
                 from drivers/gpu/drm/i915/intel_gvt_mmio_table.c:25:
./drivers/gpu/drm/i915/i915_reg_defs.h:82:60: note: expected ‘i915_reg_t’ {aka ‘struct <anonymous>’} but argument is of type ‘int’
 static __always_inline u32 i915_mmio_reg_offset(i915_reg_t reg)
                                                 ~~~~~~~~~~~^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:161:9: error: implicit declaration of function ‘PIPESTAT’; did you mean ‘IPC_STAT’? [-Werror=implicit-function-declaration]
  MMIO_D(PIPESTAT(PIPE_A), D_ALL);
         ^~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:161:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(PIPESTAT(PIPE_A), D_ALL);
  ^~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:161:9: error: incompatible type for argument 1 of ‘i915_mmio_reg_offset’
  MMIO_D(PIPESTAT(PIPE_A), D_ALL);
         ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:161:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(PIPESTAT(PIPE_A), D_ALL);
  ^~~~~~
In file included from drivers/gpu/drm/i915/display/intel_display.h:30,
                 from drivers/gpu/drm/i915/display/intel_cdclk.h:11,
                 from drivers/gpu/drm/i915/i915_drv.h:67,
                 from drivers/gpu/drm/i915/intel_gvt_mmio_table.c:25:
./drivers/gpu/drm/i915/i915_reg_defs.h:82:60: note: expected ‘i915_reg_t’ {aka ‘struct <anonymous>’} but argument is of type ‘int’
 static __always_inline u32 i915_mmio_reg_offset(i915_reg_t reg)
                                                 ~~~~~~~~~~~^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:162:9: error: incompatible type for argument 1 of ‘i915_mmio_reg_offset’
  MMIO_D(PIPESTAT(PIPE_B), D_ALL);
         ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:54:57: note: in definition of macro ‘MMIO_F’
   ret = iter->handle_mmio_cb(iter, i915_mmio_reg_offset(reg), \
                                                         ^~~
drivers/gpu/drm/i915/intel_gvt_mmio_table.c:162:2: note: in expansion of macro ‘MMIO_D’
  MMIO_D(PIPESTAT(PIPE_B), D_ALL);
  ^~~~~~
In file included from drivers/gpu/drm/i915/di


