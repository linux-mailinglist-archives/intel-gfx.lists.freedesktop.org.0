Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B799AE63E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 15:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE90810E940;
	Thu, 24 Oct 2024 13:28:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F5Li4NLG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B525810E940;
 Thu, 24 Oct 2024 13:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729776483; x=1761312483;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kr1Im8sZzd0T1pgXQ+venHBAtTF/HXxEu67anPfgkuI=;
 b=F5Li4NLGTHrSUVWobvW/jtXt/fQwvwXIMOq+09FtFQtdyznCQVUIufDF
 9tQ/PuYrBJSdSXfryvKPJYlDr64ilQVoamUTvvpRYiZUjHU3ZdANQk6Mq
 58deYLQ6ZbebIVjN2O35yXJewmQ8WxbLpSsmHbyOCil4bcD5RQEhkLtcY
 Tiuneg11RxjK+WZvMimCXTlGEQshnZTHSGJ9CEosCK0yetjz/3QFs9jjI
 DU2p5Te49q2IoZNgkE1ITfD1HRAh3f0hDNMCCWO9por/bsZPEjYH46XU9
 9F0f5T0jzaCMWYIUk5dVQAHrqzDFfWRfmf8bZSYbCuoZXK/w+3P1Skzc1 Q==;
X-CSE-ConnectionGUID: Buv+jArrTCOAhBwm7zsmsg==
X-CSE-MsgGUID: 7YlVUD7VRy+vMsKwqsGXBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51947968"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51947968"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 06:28:03 -0700
X-CSE-ConnectionGUID: rIVL6+YVTx6yNO0SMLk9Mw==
X-CSE-MsgGUID: 3HH1oVsGQ/ubgvLE5i0EkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80511581"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 06:28:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v2 03/12] drm/i915/cx0: convert to struct intel_display
Date: Thu, 24 Oct 2024 16:27:33 +0300
Message-Id: <f1a4624f0ff0110fcfaf754bd4998cc6acfdda66.1729776384.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729776384.git.jani.nikula@intel.com>
References: <cover.1729776384.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

struct intel_display will replace struct drm_i915_private as the main
device pointer for display code. Switch Cx0 PHY code over to it.

v2: Rebase, split out the include cleanups (Rodrigo)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 334 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c |   6 +-
 3 files changed, 186 insertions(+), 160 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 8bd5a4d1b735..666fe6a74347 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -65,22 +65,23 @@ static u8 intel_cx0_get_owned_lane_mask(struct intel_encoder *encoder)
 }
 
 static void
-assert_dc_off(struct drm_i915_private *i915)
+assert_dc_off(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	bool enabled;
 
 	enabled = intel_display_power_is_enabled(i915, POWER_DOMAIN_DC_OFF);
-	drm_WARN_ON(&i915->drm, !enabled);
+	drm_WARN_ON(display->drm, !enabled);
 }
 
 static void intel_cx0_program_msgbus_timer(struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	int lane;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
 	for_each_cx0_lane_in_mask(INTEL_CX0_BOTH_LANES, lane)
-		intel_de_rmw(i915,
-			     XELPDP_PORT_MSGBUS_TIMER(i915, encoder->port, lane),
+		intel_de_rmw(display,
+			     XELPDP_PORT_MSGBUS_TIMER(display, encoder->port, lane),
 			     XELPDP_PORT_MSGBUS_TIMER_VAL_MASK,
 			     XELPDP_PORT_MSGBUS_TIMER_VAL);
 }
@@ -119,25 +120,28 @@ static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_w
 static void intel_clear_response_ready_flag(struct intel_encoder *encoder,
 					    int lane)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	intel_de_rmw(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(i915, encoder->port, lane),
+	intel_de_rmw(display,
+		     XELPDP_PORT_P2M_MSGBUS_STATUS(display, encoder->port, lane),
 		     0, XELPDP_PORT_P2M_RESPONSE_READY | XELPDP_PORT_P2M_ERROR_SET);
 }
 
 static void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
+	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_RESET);
 
-	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
+	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 				    XELPDP_PORT_M2P_TRANSACTION_RESET,
 				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
-		drm_err_once(&i915->drm, "Failed to bring PHY %c to idle.\n", phy_name(phy));
+		drm_err_once(display->drm,
+			     "Failed to bring PHY %c to idle.\n",
+			     phy_name(phy));
 		return;
 	}
 
