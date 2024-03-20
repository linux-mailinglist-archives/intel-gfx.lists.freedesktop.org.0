Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F7F8814E2
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 16:49:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C6C010FD87;
	Wed, 20 Mar 2024 15:48:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gaFkQEAQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3BE410FD87
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 15:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710949736; x=1742485736;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UAc7w+BqAHJSuvS0HZfa1YGCxHnV8W+AjR2Sf2BMUBA=;
 b=gaFkQEAQKIeFi7oKeYbqyS56+yGqr/wtS1MOjr7wD51eNsdXEG9z8z7F
 w1bxiGmPNJIlMzW2eT5UhPn7Jqqkr8EeeM1CUb9b6uXJOxPBLX+wGvsP9
 uUNu4OjaFZw/atE7S6O0oBA9v0NrGkIWQMFEjorcgurBG2vtsTaUWOdBV
 4AW4XQT9klbJLPyfgVQ8Gs8aVG+9golb3mt3iy6RKyPGcrY/qZuOcIaYc
 B63OD1OT81z5ndXkTKu3/Hee9DtUsabJUxtwhKL0qidNpJgT/glrPKX5o
 K5PA/cNMD842sOsON+TAyfr0XvaZDPLHXZq3aslHMNUqWIVWqpWUQRAUe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="6005689"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="6005689"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:48:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="14265172"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.36.133])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:48:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [CI 7/7] drm/i915/cx0: pass encoder instead of i915 and port around
Date: Wed, 20 Mar 2024 17:48:04 +0200
Message-Id: <f9308e47a3a66bd74479480964c8a538e3f6a358.1710949619.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1710949619.git.jani.nikula@intel.com>
References: <cover.1710949619.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

The encoder is a much more useful thing to pass around than the i915 and
port combo. Also drive-by clean up some cases where both i915 and
encoder are passed; only the latter is needed.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 258 ++++++++++---------
 1 file changed, 136 insertions(+), 122 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index b88ffc75cf4a..d2e4439562e3 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -49,8 +49,7 @@ static int lane_mask_to_lane(u8 lane_mask)
 	return ilog2(lane_mask);
 }
 
-static u8 intel_cx0_get_owned_lane_mask(struct drm_i915_private *i915,
-					struct intel_encoder *encoder)
+static u8 intel_cx0_get_owned_lane_mask(struct intel_encoder *encoder)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
@@ -117,16 +116,20 @@ static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_w
 	intel_display_power_put(i915, POWER_DOMAIN_DC_OFF, wakeref);
 }
 
-static void intel_clear_response_ready_flag(struct drm_i915_private *i915,
-					    enum port port, int lane)
+static void intel_clear_response_ready_flag(struct intel_encoder *encoder,
+					    int lane)
 {
-	intel_de_rmw(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane),
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	intel_de_rmw(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(i915, encoder->port, lane),
 		     0, XELPDP_PORT_P2M_RESPONSE_READY | XELPDP_PORT_P2M_ERROR_SET);
 }
 
-static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, int lane)
+static void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
 {
-	enum phy phy = intel_port_to_phy(i915, port);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_RESET);
@@ -138,13 +141,15 @@ static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, i
 		return;
 	}
 
-	intel_clear_response_ready_flag(i915, port, lane);
+	intel_clear_response_ready_flag(encoder, lane);
 }
 
