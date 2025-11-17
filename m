Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C21C63A8B
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CBE010E35A;
	Mon, 17 Nov 2025 10:59:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kuE7BM7d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B82A910E34A;
 Mon, 17 Nov 2025 10:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377152; x=1794913152;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jeOAVsMfVpvoZ+XNvvNYy7QBWP2s64jtuQ0H9sE+dIM=;
 b=kuE7BM7d2hDrODQ7C2uX8JEzRSRKfjOwaYbbrGSHVy5RVr+B9BFYxUs5
 B2xG9FjZ0zJdfIJ+BNDsvIx+xr1gkyhmMINT4gXlHd6hXCw/vj9AwLfC6
 zcD6x4FwKNqGWbsCZecKVuWdUuWjbbkKJjmsFLkAmidUyRRLQcgDxdP1a
 DKzMN7VibAAA3TrZ1iAn8b3+ytoUqKwSyEOLQFEQkhj7MNO9L8lxAEXiY
 ewMfSlFLVrHu18PtCevFfbppHQg+JRymZtdL31hYMCJhphwFmONQ7SZJH
 tSaYxxIfhGwX7qdZcUCgJTd4LsIB23i8krtfUlzcY0JLUiQEi5POhbb/k g==;
X-CSE-ConnectionGUID: tG2Z3UpyRICYwudaTaNZcA==
X-CSE-MsgGUID: 437/QxT7Q8akYGIF0C9O/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475354"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475354"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:11 -0800
X-CSE-ConnectionGUID: pyeVTEZ3QKKEVW9jbn4L9Q==
X-CSE-MsgGUID: JnXX+zs6RWOWoMG/IZk03g==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:10 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 08/32] drm/i915/cx0: Track the Cx0 PHY enabled lane count
 in the PLL state
Date: Mon, 17 Nov 2025 12:45:38 +0200
Message-Id: <20251117104602.2363671-9-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117104602.2363671-1-mika.kahola@intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
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

From: Imre Deak <imre.deak@intel.com>

The Cx0 PLL enable programming requires the enabled lane count. The PLL
manager framework doesn't pass the CRTC state to the PLL's enable hook,
so prepare here for the conversion to use the PLL manager, by tracking
the enabled lane count in the PLL state as well. This has the advantage,
that the enabled lane count can be verified against the PHY/PLL's
enabled TX lanes.

This also allows dropping the lane count param from the
__intel_cx0pll_enable() function, since it can retrieve this now from
the PLL state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 55 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
 2 files changed, 49 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 9515157ee6b3..2ab93d02fdf1 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -11,6 +11,7 @@
 #include "intel_alpm.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
+#include "intel_display_regs.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
@@ -2078,7 +2079,7 @@ static void intel_c10pll_update_pll(struct intel_encoder *encoder,
  */
 static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
 					      const struct intel_c10pll_state * const *tables,
-					      bool is_dp, int port_clock,
+					      bool is_dp, int port_clock, int lane_count,
 					      struct intel_cx0pll_state *pll_state)
 {
 	int i;
@@ -2088,7 +2089,9 @@ static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
 			pll_state->c10 = *tables[i];
 			intel_cx0pll_update_ssc(encoder, pll_state, is_dp);
 			intel_c10pll_update_pll(encoder, pll_state);
+
 			pll_state->use_c10 = true;
+			pll_state->lane_count = lane_count;
 
 			return 0;
 		}
@@ -2109,7 +2112,7 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 
 	err = intel_c10pll_calc_state_from_table(encoder, tables,
 						 intel_crtc_has_dp_encoder(crtc_state),
-						 crtc_state->port_clock,
+						 crtc_state->port_clock, crtc_state->lane_count,
 						 &crtc_state->dpll_hw_state.cx0pll);
 
 	if (err == 0 || !intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
@@ -2121,6 +2124,7 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 	intel_c10pll_update_pll(encoder,
 				&crtc_state->dpll_hw_state.cx0pll);
 	crtc_state->dpll_hw_state.cx0pll.use_c10 = true;
+	crtc_state->dpll_hw_state.cx0pll.lane_count = crtc_state->lane_count;
 
 	return 0;
 }
@@ -2152,6 +2156,37 @@ static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
 	return tmpclk;
 }
 