@@ -147,22 +151,23 @@ static void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
 static int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
 				  int command, int lane, u32 *val)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	if (intel_de_wait_custom(i915,
-				 XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane),
+	if (intel_de_wait_custom(display,
+				 XELPDP_PORT_P2M_MSGBUS_STATUS(display, port, lane),
 				 XELPDP_PORT_P2M_RESPONSE_READY,
 				 XELPDP_PORT_P2M_RESPONSE_READY,
 				 XELPDP_MSGBUS_TIMEOUT_FAST_US,
 				 XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
-		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for message ACK. Status: 0x%x\n",
+		drm_dbg_kms(display->drm,
+			    "PHY %c Timeout waiting for message ACK. Status: 0x%x\n",
 			    phy_name(phy), *val);
 
-		if (!(intel_de_read(i915, XELPDP_PORT_MSGBUS_TIMER(i915, port, lane)) &
+		if (!(intel_de_read(display, XELPDP_PORT_MSGBUS_TIMER(display, port, lane)) &
 		      XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT))
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "PHY %c Hardware did not detect a timeout\n",
 				    phy_name(phy));
 
@@ -171,14 +176,18 @@ static int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
 	}
 
 	if (*val & XELPDP_PORT_P2M_ERROR_SET) {
-		drm_dbg_kms(&i915->drm, "PHY %c Error occurred during %s command. Status: 0x%x\n", phy_name(phy),
+		drm_dbg_kms(display->drm,
+			    "PHY %c Error occurred during %s command. Status: 0x%x\n",
+			    phy_name(phy),
 			    command == XELPDP_PORT_P2M_COMMAND_READ_ACK ? "read" : "write", *val);
 		intel_cx0_bus_reset(encoder, lane);
 		return -EINVAL;
 	}
 
 	if (REG_FIELD_GET(XELPDP_PORT_P2M_COMMAND_TYPE_MASK, *val) != command) {
-		drm_dbg_kms(&i915->drm, "PHY %c Not a %s response. MSGBUS Status: 0x%x.\n", phy_name(phy),
+		drm_dbg_kms(display->drm,
+			    "PHY %c Not a %s response. MSGBUS Status: 0x%x.\n",
+			    phy_name(phy),
 			    command == XELPDP_PORT_P2M_COMMAND_READ_ACK ? "read" : "write", *val);
 		intel_cx0_bus_reset(encoder, lane);
 		return -EINVAL;
@@ -190,22 +199,22 @@ static int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
 static int __intel_cx0_read_once(struct intel_encoder *encoder,
 				 int lane, u16 addr)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 	enum phy phy = intel_encoder_to_phy(encoder);
 	int ack;
 	u32 val;
 
-	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
+	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
 				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));
 		intel_cx0_bus_reset(encoder, lane);
 		return -ETIMEDOUT;
 	}
 
-	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
+	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
 		       XELPDP_PORT_M2P_COMMAND_READ |
 		       XELPDP_PORT_M2P_ADDRESS(addr));
@@ -229,11 +238,11 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
 static u8 __intel_cx0_read(struct intel_encoder *encoder,
 			   int lane, u16 addr)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	int i, status;
 
-	assert_dc_off(i915);
+	assert_dc_off(display);
 
 	/* 3 tries is assumed to be enough to read successfully */
 	for (i = 0; i < 3; i++) {
@@ -243,7 +252,8 @@ static u8 __intel_cx0_read(struct intel_encoder *encoder,
 			return status;
 	}
 
-	drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d retries.\n",
+	drm_err_once(display->drm,
+		     "PHY %c Read %04x failed after %d retries.\n",
 		     phy_name(phy), addr, i);
 
 	return 0;
@@ -260,32 +270,32 @@ static u8 intel_cx0_read(struct intel_encoder *encoder,
 static int __intel_cx0_write_once(struct intel_encoder *encoder,
 				  int lane, u16 addr, u8 data, bool committed)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 	enum phy phy = intel_encoder_to_phy(encoder);
 	int ack;
 	u32 val;
 
-	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
+	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
 				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "PHY %c Timeout waiting for previous transaction to complete. Resetting the bus.\n", phy_name(phy));
 		intel_cx0_bus_reset(encoder, lane);
 		return -ETIMEDOUT;
 	}
 
-	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
+	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
 		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :
 				    XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED) |
 		       XELPDP_PORT_M2P_DATA(data) |
 		       XELPDP_PORT_M2P_ADDRESS(addr));
 
-	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
+	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
 				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "PHY %c Timeout waiting for write to complete. Resetting the bus.\n", phy_name(phy));
 		intel_cx0_bus_reset(encoder, lane);
 		return -ETIMEDOUT;
@@ -295,9 +305,9 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
 		ack = intel_cx0_wait_for_ack(encoder, XELPDP_PORT_P2M_COMMAND_WRITE_ACK, lane, &val);
 		if (ack < 0)
 			return ack;
-	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane)) &
+	} else if ((intel_de_read(display, XELPDP_PORT_P2M_MSGBUS_STATUS(display, port, lane)) &
 		    XELPDP_PORT_P2M_ERROR_SET)) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "PHY %c Error occurred during write command.\n", phy_name(phy));
 		intel_cx0_bus_reset(encoder, lane);
 		return -EINVAL;
@@ -318,11 +328,11 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
 static void __intel_cx0_write(struct intel_encoder *encoder,
 			      int lane, u16 addr, u8 data, bool committed)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	int i, status;
 