-static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port,
+static int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
 				  int command, int lane, u32 *val)
 {
-	enum phy phy = intel_port_to_phy(i915, port);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	if (__intel_de_wait_for_register(i915,
 					 XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane),
@@ -161,31 +166,33 @@ static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port,
 				    "PHY %c Hardware did not detect a timeout\n",
 				    phy_name(phy));
 
-		intel_cx0_bus_reset(i915, port, lane);
+		intel_cx0_bus_reset(encoder, lane);
 		return -ETIMEDOUT;
 	}
 
 	if (*val & XELPDP_PORT_P2M_ERROR_SET) {
 		drm_dbg_kms(&i915->drm, "PHY %c Error occurred during %s command. Status: 0x%x\n", phy_name(phy),
 			    command == XELPDP_PORT_P2M_COMMAND_READ_ACK ? "read" : "write", *val);
-		intel_cx0_bus_reset(i915, port, lane);
+		intel_cx0_bus_reset(encoder, lane);
 		return -EINVAL;
 	}
 
 	if (REG_FIELD_GET(XELPDP_PORT_P2M_COMMAND_TYPE_MASK, *val) != command) {
 		drm_dbg_kms(&i915->drm, "PHY %c Not a %s response. MSGBUS Status: 0x%x.\n", phy_name(phy),
 			    command == XELPDP_PORT_P2M_COMMAND_READ_ACK ? "read" : "write", *val);
-		intel_cx0_bus_reset(i915, port, lane);
+		intel_cx0_bus_reset(encoder, lane);
 		return -EINVAL;
 	}
 
 	return 0;
 }
 
-static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
+static int __intel_cx0_read_once(struct intel_encoder *encoder,
 				 int lane, u16 addr)
 {
-	enum phy phy = intel_port_to_phy(i915, port);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
+	enum phy phy = intel_encoder_to_phy(encoder);
 	int ack;
 	u32 val;
 
@@ -194,7 +201,7 @@ static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
 				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
 		drm_dbg_kms(&i915->drm,
 			    "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));
-		intel_cx0_bus_reset(i915, port, lane);
+		intel_cx0_bus_reset(encoder, lane);
 		return -ETIMEDOUT;
 	}
 
@@ -203,33 +210,34 @@ static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
 		       XELPDP_PORT_M2P_COMMAND_READ |
 		       XELPDP_PORT_M2P_ADDRESS(addr));
 
-	ack = intel_cx0_wait_for_ack(i915, port, XELPDP_PORT_P2M_COMMAND_READ_ACK, lane, &val);
+	ack = intel_cx0_wait_for_ack(encoder, XELPDP_PORT_P2M_COMMAND_READ_ACK, lane, &val);
 	if (ack < 0)
 		return ack;
 
-	intel_clear_response_ready_flag(i915, port, lane);
+	intel_clear_response_ready_flag(encoder, lane);
 
 	/*
 	 * FIXME: Workaround to let HW to settle
 	 * down and let the message bus to end up
 	 * in a known state
 	 */
-	intel_cx0_bus_reset(i915, port, lane);
+	intel_cx0_bus_reset(encoder, lane);
 
 	return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);
 }
 
