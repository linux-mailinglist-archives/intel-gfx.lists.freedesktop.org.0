Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FDC3D7070
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 09:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C7806E861;
	Tue, 27 Jul 2021 07:34:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D9296E861;
 Tue, 27 Jul 2021 07:34:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87600A7DFB;
 Tue, 27 Jul 2021 07:34:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 27 Jul 2021 07:34:10 -0000
Message-ID: <162737125053.18666.8866567914767316587@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210727071845.841554-1-lucas.demarchi@intel.com>
In-Reply-To: <20210727071845.841554-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C01/28=5D_drm/i915/display=3A_r?=
 =?utf-8?q?emove_PORT=5FF_workaround_for_CNL?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [CI,01/28] drm/i915/display: remove PORT_F workaround for CNL
URL   : https://patchwork.freedesktop.org/series/93056/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
84aa6c05f713 drm/i915/display: remove PORT_F workaround for CNL
2237799b400a drm/i915/display: remove explicit CNL handling from intel_cdclk.c
6011233fbc7e drm/i915/display: remove explicit CNL handling from intel_color.c
16b255a7143e drm/i915/display: remove explicit CNL handling from intel_combo_phy.c
015b23d3e34e drm/i915/display: remove explicit CNL handling from intel_crtc.c
40cbd5fc3c1d drm/i915/display: remove explicit CNL handling from intel_ddi.c
ce0001293c11 drm/i915/display: remove explicit CNL handling from intel_display_debugfs.c
e8d98b29fd9d drm/i915/display: remove explicit CNL handling from intel_dmc.c
dc12f36ad994 drm/i915/display: remove explicit CNL handling from intel_dp.c
6e7cf4e004f5 drm/i915/display: remove explicit CNL handling from intel_dpll_mgr.c
98fa787acbd9 drm/i915/display: remove explicit CNL handling from intel_vdsc.c
4f34aa14a702 drm/i915/display: remove explicit CNL handling from skl_universal_plane.c
222000469bb1 drm/i915/display: remove explicit CNL handling from intel_display_power.c
8df58456158c drm/i915/display: remove CNL ddi buf translation tables
506c792c86b3 drm/i915/display: rename CNL references in skl_scaler.c
-:63: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#63: FILE: drivers/gpu/drm/i915/i915_reg.h:7752:
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
 			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
 			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

-:63: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'set' - possible side-effects?
#63: FILE: drivers/gpu/drm/i915/i915_reg.h:7752:
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
 			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
 			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

-:68: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#68: FILE: drivers/gpu/drm/i915/i915_reg.h:7756:
+#define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
 			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
 			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)

-:68: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'set' - possible side-effects?
#68: FILE: drivers/gpu/drm/i915/i915_reg.h:7756:
+#define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
 			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
 			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)

total: 0 errors, 0 warnings, 4 checks, 48 lines checked
68fcd2f1f506 drm/i915: remove explicit CNL handling from i915_irq.c
58364762cb69 drm/i915: remove explicit CNL handling from intel_pm.c
4541a36b1fa9 drm/i915: remove explicit CNL handling from intel_mocs.c
708e28316b93 drm/i915: remove explicit CNL handling from intel_pch.c
87f4dc291f49 drm/i915: remove explicit CNL handling from intel_wopcm.c
98f26f380fc4 drm/i915/gt: remove explicit CNL handling from intel_sseu.c
765c88769c02 drm/i915: rename CNL references in intel_dram.c
e65974c74595 drm/i915/gt: rename CNL references in intel_engine.h
544b72f54be6 drm/i915: finish removal of CNL
0916dd775911 drm/i915: remove GRAPHICS_VER == 10
-:348: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#348: FILE: drivers/gpu/drm/i915/i915_drv.h:1652:
+#define HAS_GMBUS_BURST_READ(dev_priv) (GRAPHICS_VER(dev_priv) >= 11 || \
 					IS_GEMINILAKE(dev_priv) || \
 					IS_KABYLAKE(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 336 lines checked
3a0814c0a9f4 drm/i915: rename/remove CNL registers
78303adaa154 drm/i915: replace random CNL comments
f12c2ebdf907 drm/i915: switch num_scalers/num_sprites to consider DISPLAY_VER


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
