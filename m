Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5930EC2761A
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:04:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4A3C10E312;
	Sat,  1 Nov 2025 03:04:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ji7fLkQw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7181710E312;
 Sat,  1 Nov 2025 03:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761966290; x=1793502290;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3BIEOVchSKlZqU/BDQBwk8kPIwz4tdaA5yBcMlFieoU=;
 b=Ji7fLkQwp6AbHaGXKgT6XDeraEagZOpy52iDisDRi2K6cLQfvtk2YWGg
 W8/OY7ZFKMfrWnAXwe5l/yAGp27qk4Ww9AI5swDkVMPcUkXfxXYTcvwPW
 pxrxKylElINSd+Lz2Izy0LyIWWjISeRQHeEPZeGApBmMcPWzrtQ/KZ84A
 wAXds2ke4QLUxC9E2j4FOVRLygLl/z4fSMviKHskERrrh7mxkIqNoxYVk
 YjEHyWjRS0UHvZMvyqp8oy0XaYTMvrEXSVU2y5tW7q1GSmKB3h3ZXIz6V
 QJcHugT64zeu3pR0kT3w8cyHwHpKPZgMDU3+2RMmaq3QtJyw3gKjjHNvh w==;
X-CSE-ConnectionGUID: d6YE+vHeTHKUadoqVCuVGA==
X-CSE-MsgGUID: uTgc4mSsRH2eL2oE9b5QVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="81759501"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="81759501"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:04:49 -0700
X-CSE-ConnectionGUID: WlzOSa14QHevn2B/jOV8ww==
X-CSE-MsgGUID: e9WKyGwaQ5mVk13BnBXmEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217222565"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 31 Oct 2025 20:04:45 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v4 03/25] drm/i915/ltphy: Phy lane reset for LT Phy
Date: Sat,  1 Nov 2025 08:34:12 +0530
Message-Id: <20251101030434.4159839-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251101030434.4159839-1-suraj.kandpal@intel.com>
References: <20251101030434.4159839-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Define function to bring phy lane out of reset for LT Phy and the
corresponding pre-requisite steps before we follow the steps for
Phy lane reset. Also create a skeleton of LT PHY PLL enable sequence
function in which we can place this function

Bspec: 77449, 74749, 74499, 74495, 68960
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---

V1 -> V2: Align the definitions (Arun)

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   2 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   4 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 159 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_lt_phy.h   |  17 ++
 .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  17 ++
 drivers/gpu/drm/xe/Makefile                   |   1 +
 8 files changed, 202 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index be439fb45cca..df220f55cca8 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -356,6 +356,7 @@ i915-y += \
 	display/intel_gmbus.o \
 	display/intel_hdmi.o \
 	display/intel_lspcon.o \
+	display/intel_lt_phy.o \
 	display/intel_lvds.o \
 	display/intel_panel.o \
 	display/intel_pfit.o \
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 0b02163b545a..c99e0885e737 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2854,7 +2854,7 @@ static void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
 			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
 }
 
-static void intel_cx0_setup_powerdown(struct intel_encoder *encoder)
+void intel_cx0_setup_powerdown(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index c5a7b529955b..c92026fe7b8f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -41,6 +41,8 @@ bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
 				   const struct intel_cx0pll_state *b);
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
+int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
+void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 void intel_cx0_pll_power_save_wa(struct intel_display *display);
 void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index cd941f16529c..93bed6b0bda1 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -104,6 +104,8 @@
 #define   XELPDP_PORT_BUF_PORT_DATA_20BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 1)
 #define   XELPDP_PORT_BUF_PORT_DATA_40BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 2)
 #define   XELPDP_PORT_REVERSAL				REG_BIT(16)
+#define   XE3PLPDP_PHY_MODE_MASK			REG_GENMASK(15, 12)
+#define   XE3PLPDP_PHY_MODE_DP				REG_FIELD_PREP(XE3PLPDP_PHY_MODE_MASK, 0x3)
 #define   XELPDP_PORT_BUF_IO_SELECT_TBT			REG_BIT(11)
 #define   XELPDP_PORT_BUF_PHY_IDLE			REG_BIT(7)
 #define   XELPDP_TC_PHY_OWNERSHIP			REG_BIT(6)
@@ -124,6 +126,7 @@
 	 _XELPDP_PORT_BUF_CTL2(port))
 #define   XELPDP_LANE_PIPE_RESET(lane)			_PICK(lane, REG_BIT(31), REG_BIT(30))
 #define   XELPDP_LANE_PHY_CURRENT_STATUS(lane)		_PICK(lane, REG_BIT(29), REG_BIT(28))
+#define   XE3PLPDP_LANE_PHY_PULSE_STATUS(lane)		_PICK(lane, REG_BIT(27), REG_BIT(26))
 #define   XELPDP_LANE_POWERDOWN_UPDATE(lane)		_PICK(lane, REG_BIT(25), REG_BIT(24))
 #define   _XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK	REG_GENMASK(23, 20)
 #define   _XELPDP_LANE0_POWERDOWN_NEW_STATE(val)	REG_FIELD_PREP(_XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)