-	assert_dc_off(i915);
+	assert_dc_off(display);
 
 	/* 3 tries is assumed to be enough to write successfully */
 	for (i = 0; i < 3; i++) {
@@ -332,7 +342,7 @@ static void __intel_cx0_write(struct intel_encoder *encoder,
 			return;
 	}
 
-	drm_err_once(&i915->drm,
+	drm_err_once(display->drm,
 		     "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, i);
 }
 
@@ -348,9 +358,9 @@ static void intel_cx0_write(struct intel_encoder *encoder,
 static void intel_c20_sram_write(struct intel_encoder *encoder,
 				 int lane, u16 addr, u16 data)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	assert_dc_off(i915);
+	assert_dc_off(display);
 
 	intel_cx0_write(encoder, lane, PHY_C20_WR_ADDRESS_H, addr >> 8, 0);
 	intel_cx0_write(encoder, lane, PHY_C20_WR_ADDRESS_L, addr & 0xff, 0);
@@ -362,10 +372,10 @@ static void intel_c20_sram_write(struct intel_encoder *encoder,
 static u16 intel_c20_sram_read(struct intel_encoder *encoder,
 			       int lane, u16 addr)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	u16 val;
 
-	assert_dc_off(i915);
+	assert_dc_off(display);
 
 	intel_cx0_write(encoder, lane, PHY_C20_RD_ADDRESS_H, addr >> 8, 0);
 	intel_cx0_write(encoder, lane, PHY_C20_RD_ADDRESS_L, addr & 0xff, 1);
@@ -429,7 +439,7 @@ static u8 intel_c10_get_tx_term_ctl(const struct intel_crtc_state *crtc_state)
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_ddi_buf_trans *trans;
 	u8 owned_lane_mask;
 	intel_wakeref_t wakeref;
@@ -444,7 +454,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
-	if (drm_WARN_ON_ONCE(&i915->drm, !trans)) {
+	if (drm_WARN_ON_ONCE(display->drm, !trans)) {
 		intel_cx0_phy_transaction_end(encoder, wakeref);
 		return;
 	}
@@ -2020,7 +2030,6 @@ static void intel_c10pll_update_pll(struct intel_crtc_state *crtc_state,
 				    struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_cx0pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll;
 	int i;
 
@@ -2036,7 +2045,7 @@ static void intel_c10pll_update_pll(struct intel_crtc_state *crtc_state,
 	if (pll_state->ssc_enabled)
 		return;
 
-	drm_WARN_ON(&i915->drm, ARRAY_SIZE(pll_state->c10.pll) < 9);
+	drm_WARN_ON(display->drm, ARRAY_SIZE(pll_state->c10.pll) < 9);
 	for (i = 4; i < 9; i++)
 		pll_state->c10.pll[i] = 0;
 }
@@ -2090,7 +2099,7 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
-static void intel_c10_pll_program(struct drm_i915_private *i915,
+static void intel_c10_pll_program(struct intel_display *display,
 				  const struct intel_crtc_state *crtc_state,
 				  struct intel_encoder *encoder)
 {
@@ -2123,7 +2132,7 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
 		      MB_WRITE_COMMITTED);
 }
 
-static void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
+static void intel_c10pll_dump_hw_state(struct intel_display *display,
 				       const struct intel_c10pll_state *hw_state)
 {
 	bool fracen;
@@ -2132,29 +2141,31 @@ static void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
 	unsigned int multiplier, tx_clk_div;
 
 	fracen = hw_state->pll[0] & C10_PLL0_FRACEN;
-	drm_dbg_kms(&i915->drm, "c10pll_hw_state: fracen: %s, ",
+	drm_dbg_kms(display->drm, "c10pll_hw_state: fracen: %s, ",
 		    str_yes_no(fracen));
 
 	if (fracen) {
 		frac_quot = hw_state->pll[12] << 8 | hw_state->pll[11];
 		frac_rem =  hw_state->pll[14] << 8 | hw_state->pll[13];
 		frac_den =  hw_state->pll[10] << 8 | hw_state->pll[9];
-		drm_dbg_kms(&i915->drm, "quot: %u, rem: %u, den: %u,\n",
+		drm_dbg_kms(display->drm, "quot: %u, rem: %u, den: %u,\n",
 			    frac_quot, frac_rem, frac_den);
 	}
 
 	multiplier = (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, hw_state->pll[3]) << 8 |
 		      hw_state->pll[2]) / 2 + 16;
 	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, hw_state->pll[15]);
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "multiplier: %u, tx_clk_div: %u.\n", multiplier, tx_clk_div);
 
-	drm_dbg_kms(&i915->drm, "c10pll_rawhw_state:");
-	drm_dbg_kms(&i915->drm, "tx: 0x%x, cmn: 0x%x\n", hw_state->tx, hw_state->cmn);
+	drm_dbg_kms(display->drm, "c10pll_rawhw_state:");
+	drm_dbg_kms(display->drm, "tx: 0x%x, cmn: 0x%x\n", hw_state->tx,
+		    hw_state->cmn);
 
 	BUILD_BUG_ON(ARRAY_SIZE(hw_state->pll) % 4);
 	for (i = 0; i < ARRAY_SIZE(hw_state->pll); i = i + 4)
-		drm_dbg_kms(&i915->drm, "pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x\n",
+		drm_dbg_kms(display->drm,
+			    "pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x\n",
 			    i, hw_state->pll[i], i + 1, hw_state->pll[i + 1],
 			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
 }
@@ -2256,17 +2267,17 @@ static const struct intel_c20pll_state * const *
 intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
 			 struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
-			if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
+			if (DISPLAY_VER_FULL(display) == IP_VER(14, 1))
 				return xe2hpd_c20_edp_tables;
 		}
 
-		if (DISPLAY_VER(i915) >= 30)
+		if (DISPLAY_VER(display) >= 30)
 			return xe3lpd_c20_dp_edp_tables;
-		else if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
+		else if (DISPLAY_VER_FULL(display) == IP_VER(14, 1))
 			return xe2hpd_c20_dp_tables;
 		else
 			return mtl_c20_dp_tables;
@@ -2368,10 +2379,10 @@ static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
 static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 					  struct intel_c20pll_state *pll_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	bool cntx;
 	intel_wakeref_t wakeref;
 	int i;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
 	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
@@ -2383,11 +2394,11 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 		if (cntx)
 			pll_state->tx[i] = intel_c20_sram_read(encoder,
 							       INTEL_CX0_LANE0,
-							       PHY_C20_B_TX_CNTX_CFG(i915, i));
+							       PHY_C20_B_TX_CNTX_CFG(display, i));
 		else
 			pll_state->tx[i] = intel_c20_sram_read(encoder,
 							       INTEL_CX0_LANE0,
-							       PHY_C20_A_TX_CNTX_CFG(i915, i));
+							       PHY_C20_A_TX_CNTX_CFG(display, i));
 	}
 
 	/* Read common configuration */
@@ -2395,11 +2406,11 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 		if (cntx)
 			pll_state->cmn[i] = intel_c20_sram_read(encoder,
 								INTEL_CX0_LANE0,
-								PHY_C20_B_CMN_CNTX_CFG(i915, i));
+								PHY_C20_B_CMN_CNTX_CFG(display, i));
 		else
 			pll_state->cmn[i] = intel_c20_sram_read(encoder,
 								INTEL_CX0_LANE0,
-								PHY_C20_A_CMN_CNTX_CFG(i915, i));
+								PHY_C20_A_CMN_CNTX_CFG(display, i));
 	}
 
 	if (intel_c20phy_use_mpllb(pll_state)) {
@@ -2408,11 +2419,11 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 			if (cntx)
 				pll_state->mpllb[i] = intel_c20_sram_read(encoder,
 									  INTEL_CX0_LANE0,
-									  PHY_C20_B_MPLLB_CNTX_CFG(i915, i));
+									  PHY_C20_B_MPLLB_CNTX_CFG(display, i));
 			else
 				pll_state->mpllb[i] = intel_c20_sram_read(encoder,
 									  INTEL_CX0_LANE0,
-									  PHY_C20_A_MPLLB_CNTX_CFG(i915, i));
+									  PHY_C20_A_MPLLB_CNTX_CFG(display, i));
 		}
 	} else {
 		/* MPLLA configuration */
@@ -2420,11 +2431,11 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 			if (cntx)
 				pll_state->mplla[i] = intel_c20_sram_read(encoder,
 									  INTEL_CX0_LANE0,
-									  PHY_C20_B_MPLLA_CNTX_CFG(i915, i));
+									  PHY_C20_B_MPLLA_CNTX_CFG(display, i));
 			else
 				pll_state->mplla[i] = intel_c20_sram_read(encoder,
 									  INTEL_CX0_LANE0,
-									  PHY_C20_A_MPLLA_CNTX_CFG(i915, i));
+									  PHY_C20_A_MPLLA_CNTX_CFG(display, i));
 		}
 	}
 
