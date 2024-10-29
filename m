Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BB99B56A8
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 00:22:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DCBA10E3C4;
	Tue, 29 Oct 2024 23:22:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89EE410E3C0;
 Tue, 29 Oct 2024 23:22:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?bunch_of_struct_intel=5Fdisplay_conversions_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2024 23:22:53 -0000
Message-ID: <173024417355.1362048.15850975919086569848@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1730146000.git.jani.nikula@intel.com>
In-Reply-To: <cover.1730146000.git.jani.nikula@intel.com>
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

Series: drm/i915/display: bunch of struct intel_display conversions (rev6)
URL   : https://patchwork.freedesktop.org/series/140324/
State : warning

== Summary ==

Error: dim checkpatch failed
ad128789ff31 drm/i915/gmbus: convert to struct intel_display
c7142960f3a5 drm/i915/cx0: remove unnecessary includes
df827e9677c3 drm/i915/cx0: convert to struct intel_display
-:463: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#463: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2436:
+									  PHY_C20_B_MPLLB_CNTX_CFG(display, i));

-:468: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#468: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2440:
+									  PHY_C20_A_MPLLB_CNTX_CFG(display, i));

-:477: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#477: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2448:
+									  PHY_C20_B_MPLLA_CNTX_CFG(display, i));

-:482: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#482: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2452:
+									  PHY_C20_A_MPLLA_CNTX_CFG(display, i));

-:639: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#639: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2799:
+		if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),

total: 0 errors, 5 warnings, 0 checks, 1002 lines checked
52d79f2979c0 drm/i915/dpio: convert to struct intel_display
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
293faf775a6e drm/i915/hdcp: further conversion to struct intel_display
2c36b8e22ec1 drm/i915/dp/hdcp: convert to struct intel_display
43f7b275058c drm/i915/crt: convert to struct intel_display
-:220: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#220: FILE: drivers/gpu/drm/i915/display/intel_crt.c:497:
+		save_adpa = adpa = intel_de_read(display, crt->adpa_reg);

-:274: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#274: FILE: drivers/gpu/drm/i915/display/intel_crt.c:557:
+	save_adpa = adpa = intel_de_read(display, crt->adpa_reg);

-:706: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#706: FILE: drivers/gpu/drm/i915/display/intel_crt.h:26:
 }
+static inline void intel_crt_init(struct intel_display *display)

-:776: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#776: FILE: drivers/gpu/drm/i915/display/intel_pch_display.c:89:
+				 intel_crt_port_enabled(display, PCH_ADPA, &port_pipe) && port_pipe == pipe,

total: 0 errors, 1 warnings, 3 checks, 697 lines checked
a0f1db2be274 drm/i915/display: convert vlv_wait_port_ready() to struct intel_display
12892fe486da drm/i915/power: convert assert_chv_phy_status() to struct intel_display
4ec3133642a3 drm/i915/ips: convert to struct intel_display
4bfc289ec3b3 drm/i915/dsi: convert to struct intel_display
-:1366: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1366: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:2041:
+	if (drm_WARN_ON(display->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))

total: 0 errors, 1 warnings, 0 checks, 1302 lines checked
a594d4aa014e drm/i915/de: remove unnecessary generic wrappers