-static u8 __intel_cx0_read(struct drm_i915_private *i915, enum port port,
+static u8 __intel_cx0_read(struct intel_encoder *encoder,
 			   int lane, u16 addr)
 {
-	enum phy phy = intel_port_to_phy(i915, port);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_encoder_to_phy(encoder);
 	int i, status;
 
 	assert_dc_off(i915);
 
 	/* 3 tries is assumed to be enough to read successfully */
 	for (i = 0; i < 3; i++) {
-		status = __intel_cx0_read_once(i915, port, lane, addr);
+		status = __intel_cx0_read_once(encoder, lane, addr);
 
 		if (status >= 0)
 			return status;
@@ -241,18 +249,20 @@ static u8 __intel_cx0_read(struct drm_i915_private *i915, enum port port,
 	return 0;
 }
 
-static u8 intel_cx0_read(struct drm_i915_private *i915, enum port port,
+static u8 intel_cx0_read(struct intel_encoder *encoder,
 			 u8 lane_mask, u16 addr)
 {
 	int lane = lane_mask_to_lane(lane_mask);
 
-	return __intel_cx0_read(i915, port, lane, addr);
+	return __intel_cx0_read(encoder, lane, addr);
 }
 
-static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
+static int __intel_cx0_write_once(struct intel_encoder *encoder,
 				  int lane, u16 addr, u8 data, bool committed)
 {
-	enum phy phy = intel_port_to_phy(i915, port);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
+	enum phy phy = intel_encoder_to_phy(encoder);
 	int ack;
 	u32 val;
 
@@ -261,7 +271,7 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
 				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
 		drm_dbg_kms(&i915->drm,
 			    "PHY %c Timeout waiting for previous transaction to complete. Resetting the bus.\n", phy_name(phy));
-		intel_cx0_bus_reset(i915, port, lane);
+		intel_cx0_bus_reset(encoder, lane);
 		return -ETIMEDOUT;
 	}
 
@@ -277,45 +287,46 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
 				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
 		drm_dbg_kms(&i915->drm,
 			    "PHY %c Timeout waiting for write to complete. Resetting the bus.\n", phy_name(phy));
-		intel_cx0_bus_reset(i915, port, lane);
+		intel_cx0_bus_reset(encoder, lane);
 		return -ETIMEDOUT;
 	}
 
 	if (committed) {
-		ack = intel_cx0_wait_for_ack(i915, port, XELPDP_PORT_P2M_COMMAND_WRITE_ACK, lane, &val);
+		ack = intel_cx0_wait_for_ack(encoder, XELPDP_PORT_P2M_COMMAND_WRITE_ACK, lane, &val);
 		if (ack < 0)
 			return ack;
 	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane)) &
 		    XELPDP_PORT_P2M_ERROR_SET)) {
 		drm_dbg_kms(&i915->drm,
 			    "PHY %c Error occurred during write command.\n", phy_name(phy));
-		intel_cx0_bus_reset(i915, port, lane);
+		intel_cx0_bus_reset(encoder, lane);
 		return -EINVAL;
 	}
 
-	intel_clear_response_ready_flag(i915, port, lane);
+	intel_clear_response_ready_flag(encoder, lane);
 
 	/*
 	 * FIXME: Workaround to let HW to settle
 	 * down and let the message bus to end up
 	 * in a known state
 	 */
-	intel_cx0_bus_reset(i915, port, lane);
+	intel_cx0_bus_reset(encoder, lane);
 
 	return 0;
 }
 
-static void __intel_cx0_write(struct drm_i915_private *i915, enum port port,
+static void __intel_cx0_write(struct intel_encoder *encoder,
 			      int lane, u16 addr, u8 data, bool committed)
 {
-	enum phy phy = intel_port_to_phy(i915, port);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_encoder_to_phy(encoder);
 	int i, status;
 
 	assert_dc_off(i915);
 
 	/* 3 tries is assumed to be enough to write successfully */
 	for (i = 0; i < 3; i++) {
-		status = __intel_cx0_write_once(i915, port, lane, addr, data, committed);
+		status = __intel_cx0_write_once(encoder, lane, addr, data, committed);
 
 		if (status == 0)
 			return;
@@ -325,63 +336,66 @@ static void __intel_cx0_write(struct drm_i915_private *i915, enum port port,
 		     "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, i);
 }
 
-static void intel_cx0_write(struct drm_i915_private *i915, enum port port,
+static void intel_cx0_write(struct intel_encoder *encoder,
 			    u8 lane_mask, u16 addr, u8 data, bool committed)
 {
 	int lane;
 
 	for_each_cx0_lane_in_mask(lane_mask, lane)
-		__intel_cx0_write(i915, port, lane, addr, data, committed);
+		__intel_cx0_write(encoder, lane, addr, data, committed);
 }
 
-static void intel_c20_sram_write(struct drm_i915_private *i915, enum port port,
+static void intel_c20_sram_write(struct intel_encoder *encoder,
 				 int lane, u16 addr, u16 data)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
 	assert_dc_off(i915);
 
-	intel_cx0_write(i915, port, lane, PHY_C20_WR_ADDRESS_H, addr >> 8, 0);
-	intel_cx0_write(i915, port, lane, PHY_C20_WR_ADDRESS_L, addr & 0xff, 0);
+	intel_cx0_write(encoder, lane, PHY_C20_WR_ADDRESS_H, addr >> 8, 0);
+	intel_cx0_write(encoder, lane, PHY_C20_WR_ADDRESS_L, addr & 0xff, 0);
 
-	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_H, data >> 8, 0);
-	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_L, data & 0xff, 1);
+	intel_cx0_write(encoder, lane, PHY_C20_WR_DATA_H, data >> 8, 0);
+	intel_cx0_write(encoder, lane, PHY_C20_WR_DATA_L, data & 0xff, 1);
 }
 
-static u16 intel_c20_sram_read(struct drm_i915_private *i915, enum port port,
+static u16 intel_c20_sram_read(struct intel_encoder *encoder,
 			       int lane, u16 addr)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u16 val;
 
 	assert_dc_off(i915);
 
-	intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_H, addr >> 8, 0);
-	intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_L, addr & 0xff, 1);
+	intel_cx0_write(encoder, lane, PHY_C20_RD_ADDRESS_H, addr >> 8, 0);
+	intel_cx0_write(encoder, lane, PHY_C20_RD_ADDRESS_L, addr & 0xff, 1);
 
-	val = intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_H);
+	val = intel_cx0_read(encoder, lane, PHY_C20_RD_DATA_H);
 	val <<= 8;
