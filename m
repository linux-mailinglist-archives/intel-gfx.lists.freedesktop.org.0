Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C33685EF650
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 15:22:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F81510EA51;
	Thu, 29 Sep 2022 13:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A30FE10EA5A
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 13:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664457732; x=1695993732;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DIExM7tqVbSl3xPm+KNDOpmfkwVhYSFLey7KQCGJmA0=;
 b=IOPl+6sPytyOM4UtCtvezArF7iCqhP6fpaOG9d/F0X9I/15QzTLCby5h
 9+tuOOEC68JsD59DK3oXpP22y0hzCvtz9hAObuXCWw9S4f8keMtbcbcUs
 f1Dm+j2g3L+4wEnYDdfu8DsXU9362UkmhFlAmxFwRLmvVRwLnYDDjtiGw
 XKoOwzHYTLrYq7QAC1IMmBuk05FjKtYcAk54wL12IXX4oHjxjdVaTaOeN
 yZiecQ4kzrfrPvx8KUwHY79+XzcBt750rCAEYvhF9O20764rWHYPsTvcy
 jY4h9BQhW3y93Xbu6CZr3syIl38PMJ1khAPl+qKxJ5SRvgyID+sN3xrLN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="365934658"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="365934658"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 06:22:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="655550448"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="655550448"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga001.jf.intel.com with ESMTP; 29 Sep 2022 06:22:10 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 16:17:44 +0300
Message-Id: <20220929131747.2592092-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220929131747.2592092-1-mika.kahola@intel.com>
References: <20220929131747.2592092-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/mtl: Add PLL programming support
 for C10 phy
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

From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

XELPDP has C10 phys to drive output to the EDP and the native output
from the display engine. Add structures, programming hardware state
readout logic. Port clock calculations are similar to DG2. Use the DG2
formulae to calculate the port clock but use the relevant pll signals.
Note: PHY lane 0 is always used for PLL programming.

Bspec: 64568, 64539, 67636

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 516 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  | 128 +++++
 drivers/gpu/drm/i915/display/intel_ddi.c      |  20 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   1 +
 .../drm/i915/display/intel_display_power.c    |   3 +-
 .../i915/display/intel_display_power_well.c   |   2 +-
 .../drm/i915/display/intel_display_types.h    |   6 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |  20 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   2 +-
 .../drm/i915/display/intel_modeset_verify.c   |   2 +
 10 files changed, 690 insertions(+), 10 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.h

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 7930b0255cfa..2f401116d1d0 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3,7 +3,11 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include "intel_cx0_phy.h"
 #include "intel_de.h"
+#include "intel_display_types.h"
+#include "intel_dp.h"
+#include "intel_panel.h"
 #include "intel_uncore.h"
 
 static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, int lane)
@@ -26,7 +30,7 @@ static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, i
 	return;
 }
 