@@ -2433,33 +2444,37 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
-static void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
+static void intel_c20pll_dump_hw_state(struct intel_display *display,
 				       const struct intel_c20pll_state *hw_state)
 {
 	int i;
 
-	drm_dbg_kms(&i915->drm, "c20pll_hw_state:\n");
-	drm_dbg_kms(&i915->drm, "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
+	drm_dbg_kms(display->drm, "c20pll_hw_state:\n");
+	drm_dbg_kms(display->drm,
+		    "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
 		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
-	drm_dbg_kms(&i915->drm, "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
+	drm_dbg_kms(display->drm,
+		    "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
 		    hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2], hw_state->cmn[3]);
 
 	if (intel_c20phy_use_mpllb(hw_state)) {
 		for (i = 0; i < ARRAY_SIZE(hw_state->mpllb); i++)
-			drm_dbg_kms(&i915->drm, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
+			drm_dbg_kms(display->drm, "mpllb[%d] = 0x%.4x\n", i,
+				    hw_state->mpllb[i]);
 	} else {
 		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
-			drm_dbg_kms(&i915->drm, "mplla[%d] = 0x%.4x\n", i, hw_state->mplla[i]);
+			drm_dbg_kms(display->drm, "mplla[%d] = 0x%.4x\n", i,
+				    hw_state->mplla[i]);
 	}
 }
 
-void intel_cx0pll_dump_hw_state(struct drm_i915_private *i915,
+void intel_cx0pll_dump_hw_state(struct intel_display *display,
 				const struct intel_cx0pll_state *hw_state)
 {
 	if (hw_state->use_c10)
-		intel_c10pll_dump_hw_state(i915, &hw_state->c10);
+		intel_c10pll_dump_hw_state(display, &hw_state->c10);
 	else
-		intel_c20pll_dump_hw_state(i915, &hw_state->c20);
+		intel_c20pll_dump_hw_state(display, &hw_state->c20);
 }
 
 static u8 intel_c20_get_dp_rate(u32 clock)
@@ -2559,7 +2574,7 @@ static int intel_get_c20_custom_width(u32 clock, bool dp)
 		return 0;
 }
 
-static void intel_c20_pll_program(struct drm_i915_private *i915,
+static void intel_c20_pll_program(struct intel_display *display,
 				  const struct intel_crtc_state *crtc_state,
 				  struct intel_encoder *encoder)
 {
@@ -2592,11 +2607,11 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
 		if (cntx)
 			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
-					     PHY_C20_A_TX_CNTX_CFG(i915, i),
+					     PHY_C20_A_TX_CNTX_CFG(display, i),
 					     pll_state->tx[i]);
 		else
 			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
-					     PHY_C20_B_TX_CNTX_CFG(i915, i),
+					     PHY_C20_B_TX_CNTX_CFG(display, i),
 					     pll_state->tx[i]);
 	}
 
@@ -2604,11 +2619,11 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
 		if (cntx)
 			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
-					     PHY_C20_A_CMN_CNTX_CFG(i915, i),
+					     PHY_C20_A_CMN_CNTX_CFG(display, i),
 					     pll_state->cmn[i]);
 		else
 			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
-					     PHY_C20_B_CMN_CNTX_CFG(i915, i),
+					     PHY_C20_B_CMN_CNTX_CFG(display, i),
 					     pll_state->cmn[i]);
 	}
 
