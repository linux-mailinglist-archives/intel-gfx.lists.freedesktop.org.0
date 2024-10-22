Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CE69AB47F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 18:57:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C058310E106;
	Tue, 22 Oct 2024 16:57:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8313310E106;
 Tue, 22 Oct 2024 16:57:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?bunch_of_struct_intel=5Fdisplay_conversions?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2024 16:57:19 -0000
Message-ID: <172961623952.1310805.17858366047407045000@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1729612605.git.jani.nikula@intel.com>
In-Reply-To: <cover.1729612605.git.jani.nikula@intel.com>
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

Series: drm/i915/display: bunch of struct intel_display conversions
URL   : https://patchwork.freedesktop.org/series/140324/
State : warning

== Summary ==

Error: dim checkpatch failed
cdfb5982a17c drm/i915/gmbus: convert to struct intel_display
f5b020b2bfb3 drm/i915/cx0: convert to struct intel_display
-:540: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#540: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2767:
+		if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),

total: 0 errors, 1 warnings, 0 checks, 904 lines checked
153dc2b10458 drm/i915/dpio: convert to struct intel_display
-:564: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#564: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:84:
 }
+static inline void bxt_dpio_phy_init(struct intel_display *display, enum dpio_phy phy)

-:568: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#568: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:87:
 }
+static inline void bxt_dpio_phy_uninit(struct intel_display *display, enum dpio_phy phy)

-:572: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#572: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:90:
 }
+static inline bool bxt_dpio_phy_is_enabled(struct intel_display *display,

-:578: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#578: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:95:
 }
+static inline bool bxt_dpio_phy_verify_state(struct intel_display *display,

total: 0 errors, 0 warnings, 4 checks, 570 lines checked
f15d037d8e98 drm/i915/hdcp: further conversion to struct intel_display
8e1525a3a3db drm/i915/dp/hdcp: convert to struct intel_display
22fd06bb0d4b drm/i915/crt: convert to struct intel_display
-:217: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#217: FILE: drivers/gpu/drm/i915/display/intel_crt.c:497:
+		save_adpa = adpa = intel_de_read(display, crt->adpa_reg);

-:271: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#271: FILE: drivers/gpu/drm/i915/display/intel_crt.c:557:
+	save_adpa = adpa = intel_de_read(display, crt->adpa_reg);

-:672: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#672: FILE: drivers/gpu/drm/i915/display/intel_crt.c:1149:
+		display->fdi.rx_config = intel_de_read(display,
 								FDI_RX_CTL(PIPE_A)) & fdi_config;

-:701: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#701: FILE: drivers/gpu/drm/i915/display/intel_crt.h:26:
 }
+static inline void intel_crt_init(struct intel_display *display)

total: 0 errors, 0 warnings, 4 checks, 702 lines checked
14c3ad0c24b6 drm/i915/display: convert vlv_wait_port_ready() to struct intel_display
b7eba69ab26c drm/i915/power: convert assert_chv_phy_status() to struct intel_display
235efac53535 drm/i915/ips: convert to struct intel_display
07cb5a8c6df6 drm/i915/dsi: convert to struct intel_display
-:1365: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1365: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:2040:
+	if (drm_WARN_ON(display->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))

total: 0 errors, 1 warnings, 0 checks, 1302 lines checked
abb952626d5d drm/i915/de: remove unnecessary generic wrappers


