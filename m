Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2AF70CC97
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 23:36:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1E8010E156;
	Mon, 22 May 2023 21:36:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 98FC210E156;
 Mon, 22 May 2023 21:36:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E867AADE6;
 Mon, 22 May 2023 21:36:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 22 May 2023 21:36:42 -0000
Message-ID: <168479140222.28283.13443866995198531252@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230522202314.3939499-1-matthew.d.roper@intel.com>
In-Reply-To: <20230522202314.3939499-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Move_display_identification/probing_under_display/_?=
 =?utf-8?b?KHJldjIp?=
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

Series: i915: Move display identification/probing under display/ (rev2)
URL   : https://patchwork.freedesktop.org/series/117931/
State : warning

== Summary ==

Error: dim checkpatch failed
7abc5ebe1565 drm/i915/display: Move display device info to header under display/
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:16: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#16: 
new file mode 100644

-:33: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#33: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:13:
+#define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
+	/* Keep in alphabetical order */ \
+	func(cursor_needs_physical); \
+	func(has_cdclk_crawl); \
+	func(has_cdclk_squash); \
+	func(has_ddi); \
+	func(has_dp_mst); \
+	func(has_dsb); \
+	func(has_fpga_dbg); \
+	func(has_gmch); \
+	func(has_hotplug); \
+	func(has_hti); \
+	func(has_ipc); \
+	func(has_overlay); \
+	func(has_psr); \
+	func(has_psr_hw_tracking); \
+	func(overlay_needs_physical); \
+	func(supports_tv);

-:33: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'func' - possible side-effects?
#33: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:13:
+#define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
+	/* Keep in alphabetical order */ \
+	func(cursor_needs_physical); \
+	func(has_cdclk_crawl); \
+	func(has_cdclk_squash); \
+	func(has_ddi); \
+	func(has_dp_mst); \
+	func(has_dsb); \
+	func(has_fpga_dbg); \
+	func(has_gmch); \
+	func(has_hotplug); \
+	func(has_hti); \
+	func(has_ipc); \
+	func(has_overlay); \
+	func(has_psr); \
+	func(has_psr_hw_tracking); \
+	func(overlay_needs_physical); \
+	func(supports_tv);

-:33: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#33: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:13:
+#define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
+	/* Keep in alphabetical order */ \
+	func(cursor_needs_physical); \
+	func(has_cdclk_crawl); \
+	func(has_cdclk_squash); \
+	func(has_ddi); \
+	func(has_dp_mst); \
+	func(has_dsb); \
+	func(has_fpga_dbg); \
+	func(has_gmch); \
+	func(has_hotplug); \
+	func(has_hti); \
+	func(has_ipc); \
+	func(has_overlay); \
+	func(has_psr); \
+	func(has_psr_hw_tracking); \
+	func(overlay_needs_physical); \
+	func(supports_tv);

total: 1 errors, 2 warnings, 1 checks, 127 lines checked
ebdedffdd60c drm/i915: Convert INTEL_INFO()->display to a pointer
-:231: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#231: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:39:
+#define _MMIO_PIPE2(pipe, reg)		_MMIO(INTEL_INFO(dev_priv)->display->pipe_offsets[(pipe)] - \

-:232: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#232: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:40:
+					      INTEL_INFO(dev_priv)->display->pipe_offsets[PIPE_A] + \

-:236: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#236: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:42:
+#define _MMIO_TRANS2(tran, reg)		_MMIO(INTEL_INFO(dev_priv)->display->trans_offsets[(tran)] - \

-:237: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#237: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:43:
+					      INTEL_INFO(dev_priv)->display->trans_offsets[TRANSCODER_A] + \

-:241: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#241: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:45:
+#define _MMIO_CURSOR2(pipe, reg)	_MMIO(INTEL_INFO(dev_priv)->display->cursor_offsets[(pipe)] - \

-:242: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#242: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:46:
+					      INTEL_INFO(dev_priv)->display->cursor_offsets[PIPE_A] + \

-:1206: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#1206: FILE: drivers/gpu/drm/i915/i915_pci.c:844:
+	.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \

-:1738: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#1738: FILE: drivers/gpu/drm/i915/intel_device_info.c:141:
+#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->display->name))

total: 0 errors, 7 warnings, 1 checks, 1610 lines checked
38edf7571527 drm/i915/display: Move display runtime info to display structure
-:67: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#67: FILE: drivers/gpu/drm/i915/display/intel_display.h:108:
+#define sprite_name(p, s) ((p) * DISPLAY_RUNTIME_INFO(dev_priv)->num_sprites[(p)] + (s) + 'A')

-:85: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#85: FILE: drivers/gpu/drm/i915/display/intel_display.h:232:
+		for_each_if (DISPLAY_RUNTIME_INFO(__dev_priv)->cpu_transcoder_mask & BIT(__t))

-:193: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#193: FILE: drivers/gpu/drm/i915/i915_drv.h:208:
+	struct intel_display_runtime_info __display_runtime; /* Access with DISPLAY_RUNTIME_INFO() */

-:228: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#228: FILE: drivers/gpu/drm/i915/i915_drv.h:836:
+#define HAS_TRANSCODER(i915, trans)	 ((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & BIT(trans)) != 0)

-:728: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#728: FILE: drivers/gpu/drm/i915/i915_pci.c:1122:
+	.__runtime_defaults.has_dsc = 1, \

total: 0 errors, 4 warnings, 1 checks, 1066 lines checked
ee9ace8faa7f drm/i915/display: Make display responsible for probing its own IP
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:40: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#40: 
new file mode 100644

-:454: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#454: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:410:
+	.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \

-:546: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#546: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:502:
+	.__runtime_defaults.has_dsc = 1, \

total: 0 errors, 3 warnings, 0 checks, 1888 lines checked
0fb257b3c1cd drm/i915/display: Handle GMD_ID identification in display code
-:112: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#112: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:760:
+			return (const struct intel_display_device_info *)intel_display_ids[i].driver_data;

total: 0 errors, 1 warnings, 0 checks, 162 lines checked
78014ea6b958 drm/i915/display: Move feature test macros to intel_display_device.h
-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:35:
+#define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && DISPLAY_VER(i915) >= 7)

-:24: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#24: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:36:
+#define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) || IS_ALDERLAKE_S(i915))

-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#28: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:40:
+#define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))

-:30: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#30: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:42:
+#define HAS_DP20(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)

-:38: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#38: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:50:
+#define HAS_GMBUS_BURST_READ(i915)	(DISPLAY_VER(i915) >= 10 || IS_KABYLAKE(i915))

-:40: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#40: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:52:
+#define HAS_HW_SAGV_WM(i915)		(DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:54:
+#define HAS_IPS(i915)			(IS_HSW_ULT(i915) || IS_BROADWELL(i915))

-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#44: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:56:
+#define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)

-:50: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#50: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:62:
+#define HAS_SAGV(i915)			(DISPLAY_VER(i915) >= 9 && !IS_LP(i915))

-:59: CHECK:LINE_SPACING: Please don't use multiple blank lines
#59: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:71:
+
+

total: 0 errors, 0 warnings, 10 checks, 162 lines checked