@@ -2617,22 +2632,22 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
 			if (cntx)
 				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
-						     PHY_C20_A_MPLLB_CNTX_CFG(i915, i),
+						     PHY_C20_A_MPLLB_CNTX_CFG(display, i),
 						     pll_state->mpllb[i]);
 			else
 				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
-						     PHY_C20_B_MPLLB_CNTX_CFG(i915, i),
+						     PHY_C20_B_MPLLB_CNTX_CFG(display, i),
 						     pll_state->mpllb[i]);
 		}
 	} else {
 		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
 			if (cntx)
 				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
-						     PHY_C20_A_MPLLA_CNTX_CFG(i915, i),
+						     PHY_C20_A_MPLLA_CNTX_CFG(display, i),
 						     pll_state->mplla[i]);
 			else
 				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
-						     PHY_C20_B_MPLLA_CNTX_CFG(i915, i),
+						     PHY_C20_B_MPLLA_CNTX_CFG(display, i),
 						     pll_state->mplla[i]);
 		}
 	}
@@ -2699,10 +2714,10 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 					 const struct intel_crtc_state *crtc_state,
 					 bool lane_reversal)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	u32 val = 0;
 
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(i915, encoder->port),
+	intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, encoder->port),
 		     XELPDP_PORT_REVERSAL,
 		     lane_reversal ? XELPDP_PORT_REVERSAL : 0);
 
@@ -2724,7 +2739,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 	else
 		val |= crtc_state->dpll_hw_state.cx0pll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
 
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
 		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_SSC_ENABLE_PLLA |
 		     XELPDP_SSC_ENABLE_PLLB, val);
@@ -2755,48 +2770,49 @@ static u32 intel_cx0_get_powerdown_state(u8 lane_mask, u8 state)
 static void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
 						u8 lane_mask, u8 state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 	enum phy phy = intel_encoder_to_phy(encoder);
-	i915_reg_t buf_ctl2_reg = XELPDP_PORT_BUF_CTL2(i915, port);
+	i915_reg_t buf_ctl2_reg = XELPDP_PORT_BUF_CTL2(display, port);
 	int lane;
 