@@ -151,6 +154,7 @@
 #define   XELPDP_POWER_STATE_ACTIVE(val)		REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)
 #define   XELPDP_P0_STATE_ACTIVE			0x0
 #define   XELPDP_P2_STATE_READY				0x2
+#define   XE3PLPD_P4_STATE_DISABLE			0x4
 #define   XELPDP_P2PG_STATE_DISABLE			0x9
 #define   XELPDP_P4PG_STATE_DISABLE			0xC
 #define   XELPDP_P2_STATE_RESET				0x2
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
new file mode 100644
index 000000000000..c65333cc9494
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -0,0 +1,159 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+#include <drm/drm_print.h>
+
+#include "i915_reg.h"
+#include "intel_cx0_phy.h"
+#include "intel_cx0_phy_regs.h"
+#include "intel_de.h"
+#include "intel_display.h"
+#include "intel_display_types.h"
+#include "intel_lt_phy.h"
+#include "intel_lt_phy_regs.h"
+#include "intel_tc.h"
+
+#define INTEL_LT_PHY_LANE0		BIT(0)
+#define INTEL_LT_PHY_LANE1		BIT(1)
+#define INTEL_LT_PHY_BOTH_LANES		(INTEL_LT_PHY_LANE1 |\
+					 INTEL_LT_PHY_LANE0)
+
+static u8 intel_lt_phy_get_owned_lane_mask(struct intel_encoder *encoder)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (!intel_tc_port_in_dp_alt_mode(dig_port))
+		return INTEL_LT_PHY_BOTH_LANES;
+
+	return intel_tc_port_max_lane_count(dig_port) > 2
+		? INTEL_LT_PHY_BOTH_LANES : INTEL_LT_PHY_LANE0;
+}
+
+static void
+intel_lt_phy_setup_powerdown(struct intel_encoder *encoder, u8 lane_count)
+{
+	/*
+	 * The new PORT_BUF_CTL6 stuff for dc5 entry and exit needs to be handled
+	 * by dmc firmware not explicitly mentioned in Bspec. This leaves this
+	 * function as a wrapper only but keeping it expecting future changes.
+	 */
+	intel_cx0_setup_powerdown(encoder);
+}
+
+static void
+intel_lt_phy_lane_reset(struct intel_encoder *encoder,
+			u8 lane_count)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	enum port port = encoder->port;
+	enum phy phy = intel_encoder_to_phy(encoder);
+	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
+	u32 lane_pipe_reset = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
+				? XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1)
+				: XELPDP_LANE_PIPE_RESET(0);
+	u32 lane_phy_current_status = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
+					? (XELPDP_LANE_PHY_CURRENT_STATUS(0) |
+					   XELPDP_LANE_PHY_CURRENT_STATUS(1))
+					: XELPDP_LANE_PHY_CURRENT_STATUS(0);
+	u32 lane_phy_pulse_status = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
+					? (XE3PLPDP_LANE_PHY_PULSE_STATUS(0) |
+					   XE3PLPDP_LANE_PHY_PULSE_STATUS(1))
+					: XE3PLPDP_LANE_PHY_PULSE_STATUS(0);
+
+	intel_de_rmw(display, XE3PLPD_PORT_BUF_CTL5(port),
+		     XE3PLPD_MACCLK_RATE_MASK, XE3PLPD_MACCLK_RATE_DEF);
+
+	intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, port),
+		     XE3PLPDP_PHY_MODE_MASK, XE3PLPDP_PHY_MODE_DP);
+
+	intel_lt_phy_setup_powerdown(encoder, lane_count);
+
+	intel_de_rmw(display, XE3PLPD_PORT_BUF_CTL5(port),
+		     XE3PLPD_MACCLK_RESET_0, 0);
+
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
+		     XELPDP_LANE_PCLK_PLL_REQUEST(0),
+		     XELPDP_LANE_PCLK_PLL_REQUEST(0));
+
+	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
+				 XELPDP_LANE_PCLK_PLL_ACK(0),
+				 XELPDP_LANE_PCLK_PLL_ACK(0),
+				 XE3PLPD_MACCLK_TURNON_LATENCY_US,
+				 XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
+		drm_warn(display->drm, "PHY %c PLL MacCLK assertion Ack not done after %dus.\n",
+			 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_MS * 1000);
+
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
+		     XELPDP_FORWARD_CLOCK_UNGATE,
+		     XELPDP_FORWARD_CLOCK_UNGATE);
+
+	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
+		     lane_pipe_reset | lane_phy_pulse_status, 0);
+
+	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
+				 lane_phy_current_status, 0,
+				 XE3PLPD_RESET_END_LATENCY_US, 2, NULL))
+		drm_warn(display->drm,
+			 "PHY %c failed to bring out of Lane reset after %dus.\n",
+			 phy_name(phy), XE3PLPD_RESET_END_LATENCY_US);
+
+	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
+				 lane_phy_pulse_status, lane_phy_pulse_status,
+				 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 0, NULL))
+		drm_warn(display->drm, "PHY %c PLL rate not changed after %dus.\n",
+			 phy_name(phy), XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
+
+	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_phy_pulse_status, 0);
+}
+
+void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
+			     const struct intel_crtc_state *crtc_state)
+{
+	/* 1. Enable MacCLK at default 162 MHz frequency. */
+	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
+
+	/* 2. Program PORT_CLOCK_CTL register to configure clock muxes, gating, and SSC. */
+	/* 3. Change owned PHY lanes power to Ready state. */
+	/*
+	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check enabled PLL type,
+	 * encoded rate and encoded mode.
+	 */
+	/*
+	 * 5. Program the PHY internal PLL registers over PHY message bus for the desired
+	 * frequency and protocol type
+	 */
+	/* 6. Use the P2P transaction flow */
+	/*
+	 * 6.1. Set the PHY VDR register 0xCC4[Rate Control VDR Update] = 1 over PHY message
+	 * bus for Owned PHY Lanes.
+	 */
+	/*
+	 * 6.2. Poll for P2P Transaction Ready = "1" and read the MAC message bus VDR register
+	 * at offset 0xC00 for Owned PHY Lanes.
+	 */
+	/* 6.3. Clear P2P transaction Ready bit. */
+	/* 7. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 0. */
+	/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
+	/*
+	 * 9. Follow the Display Voltage Frequency Switching - Sequence Before Frequency Change.
+	 * We handle this step in bxt_set_cdclk()
+	 */
+	/* 10. Program DDI_CLK_VALFREQ to match intended DDI clock frequency. */
+	/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 1. */
+	/* 12. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 1. */
+	/* 13. Ungate the forward clock by setting PORT_CLOCK_CTL[Forward Clock Ungate] = 1. */
+	/* 14. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
+	/*
+	 * 15. Clear the PHY VDR register 0xCC4[Rate Control VDR Update] over PHY message bus for
+	 * Owned PHY Lanes.
+	 */
+	/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status = 1 for Owned PHY Lanes. */
+	/* 17. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
+	/*
+	 * 18. Follow the Display Voltage Frequency Switching - Sequence After Frequency Change.
+	 * We handle this step in bxt_set_cdclk()
+	 */
+	/* 19. Move the PHY powerdown state to Active and program to enable/disable transmitters */
+}
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
new file mode 100644
index 000000000000..bd3ff3007e1d
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: MIT
+ *
+ * Copyright © 2025 Intel Corporation
+ */
+
+#ifndef __INTEL_LT_PHY_H__
+#define __INTEL_LT_PHY_H__
+
+#include <linux/types.h>
+
+struct intel_encoder;
+struct intel_crtc_state;
+
+void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
+			     const struct intel_crtc_state *crtc_state);
+
+#endif /* __INTEL_LT_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
index 6eaa038bf684..8bc25a564300 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
@@ -6,6 +6,12 @@
 #ifndef __INTEL_LT_PHY_REGS_H__
 #define __INTEL_LT_PHY_REGS_H__
 