-	val |= intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_L);
+	val |= intel_cx0_read(encoder, lane, PHY_C20_RD_DATA_L);
 
 	return val;
 }
 
-static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
+static void __intel_cx0_rmw(struct intel_encoder *encoder,
 			    int lane, u16 addr, u8 clear, u8 set, bool committed)
 {
 	u8 old, val;
 
-	old = __intel_cx0_read(i915, port, lane, addr);
+	old = __intel_cx0_read(encoder, lane, addr);
 	val = (old & ~clear) | set;
 
 	if (val != old)
-		__intel_cx0_write(i915, port, lane, addr, val, committed);
+		__intel_cx0_write(encoder, lane, addr, val, committed);
 }
 
-static void intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
+static void intel_cx0_rmw(struct intel_encoder *encoder,
 			  u8 lane_mask, u16 addr, u8 clear, u8 set, bool committed)
 {
 	u8 lane;
 
 	for_each_cx0_lane_in_mask(lane_mask, lane)
-		__intel_cx0_rmw(i915, port, lane, addr, clear, set, committed);
+		__intel_cx0_rmw(encoder, lane, addr, clear, set, committed);
 }
 
 static u8 intel_c10_get_tx_vboost_lvl(const struct intel_crtc_state *crtc_state)
@@ -425,7 +439,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		return;
 
-	owned_lane_mask = intel_cx0_get_owned_lane_mask(i915, encoder);
+	owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
 
 	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