-__maybe_unused static u8 intel_cx0_read(struct drm_i915_private *i915, enum port port,
+static u8 intel_cx0_read(struct drm_i915_private *i915, enum port port,
 			 int lane, u16 addr)
 {
 	enum phy phy = intel_port_to_phy(i915, port);
@@ -116,8 +120,8 @@ static int intel_cx0_wait_cwrite_ack(struct drm_i915_private *i915,
 	return 0;
 }
 
-__maybe_unused static void intel_cx0_write(struct drm_i915_private *i915, enum port port,
-			    int lane, u16 addr, u8 data, bool committed)
+static void __intel_cx0_write(struct drm_i915_private *i915, enum port port,
+			      int lane, u16 addr, u8 data, bool committed)
 {
 	enum phy phy = intel_port_to_phy(i915, port);
 	int attempts = 0;
@@ -166,8 +170,19 @@ __maybe_unused static void intel_cx0_write(struct drm_i915_private *i915, enum p
 	return;
 }
 
-__maybe_unused static void intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
-			  int lane, u16 addr, u8 clear, u8 set, bool committed)
+static void intel_cx0_write(struct drm_i915_private *i915, enum port port,
+			    int lane, u16 addr, u8 data, bool committed)
+{
+	if (lane == INTEL_CX0_BOTH_LANES) {
+		__intel_cx0_write(i915, port, INTEL_CX0_LANE0, addr, data, committed);
+		__intel_cx0_write(i915, port, INTEL_CX0_LANE1, addr, data, committed);
+	} else {
+		__intel_cx0_write(i915, port, lane, addr, data, committed);
+	}
+}
+
+static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
+			    int lane, u16 addr, u8 clear, u8 set, bool committed)
 {
 	u8 old, val;
 
@@ -177,3 +192,494 @@ __maybe_unused static void intel_cx0_rmw(struct drm_i915_private *i915, enum por
 	if (val != old)
 		intel_cx0_write(i915, port, lane, addr, val, committed);
 }
+
+static void intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
+			  int lane, u16 addr, u8 clear, u8 set, bool committed)
+{
+	if (lane == INTEL_CX0_BOTH_LANES) {
+		__intel_cx0_rmw(i915, port, INTEL_CX0_LANE0, addr, clear, set, committed);
+		__intel_cx0_rmw(i915, port, INTEL_CX0_LANE1, addr, clear, set, committed);
+	} else {
+		__intel_cx0_rmw(i915, port, lane, addr, clear, set, committed);
+	}
+}
+
+/*
+ * Basic DP link rates with 38.4 MHz reference clock.
+ * Note: The tables below are with SSC. In non-ssc
+ * registers 0xC04 to 0xC08(pll[4] to pll[8]) will be
+ * programmed 0.
+ */
+
+static const struct intel_c10mpllb_state mtl_c10_dp_rbr = {
+	.clock = 162000,
+	.pll[0] = 0xB4,
+	.pll[1] = 0,
+	.pll[2] = 0x30,
+	.pll[3] = 0x1,
+	.pll[4] = 0x26,
+	.pll[5] = 0x0C,
+	.pll[6] = 0x98,
+	.pll[7] = 0x46,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xC0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x2,
+	.pll[16] = 0x84,
+	.pll[17] = 0x4F,
+	.pll[18] = 0xE5,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_edp_r216 = {
+	.clock = 216000,
+	.pll[0] = 0x4,
+	.pll[1] = 0,
+	.pll[2] = 0xA2,
+	.pll[3] = 0x1,
+	.pll[4] = 0x33,
+	.pll[5] = 0x10,
+	.pll[6] = 0x75,
+	.pll[7] = 0xB3,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x2,
+	.pll[16] = 0x85,
+	.pll[17] = 0x0F,
+	.pll[18] = 0xE6,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_edp_r243 = {
+	.clock = 243000,
+	.pll[0] = 0x34,
+	.pll[1] = 0,
+	.pll[2] = 0xDA,
+	.pll[3] = 0x1,
+	.pll[4] = 0x39,
+	.pll[5] = 0x12,
+	.pll[6] = 0xE3,
+	.pll[7] = 0xE9,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0x20,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x2,
+	.pll[16] = 0x85,
+	.pll[17] = 0x8F,
+	.pll[18] = 0xE6,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_dp_hbr1 = {
+	.clock = 270000,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0xF8,
+	.pll[3] = 0x0,
+	.pll[4] = 0x20,
+	.pll[5] = 0x0A,
+	.pll[6] = 0x29,
+	.pll[7] = 0x10,
+	.pll[8] = 0x1,   /* Verify */
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xA0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x1,
+	.pll[16] = 0x84,
+	.pll[17] = 0x4F,
+	.pll[18] = 0xE5,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_edp_r324 = {
+	.clock = 324000,
+	.pll[0] = 0xB4,
+	.pll[1] = 0,
+	.pll[2] = 0x30,
+	.pll[3] = 0x1,
+	.pll[4] = 0x26,
+	.pll[5] = 0x0C,
+	.pll[6] = 0x98,
+	.pll[7] = 0x46,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xC0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x1,
+	.pll[16] = 0x85,
+	.pll[17] = 0x4F,
+	.pll[18] = 0xE6,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_edp_r432 = {
+	.clock = 432000,
+	.pll[0] = 0x4,
+	.pll[1] = 0,
+	.pll[2] = 0xA2,
+	.pll[3] = 0x1,
+	.pll[4] = 0x33,
+	.pll[5] = 0x10,
+	.pll[6] = 0x75,
+	.pll[7] = 0xB3,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0x1,
+	.pll[16] = 0x85,
+	.pll[17] = 0x0F,
+	.pll[18] = 0xE6,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_dp_hbr2 = {
+	.clock = 540000,
+	.pll[0] = 0xF4,
+	.pll[1] = 0,
+	.pll[2] = 0xF8,
+	.pll[3] = 0,
+	.pll[4] = 0x20,
+	.pll[5] = 0x0A,
+	.pll[6] = 0x29,
+	.pll[7] = 0x10,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xA0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0,
+	.pll[16] = 0x84,
+	.pll[17] = 0x4F,
+	.pll[18] = 0xE5,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_edp_r675 = {
+	.clock = 675000,
+	.pll[0] = 0xB4,
+	.pll[1] = 0,
+	.pll[2] = 0x3E,
+	.pll[3] = 0x1,
+	.pll[4] = 0xA8,
+	.pll[5] = 0x0C,
+	.pll[6] = 0x33,
+	.pll[7] = 0x54,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xC8,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0,
+	.pll[16] = 0x85,
+	.pll[17] = 0x8F,
+	.pll[18] = 0xE6,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state mtl_c10_dp_hbr3 = {
+	.clock = 810000,
+	.pll[0] = 0x34,
+	.pll[1] = 0,
+	.pll[2] = 0x84,
+	.pll[3] = 0x1,
+	.pll[4] = 0x30,
+	.pll[5] = 0x0F,
+	.pll[6] = 0x3D,
+	.pll[7] = 0x98,
+	.pll[8] = 0x1,
+	.pll[9] = 0x1,
+	.pll[10] = 0,
+	.pll[11] = 0,
+	.pll[12] = 0xF0,
+	.pll[13] = 0,
+	.pll[14] = 0,
+	.pll[15] = 0,
+	.pll[16] = 0x84,
+	.pll[17] = 0x0F,
+	.pll[18] = 0xE5,
+	.pll[19] = 0x23,
+};
+
+static const struct intel_c10mpllb_state * const mtl_c10_dp_tables[] = {
+	&mtl_c10_dp_rbr,
+	&mtl_c10_dp_hbr1,
+	&mtl_c10_dp_hbr2,
+	&mtl_c10_dp_hbr3,
+	NULL,
+};
+
+static const struct intel_c10mpllb_state * const mtl_c10_edp_tables[] = {
+	&mtl_c10_dp_rbr,
+	&mtl_c10_edp_r216,
+	&mtl_c10_edp_r243,
+	&mtl_c10_dp_hbr1,
+	&mtl_c10_edp_r324,
+	&mtl_c10_edp_r432,
+	&mtl_c10_dp_hbr2,
+	&mtl_c10_edp_r675,
+	&mtl_c10_dp_hbr3,
+	NULL,
+};
+
+static const struct intel_c10mpllb_state * const *
+intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
+			   struct intel_encoder *encoder)
+{
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
+			return mtl_c10_edp_tables;
+		else
+			return mtl_c10_dp_tables;
+	}
+
+	/* TODO: Add HDMI Support */
+	MISSING_CASE(encoder->type);
+	return NULL;
+}
+
+static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
+				     struct intel_encoder *encoder)
+{
+	const struct intel_c10mpllb_state * const *tables;
+	int i;
+
+	tables = intel_c10_mpllb_tables_get(crtc_state, encoder);
+	if (!tables)
+		return -EINVAL;
+
+	for (i = 0; tables[i]; i++) {
+		if (crtc_state->port_clock <= tables[i]->clock) {
+			crtc_state->c10mpllb_state = *tables[i];
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
+int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
+			      struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
+
+	return intel_c10mpllb_calc_state(crtc_state, encoder);
+}
+
+void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
+				     struct intel_c10mpllb_state *pll_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
+	enum intel_cx0_lanes lane = lane_reversal ? INTEL_CX0_LANE1 :
+				    INTEL_CX0_LANE0;
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	int i;
+	u8 cmn, tx0;
+
+	/*
+	 * According to C10 VDR Register programming Sequence we need
+	 * to do this to read PHY internal registers from MsgBus.
+	 */
+	intel_cx0_rmw(i915, encoder->port, lane, PHY_C10_VDR_CONTROL(1), 0,
+		      C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
+
+	for (i = 0; i < 20; i++)
+		pll_state->pll[i] = intel_cx0_read(i915, encoder->port, lane,
+						   PHY_C10_VDR_PLL(i));
+
+	cmn = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_CMN(0));
+	tx0 = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_TX(0));
+
+	if (tx0 != C10_TX0_VAL || cmn != C10_CMN0_DP_VAL)
+		drm_warn(&i915->drm, "Unexpected tx: %x or cmn: %x for phy: %c.\n",
+			 tx0, cmn, phy_name(phy));
+}
+
+__maybe_unused static void intel_c10_pll_program(struct drm_i915_private *i915,
+						 const struct intel_crtc_state *crtc_state,
+						 struct intel_encoder *encoder)
+{
+	const struct intel_c10mpllb_state *pll_state = &crtc_state->c10mpllb_state;
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
+	enum intel_cx0_lanes master_lane = lane_reversal ? INTEL_CX0_LANE1 :
+				 INTEL_CX0_LANE0;
+	enum intel_cx0_lanes follower_lane = lane_reversal ? INTEL_CX0_LANE0 :
+				 INTEL_CX0_LANE1;
+
+	int i;
+	struct intel_dp *intel_dp;
+	bool use_ssc = false;
+	u8 cmn0 = 0;
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		intel_dp = enc_to_intel_dp(encoder);
+		use_ssc = (intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
+			  DP_MAX_DOWNSPREAD_0_5);
+
+		if (intel_dp_is_edp(intel_dp) && !intel_panel_use_ssc(i915))
+			use_ssc = false;
+
+		cmn0 = C10_CMN0_DP_VAL;
+	}
+
+	intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
+		        C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
+	/* Custom width needs to be programmed to 0 for both the phy lanes */
+	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES,
+		      PHY_C10_VDR_CUSTOM_WIDTH, 0x3, 0, MB_WRITE_COMMITTED);
+	intel_cx0_rmw(i915, encoder->port, follower_lane, PHY_C10_VDR_CONTROL(1),
+		      C10_VDR_CTRL_MASTER_LANE, C10_VDR_CTRL_UPDATE_CFG,
+		      MB_WRITE_COMMITTED);
+
+	/* Program the pll values only for the master lane */
+	for (i = 0; i < 20; i++)
+		/* If not using ssc pll[4] through pll[8] must be 0*/
+		intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_PLL(i),
+				(!use_ssc && (i > 3 && i < 9)) ? 0 : pll_state->pll[i],
+				(i % 4) ? MB_WRITE_UNCOMMITTED : MB_WRITE_COMMITTED);
+
+	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CMN(0), cmn0, MB_WRITE_COMMITTED);
+	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_TX(0), C10_TX0_VAL, MB_WRITE_COMMITTED);
+	intel_cx0_rmw(i915, encoder->port, master_lane, PHY_C10_VDR_CONTROL(1),
+		      C10_VDR_CTRL_MSGBUS_ACCESS, C10_VDR_CTRL_MASTER_LANE |
+		      C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
+}
+
+void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
+				  const struct intel_c10mpllb_state *hw_state)
+{
+	bool fracen;
+	int i;
+	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
+	unsigned int multiplier, tx_clk_div;
+
+	fracen = hw_state->pll[0] & C10_PLL0_FRACEN;
+	drm_dbg_kms(&dev_priv->drm, "c10pll_hw_state: fracen: %s, ",
+		    str_yes_no(fracen));
+
+	if (fracen) {
+		frac_quot = hw_state->pll[12] << 8 | hw_state->pll[11];
+		frac_rem =  hw_state->pll[14] << 8 | hw_state->pll[13];
+		frac_den =  hw_state->pll[10] << 8 | hw_state->pll[9];
+		drm_dbg_kms(&dev_priv->drm, "quot: %u, rem: %u, den: %u,\n",
+			    frac_quot, frac_rem, frac_den);
+	}
+
+	multiplier = (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, hw_state->pll[3]) << 8 |
+		      hw_state->pll[2]) / 2 + 16;
+	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, hw_state->pll[15]);
+	drm_dbg_kms(&dev_priv->drm,
+		    "multiplier: %u, tx_clk_div: %u.\n", multiplier, tx_clk_div);
+
+	drm_dbg_kms(&dev_priv->drm, "c10pll_rawhw_state:");
+
+	for (i = 0; i < 20; i = i + 4)
+		drm_dbg_kms(&dev_priv->drm, "pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x\n",
+			    i, hw_state->pll[i], i + 1, hw_state->pll[i+ 1],
+			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
+}
+
+int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
+				   const struct intel_c10mpllb_state *pll_state)
+{
+	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
+	unsigned int multiplier, tx_clk_div, refclk = 38400;
+
+	if (pll_state->pll[0] & C10_PLL0_FRACEN) {
+		frac_quot = pll_state->pll[12] << 8 | pll_state->pll[11];
+		frac_rem =  pll_state->pll[14] << 8 | pll_state->pll[13];
+		frac_den =  pll_state->pll[10] << 8 | pll_state->pll[9];
+	}
+
+	multiplier = (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, pll_state->pll[3]) << 8 |
+		      pll_state->pll[2]) / 2 + 16;
+
+	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, pll_state->pll[15]);
+
+	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier << 16) + frac_quot) +
+				     DIV_ROUND_CLOSEST(refclk * frac_rem, frac_den),
+				     10 << (tx_clk_div + 16));
+}
+
+void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
+				 struct intel_crtc_state *new_crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_c10mpllb_state mpllb_hw_state = { 0 };
+	struct intel_c10mpllb_state *mpllb_sw_state = &new_crtc_state->c10mpllb_state;
+	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
+	struct intel_encoder *encoder;
+	struct intel_dp *intel_dp;
+	enum phy phy;
+	int i;
+	bool use_ssc = false;
+
+	if (DISPLAY_VER(i915) < 14)
+		return;
+
+	if (!new_crtc_state->hw.active)
+		return;
+
+	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
+	phy = intel_port_to_phy(i915, encoder->port);
+
+	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
+		intel_dp = enc_to_intel_dp(encoder);
+		use_ssc = (intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
+			  DP_MAX_DOWNSPREAD_0_5);
+
+		if (intel_dp_is_edp(intel_dp) && !intel_panel_use_ssc(i915))
+			use_ssc = false;
+	}
+
+	if (!intel_is_c10phy(i915, phy))
+		return;
+
+	intel_c10mpllb_readout_hw_state(encoder, &mpllb_hw_state);
+
+	for (i = 0; i < 20; i++) {
+		u8 expected;
+
+		if (!use_ssc && i > 3 && i < 9)
+			expected = 0;
+		else
+			expected = mpllb_sw_state->pll[i];
+
+		I915_STATE_WARN(mpllb_hw_state.pll[i] != expected,
+				"[CRTC:%d:%s] mismatch in C10MPLLB: Register[%d] (expected 0x%02x, found 0x%02x)",
+				crtc->base.base.id, crtc->base.name,
+				i, expected, mpllb_hw_state.pll[i]);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
new file mode 100644
index 000000000000..cf1f300b6a7b
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -0,0 +1,128 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __INTEL_CX0_PHY_H__
+#define __INTEL_CX0_PHY_H__
+
+#include <linux/types.h>
+#include <linux/bitfield.h>
+#include <linux/bits.h>
+
+#include "i915_drv.h"
+#include "intel_display_types.h"
+
+/**
+ * REG_BIT8() - Prepare a u8 bit value
+ * @__n: 0-based bit number
+ *
+ * Local wrapper for BIT() to force u8, with compile time checks.
+ *
+ * @return: Value with bit @__n set.
+ */
+#define REG_BIT8(__n)							\
+	((u8)(BIT(__n) +						\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&		\
+				 ((__n) < 0 || (__n) > 7))))
+
+/**
+ * REG_GENMASK8() - Prepare a continuous u8 bitmask
+ * @__high: 0-based high bit
+ * @__low: 0-based low bit
+ *
+ * Local wrapper for GENMASK() to force u8, with compile time checks.
+ *
+ * @return: Continuous bitmask from @__high to @__low, inclusive.
+ */
+#define REG_GENMASK8(__high, __low)					\
+	((u8)(GENMASK(__high, __low) +					\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&	\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 || (__high) > 7 || (__low) > (__high)))))
+
+/*
+ * Local integer constant expression version of is_power_of_2().
+ */
+#define IS_POWER_OF_2(__x)		((__x) && (((__x) & ((__x) - 1)) == 0))
+
+/**
+ * REG_FIELD_PREP8() - Prepare a u8 bitfield value
+ * @__mask: shifted mask defining the field's length and position
+ * @__val: value to put in the field
+ *
+ * Local copy of FIELD_PREP8() to generate an integer constant expression, force
+ * u8 and for consistency with REG_FIELD_GET8(), REG_BIT8() and REG_GENMASK8().
+ *
+ * @return: @__val masked and shifted into the field defined by @__mask.
+ */
+#define REG_FIELD_PREP8(__mask, __val)						\
+	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +	\
+	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +		\
+	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +		\
+	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
+	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
+
+/**
+ * REG_FIELD_GET8() - Extract a u8 bitfield value
+ * @__mask: shifted mask defining the field's length and position
+ * @__val: value to extract the bitfield value from
+ *
+ * Local wrapper for FIELD_GET() to force u8 and for consistency with
+ * REG_FIELD_PREP(), REG_BIT() and REG_GENMASK().
+ *
+ * @return: Masked and shifted value of the field defined by @__mask in @__val.
+ */
+#define REG_FIELD_GET8(__mask, __val)	((u8)FIELD_GET(__mask, __val))
+
+struct drm_i915_private;
+struct intel_encoder;
+struct intel_crtc_state;
+enum phy;
+
+enum intel_cx0_lanes {
+	INTEL_CX0_LANE0,
+	INTEL_CX0_LANE1,
+	INTEL_CX0_BOTH_LANES,
+};
+
+#define MB_WRITE_COMMITTED		1
+#define MB_WRITE_UNCOMMITTED		0
+
+/* C10 Vendor Registers */
+#define PHY_C10_VDR_PLL(idx)		(0xC00 + (idx))
+#define  C10_PLL0_FRACEN		REG_BIT8(4)
+#define  C10_PLL3_MULTIPLIERH_MASK	REG_GENMASK8(3, 0)
+#define  C10_PLL15_TXCLKDIV_MASK	REG_GENMASK8(2, 0)
+#define PHY_C10_VDR_CMN(idx)		(0xC20 + (idx))
+#define  C10_CMN0_DP_VAL		0x21
+#define  C10_CMN3_TXVBOOST_MASK		REG_GENMASK8(7, 5)
+#define  C10_CMN3_TXVBOOST(val)		REG_FIELD_PREP8(C10_CMN3_TXVBOOST_MASK, val)
+#define PHY_C10_VDR_TX(idx)		(0xC30 + (idx))
+#define  C10_TX0_VAL			0x10
+#define PHY_C10_VDR_CONTROL(idx)	(0xC70 + (idx) - 1)
+#define  C10_VDR_CTRL_MSGBUS_ACCESS	REG_BIT8(2)
+#define  C10_VDR_CTRL_MASTER_LANE	REG_BIT8(1)
+#define  C10_VDR_CTRL_UPDATE_CFG	REG_BIT8(0)
+#define PHY_C10_VDR_CUSTOM_WIDTH	0xD02
+
+static inline bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
+{
+	if (!IS_METEORLAKE(dev_priv))
+		return false;
+	else
+		return (phy < PHY_C);
+}
+
+void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
+				     struct intel_c10mpllb_state *pll_state);
+int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
+			      struct intel_encoder *encoder);
+void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
+				  const struct intel_c10mpllb_state *hw_state);
+int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
+				   const struct intel_c10mpllb_state *pll_state);
+void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
+				 struct intel_crtc_state *new_crtc_state);
+
+#endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 971356237eca..aaa8846c3b18 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -38,6 +38,7 @@
 #include "intel_combo_phy_regs.h"
 #include "intel_connector.h"
 #include "intel_crtc.h"
