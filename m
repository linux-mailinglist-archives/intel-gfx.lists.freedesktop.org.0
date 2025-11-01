Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3C5C27638
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:05:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7035310EC15;
	Sat,  1 Nov 2025 03:05:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SkbA/dje";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88C4410EC13;
 Sat,  1 Nov 2025 03:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761966317; x=1793502317;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n7MIZy8+RE/VMjjYkrO9mcDCXPbk4HaRUGPKmZkGfmQ=;
 b=SkbA/djeCnDtEwpGMjOUaTjAyD6pdMIMOnpq9bGGcfd7Gs4LwoLLqRb+
 GyPUtvF7XQFyZxRwsCIKF4owQh7Ru03jyhoBvS+SfEl71seg/sI4ajECX
 hZ3aNoOLaO5G0IYZNqZ+t0Ne7NNUGywWHx9/APqZ3klNLVQcEy2jm6kMV
 5xTZQonQ0Ba4NzNEa08c9etR03ZXNGUxR998bR/Nry0ZJqBDZqo16es9u
 dGejRtStsT4htGcEOfZqOrTl4wOBlipp9rXgLNs9+NBjrY4RyaJts3WJf
 z6fMQYLzSjGTrO2vRlALNQUcd2aJsaDKc3bJMEA66B/BCLKzundJcOe0Z g==;
X-CSE-ConnectionGUID: ok5/qM01TMGg5ukA00EJYA==
X-CSE-MsgGUID: vSkaj/yQRfOfM79ge5dakg==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="81759527"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="81759527"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:05:17 -0700
X-CSE-ConnectionGUID: GsQ9P0TRT9yxHE5scrAZfA==
X-CSE-MsgGUID: 8s8XIMSKQdq9aYNQ3plNIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217222676"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 31 Oct 2025 20:05:12 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v4 13/25] drm/i915/ltphy: Program the P2P Transaction flow for
 LT Phy
Date: Sat,  1 Nov 2025 08:34:22 +0530
Message-Id: <20251101030434.4159839-14-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251101030434.4159839-1-suraj.kandpal@intel.com>
References: <20251101030434.4159839-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Program the LT PHY P2P transaction which uses P2M cycle to get
get data fro Phy when it is ready and then go read the MAC register
from the MAC address space.

Bspec: 68966, 74497, 74483, 74500
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
V1 -> V2:
-Update the comment for udelay added (Arun)

V2 -> V3:
-Add REVISIT tag in comment (Arun)

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  10 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   5 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   1 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 117 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  15 +++
 5 files changed, 143 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 273cc43f66ed..b5278da5e263 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -125,8 +125,8 @@ static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_w
 	intel_display_power_put(display, POWER_DOMAIN_DC_OFF, wakeref);
 }
 
-static void intel_clear_response_ready_flag(struct intel_encoder *encoder,
-					    int lane)
+void intel_clear_response_ready_flag(struct intel_encoder *encoder,
+				     int lane)
 {
 	struct intel_display *display = to_intel_display(encoder);
 
@@ -135,7 +135,7 @@ static void intel_clear_response_ready_flag(struct intel_encoder *encoder,
 		     0, XELPDP_PORT_P2M_RESPONSE_READY | XELPDP_PORT_P2M_ERROR_SET);
 }
 
-static void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
+void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
@@ -156,8 +156,8 @@ static void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
 	intel_clear_response_ready_flag(encoder, lane);
 }
 
-static int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
-				  int command, int lane, u32 *val)
+int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
+			   int command, int lane, u32 *val)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index c1e61d16fb68..a114ac125741 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -22,6 +22,8 @@ struct intel_display;
 struct intel_encoder;
 struct intel_hdmi;
 
+void intel_clear_response_ready_flag(struct intel_encoder *encoder,
+				     int lane);
 bool intel_encoder_is_c10phy(struct intel_encoder *encoder);
 void intel_mtl_pll_enable(struct intel_encoder *encoder,
 			  const struct intel_crtc_state *crtc_state);
@@ -52,6 +54,9 @@ bool intel_cx0_is_hdmi_frl(u32 clock);
 u8 intel_cx0_read(struct intel_encoder *encoder, u8 lane_mask, u16 addr);
 void intel_cx0_write(struct intel_encoder *encoder,
 		     u8 lane_mask, u16 addr, u8 data, bool committed);