@@ -436,13 +450,13 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 	}
 
 	if (intel_encoder_is_c10phy(encoder)) {
-		intel_cx0_rmw(i915, encoder->port, owned_lane_mask, PHY_C10_VDR_CONTROL(1),
+		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C10_VDR_CONTROL(1),
 			      0, C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
-		intel_cx0_rmw(i915, encoder->port, owned_lane_mask, PHY_C10_VDR_CMN(3),
+		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C10_VDR_CMN(3),
 			      C10_CMN3_TXVBOOST_MASK,
 			      C10_CMN3_TXVBOOST(intel_c10_get_tx_vboost_lvl(crtc_state)),
 			      MB_WRITE_UNCOMMITTED);
-		intel_cx0_rmw(i915, encoder->port, owned_lane_mask, PHY_C10_VDR_TX(1),
+		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C10_VDR_TX(1),
 			      C10_TX1_TERMCTL_MASK,
 			      C10_TX1_TERMCTL(intel_c10_get_tx_term_ctl(crtc_state)),
 			      MB_WRITE_COMMITTED);
@@ -457,27 +471,27 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 		if (!(lane_mask & owned_lane_mask))
 			continue;
 
-		intel_cx0_rmw(i915, encoder->port, lane_mask, PHY_CX0_VDROVRD_CTL(lane, tx, 0),
+		intel_cx0_rmw(encoder, lane_mask, PHY_CX0_VDROVRD_CTL(lane, tx, 0),
 			      C10_PHY_OVRD_LEVEL_MASK,
 			      C10_PHY_OVRD_LEVEL(trans->entries[level].snps.pre_cursor),
 			      MB_WRITE_COMMITTED);
-		intel_cx0_rmw(i915, encoder->port, lane_mask, PHY_CX0_VDROVRD_CTL(lane, tx, 1),
+		intel_cx0_rmw(encoder, lane_mask, PHY_CX0_VDROVRD_CTL(lane, tx, 1),
 			      C10_PHY_OVRD_LEVEL_MASK,
 			      C10_PHY_OVRD_LEVEL(trans->entries[level].snps.vswing),
 			      MB_WRITE_COMMITTED);
-		intel_cx0_rmw(i915, encoder->port, lane_mask, PHY_CX0_VDROVRD_CTL(lane, tx, 2),
+		intel_cx0_rmw(encoder, lane_mask, PHY_CX0_VDROVRD_CTL(lane, tx, 2),
 			      C10_PHY_OVRD_LEVEL_MASK,
 			      C10_PHY_OVRD_LEVEL(trans->entries[level].snps.post_cursor),
 			      MB_WRITE_COMMITTED);
 	}
 
 	/* Write Override enables in 0xD71 */
-	intel_cx0_rmw(i915, encoder->port, owned_lane_mask, PHY_C10_VDR_OVRD,
+	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C10_VDR_OVRD,
 		      0, PHY_C10_VDR_OVRD_TX1 | PHY_C10_VDR_OVRD_TX2,
 		      MB_WRITE_COMMITTED);
 
 	if (intel_encoder_is_c10phy(encoder))
-		intel_cx0_rmw(i915, encoder->port, owned_lane_mask, PHY_C10_VDR_CONTROL(1),
+		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C10_VDR_CONTROL(1),
 			      0, C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
@@ -1858,7 +1872,6 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 					  struct intel_c10pll_state *pll_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u8 lane = INTEL_CX0_LANE0;
 	intel_wakeref_t wakeref;
 	int i;
@@ -1869,16 +1882,15 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 	 * According to C10 VDR Register programming Sequence we need
 	 * to do this to read PHY internal registers from MsgBus.
 	 */
-	intel_cx0_rmw(i915, encoder->port, lane, PHY_C10_VDR_CONTROL(1),
+	intel_cx0_rmw(encoder, lane, PHY_C10_VDR_CONTROL(1),
 		      0, C10_VDR_CTRL_MSGBUS_ACCESS,
 		      MB_WRITE_COMMITTED);
 
 	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
-		pll_state->pll[i] = intel_cx0_read(i915, encoder->port, lane,
-						   PHY_C10_VDR_PLL(i));
+		pll_state->pll[i] = intel_cx0_read(encoder, lane, PHY_C10_VDR_PLL(i));
 
-	pll_state->cmn = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_CMN(0));
-	pll_state->tx = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_TX(0));
+	pll_state->cmn = intel_cx0_read(encoder, lane, PHY_C10_VDR_CMN(0));
+	pll_state->tx = intel_cx0_read(encoder, lane, PHY_C10_VDR_TX(0));
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
@@ -1890,28 +1902,28 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
 	const struct intel_c10pll_state *pll_state = &crtc_state->cx0pll_state.c10;
 	int i;
 
-	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
+	intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
 		      0, C10_VDR_CTRL_MSGBUS_ACCESS,
 		      MB_WRITE_COMMITTED);
 
 	/* Custom width needs to be programmed to 0 for both the phy lanes */
-	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CUSTOM_WIDTH,
+	intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CUSTOM_WIDTH,
 		      C10_VDR_CUSTOM_WIDTH_MASK, C10_VDR_CUSTOM_WIDTH_8_10,
 		      MB_WRITE_COMMITTED);
-	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
+	intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
 		      0, C10_VDR_CTRL_UPDATE_CFG,
 		      MB_WRITE_COMMITTED);
 
 	/* Program the pll values only for the master lane */
 	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
-		intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C10_VDR_PLL(i),
+		intel_cx0_write(encoder, INTEL_CX0_LANE0, PHY_C10_VDR_PLL(i),
 				pll_state->pll[i],
 				(i % 4) ? MB_WRITE_UNCOMMITTED : MB_WRITE_COMMITTED);
 
-	intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C10_VDR_CMN(0), pll_state->cmn, MB_WRITE_COMMITTED);
-	intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C10_VDR_TX(0), pll_state->tx, MB_WRITE_COMMITTED);
+	intel_cx0_write(encoder, INTEL_CX0_LANE0, PHY_C10_VDR_CMN(0), pll_state->cmn, MB_WRITE_COMMITTED);
+	intel_cx0_write(encoder, INTEL_CX0_LANE0, PHY_C10_VDR_TX(0), pll_state->tx, MB_WRITE_COMMITTED);
 