-	intel_de_rmw(i915, buf_ctl2_reg,
+	intel_de_rmw(display, buf_ctl2_reg,
 		     intel_cx0_get_powerdown_state(INTEL_CX0_BOTH_LANES, XELPDP_LANE_POWERDOWN_NEW_STATE_MASK),
 		     intel_cx0_get_powerdown_state(lane_mask, state));
 
 	/* Wait for pending transactions.*/
 	for_each_cx0_lane_in_mask(lane_mask, lane)
-		if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
+		if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 					    XELPDP_PORT_M2P_TRANSACTION_PENDING,
 					    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "PHY %c Timeout waiting for previous transaction to complete. Reset the bus.\n",
 				    phy_name(phy));
 			intel_cx0_bus_reset(encoder, lane);
 		}
 
-	intel_de_rmw(i915, buf_ctl2_reg,
+	intel_de_rmw(display, buf_ctl2_reg,
 		     intel_cx0_get_powerdown_update(INTEL_CX0_BOTH_LANES),
 		     intel_cx0_get_powerdown_update(lane_mask));
 
 	/* Update Timeout Value */
-	if (intel_de_wait_custom(i915, buf_ctl2_reg,
+	if (intel_de_wait_custom(display, buf_ctl2_reg,
 				 intel_cx0_get_powerdown_update(lane_mask), 0,
 				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
-		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
+		drm_warn(display->drm,
+			 "PHY %c failed to bring out of Lane reset after %dus.\n",
 			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
 }
 
 static void intel_cx0_setup_powerdown(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port),
+	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
 		     XELPDP_POWER_STATE_READY_MASK,
 		     XELPDP_POWER_STATE_READY(CX0_P2_STATE_READY));
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL3(i915, port),
+	intel_de_rmw(display, XELPDP_PORT_BUF_CTL3(display, port),
 		     XELPDP_POWER_STATE_ACTIVE_MASK |
 		     XELPDP_PLL_LANE_STAGGERING_DELAY_MASK,
 		     XELPDP_POWER_STATE_ACTIVE(CX0_P0_STATE_ACTIVE) |
@@ -2828,7 +2844,7 @@ static u32 intel_cx0_get_pclk_refclk_ack(u8 lane_mask)
 static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 				     bool lane_reversal)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 	enum phy phy = intel_encoder_to_phy(encoder);
 	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
@@ -2841,48 +2857,51 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 					   XELPDP_LANE_PHY_CURRENT_STATUS(1))
 					: XELPDP_LANE_PHY_CURRENT_STATUS(0);
 
-	if (intel_de_wait_custom(i915, XELPDP_PORT_BUF_CTL1(i915, port),
+	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL1(display, port),
 				 XELPDP_PORT_BUF_SOC_PHY_READY,
 				 XELPDP_PORT_BUF_SOC_PHY_READY,
 				 XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
-		drm_warn(&i915->drm, "PHY %c failed to bring out of SOC reset after %dus.\n",
+		drm_warn(display->drm,
+			 "PHY %c failed to bring out of SOC reset after %dus.\n",
 			 phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
 
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port), lane_pipe_reset,
+	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_pipe_reset,
 		     lane_pipe_reset);
 
-	if (intel_de_wait_custom(i915, XELPDP_PORT_BUF_CTL2(i915, port),
+	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
 				 lane_phy_current_status, lane_phy_current_status,
 				 XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
-		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
+		drm_warn(display->drm,
+			 "PHY %c failed to bring out of Lane reset after %dus.\n",
 			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
 
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, port),
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
 		     intel_cx0_get_pclk_refclk_request(owned_lane_mask),
 		     intel_cx0_get_pclk_refclk_request(lane_mask));
 
-	if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, port),
+	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
 				 intel_cx0_get_pclk_refclk_ack(owned_lane_mask),
 				 intel_cx0_get_pclk_refclk_ack(lane_mask),
 				 XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
-		drm_warn(&i915->drm, "PHY %c failed to request refclk after %dus.\n",
+		drm_warn(display->drm,
+			 "PHY %c failed to request refclk after %dus.\n",
 			 phy_name(phy), XELPDP_REFCLK_ENABLE_TIMEOUT_US);
 
 	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
 					    CX0_P2_STATE_RESET);
 	intel_cx0_setup_powerdown(encoder);
 
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port), lane_pipe_reset, 0);
+	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_pipe_reset, 0);
 
-	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(i915, port),
+	if (intel_de_wait_for_clear(display, XELPDP_PORT_BUF_CTL2(display, port),
 				    lane_phy_current_status,
 				    XELPDP_PORT_RESET_END_TIMEOUT))
-		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dms.\n",
+		drm_warn(display->drm,
+			 "PHY %c failed to bring out of Lane reset after %dms.\n",
 			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
 }
 
-static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
-				       struct intel_encoder *encoder, int lane_count,
+static void intel_cx0_program_phy_lane(struct intel_encoder *encoder, int lane_count,
 				       bool lane_reversal)
 {
 	int i;
@@ -2951,7 +2970,7 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
 static void intel_cx0pll_enable(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
@@ -2983,15 +3002,15 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 
 	/* 5. Program PHY internal PLL internal registers. */
 	if (intel_encoder_is_c10phy(encoder))
-		intel_c10_pll_program(i915, crtc_state, encoder);
+		intel_c10_pll_program(display, crtc_state, encoder);
 	else
-		intel_c20_pll_program(i915, crtc_state, encoder);
+		intel_c20_pll_program(display, crtc_state, encoder);
 
 	/*
 	 * 6. Program the enabled and disabled owned PHY lane
 	 * transmitters over message bus
 	 */
-	intel_cx0_program_phy_lane(i915, encoder, crtc_state->lane_count, lane_reversal);
+	intel_cx0_program_phy_lane(encoder, crtc_state->lane_count, lane_reversal);
 
 	/*
 	 * 7. Follow the Display Voltage Frequency Switching - Sequence
@@ -3002,23 +3021,23 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	 * 8. Program DDI_CLK_VALFREQ to match intended DDI
 	 * clock frequency.
 	 */
-	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port),
+	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
 		       crtc_state->port_clock);
 
 	/*
 	 * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
 	 * LN<Lane for maxPCLK> to "1" to enable PLL.
 	 */
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
 		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
 
 	/* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
-	if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
+	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 				 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
 				 intel_cx0_get_pclk_pll_ack(maxpclk_lane),
 				 XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
-		drm_warn(&i915->drm, "Port %c PLL not locked after %dus.\n",
+		drm_warn(display->drm, "Port %c PLL not locked after %dus.\n",
 			 phy_name(phy), XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US);
 
 	/*
@@ -3032,15 +3051,16 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	u32 clock;
-	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port));
+	struct intel_display *display = to_intel_display(encoder);
+	u32 clock, val;
+
+	val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port));
 
 	clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
 
-	drm_WARN_ON(&i915->drm, !(val & XELPDP_FORWARD_CLOCK_UNGATE));
-	drm_WARN_ON(&i915->drm, !(val & XELPDP_TBT_CLOCK_REQUEST));
-	drm_WARN_ON(&i915->drm, !(val & XELPDP_TBT_CLOCK_ACK));
+	drm_WARN_ON(display->drm, !(val & XELPDP_FORWARD_CLOCK_UNGATE));
+	drm_WARN_ON(display->drm, !(val & XELPDP_TBT_CLOCK_REQUEST));
+	drm_WARN_ON(display->drm, !(val & XELPDP_TBT_CLOCK_ACK));
 
 	switch (clock) {
 	case XELPDP_DDI_CLOCK_SELECT_TBT_162:
@@ -3057,7 +3077,7 @@ int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
 	}
 }
 
-static int intel_mtl_tbt_clock_select(struct drm_i915_private *i915, int clock)
+static int intel_mtl_tbt_clock_select(int clock)
 {
 	switch (clock) {
 	case 162000:
@@ -3077,7 +3097,7 @@ static int intel_mtl_tbt_clock_select(struct drm_i915_private *i915, int clock)
 static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	u32 val = 0;
 
@@ -3085,13 +3105,13 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
 	 * clock muxes, gating and SSC
 	 */
-	val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(i915, crtc_state->port_clock));
+	val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(crtc_state->port_clock));
 	val |= XELPDP_FORWARD_CLOCK_UNGATE;
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_FORWARD_CLOCK_UNGATE, val);
 
 	/* 2. Read back PORT_CLOCK_CTL REGISTER */