+int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
+			   int command, int lane, u32 *val);
+void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane);
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
 void intel_cx0_pll_power_save_wa(struct intel_display *display);
 void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 93bed6b0bda1..635b35669348 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -50,6 +50,7 @@
 #define   XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)
 #define   XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x2)
 #define   XELPDP_PORT_M2P_COMMAND_READ			REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x3)
+#define   XELPDP_PORT_P2P_TRANSACTION_PENDING		REG_BIT(24)
 #define   XELPDP_PORT_M2P_DATA_MASK			REG_GENMASK(23, 16)
 #define   XELPDP_PORT_M2P_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_DATA_MASK, val)
 #define   XELPDP_PORT_M2P_TRANSACTION_RESET		REG_BIT(15)
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index fb7cf720d317..da5115c691e3 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -20,6 +20,10 @@
 #include "intel_psr.h"
 #include "intel_tc.h"
 
+#define for_each_lt_phy_lane_in_mask(__lane_mask, __lane) \
+	for ((__lane) = 0; (__lane) < 2; (__lane)++) \
+		for_each_if((__lane_mask) & BIT(__lane))
+
 #define INTEL_LT_PHY_LANE0		BIT(0)
 #define INTEL_LT_PHY_LANE1		BIT(1)
 #define INTEL_LT_PHY_BOTH_LANES		(INTEL_LT_PHY_LANE1 |\
@@ -999,6 +1003,115 @@ static void intel_lt_phy_write(struct intel_encoder *encoder,
 	intel_cx0_write(encoder, lane_mask, addr, data, committed);
 }
 
