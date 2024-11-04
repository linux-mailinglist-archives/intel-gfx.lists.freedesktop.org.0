Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E73AC9BBC5F
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 18:51:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B15410E10C;
	Mon,  4 Nov 2024 17:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD88010E10C;
 Mon,  4 Nov 2024 17:51:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?convert_display_feature_helpers_to_struct_intel=5Fdisplay?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 04 Nov 2024 17:51:32 -0000
Message-ID: <173074269277.1400593.10451648486621408067@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1730740629.git.jani.nikula@intel.com>
In-Reply-To: <cover.1730740629.git.jani.nikula@intel.com>
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

Series: drm/i915/display: convert display feature helpers to struct intel_display
URL   : https://patchwork.freedesktop.org/series/140886/
State : warning

== Summary ==

Error: dim checkpatch failed
53184469be94 drm/i915/display: identify discrete graphics
ee81f136f724 drm/i915/display: convert HAS_D12_PLANE_MINIMIZATION() to struct intel_display
-:34: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#34: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:147:
+#define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)

-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#34: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:147:
+#define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)

total: 0 errors, 1 warnings, 1 checks, 68 lines checked
93fd1fe4ac07 drm/i915/display: convert HAS_4TILE() to struct intel_display
-:20: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#20: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:141:
+#define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)

total: 0 errors, 0 warnings, 1 checks, 56 lines checked
9afa92b7a8d2 drm/i915/display: convert HAS_DOUBLE_BUFFERED_M_N() to struct intel_display
-:42: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#42: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:152:
+#define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:152:
+#define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)

total: 0 errors, 1 warnings, 1 checks, 48 lines checked
8a57e86596b6 drm/i915/display: convert HAS_DP20() to struct intel_display
-:142: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#142: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:154:
+#define HAS_DP20(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)

total: 0 errors, 0 warnings, 1 checks, 146 lines checked
dfb23d4815a7 drm/i915/display: convert HAS_GMBUS_BURST_READ() to struct intel_display
-:21: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#21: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:163:
+#define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)

-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:163:
+#define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)

total: 0 errors, 1 warnings, 1 checks, 23 lines checked
0ed6a2d6a910 drm/i915/display: convert HAS_IPS() to struct intel_display
-:56: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:167:
+#define HAS_IPS(__display)		((__display)->platform.haswell_ult || (__display)->platform.broadwell)

-:56: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#56: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:167:
+#define HAS_IPS(__display)		((__display)->platform.haswell_ult || (__display)->platform.broadwell)

total: 0 errors, 1 warnings, 1 checks, 33 lines checked
e8b5d5cae62b drm/i915/display: convert HAS_MBUS_JOINING() to struct intel_display
-:21: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#21: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:170:
+#define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p || DISPLAY_VER(__display) >= 14)

-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:170:
+#define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p || DISPLAY_VER(__display) >= 14)

total: 0 errors, 1 warnings, 1 checks, 61 lines checked
6137c255aa0c drm/i915/display: convert HAS_SAGV() to struct intel_display
-:20: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#20: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:176:
+#define HAS_SAGV(__display)		(DISPLAY_VER(__display) >= 9 && \
+					 !(__display)->platform.broxton && !(__display)->platform.geminilake)

-:21: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#21: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:177:
+					 !(__display)->platform.broxton && !(__display)->platform.geminilake)

total: 0 errors, 1 warnings, 1 checks, 115 lines checked
b4e771cdb0f4 drm/i915/display: convert HAS_HW_SAGV_WM() to struct intel_display
-:50: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#50: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:165:
+#define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)

-:50: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#50: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:165:
+#define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)

total: 0 errors, 1 warnings, 1 checks, 161 lines checked
a77de9a6cfd5 drm/i915/display: convert HAS_ULTRAJOINER() to struct intel_display
-:80: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#80: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:181:
+#define HAS_ULTRAJOINER(__display)	((DISPLAY_VER(__display) >= 20 || \
+					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
+					 HAS_DSC(__display))

-:81: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#81: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:182:
+					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \

total: 0 errors, 1 warnings, 1 checks, 75 lines checked
73f7fcbd0c1e drm/i915/display: rename i915 parameter to __display in feature helpers
-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:143:
+#define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))

-:30: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#30: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:146:
+#define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))

-:36: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#36: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:148:
+#define HAS_DBUF_OVERLAP_DETECTION(__display)	(DISPLAY_RUNTIME_INFO(__display)->has_dbuf_overlap_detection)

-:55: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#55: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:158:
+#define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))

-:87: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#87: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:178:
+#define HAS_TRANSCODER(__display, trans)	((DISPLAY_RUNTIME_INFO(__display)->cpu_transcoder_mask & \

-:110: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#110: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:193:
+#define IS_DISPLAY_VERx100(__display, from, until) ( \
 	BUILD_BUG_ON_ZERO((from) < 200) + \
+	(DISPLAY_VERx100(__display) >= (from) && \
+	 DISPLAY_VERx100(__display) <= (until)))

-:110: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'from' - possible side-effects?
#110: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:193:
+#define IS_DISPLAY_VERx100(__display, from, until) ( \
 	BUILD_BUG_ON_ZERO((from) < 200) + \
+	(DISPLAY_VERx100(__display) >= (from) && \
+	 DISPLAY_VERx100(__display) <= (until)))

-:134: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#134: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:213:
+#define IS_DISPLAY_VERx100_STEP(__display, ipver, from, until) \
+	(IS_DISPLAY_VERx100((__display), (ipver), (ipver)) && \
+	 IS_DISPLAY_STEP((__display), (from), (until)))

-:134: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ipver' - possible side-effects?
#134: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:213:
+#define IS_DISPLAY_VERx100_STEP(__display, ipver, from, until) \
+	(IS_DISPLAY_VERx100((__display), (ipver), (ipver)) && \
+	 IS_DISPLAY_STEP((__display), (from), (until)))

-:149: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#149: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:221:
+#define DISPLAY_VERx100(__display)	(DISPLAY_RUNTIME_INFO(__display)->ip.ver * 100 + \
+					 DISPLAY_RUNTIME_INFO(__display)->ip.rel)

-:151: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#151: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:223:
+#define IS_DISPLAY_VER(__display, from, until) \
+	(DISPLAY_VER(__display) >= (from) && DISPLAY_VER(__display) <= (until))

-:160: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#160: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:228:
+#define IS_DISPLAY_STEP(__display, since, until) \
+	(drm_WARN_ON(__to_intel_display(__display)->drm, INTEL_DISPLAY_STEP(__display) == STEP_NONE), \
+	 INTEL_DISPLAY_STEP(__display) >= (since) && INTEL_DISPLAY_STEP(__display) < (until))

-:161: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#161: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:229:
+	(drm_WARN_ON(__to_intel_display(__display)->drm, INTEL_DISPLAY_STEP(__display) == STEP_NONE), \

total: 0 errors, 3 warnings, 10 checks, 147 lines checked
38bff7af6490 drm/i915/display: convert display device identification to struct intel_display
54aba0c85fe6 drm/i915/display: pass struct pci_dev * to intel_display_device_probe()
0a75e50a17cc drm/i915/display: add mobile platform group
-:115: WARNING:LONG_LINE_COMMENT: line length of 134 exceeds 100 columns
#115: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:479:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */

-:152: WARNING:LONG_LINE_COMMENT: line length of 134 exceeds 100 columns
#152: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:504:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */

total: 0 errors, 2 warnings, 0 checks, 180 lines checked


