Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1A53D7C8D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 19:49:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBF366E9E4;
	Tue, 27 Jul 2021 17:49:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7A2A16E804;
 Tue, 27 Jul 2021 17:49:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 716E4A66C9;
 Tue, 27 Jul 2021 17:49:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 27 Jul 2021 17:49:52 -0000
Message-ID: <162740819244.18666.8562764825649612982@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210727071845.841554-1-lucas.demarchi@intel.com>
In-Reply-To: <20210727071845.841554-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C01/28=5D_drm/i915/display=3A_r?=
 =?utf-8?q?emove_PORT=5FF_workaround_for_CNL_=28rev2=29?=
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

Series: series starting with [CI,01/28] drm/i915/display: remove PORT_F workaround for CNL (rev2)
URL   : https://patchwork.freedesktop.org/series/93056/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a5e4bffd6d6f drm/i915/display: remove PORT_F workaround for CNL
00ffd16fcca9 drm/i915/display: remove explicit CNL handling from intel_cdclk.c
f0962a46c4db drm/i915/display: remove explicit CNL handling from intel_color.c
9cef952bf781 drm/i915/display: remove explicit CNL handling from intel_combo_phy.c
b0b88d826064 drm/i915/display: remove explicit CNL handling from intel_crtc.c
e2ad5114dd83 drm/i915/display: remove explicit CNL handling from intel_ddi.c
58f0263bf79d drm/i915/display: remove explicit CNL handling from intel_display_debugfs.c
9edcd79df25c drm/i915/display: remove explicit CNL handling from intel_dmc.c
0933019dde76 drm/i915/display: remove explicit CNL handling from intel_dp.c
1552f5470753 drm/i915/display: remove explicit CNL handling from intel_dpll_mgr.c
02aea789a348 drm/i915/display: remove explicit CNL handling from intel_vdsc.c
302231afebdf drm/i915/display: remove explicit CNL handling from skl_universal_plane.c
b52e50d278b9 drm/i915/display: remove explicit CNL handling from intel_display_power.c
8ae2070a04a2 drm/i915/display: remove CNL ddi buf translation tables
a81e83af78c5 drm/i915/display: rename CNL references in skl_scaler.c
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
a1a4e070f933 drm/i915: remove explicit CNL handling from i915_irq.c
1a5d634b421c drm/i915: remove explicit CNL handling from intel_pm.c
e17f59582390 drm/i915: remove explicit CNL handling from intel_mocs.c
f586bf32e6ff drm/i915: remove explicit CNL handling from intel_pch.c
393456abc7be drm/i915: remove explicit CNL handling from intel_wopcm.c
80d677c2345f drm/i915/gt: remove explicit CNL handling from intel_sseu.c
6de7ed1a59e6 drm/i915: rename CNL references in intel_dram.c
7aa7558721aa drm/i915/gt: rename CNL references in intel_engine.h
4e912a6452e0 drm/i915: finish removal of CNL
4ba93d420a70 drm/i915: remove GRAPHICS_VER == 10
-:348: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#348: FILE: drivers/gpu/drm/i915/i915_drv.h:1650:
+#define HAS_GMBUS_BURST_READ(dev_priv) (GRAPHICS_VER(dev_priv) >= 11 || \
 					IS_GEMINILAKE(dev_priv) || \
 					IS_KABYLAKE(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 336 lines checked
cd928dae0d3e drm/i915: rename/remove CNL registers
0b043f4ac3d8 drm/i915: replace random CNL comments
780f9f17ba29 drm/i915: switch num_scalers/num_sprites to consider DISPLAY_VER
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
v3 (Lucas): Change check to DISPLAY_VER >= 9, to cover the GLK's num_scalers,

total: 0 errors, 1 warnings, 0 checks, 32 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