-	val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port));
+	val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port));
 
 	/*
 	 * 3. Follow the Display Voltage Frequency Switching - Sequence
@@ -3102,14 +3122,15 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 	 * 4. Set PORT_CLOCK_CTL register TBT CLOCK Request to "1" to enable PLL.
 	 */
 	val |= XELPDP_TBT_CLOCK_REQUEST;
-	intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port), val);
+	intel_de_write(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port), val);
 
 	/* 5. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "1". */
-	if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
+	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 				 XELPDP_TBT_CLOCK_ACK,
 				 XELPDP_TBT_CLOCK_ACK,
 				 100, 0, NULL))
-		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not locked after 100us.\n",
+		drm_warn(display->drm,
+			 "[ENCODER:%d:%s][%c] PHY PLL not locked after 100us.\n",
 			 encoder->base.base.id, encoder->base.name, phy_name(phy));
 
 	/*
@@ -3121,7 +3142,7 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 	 * 7. Program DDI_CLK_VALFREQ to match intended DDI
 	 * clock frequency.
 	 */
-	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port),
+	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
 		       crtc_state->port_clock);
 }
 
@@ -3138,13 +3159,14 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
 
 static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
 	if (intel_encoder_is_c10phy(encoder))
 		return CX0_P2PG_STATE_DISABLE;
 
 	if ((IS_BATTLEMAGE(i915) && encoder->port == PORT_A) ||
-	    (DISPLAY_VER(i915) >= 30 && encoder->type == INTEL_OUTPUT_EDP))
+	    (DISPLAY_VER(display) >= 30 && encoder->type == INTEL_OUTPUT_EDP))
 		return CX0_P2PG_STATE_DISABLE;
 
 	return CX0_P4PG_STATE_DISABLE;
