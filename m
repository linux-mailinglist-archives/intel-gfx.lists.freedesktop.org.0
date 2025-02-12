Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8548CA3315D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 22:20:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF31710E03F;
	Wed, 12 Feb 2025 21:20:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6030110E03F;
 Wed, 12 Feb 2025 21:19:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?conversions_to_struct_intel=5Fdisplay?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2025 21:19:59 -0000
Message-ID: <173939519938.1431672.15616677962208471911@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1739378095.git.jani.nikula@intel.com>
In-Reply-To: <cover.1739378095.git.jani.nikula@intel.com>
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

Series: drm/i915/display: conversions to struct intel_display
URL   : https://patchwork.freedesktop.org/series/144748/
State : warning

== Summary ==

Error: dim checkpatch failed
a146155ca1cd drm/i915/dp: convert g4x_dp.[ch] to struct intel display
-:349: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#349: FILE: drivers/gpu/drm/i915/display/g4x_dp.h:32:
 }
+static inline bool g4x_dp_port_enabled(struct intel_display *display,

-:356: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#356: FILE: drivers/gpu/drm/i915/display/g4x_dp.h:38:
 }
+static inline bool g4x_dp_init(struct intel_display *display,

total: 0 errors, 0 warnings, 2 checks, 431 lines checked
9549a0945a42 drm/i915/hdmi: convert g4x_hdmi.[ch] to struct intel_display
62ec4880efc5 drm/i915/ips: convert hsw_ips.c to struct intel_display
b62006beb265 drm/i915/display: convert assert_transcoder*() to struct intel_display
008508f7d91c drm/i915/display: convert assert_port_valid() to struct intel_display
d397e2b12f72 drm/i915/hpd: drop dev_priv parameter from intel_hpd_pin_default()
a2f2b5abd6c1 drm/i915/display: convert intel_set_{cpu, pch}_fifo_underrun_reporting() to intel_display
b00286055884 drm/i915/sdvo: convert intel_sdvo.[ch] to struct intel_display
-:960: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#960: FILE: drivers/gpu/drm/i915/display/intel_sdvo.c:3170:
+			drm_property_create_range(display->drm, 0, "right_margin", 0, data_value[0]);

-:1157: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#1157: FILE: drivers/gpu/drm/i915/display/intel_sdvo.h:28:
 }
+static inline bool intel_sdvo_init(struct intel_display *display,

total: 0 errors, 1 warnings, 1 checks, 1036 lines checked
f0a80538b060 drm/i915/display: convert intel_cpu_transcoder_mode_valid() to intel_display
443821a9d111 drm/i915/display: convert intel_mode_valid_max_plane_size() to intel_display
f037c1c020e8 drm/i915/dsi: convert platform checks to display->platform.<platform> style
4041ad28d05d drm/i915/combo-phy: convert intel_combo_phy.[ch] to struct intel_display
-:61: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__phy' - possible side-effects?
#61: FILE: drivers/gpu/drm/i915/display/intel_combo_phy.c:13:
+#define for_each_combo_phy(__display, __phy) \
 	for ((__phy) = PHY_A; (__phy) < I915_MAX_PHYS; (__phy)++)	\
+		for_each_if(intel_phy_is_combo(__display, __phy))

-:67: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__phy' - possible side-effects?
#67: FILE: drivers/gpu/drm/i915/display/intel_combo_phy.c:17:
+#define for_each_combo_phy_reverse(__display, __phy) \
 	for ((__phy) = I915_MAX_PHYS; (__phy)-- > PHY_A;) \
+		for_each_if(intel_phy_is_combo(__display, __phy))

total: 0 errors, 0 warnings, 2 checks, 531 lines checked
250b2e0262b0 drm/i915/display: convert intel_fifo_underrun.[ch] to struct intel_display
863ed0d1a293 drm/i915/display: convert i915_pipestat_enable_mask() to struct intel_display