+#include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
@@ -3487,6 +3488,21 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
 						     &crtc_state->dpll_hw_state);
 }
 
+static void mtl_ddi_get_config(struct intel_encoder *encoder,
+			       struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
+
+	intel_c10mpllb_readout_hw_state(encoder, &crtc_state->c10mpllb_state);
+	intel_c10mpllb_dump_hw_state(i915, &crtc_state->c10mpllb_state);
+	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->c10mpllb_state);
+
+	intel_ddi_get_config(encoder, crtc_state);
+}
+
 static void dg2_ddi_get_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state)
 {
@@ -4367,7 +4383,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder->cloneable = 0;
 	encoder->pipe_mask = ~0;
 
-	if (IS_DG2(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		encoder->get_config = mtl_ddi_get_config;
+	} else if (IS_DG2(dev_priv)) {
 		encoder->enable_clock = intel_mpllb_enable;
 		encoder->disable_clock = intel_mpllb_disable;
 		encoder->get_config = dg2_ddi_get_config;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index eb8eaeb19881..5f9272f6e186 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -47,6 +47,7 @@
 
 #include "display/intel_audio.h"
 #include "display/intel_crt.h"
+#include "display/intel_cx0_phy.h"
 #include "display/intel_ddi.h"
 #include "display/intel_display_debugfs.h"
 #include "display/intel_display_power.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 1e608b9e5055..451c90b6d08d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1626,7 +1626,8 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 		return;
 
 	/* 2. Initialize all combo phys */
-	intel_combo_phy_init(dev_priv);
+	if (DISPLAY_VER(dev_priv) < 14)
+		intel_combo_phy_init(dev_priv);
 
 	/*
 	 * 3. Enable Power Well 1 (PG1).
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index df7ee4969ef1..84e7f9d44ff9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -980,7 +980,7 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		bxt_verify_ddi_phy_power_wells(dev_priv);
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) >= 11 && DISPLAY_VER(dev_priv) < 14)
 		/*
 		 * DMC retains HW context only for port A, the other combo
 		 * PHY's HW context for port B is lost after DC transitions,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e2b853e9e51d..be6ff6cdfb0b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -969,6 +969,11 @@ struct intel_mpllb_state {
 	u32 mpllb_sscstep;
 };
 
+struct intel_c10mpllb_state {
+	u32 clock; /* in KHz */
+	u8 pll[20];
+};
+
 struct intel_crtc_state {
 	/*
 	 * uapi (drm) state. This is the software state shown to userspace.
@@ -1108,6 +1113,7 @@ struct intel_crtc_state {
 	union {
 		struct intel_dpll_hw_state dpll_hw_state;
 		struct intel_mpllb_state mpllb_state;
+		struct intel_c10mpllb_state c10mpllb_state;
 	};
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index b15ba78d64d6..73f541050913 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -7,6 +7,7 @@
 #include <linux/string_helpers.h>
 
 #include "intel_crtc.h"
+#include "intel_cx0_phy.h"
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
@@ -993,6 +994,17 @@ static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
+static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_encoder *encoder =
+		intel_get_crtc_new_encoder(state, crtc_state);
+
+	return intel_cx0mpllb_calc_state(crtc_state, encoder);
+}
+
 static bool ilk_needs_fb_cb_tune(const struct dpll *dpll, int factor)
 {
 	return dpll->m < factor * dpll->n;
@@ -1421,6 +1433,10 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
+static const struct intel_dpll_funcs mtl_dpll_funcs = {
+	.crtc_compute_clock = mtl_crtc_compute_clock,
+};
+
 static const struct intel_dpll_funcs dg2_dpll_funcs = {
 	.crtc_compute_clock = dg2_crtc_compute_clock,
 };
@@ -1515,7 +1531,9 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 void
 intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
 {
-	if (IS_DG2(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 14)
+		dev_priv->display.funcs.dpll = &mtl_dpll_funcs;
+	else if (IS_DG2(dev_priv))
 		dev_priv->display.funcs.dpll = &dg2_dpll_funcs;
 	else if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
 		dev_priv->display.funcs.dpll = &hsw_dpll_funcs;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index b63600d8ebeb..a3d015f44eed 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4173,7 +4173,7 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
 
 	mutex_init(&dev_priv->display.dpll.lock);
 
-	if (IS_DG2(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 14 || IS_DG2(dev_priv))
 		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
 		dpll_mgr = NULL;
 	else if (IS_ALDERLAKE_P(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 0fdcf2e6d57f..dfd9a0108b0f 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -11,6 +11,7 @@
 #include "intel_atomic.h"
 #include "intel_crtc.h"
 #include "intel_crtc_state_dump.h"
+#include "intel_cx0_phy.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
@@ -235,6 +236,7 @@ void intel_modeset_verify_crtc(struct intel_crtc *crtc,
 	verify_crtc_state(crtc, old_crtc_state, new_crtc_state);
 	intel_shared_dpll_state_verify(crtc, old_crtc_state, new_crtc_state);
 	intel_mpllb_state_verify(state, new_crtc_state);
+	intel_c10mpllb_state_verify(state, new_crtc_state);
 }
 
 void intel_modeset_verify_disabled(struct drm_i915_private *dev_priv,
-- 
2.34.1

