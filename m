Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA339AE707
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 15:54:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 849FA10E1C6;
	Thu, 24 Oct 2024 13:54:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D14010E1C6;
 Thu, 24 Oct 2024 13:54:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?bunch_of_struct_intel=5Fdisplay_conversions_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2024 13:54:23 -0000
Message-ID: <172977806357.1327227.9264874088778135003@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1729776384.git.jani.nikula@intel.com>
In-Reply-To: <cover.1729776384.git.jani.nikula@intel.com>
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

Series: drm/i915/display: bunch of struct intel_display conversions (rev2)
URL   : https://patchwork.freedesktop.org/series/140324/
State : warning

== Summary ==

Error: dim checkpatch failed
d282cc2f14cc drm/i915/gmbus: convert to struct intel_display
8a9e738a38ef drm/i915/cx0: remove unnecessary includes
e21f98e6736d drm/i915/cx0: convert to struct intel_display
-:440: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#440: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2422:
+									  PHY_C20_B_MPLLB_CNTX_CFG(display, i));

-:445: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#445: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2426:
+									  PHY_C20_A_MPLLB_CNTX_CFG(display, i));

-:454: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#454: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2434:
+									  PHY_C20_B_MPLLA_CNTX_CFG(display, i));

-:459: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#459: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2438:
+									  PHY_C20_A_MPLLA_CNTX_CFG(display, i));

-:616: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#616: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2785:
+		if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),

total: 0 errors, 5 warnings, 0 checks, 984 lines checked
68079b550521 drm/i915/dpio: convert to struct intel_display
-:565: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#565: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:84:
 }
+static inline void bxt_dpio_phy_init(struct intel_display *display, enum dpio_phy phy)

-:569: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#569: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:87:
 }
+static inline void bxt_dpio_phy_uninit(struct intel_display *display, enum dpio_phy phy)

-:573: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#573: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:90:
 }
+static inline bool bxt_dpio_phy_is_enabled(struct intel_display *display,

-:579: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#579: FILE: drivers/gpu/drm/i915/display/intel_dpio_phy.h:95:
 }
+static inline bool bxt_dpio_phy_verify_state(struct intel_display *display,

total: 0 errors, 0 warnings, 4 checks, 570 lines checked
4f165ac3f8db drm/i915/hdcp: further conversion to struct intel_display
6e383bc80ce8 drm/i915/dp/hdcp: convert to struct intel_display
ad7373bc7187 drm/i915/crt: convert to struct intel_display
-:218: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#218: FILE: drivers/gpu/drm/i915/display/intel_crt.c:497:
+		save_adpa = adpa = intel_de_read(display, crt->adpa_reg);

-:272: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#272: FILE: drivers/gpu/drm/i915/display/intel_crt.c:557:
+	save_adpa = adpa = intel_de_read(display, crt->adpa_reg);

-:704: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#704: FILE: drivers/gpu/drm/i915/display/intel_crt.h:26:
 }
+static inline void intel_crt_init(struct intel_display *display)

total: 0 errors, 0 warnings, 3 checks, 704 lines checked
bbcf323661c2 drm/i915/display: convert vlv_wait_port_ready() to struct intel_display
597e6b7ef0c2 drm/i915/power: convert assert_chv_phy_status() to struct intel_display
a65f20aa9010 drm/i915/ips: convert to struct intel_display
c9eaf1c29853 drm/i915/dsi: convert to struct intel_display
-:1366: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1366: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:2041:
+	if (drm_WARN_ON(display->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))

total: 0 errors, 1 warnings, 0 checks, 1302 lines checked
15b0c6aa1526 drm/i915/de: remove unnecessary generic wrappers