-	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_LANE0, PHY_C10_VDR_CONTROL(1),
+	intel_cx0_rmw(encoder, INTEL_CX0_LANE0, PHY_C10_VDR_CONTROL(1),
 		      0, C10_VDR_CTRL_MASTER_LANE | C10_VDR_CTRL_UPDATE_CFG,
 		      MB_WRITE_COMMITTED);
 }
@@ -2146,7 +2158,6 @@ static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
 static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 					  struct intel_c20pll_state *pll_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	bool cntx;
 	intel_wakeref_t wakeref;
 	int i;
@@ -2154,25 +2165,25 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/* 1. Read current context selection */
-	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
+	cntx = intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
 
 	/* Read Tx configuration */
 	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
 		if (cntx)
-			pll_state->tx[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+			pll_state->tx[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
 							       PHY_C20_B_TX_CNTX_CFG(i));
 		else
-			pll_state->tx[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+			pll_state->tx[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
 							       PHY_C20_A_TX_CNTX_CFG(i));
 	}
 
 	/* Read common configuration */
 	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
 		if (cntx)
-			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+			pll_state->cmn[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
 								PHY_C20_B_CMN_CNTX_CFG(i));
 		else
-			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+			pll_state->cmn[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
 								PHY_C20_A_CMN_CNTX_CFG(i));
 	}
 
@@ -2180,20 +2191,20 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 		/* MPLLB configuration */
 		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
 			if (cntx)
-				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+				pll_state->mpllb[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
 									  PHY_C20_B_MPLLB_CNTX_CFG(i));
 			else
-				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+				pll_state->mpllb[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
 									  PHY_C20_A_MPLLB_CNTX_CFG(i));
 		}
 	} else {
 		/* MPLLA configuration */
 		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
 			if (cntx)
-				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+				pll_state->mplla[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
 									  PHY_C20_B_MPLLA_CNTX_CFG(i));
 			else
-				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+				pll_state->mplla[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
 									  PHY_C20_A_MPLLA_CNTX_CFG(i));
 		}
 	}
@@ -2335,7 +2346,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 		dp = true;
 
 	/* 1. Read current context selection */
-	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & BIT(0);
+	cntx = intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & BIT(0);
 
 	/*
 	 * 2. If there is a protocol switch from HDMI to DP or vice versa, clear
@@ -2344,7 +2355,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	 */
 	if (intel_c20_protocol_switch_valid(encoder)) {
 		for (i = 0; i < 4; i++)
-			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(i), 0);
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(i), 0);
 		usleep_range(4000, 4100);
 	}
 
@@ -2352,63 +2363,63 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	/* 3.1 Tx configuration */
 	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
 		if (cntx)
-			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);
 		else
-			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);
 	}
 
 	/* 3.2 common configuration */
 	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
 		if (cntx)
-			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);
 		else