@@ -3152,7 +3174,7 @@ static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
 
 static void intel_cx0pll_disable(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
 
@@ -3169,21 +3191,22 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 	 * 3. Set PORT_CLOCK_CTL register PCLK PLL Request LN<Lane for maxPCLK>
 	 * to "0" to disable PLL.
 	 */
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES) |
 		     intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LANES), 0);
 
 	/* 4. Program DDI_CLK_VALFREQ to 0. */
-	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port), 0);
+	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), 0);
 
 	/*
 	 * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> == "0".
 	 */
-	if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
+	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 				 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
 				 intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
 				 XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
-		drm_warn(&i915->drm, "Port %c PLL not unlocked after %dus.\n",
+		drm_warn(display->drm,
+			 "Port %c PLL not unlocked after %dus.\n",
 			 phy_name(phy), XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US);
 
 	/*
@@ -3192,9 +3215,9 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 	 */
 
 	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
@@ -3202,7 +3225,7 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 
 static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
 	/*
@@ -3213,13 +3236,14 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 	/*
 	 * 2. Set PORT_CLOCK_CTL register TBT CLOCK Request to "0" to disable PLL.
 	 */
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 		     XELPDP_TBT_CLOCK_REQUEST, 0);
 
 	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "0". */
-	if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
+	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 				 XELPDP_TBT_CLOCK_ACK, 0, 10, 0, NULL))
-		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not unlocked after 10us.\n",
+		drm_warn(display->drm,
+			 "[ENCODER:%d:%s][%c] PHY PLL not unlocked after 10us.\n",
 			 encoder->base.base.id, encoder->base.name, phy_name(phy));
 
 	/*
@@ -3230,12 +3254,12 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 	/*
 	 * 5. Program PORT CLOCK CTRL register to disable and gate clocks
 	 */
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
+	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 		     XELPDP_DDI_CLOCK_SELECT_MASK |
 		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
 
 	/* 6. Program DDI_CLK_VALFREQ to 0. */
-	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port), 0);
+	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), 0);
 }
 
 void intel_mtl_pll_disable(struct intel_encoder *encoder)
@@ -3252,13 +3276,15 @@ enum icl_port_dpll_id
 intel_mtl_port_pll_type(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
+	u32 val, clock;
+
 	/*
 	 * TODO: Determine the PLL type from the SW state, once MTL PLL
 	 * handling is done via the standard shared DPLL framework.
 	 */
-	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port));
-	u32 clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
+	val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port));
+	clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
 
 	if (clock == XELPDP_DDI_CLOCK_SELECT_MAXPCLK ||
 	    clock == XELPDP_DDI_CLOCK_SELECT_DIV18CLK)
@@ -3430,13 +3456,13 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
 void intel_cx0pll_state_verify(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 	struct intel_cx0pll_state mpll_hw_state = {};
 
-	if (DISPLAY_VER(i915) < 14)
+	if (DISPLAY_VER(display) < 14)
 		return;
 
 	if (!new_crtc_state->hw.active)
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 3555a9bc1de9..711168882684 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -9,13 +9,13 @@
 #include <linux/types.h>
 
 enum icl_port_dpll_id;
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_c10pll_state;
 struct intel_c20pll_state;
-struct intel_cx0pll_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_cx0pll_state;
+struct intel_display;
 struct intel_encoder;
 struct intel_hdmi;
 
@@ -33,7 +33,7 @@ void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_cx0pll_state *pll_state);
 
-void intel_cx0pll_dump_hw_state(struct drm_i915_private *dev_priv,
+void intel_cx0pll_dump_hw_state(struct intel_display *display,
 				const struct intel_cx0pll_state *hw_state);
 void intel_cx0pll_state_verify(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ef1436146325..c19f01b63936 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5305,15 +5305,15 @@ pipe_config_cx0pll_mismatch(struct drm_printer *p, bool fastset,
 			    const struct intel_cx0pll_state *a,
 			    const struct intel_cx0pll_state *b)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	char *chipname = a->use_c10 ? "C10" : "C20";
 
 	pipe_config_mismatch(p, fastset, crtc, name, chipname);
 
 	drm_printf(p, "expected:\n");
-	intel_cx0pll_dump_hw_state(i915, a);
+	intel_cx0pll_dump_hw_state(display, a);
 	drm_printf(p, "found:\n");
-	intel_cx0pll_dump_hw_state(i915, b);
+	intel_cx0pll_dump_hw_state(display, b);
 }
 
 bool
-- 
2.39.5

