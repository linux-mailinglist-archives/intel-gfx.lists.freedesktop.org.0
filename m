Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 934779C3F42
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 14:08:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33E9D10E057;
	Mon, 11 Nov 2024 13:08:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE87610E057;
 Mon, 11 Nov 2024 13:08:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?convert_display_feature_helpers_to_struct_intel=5Fdisplay_=28rev6?=
 =?utf-8?q?=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2024 13:08:11 -0000
Message-ID: <173133049176.2578636.11488234172748763886@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1731321183.git.jani.nikula@intel.com>
In-Reply-To: <cover.1731321183.git.jani.nikula@intel.com>
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

Series: drm/i915/display: convert display feature helpers to struct intel_display (rev6)
URL   : https://patchwork.freedesktop.org/series/140886/
State : warning

== Summary ==

Error: dim checkpatch failed
963e4875b6cd drm/i915/display: identify discrete graphics
807910abe4f5 drm/i915/display: convert HAS_D12_PLANE_MINIMIZATION() to struct intel_display
-:36: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#36: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:147:
+#define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)

-:36: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#36: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:147:
+#define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)

total: 0 errors, 1 warnings, 1 checks, 68 lines checked
01844471caf8 drm/i915/display: convert HAS_4TILE() to struct intel_display
-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:141:
+#define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)

total: 0 errors, 0 warnings, 1 checks, 56 lines checked
321a4a5bc6a3 drm/i915/display: convert HAS_DOUBLE_BUFFERED_M_N() to struct intel_display
-:46: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:153:
+#define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)

-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#46: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:153:
+#define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)

total: 0 errors, 1 warnings, 1 checks, 48 lines checked
1fb75cdc11d3 drm/i915/display: convert HAS_DP20() to struct intel_display
-:149: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#149: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:156:
+#define HAS_DP20(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)

total: 0 errors, 0 warnings, 1 checks, 150 lines checked
50407ccaf4e6 drm/i915/display: convert HAS_GMBUS_BURST_READ() to struct intel_display
-:23: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#23: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:165:
+#define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)

-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:165:
+#define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)

total: 0 errors, 1 warnings, 1 checks, 23 lines checked
eb0f9751f65a drm/i915/display: convert HAS_IPS() to struct intel_display
-:58: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:169:
+#define HAS_IPS(__display)		((__display)->platform.haswell_ult || (__display)->platform.broadwell)

-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:169:
+#define HAS_IPS(__display)		((__display)->platform.haswell_ult || (__display)->platform.broadwell)

total: 0 errors, 1 warnings, 1 checks, 33 lines checked
68ff96810192 drm/i915/display: convert HAS_MBUS_JOINING() to struct intel_display
-:25: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#25: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:172:
+#define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p || DISPLAY_VER(__display) >= 14)

-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:172:
+#define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p || DISPLAY_VER(__display) >= 14)

total: 0 errors, 1 warnings, 1 checks, 82 lines checked
2fdd5bd18229 drm/i915/display: convert HAS_SAGV() to struct intel_display
-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:178:
+#define HAS_SAGV(__display)		(DISPLAY_VER(__display) >= 9 && \
+					 !(__display)->platform.broxton && !(__display)->platform.geminilake)

-:23: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#23: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:179:
+					 !(__display)->platform.broxton && !(__display)->platform.geminilake)

total: 0 errors, 1 warnings, 1 checks, 115 lines checked
bb8a0bff017e drm/i915/display: convert HAS_HW_SAGV_WM() to struct intel_display
-:54: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#54: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:167:
+#define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)

-:54: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#54: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:167:
+#define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)

total: 0 errors, 1 warnings, 1 checks, 161 lines checked
aa1c3b175052 drm/i915/display: convert HAS_ULTRAJOINER() to struct intel_display
-:82: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#82: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:183:
+#define HAS_ULTRAJOINER(__display)	((DISPLAY_VER(__display) >= 20 || \
+					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
+					 HAS_DSC(__display))

-:83: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#83: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:184:
+					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \

total: 0 errors, 1 warnings, 1 checks, 75 lines checked
d3a5346dc04d drm/i915/display: rename i915 parameter to __display in feature helpers
-:30: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#30: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:143:
+#define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))

-:33: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#33: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:146:
+#define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))

-:40: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:148:
+#define HAS_DBUF_OVERLAP_DETECTION(__display)	(DISPLAY_RUNTIME_INFO(__display)->has_dbuf_overlap_detection)

-:62: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#62: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:160:
+#define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))

-:94: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:180:
+#define HAS_TRANSCODER(__display, trans)	((DISPLAY_RUNTIME_INFO(__display)->cpu_transcoder_mask & \

-:117: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#117: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:195:
+#define IS_DISPLAY_VERx100(__display, from, until) ( \
 	BUILD_BUG_ON_ZERO((from) < 200) + \
+	(DISPLAY_VERx100(__display) >= (from) && \
+	 DISPLAY_VERx100(__display) <= (until)))

-:117: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'from' - possible side-effects?
#117: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:195:
+#define IS_DISPLAY_VERx100(__display, from, until) ( \
 	BUILD_BUG_ON_ZERO((from) < 200) + \
+	(DISPLAY_VERx100(__display) >= (from) && \
+	 DISPLAY_VERx100(__display) <= (until)))

-:141: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#141: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:215:
+#define IS_DISPLAY_VERx100_STEP(__display, ipver, from, until) \
+	(IS_DISPLAY_VERx100((__display), (ipver), (ipver)) && \
+	 IS_DISPLAY_STEP((__display), (from), (until)))

-:141: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ipver' - possible side-effects?
#141: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:215:
+#define IS_DISPLAY_VERx100_STEP(__display, ipver, from, until) \
+	(IS_DISPLAY_VERx100((__display), (ipver), (ipver)) && \
+	 IS_DISPLAY_STEP((__display), (from), (until)))

-:156: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#156: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:223:
+#define DISPLAY_VERx100(__display)	(DISPLAY_RUNTIME_INFO(__display)->ip.ver * 100 + \
+					 DISPLAY_RUNTIME_INFO(__display)->ip.rel)

-:158: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#158: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:225:
+#define IS_DISPLAY_VER(__display, from, until) \
+	(DISPLAY_VER(__display) >= (from) && DISPLAY_VER(__display) <= (until))

-:167: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__display' - possible side-effects?
#167: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:230:
+#define IS_DISPLAY_STEP(__display, since, until) \
+	(drm_WARN_ON(__to_intel_display(__display)->drm, INTEL_DISPLAY_STEP(__display) == STEP_NONE), \
+	 INTEL_DISPLAY_STEP(__display) >= (since) && INTEL_DISPLAY_STEP(__display) < (until))

-:168: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#168: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:231:
+	(drm_WARN_ON(__to_intel_display(__display)->drm, INTEL_DISPLAY_STEP(__display) == STEP_NONE), \

total: 0 errors, 3 warnings, 10 checks, 151 lines checked
f4d732e034ee drm/i915/display: convert display device identification to struct intel_display
eef1102af812 drm/i915/display: pass struct pci_dev * to intel_display_device_probe()
4ce4c48b4291 drm/i915/display: add mobile platform group
-:119: WARNING:LONG_LINE_COMMENT: line length of 134 exceeds 100 columns
#119: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:479:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */

-:156: WARNING:LONG_LINE_COMMENT: line length of 134 exceeds 100 columns
#156: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:504:
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */

total: 0 errors, 2 warnings, 0 checks, 180 lines checked


