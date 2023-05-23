Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FF370E943
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 00:51:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71D1A10E54F;
	Tue, 23 May 2023 22:51:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F0E6D10E54D;
 Tue, 23 May 2023 22:51:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E825FAADD8;
 Tue, 23 May 2023 22:51:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 23 May 2023 22:51:36 -0000
Message-ID: <168488229692.14424.2123779928977030834@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230523195609.73627-1-matthew.d.roper@intel.com>
In-Reply-To: <20230523195609.73627-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Move_display_identification/probing_under_display/_?=
 =?utf-8?b?KHJldjQp?=
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

Series: i915: Move display identification/probing under display/ (rev4)
URL   : https://patchwork.freedesktop.org/series/117931/
State : warning

== Summary ==

Error: dim checkpatch failed
7ffe6d000c98 drm/i915/display: Move display device info to header under display/
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
6294f58b3d62 drm/i915: Convert INTEL_INFO()->display to a pointer
-:241: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#241: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:43:
+					      DISPLAY_INFO(dev_priv)->trans_offsets[TRANSCODER_A] + \

-:1742: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#1742: FILE: drivers/gpu/drm/i915/intel_device_info.c:141:
+#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->display->name))

total: 0 errors, 1 warnings, 1 checks, 1610 lines checked
cebe73c61b1a drm/i915/display: Move display runtime info to display structure
-:71: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#71: FILE: drivers/gpu/drm/i915/display/intel_display.h:108:
+#define sprite_name(p, s) ((p) * DISPLAY_RUNTIME_INFO(dev_priv)->num_sprites[(p)] + (s) + 'A')

-:89: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#89: FILE: drivers/gpu/drm/i915/display/intel_display.h:232:
+		for_each_if (DISPLAY_RUNTIME_INFO(__dev_priv)->cpu_transcoder_mask & BIT(__t))

-:197: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#197: FILE: drivers/gpu/drm/i915/i915_drv.h:208:
+	struct intel_display_runtime_info __display_runtime; /* Access with DISPLAY_RUNTIME_INFO() */

-:232: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#232: FILE: drivers/gpu/drm/i915/i915_drv.h:836:
+#define HAS_TRANSCODER(i915, trans)	 ((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & BIT(trans)) != 0)

total: 0 errors, 3 warnings, 1 checks, 1066 lines checked
401e0dc719b0 drm/i915/display: Make display responsible for probing its own IP
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:46: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#46: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1898 lines checked
f63573931151 drm/i915/display: Handle GMD_ID identification in display code
9be3f41b9537 drm/i915/display: Move feature test macros to intel_display_device.h
-:24: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#24: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:37:
+#define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && DISPLAY_VER(i915) >= 7)

-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:38:
+#define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) || IS_ALDERLAKE_S(i915))

-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:42:
+#define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))

-:31: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#31: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:44:
+#define HAS_DP20(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)

-:39: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#39: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:52:
+#define HAS_GMBUS_BURST_READ(i915)	(DISPLAY_VER(i915) >= 10 || IS_KABYLAKE(i915))

-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:54:
+#define HAS_HW_SAGV_WM(i915)		(DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))

-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#43: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:56:
+#define HAS_IPS(i915)			(IS_HSW_ULT(i915) || IS_BROADWELL(i915))

-:45: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#45: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:58:
+#define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)

-:51: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#51: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:64:
+#define HAS_SAGV(i915)			(DISPLAY_VER(i915) >= 9 && !IS_LP(i915))

total: 0 errors, 0 warnings, 9 checks, 161 lines checked