+static int readout_enabled_lane_count(struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	u8 enabled_tx_lane_count = 0;
+	int max_tx_lane_count;
+	int tx_lane;
+
+	/*
+	 * TODO: also check inactive TX lanes in all PHY lanes owned by the
+	 * display. For now checking only those PHY lane(s) which are owned
+	 * based on the active TX lane count (i.e.
+	 *   1,2 active TX lanes -> PHY lane#0
+	 *   3,4 active TX lanes -> PHY lane#0 and PHY lane#1).
+	 */
+	max_tx_lane_count = DDI_PORT_WIDTH_GET(intel_de_read(display, DDI_BUF_CTL(encoder->port)));
+	if (!drm_WARN_ON(display->drm, max_tx_lane_count == 0))
+		max_tx_lane_count = roundup_pow_of_two(max_tx_lane_count);
+
+	for (tx_lane = 0; tx_lane < max_tx_lane_count; tx_lane++) {
+		u8 phy_lane_mask = tx_lane < 2 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;
+		int tx = tx_lane % 2 + 1;
+		u8 val;
+
+		val = intel_cx0_read(encoder, phy_lane_mask, PHY_CX0_TX_CONTROL(tx, 2));
+		if (!(val & CONTROL2_DISABLE_SINGLE_TX))
+			enabled_tx_lane_count++;
+	}
+
+	return enabled_tx_lane_count;
+}
+
 static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 					  struct intel_cx0pll_state *cx0pll_state)
 {
@@ -2170,6 +2205,8 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 	 */
 	intel_c10_msgbus_access_begin(encoder, lane);
 
+	cx0pll_state->lane_count = readout_enabled_lane_count(encoder);
+
 	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
 		pll_state->pll[i] = intel_cx0_read(encoder, lane, PHY_C10_VDR_PLL(i));
 
@@ -2562,6 +2599,7 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 	int err = -ENOENT;
 
 	crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
+	crtc_state->dpll_hw_state.cx0pll.lane_count = crtc_state->lane_count;
 
 	/* try computed C20 HDMI tables before using consolidated tables */
 	if (!is_dp)
@@ -2651,6 +2689,8 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 
 	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
+	cx0pll_state->lane_count = readout_enabled_lane_count(encoder);
+
 	/* 1. Read VDR params and current context selection */
 	intel_c20_readout_vdr_params(encoder, &pll_state->vdr, &cntx);
 
@@ -3089,7 +3129,7 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
 
 static void __intel_cx0pll_enable(struct intel_encoder *encoder,
 				  const struct intel_cx0pll_state *pll_state,
-				  bool is_dp, int port_clock, int lane_count)
+				  bool is_dp, int port_clock)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
@@ -3131,7 +3171,7 @@ static void __intel_cx0pll_enable(struct intel_encoder *encoder,
 	 * 6. Program the enabled and disabled owned PHY lane
 	 * transmitters over message bus
 	 */
-	intel_cx0_program_phy_lane(encoder, lane_count, lane_reversal);
+	intel_cx0_program_phy_lane(encoder, pll_state->lane_count, lane_reversal);
 
 	/*
 	 * 7. Follow the Display Voltage Frequency Switching - Sequence
@@ -3174,7 +3214,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 {
 	__intel_cx0pll_enable(encoder, &crtc_state->dpll_hw_state.cx0pll,
 			      intel_crtc_has_dp_encoder(crtc_state),
-			      crtc_state->port_clock, crtc_state->lane_count);
+			      crtc_state->port_clock);
 }
 
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
@@ -3700,6 +3740,7 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
 	for_each_intel_encoder(display->drm, encoder) {
 		struct intel_cx0pll_state pll_state = {};
 		int port_clock = 162000;
+		int lane_count = 4;
 
 		if (!intel_encoder_is_dig_port(encoder))
 			continue;
@@ -3712,7 +3753,7 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
 
 		if (intel_c10pll_calc_state_from_table(encoder,
 						       mtl_c10_edp_tables,
-						       true, port_clock,
+						       true, port_clock, lane_count,
 						       &pll_state) < 0) {
 			drm_WARN_ON(display->drm,
 				    "Unable to calc C10 state from the tables\n");
@@ -3723,7 +3764,7 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
 			    "[ENCODER:%d:%s] Applying power saving workaround on disabled PLL\n",
 			    encoder->base.base.id, encoder->base.name);
 
-		__intel_cx0pll_enable(encoder, &pll_state, true, port_clock, 4);
+		__intel_cx0pll_enable(encoder, &pll_state, true, port_clock);
 		intel_cx0pll_disable(encoder);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index a0238a3e7288..a7946ff13cb6 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -267,6 +267,7 @@ struct intel_cx0pll_state {
 		struct intel_c10pll_state c10;
 		struct intel_c20pll_state c20;
 	};
+	int lane_count;
 	bool ssc_enabled;
 	bool use_c10;
 	bool tbt_mode;
-- 
2.34.1

