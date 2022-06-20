Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7914552859
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 01:34:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83F4210ECE4;
	Mon, 20 Jun 2022 23:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0D4B910ECE4;
 Mon, 20 Jun 2022 23:34:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01E46AA914;
 Mon, 20 Jun 2022 23:34:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 20 Jun 2022 23:34:46 -0000
Message-ID: <165576808697.12732.11170580742617162424@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1655748056.git.jani.nikula@intel.com>
In-Reply-To: <cover.1655748056.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_move_display_feature_check_macros_out_of_i915?=
 =?utf-8?b?X2Rydi5o?=
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

Series: drm/i915: move display feature check macros out of i915_drv.h
URL   : https://patchwork.freedesktop.org/series/105381/
State : warning

== Summary ==

Error: dim checkpatch failed
15d736930b6b drm/i915/display: spread out HAS_*() feature macros
-:47: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#47: FILE: drivers/gpu/drm/i915/display/intel_cursor.c:27:
+#define HAS_CUR_FBC(__i915) (!HAS_GMCH(__i915) && DISPLAY_VER(__i915) >= 7)

-:87: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#87: FILE: drivers/gpu/drm/i915/display/intel_gmbus.c:42:
+#define HAS_GMBUS_BURST_READ(__i915) \
+	(DISPLAY_VER(__i915) >= 11 || IS_GEMINILAKE(__i915) || IS_KABYLAKE(__i915))

-:233: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#233: FILE: drivers/gpu/drm/i915/intel_pm.c:61:
+#define HAS_HW_SAGV_WM(__i915) (DISPLAY_VER(__i915) >= 13 && !IS_DGFX(__i915))

total: 0 errors, 0 warnings, 3 checks, 169 lines checked
bf2a38879dbd drm/i915/display: add intel_display_features.h for feature check macros
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/display/intel_display_features.h:11:
+#define HAS_D12_PLANE_MINIMIZATION(__i915) (IS_ROCKETLAKE(__i915) || IS_ALDERLAKE_S(__i915))

-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/display/intel_display_features.h:13:
+#define HAS_HW_SAGV_WM(__i915)		(DISPLAY_VER(__i915) >= 13 && !IS_DGFX(__i915))

-:30: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#30: FILE: drivers/gpu/drm/i915/display/intel_display_features.h:14:
+#define HAS_IPS(__i915)			(IS_HSW_ULT(__i915) || IS_BROADWELL(__i915))

-:35: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#35: FILE: drivers/gpu/drm/i915/display/intel_display_features.h:19:
+#define HAS_DDI(__i915)^I^I ^I(INTEL_INFO(__i915)->display.has_ddi)$

-:41: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#41: FILE: drivers/gpu/drm/i915/display/intel_display_features.h:25:
+#define HAS_PSR(__i915)^I^I ^I(INTEL_INFO(__i915)->display.has_psr)$

-:42: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/display/intel_display_features.h:26:
+#define HAS_TRANSCODER(__i915, trans)	((INTEL_INFO(__i915)->display.cpu_transcoder_mask & BIT(trans)) != 0)

-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#48: FILE: drivers/gpu/drm/i915/display/intel_display_features.h:32:
+#define INTEL_DISPLAY_ENABLED(__i915) \
+	(drm_WARN_ON(&(__i915)->drm, !HAS_DISPLAY(__i915)),		\
+	 !(__i915)->params.disable_display &&				\
+	 !intel_opregion_headless_sku(__i915))

total: 0 errors, 4 warnings, 4 checks, 164 lines checked