+static void intel_lt_phy_clear_status_p2p(struct intel_encoder *encoder,
+					  int lane)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	intel_de_rmw(display,
+		     XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(encoder->port, lane),
+		     XELPDP_PORT_P2M_RESPONSE_READY, 0);
+}
+
+static void
+assert_dc_off(struct intel_display *display)
+{
+	bool enabled;
+
+	enabled = intel_display_power_is_enabled(display, POWER_DOMAIN_DC_OFF);
+	drm_WARN_ON(display->drm, !enabled);
+}
+
+static int __intel_lt_phy_p2p_write_once(struct intel_encoder *encoder,
+					 int lane, u16 addr, u8 data,
+					 i915_reg_t mac_reg_addr,
+					 u8 expected_mac_val)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	enum port port = encoder->port;
+	enum phy phy = intel_encoder_to_phy(encoder);
+	int ack;
+	u32 val;
+
+	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
+				    XELPDP_PORT_P2P_TRANSACTION_PENDING,
+				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
+		drm_dbg_kms(display->drm,
+			    "PHY %c Timeout waiting for previous transaction to complete. Resetting bus.\n",
+			    phy_name(phy));
+		intel_cx0_bus_reset(encoder, lane);
+		return -ETIMEDOUT;
+	}
+
+	intel_de_rmw(display, XELPDP_PORT_P2M_MSGBUS_STATUS(display, port, lane), 0, 0);
+
+	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
+		       XELPDP_PORT_P2P_TRANSACTION_PENDING |
+		       XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED |
+		       XELPDP_PORT_M2P_DATA(data) |
+		       XELPDP_PORT_M2P_ADDRESS(addr));
+
+	ack = intel_cx0_wait_for_ack(encoder, XELPDP_PORT_P2M_COMMAND_WRITE_ACK, lane, &val);
+	if (ack < 0)
+		return ack;
+
+	if (val & XELPDP_PORT_P2M_ERROR_SET) {
+		drm_dbg_kms(display->drm,
+			    "PHY %c Error occurred during P2P write command. Status: 0x%x\n",
+			    phy_name(phy), val);
+		intel_lt_phy_clear_status_p2p(encoder, lane);
+		intel_cx0_bus_reset(encoder, lane);
+		return -EINVAL;
+	}
+
+	/*
+	 * RE-VISIT:
+	 * This needs to be added to give PHY time to set everything up this was a requirement
+	 * to get the display up and running
+	 * This is the time PHY takes to settle down after programming the PHY.
+	 */
+	udelay(150);
+	intel_clear_response_ready_flag(encoder, lane);
+	intel_lt_phy_clear_status_p2p(encoder, lane);
+
+	return 0;
+}
+
+static void __intel_lt_phy_p2p_write(struct intel_encoder *encoder,
+				     int lane, u16 addr, u8 data,
+				     i915_reg_t mac_reg_addr,
+				     u8 expected_mac_val)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	enum phy phy = intel_encoder_to_phy(encoder);
+	int i, status;
+
+	assert_dc_off(display);
+
+	/* 3 tries is assumed to be enough to write successfully */
+	for (i = 0; i < 3; i++) {
+		status = __intel_lt_phy_p2p_write_once(encoder, lane, addr, data, mac_reg_addr,
+						       expected_mac_val);
+
+		if (status == 0)
+			return;
+	}
+
+	drm_err_once(display->drm,
+		     "PHY %c P2P Write %04x failed after %d retries.\n", phy_name(phy), addr, i);
+}
+
+static void intel_lt_phy_p2p_write(struct intel_encoder *encoder,
+				   u8 lane_mask, u16 addr, u8 data,
+				   i915_reg_t mac_reg_addr,
+				   u8 expected_mac_val)
+{
+	int lane;
+
+	for_each_lt_phy_lane_in_mask(lane_mask, lane)
+		__intel_lt_phy_p2p_write(encoder, lane, addr, data, mac_reg_addr, expected_mac_val);
+}
+
 static void
 intel_lt_phy_setup_powerdown(struct intel_encoder *encoder, u8 lane_count)
 {
@@ -1428,6 +1541,10 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 		 * register at offset 0xC00 for Owned PHY Lanes*.
 		 */
 		/* 6.3. Clear P2P transaction Ready bit. */
+		intel_lt_phy_p2p_write(encoder, owned_lane_mask, LT_PHY_RATE_UPDATE,
+				       LT_PHY_RATE_CONTROL_VDR_UPDATE, LT_PHY_MAC_VDR,
+				       LT_PHY_PCLKIN_GATE);
+
 		/* 7. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 0. */
 		/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
 		/*
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
index 8bc25a564300..eb3a3dd53ab8 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
@@ -6,12 +6,17 @@
 #ifndef __INTEL_LT_PHY_REGS_H__
 #define __INTEL_LT_PHY_REGS_H__
 
+#define XE3PLPD_MSGBUS_TIMEOUT_FAST_US	500
 #define XE3PLPD_MACCLK_TURNON_LATENCY_MS	1
 #define XE3PLPD_MACCLK_TURNON_LATENCY_US	21
 #define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50
 #define XE3PLPD_RESET_START_LATENCY_US	10
 #define XE3PLPD_RESET_END_LATENCY_US		200
 
+/* LT Phy MAC Register */
+#define LT_PHY_MAC_VDR			_MMIO(0xC00)
+#define    LT_PHY_PCLKIN_GATE		REG_BIT8(0)
+
 /* LT Phy Vendor Register */
 #define LT_PHY_VDR_0_CONFIG	0xC02
 #define  LT_PHY_VDR_DP_PLL_ENABLE	REG_BIT(7)
@@ -26,6 +31,7 @@
 #define LT_PHY_VDR_X_DATAY(idx, y)	((0xC06 + (3 - (y))) + 0x6 * (idx))
 
 #define LT_PHY_RATE_UPDATE		0xCC4
+#define    LT_PHY_RATE_CONTROL_VDR_UPDATE	REG_BIT8(0)
 
 #define _XE3PLPD_PORT_BUF_CTL5(idx)	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
 								 _XELPDP_PORT_BUF_CTL1_LN0_A, \
@@ -38,4 +44,13 @@
 #define  XE3PLPD_MACCLK_RATE_MASK	REG_GENMASK(4, 0)
 #define  XE3PLPD_MACCLK_RATE_DEF	REG_FIELD_PREP(XE3PLPD_MACCLK_RATE_MASK, 0x1F)
 
+#define _XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(idx, lane)	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
+										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) \
+										 + 0x60 + (lane) * 0x4)
+#define XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(port, lane)	 _XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(__xe2lpd_port_idx(port), \
+											    lane)
+#define   XE3LPD_PORT_P2M_ADDR_MASK			REG_GENMASK(11, 0)
 #endif /* __INTEL_LT_PHY_REGS_H__ */
-- 
2.34.1

