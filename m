Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89504A6BA24
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 12:53:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB22710E79D;
	Fri, 21 Mar 2025 11:53:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A825F898A7;
 Fri, 21 Mar 2025 11:53:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?yet_another_batch_of_struct_intel=5Fdisplay_conversions?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Mar 2025 11:53:00 -0000
Message-ID: <174255798068.64272.15166542298189589970@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <cover.1742554320.git.jani.nikula@intel.com>
In-Reply-To: <cover.1742554320.git.jani.nikula@intel.com>
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

Series: drm/i915/display: yet another batch of struct intel_display conversions
URL   : https://patchwork.freedesktop.org/series/146582/
State : warning

== Summary ==

Error: dim checkpatch failed
ea9cbbd3558f drm/i915/dsi: convert vlv_dsi.[ch] to struct intel_display
-:682: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#682: FILE: drivers/gpu/drm/i915/display/vlv_dsi.h:26:
 }
+static inline void vlv_dsi_init(struct intel_display *display)

total: 0 errors, 0 warnings, 1 checks, 605 lines checked
c8c08f9fd44c drm/i915/dsi: convert vlv_dsi_pll.[ch] to struct intel_display
48320265108b drm/i915/dsi: convert parameter printing to drm_printer
af4672bd1266 drm/i915/dsi: convert intel_dsi_vbt.[ch] to struct intel_display
c96d3c9baa83 drm/i915/dsi: convert intel_dsi_dcs_backlight.c to struct intel_display
6367bdcc4717 drm/i915/dvo: convert intel_dvo.[ch] to struct intel_display
cf11282c5154 drm/i915/lvds: convert intel_lvds.[ch] to struct intel_display
-:632: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#632: FILE: drivers/gpu/drm/i915/display/intel_lvds.h:28:
 }
+static inline void intel_lvds_init(struct intel_display *display)

-:636: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#636: FILE: drivers/gpu/drm/i915/display/intel_lvds.h:31:
 }
+static inline struct intel_encoder *intel_get_lvds_encoder(struct intel_display *display)

-:641: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#641: FILE: drivers/gpu/drm/i915/display/intel_lvds.h:35:
 }
+static inline bool intel_is_dual_link_lvds(struct intel_display *display)

-:654: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#654: FILE: drivers/gpu/drm/i915/display/intel_pch_display.c:96:
+				 intel_lvds_port_enabled(display, PCH_LVDS, &port_pipe) && port_pipe == pipe,

total: 0 errors, 1 warnings, 3 checks, 589 lines checked
cc8de20814b4 drm/i915/tc: convert intel_tc.c to struct intel_display
-:860: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#860: FILE: drivers/gpu/drm/i915/display/intel_tc.c:1784:
+	drm_WARN_ON(display->drm, tc->mode != TC_PORT_TBT_ALT &&
 				!tc_phy_is_owned(tc));

total: 0 errors, 0 warnings, 1 checks, 821 lines checked
f813e85c68cf drm/i915/atomic: convert intel_atomic.c to struct intel_display
6de12d76f304 drm/i915/display: convert intel_crtc_state_dump.c to struct intel_display
06b4f3a62d4d drm/i915/pch: convert intel_pch_display.[ch] to struct intel_display
-:486: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#486: FILE: drivers/gpu/drm/i915/display/intel_pch_display.h:93:
 }
+static inline void intel_pch_sanitize(struct intel_display *display)

total: 0 errors, 0 warnings, 1 checks, 438 lines checked
6387d4910043 drm/i915/pch: convert intel_pch_refclk.c to struct intel_display
-:467: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#467: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.h:26:
 }
+static inline void lpt_disable_iclkip(struct intel_display *display)

-:471: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#471: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.h:29:
 }
+static inline int lpt_get_iclkip(struct intel_display *display)

-:480: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#480: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.h:37:
 }
+static inline void intel_init_pch_refclk(struct intel_display *display)

-:484: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#484: FILE: drivers/gpu/drm/i915/display/intel_pch_refclk.h:40:
 }
+static inline void lpt_disable_clkout_dp(struct intel_display *display)

total: 0 errors, 0 warnings, 4 checks, 434 lines checked


