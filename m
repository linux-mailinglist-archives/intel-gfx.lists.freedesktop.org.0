Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0551A70791F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 06:34:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 835E310E4F4;
	Thu, 18 May 2023 04:34:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E475B10E4DE;
 Thu, 18 May 2023 04:34:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DDB7BA7DFF;
 Thu, 18 May 2023 04:34:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 18 May 2023 04:34:37 -0000
Message-ID: <168438447787.2370.4742060980829749336@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230518031804.3133486-1-matthew.d.roper@intel.com>
In-Reply-To: <20230518031804.3133486-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Move_display_identification/probing_under_display/?=
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

Series: i915: Move display identification/probing under display/
URL   : https://patchwork.freedesktop.org/series/117931/
State : warning

== Summary ==

Error: dim checkpatch failed
9c8f732467ae drm/i915/display: Move display device info to header under display/
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:14: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#14: 
new file mode 100644

-:31: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#31: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:13:
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

-:31: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'func' - possible side-effects?
#31: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:13:
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

-:31: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#31: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:13:
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
133ee53cfbb9 drm/i915: Convert INTEL_INFO()->display to a pointer
-:225: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#225: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:39:
+#define _MMIO_PIPE2(pipe, reg)		_MMIO(INTEL_INFO(dev_priv)->display->pipe_offsets[(pipe)] - \

-:226: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#226: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:40:
+					      INTEL_INFO(dev_priv)->display->pipe_offsets[PIPE_A] + \

-:230: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#230: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:42:
+#define _MMIO_TRANS2(tran, reg)		_MMIO(INTEL_INFO(dev_priv)->display->trans_offsets[(tran)] - \

-:231: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#231: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:43:
+					      INTEL_INFO(dev_priv)->display->trans_offsets[TRANSCODER_A] + \

-:235: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#235: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:45:
+#define _MMIO_CURSOR2(pipe, reg)	_MMIO(INTEL_INFO(dev_priv)->display->cursor_offsets[(pipe)] - \

-:236: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#236: FILE: drivers/gpu/drm/i915/display/intel_display_reg_defs.h:46:
+					      INTEL_INFO(dev_priv)->display->cursor_offsets[PIPE_A] + \

-:1192: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#1192: FILE: drivers/gpu/drm/i915/i915_pci.c:844:
+	.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \

-:1724: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#1724: FILE: drivers/gpu/drm/i915/intel_device_info.c:141:
+#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->display->name))

total: 0 errors, 7 warnings, 1 checks, 1602 lines checked
49bdae529172 drm/i915/display: Move display runtime info to display structure
-:60: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#60: FILE: drivers/gpu/drm/i915/display/intel_display.h:108:
+#define sprite_name(p, s) ((p) * DISPLAY_RUNTIME_INFO(dev_priv)->num_sprites[(p)] + (s) + 'A')

-:78: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#78: FILE: drivers/gpu/drm/i915/display/intel_display.h:232:
+		for_each_if (DISPLAY_RUNTIME_INFO(__dev_priv)->cpu_transcoder_mask & BIT(__t))

-:186: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#186: FILE: drivers/gpu/drm/i915/i915_drv.h:208:
+	struct intel_display_runtime_info __display_runtime; /* Access with DISPLAY_RUNTIME_INFO() */

-:223: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#223: FILE: drivers/gpu/drm/i915/i915_drv.h:836:
+#define HAS_TRANSCODER(i915, trans)	 ((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & BIT(trans)) != 0)

-:706: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#706: FILE: drivers/gpu/drm/i915/i915_pci.c:1114:
+	.__runtime.has_dsc = 1, \

total: 0 errors, 4 warnings, 1 checks, 1017 lines checked
2fdf97b92a44 drm/i915/display: Make display responsible for probing its own IP
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:35: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#35: 
new file mode 100644

-:439: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#439: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:400:
+	.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \

-:529: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#529: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:490:
+	.__runtime.has_dsc = 1, \

total: 0 errors, 3 warnings, 0 checks, 1854 lines checked
1c665df223ac drm/i915/display: Handle GMD_ID identification in display code
-:103: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#103: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:742:
+			return (const struct intel_display_device_info *)intel_display_ids[i].driver_data;

total: 0 errors, 1 warnings, 0 checks, 156 lines checked


