Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E253DB01A
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 02:01:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07C5F6EE9D;
	Fri, 30 Jul 2021 00:01:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 465AB6EE9B;
 Fri, 30 Jul 2021 00:01:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3EC7EA47E8;
 Fri, 30 Jul 2021 00:01:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 30 Jul 2021 00:01:50 -0000
Message-ID: <162760331025.582.12328924695621112394@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210728215946.1573015-1-lucas.demarchi@intel.com>
In-Reply-To: <20210728215946.1573015-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Remove_CNL_-_for_drm-intel-next_=28rev3=29?=
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

Series: Remove CNL - for drm-intel-next (rev3)
URL   : https://patchwork.freedesktop.org/series/93142/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
94fd27e43bfd drm/i915/display: remove PORT_F workaround for CNL
ca468dd23483 drm/i915/display: remove explicit CNL handling from intel_cdclk.c
e80a2e12ddc8 drm/i915/display: remove explicit CNL handling from intel_color.c
d2f939aeba7c drm/i915/display: remove explicit CNL handling from intel_combo_phy.c
dea51845e58f drm/i915/display: remove explicit CNL handling from intel_crtc.c
5a725ae3dc2b drm/i915/display: remove explicit CNL handling from intel_ddi.c
85a1af136db2 drm/i915/display: remove explicit CNL handling from intel_display_debugfs.c
e79cc6ee2d63 drm/i915/display: remove explicit CNL handling from intel_dmc.c
dfbfda028423 drm/i915/display: remove explicit CNL handling from intel_dp.c
a92224f38fc5 drm/i915/display: remove explicit CNL handling from intel_dpll_mgr.c
39c6453f2cd8 drm/i915/display: remove explicit CNL handling from intel_vdsc.c
9f1057727ae9 drm/i915/display: remove explicit CNL handling from skl_universal_plane.c
8375bd33d90a drm/i915/display: remove explicit CNL handling from intel_display_power.c
5ebe54607ec6 drm/i915/display: remove CNL ddi buf translation tables
0bff85fc957b drm/i915/display: rename CNL references in skl_scaler.c
-:63: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#63: FILE: drivers/gpu/drm/i915/i915_reg.h:7814:
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
 			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
 			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

-:63: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'set' - possible side-effects?
#63: FILE: drivers/gpu/drm/i915/i915_reg.h:7814:
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
 			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
 			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)

-:68: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'id' - possible side-effects?
#68: FILE: drivers/gpu/drm/i915/i915_reg.h:7818:
+#define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
 			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
 			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)

-:68: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'set' - possible side-effects?
#68: FILE: drivers/gpu/drm/i915/i915_reg.h:7818:
+#define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
 			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
 			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)

total: 0 errors, 0 warnings, 4 checks, 48 lines checked
5639bec5c1d1 drm/i915: remove explicit CNL handling from i915_irq.c
65bbdae36f23 drm/i915: remove explicit CNL handling from intel_pm.c
408f6d7b0e34 drm/i915: remove explicit CNL handling from intel_pch.c
7fc19381e256 drm/i915: remove explicit CNL handling from intel_wopcm.c
dbaa66af470e drm/i915: rename CNL references in intel_dram.c
a07dfbdfcb0a drm/i915: replace random CNL comments
9600ecff7eb4 drm/i915: switch num_scalers/num_sprites to consider DISPLAY_VER
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
v3 (Lucas): Change check to DISPLAY_VER >= 9, to cover the GLK's num_scalers,

total: 0 errors, 1 warnings, 0 checks, 32 lines checked
ed92f16999c1 drm/i915: remove GRAPHICS_VER == 10
-:75: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#75: FILE: drivers/gpu/drm/i915/i915_drv.h:1655:
+#define HAS_GMBUS_BURST_READ(dev_priv) (GRAPHICS_VER(dev_priv) >= 11 || \
 					IS_GEMINILAKE(dev_priv) || \
 					IS_KABYLAKE(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 102 lines checked
615f1df97332 drm/i915: rename/remove CNL registers
e298f2b301a7 drm/i915: finish removal of CNL


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