-			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);
 	}
 
 	/* 3.3 mpllb or mplla configuration */
 	if (intel_c20phy_use_mpllb(pll_state)) {
 		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
 			if (cntx)
-				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
+				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
 						     PHY_C20_A_MPLLB_CNTX_CFG(i),
 						     pll_state->mpllb[i]);
 			else
-				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
+				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
 						     PHY_C20_B_MPLLB_CNTX_CFG(i),
 						     pll_state->mpllb[i]);
 		}
 	} else {
 		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
 			if (cntx)
-				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
+				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
 						     PHY_C20_A_MPLLA_CNTX_CFG(i),
 						     pll_state->mplla[i]);
 			else
-				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
+				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
 						     PHY_C20_B_MPLLA_CNTX_CFG(i),
 						     pll_state->mplla[i]);
 		}
 	}
 
 	/* 4. Program custom width to match the link protocol */
-	intel_cx0_rmw(i915, encoder->port, lane, PHY_C20_VDR_CUSTOM_WIDTH,
+	intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_WIDTH,
 		      PHY_C20_CUSTOM_WIDTH_MASK,
 		      PHY_C20_CUSTOM_WIDTH(intel_get_c20_custom_width(clock, dp)),
 		      MB_WRITE_COMMITTED);
 
 	/* 5. For DP or 6. For HDMI */
 	if (dp) {
-		intel_cx0_rmw(i915, encoder->port, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+		intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
 			      BIT(6) | PHY_C20_CUSTOM_SERDES_MASK,
 			      BIT(6) | PHY_C20_CUSTOM_SERDES(intel_c20_get_dp_rate(clock)),
 			      MB_WRITE_COMMITTED);
 	} else {
-		intel_cx0_rmw(i915, encoder->port, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+		intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
 			      BIT(7) | PHY_C20_CUSTOM_SERDES_MASK,
 			      is_hdmi_frl(clock) ? BIT(7) : 0,
 			      MB_WRITE_COMMITTED);
 
-		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
+		intel_cx0_write(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
 				intel_c20_get_hdmi_rate(clock),
 				MB_WRITE_COMMITTED);
 	}
@@ -2417,7 +2428,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	 * 7. Write Vendor specific registers to toggle context setting to load
 	 * the updated programming toggle context bit
 	 */
-	intel_cx0_rmw(i915, encoder->port, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+	intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
 		      BIT(0), cntx ? 0 : 1, MB_WRITE_COMMITTED);
 }
 
@@ -2505,11 +2516,12 @@ static u32 intel_cx0_get_powerdown_state(u8 lane_mask, u8 state)
 	return val;
 }
 
-static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
-						enum port port,
+static void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
 						u8 lane_mask, u8 state)
 {
-	enum phy phy = intel_port_to_phy(i915, port);
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
+	enum phy phy = intel_encoder_to_phy(encoder);
 	i915_reg_t buf_ctl2_reg = XELPDP_PORT_BUF_CTL2(i915, port);
 	int lane;
 
@@ -2525,7 +2537,7 @@ static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
 			drm_dbg_kms(&i915->drm,
 				    "PHY %c Timeout waiting for previous transaction to complete. Reset the bus.\n",
 				    phy_name(phy));
-			intel_cx0_bus_reset(i915, port, lane);
+			intel_cx0_bus_reset(encoder, lane);
 		}
 
 	intel_de_rmw(i915, buf_ctl2_reg,
@@ -2540,8 +2552,11 @@ static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
 			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
 }
 
-static void intel_cx0_setup_powerdown(struct drm_i915_private *i915, enum port port)
+static void intel_cx0_setup_powerdown(struct intel_encoder *encoder)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
+
 	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port),
 		     XELPDP_POWER_STATE_READY_MASK,
 		     XELPDP_POWER_STATE_READY(CX0_P2_STATE_READY));
@@ -2574,13 +2589,13 @@ static u32 intel_cx0_get_pclk_refclk_ack(u8 lane_mask)
 	return val;
 }
 