+#define XE3PLPD_MACCLK_TURNON_LATENCY_MS	1
+#define XE3PLPD_MACCLK_TURNON_LATENCY_US	21
+#define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50
+#define XE3PLPD_RESET_START_LATENCY_US	10
+#define XE3PLPD_RESET_END_LATENCY_US		200
+
 /* LT Phy Vendor Register */
 #define LT_PHY_VDR_0_CONFIG	0xC02
 #define  LT_PHY_VDR_DP_PLL_ENABLE	REG_BIT(7)
@@ -21,4 +27,15 @@
 
 #define LT_PHY_RATE_UPDATE		0xCC4
 
+#define _XE3PLPD_PORT_BUF_CTL5(idx)	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
+								 _XELPDP_PORT_BUF_CTL1_LN0_A, \
+								 _XELPDP_PORT_BUF_CTL1_LN0_B, \
+								 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
+								 _XELPDP_PORT_BUF_CTL1_LN0_USBC2) \
+								+ 0x34)
+#define XE3PLPD_PORT_BUF_CTL5(port)	_XE3PLPD_PORT_BUF_CTL5(__xe2lpd_port_idx(port))
+#define  XE3PLPD_MACCLK_RESET_0		REG_BIT(11)
+#define  XE3PLPD_MACCLK_RATE_MASK	REG_GENMASK(4, 0)
+#define  XE3PLPD_MACCLK_RATE_DEF	REG_FIELD_PREP(XE3PLPD_MACCLK_RATE_MASK, 0x1F)
+
 #endif /* __INTEL_LT_PHY_REGS_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index bfc72f3dd61b..7cbdf6eee2c6 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -294,6 +294,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_hti.o \
 	i915-display/intel_link_bw.o \
 	i915-display/intel_lspcon.o \
+	i915-display/intel_lt_phy.o \
 	i915-display/intel_modeset_lock.o \
 	i915-display/intel_modeset_setup.o \
 	i915-display/intel_modeset_verify.o \
-- 
2.34.1