-static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
-				     struct intel_encoder *encoder,
+static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 				     bool lane_reversal)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
-	enum phy phy = intel_port_to_phy(i915, port);
-	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(i915, encoder);
+	enum phy phy = intel_encoder_to_phy(encoder);
+	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
 	u8 lane_mask = lane_reversal ? INTEL_CX0_LANE1 : INTEL_CX0_LANE0;
 	u32 lane_pipe_reset = owned_lane_mask == INTEL_CX0_BOTH_LANES
 				? XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1)
@@ -2617,9 +2632,9 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
 		drm_warn(&i915->drm, "PHY %c failed to request refclk after %dus.\n",
 			 phy_name(phy), XELPDP_REFCLK_ENABLE_TIMEOUT_US);
 
-	intel_cx0_powerdown_change_sequence(i915, port, INTEL_CX0_BOTH_LANES,
+	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
 					    CX0_P2_STATE_RESET);
-	intel_cx0_setup_powerdown(i915, port);
+	intel_cx0_setup_powerdown(encoder);
 
 	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port), lane_pipe_reset, 0);
 
@@ -2637,11 +2652,10 @@ static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
 	int i;
 	u8 disables;
 	bool dp_alt_mode = intel_tc_port_in_dp_alt_mode(enc_to_dig_port(encoder));
-	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(i915, encoder);
-	enum port port = encoder->port;
+	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
 
 	if (intel_encoder_is_c10phy(encoder))
-		intel_cx0_rmw(i915, port, owned_lane_mask,
+		intel_cx0_rmw(encoder, owned_lane_mask,
 			      PHY_C10_VDR_CONTROL(1), 0,
 			      C10_VDR_CTRL_MSGBUS_ACCESS,
 			      MB_WRITE_COMMITTED);
@@ -2663,14 +2677,14 @@ static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
 		if (!(owned_lane_mask & lane_mask))
 			continue;
 
-		intel_cx0_rmw(i915, port, lane_mask, PHY_CX0_TX_CONTROL(tx, 2),
+		intel_cx0_rmw(encoder, lane_mask, PHY_CX0_TX_CONTROL(tx, 2),
 			      CONTROL2_DISABLE_SINGLE_TX,
 			      disables & BIT(i) ? CONTROL2_DISABLE_SINGLE_TX : 0,
 			      MB_WRITE_COMMITTED);
 	}
 
 	if (intel_encoder_is_c10phy(encoder))
-		intel_cx0_rmw(i915, port, owned_lane_mask,
+		intel_cx0_rmw(encoder, owned_lane_mask,
 			      PHY_C10_VDR_CONTROL(1), 0,
 			      C10_VDR_CTRL_UPDATE_CFG,
 			      MB_WRITE_COMMITTED);
@@ -2702,7 +2716,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
 	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
@@ -2716,13 +2730,13 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	intel_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
 
 	/* 2. Bring PHY out of reset. */
-	intel_cx0_phy_lane_reset(i915, encoder, lane_reversal);
+	intel_cx0_phy_lane_reset(encoder, lane_reversal);
 
 	/*
 	 * 3. Change Phy power state to Ready.
 	 * TODO: For DP alt mode use only one lane.
 	 */
-	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
+	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
 					    CX0_P2_STATE_READY);
 
 	/*
@@ -2828,7 +2842,7 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 	u32 val = 0;
 
 	/*
@@ -2889,12 +2903,12 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
 static void intel_cx0pll_disable(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 	bool is_c10 = intel_encoder_is_c10phy(encoder);
 	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/* 1. Change owned PHY lane power to Disable state. */
-	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
+	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
 					    is_c10 ? CX0_P2PG_STATE_DISABLE :
 					    CX0_P4PG_STATE_DISABLE);
 
@@ -2941,7 +2955,7 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	enum phy phy = intel_encoder_to_phy(encoder);
 
 	/*
 	 * 1. Follow the Display Voltage Frequency Switching Sequence Before
-- 
2.39.2

