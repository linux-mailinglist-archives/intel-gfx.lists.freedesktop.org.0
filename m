Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7046179D578
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 18:00:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9797C10E431;
	Tue, 12 Sep 2023 15:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ABB610E431
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 15:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694534396; x=1726070396;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Tbz/NcsD7GPzbRLLdot5TXTwQe/jjcZoq++fErG9ytM=;
 b=amH5ngoXsrCdAU8o3rFVqIlUWZP9hKaYerFQ0rdXD6gLIENmBeQwByNR
 Aw0SqmwEccCBRLqiUuu/nZ7113rPe8/T5+6Kuob5QOH4vvZs7/EriYP20
 5TYzpmNrnTWVixxZsxvAnqEEOzVD1oxTvEnV3mBm+J6F75yiI96sWOf3f
 vquokeUj39PCBKubl/BtYnrTyRv2XKptCNIPnxrvNLGoUr07L6XHDuGkJ
 qLAlbm/vHhNDG81jF+k6Ov3JVQdGiSUEfCPIUOR3dV+Lx7XDFErsNTieM
 3fDvpUSpklg9v9njuZ4a11OLeCH5p/PS6dhGU9orBmm8zM7B2vc4bmXdV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="378325312"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="378325312"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 08:59:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="867432394"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="867432394"
Received: from wlkong-mobl1.gar.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.36.74])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 08:59:42 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Sep 2023 12:59:23 -0300
Message-ID: <20230912155923.39494-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/cx0: Add step for programming
 msgbus timer
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

There was a recent update in the BSpec adding an extra step to the PLL
enable sequence, which is for programming the msgbus timer. Since we
also touch PHY registers during hw readout, let's do the programming
when starting a transaction rather than only when doing the PLL enable
sequence.

This might be the missing step that was causing the timeouts
that we have recently seen during C20 SRAM register programming
sequences. With this in place, we shouldn't need the logic to bump the
timer thresholds, since now we have a documented value that should be
set peform programming the registers. As such, let's also remove
intel_cx0_bus_check_and_bump_timer(), but keep the part that checks if
hardware really detected a timeout, which might be useful debugging
information.

v2:
  - Use debug level instead of warning for the message notifying that
    the hardware did not detect the timeout. (Mika)
  - Got a new BSpec update clarifying that we need to program the msgbus
    timer of both PHY lanes. Update the changes to reflect that.
    (Gustavo)

BSpec: 64568
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 87 +++++++++----------
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  2 +-
 2 files changed, 41 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index e6d3027c821d..abd607b564f1 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -29,8 +29,6 @@
 #define INTEL_CX0_LANE1		BIT(1)
 #define INTEL_CX0_BOTH_LANES	(INTEL_CX0_LANE1 | INTEL_CX0_LANE0)
 
-#define INTEL_CX0_MSGBUS_TIMER_BUMPED_VAL	0x200
-
 bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
 {
 	if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0) && phy < PHY_C)
@@ -73,19 +71,38 @@ assert_dc_off(struct drm_i915_private *i915)
 	drm_WARN_ON(&i915->drm, !enabled);
 }
 
+static void intel_cx0_program_msgbus_timer(struct intel_encoder *encoder)
+{
+	int lane;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	for_each_cx0_lane_in_mask(INTEL_CX0_BOTH_LANES, lane)
+		intel_de_rmw(i915,
+			     XELPDP_PORT_MSGBUS_TIMER(encoder->port, lane),
+			     XELPDP_PORT_MSGBUS_TIMER_VAL_MASK,
+			     XELPDP_PORT_MSGBUS_TIMER_VAL);
+}
+
 /*
  * Prepare HW for CX0 phy transactions.
  *
  * It is required that PSR and DC5/6 are disabled before any CX0 message
  * bus transaction is executed.
+ *
+ * We also do the msgbus timer programming here to ensure that the timer
+ * is already programmed before any access to the msgbus.
  */
 static intel_wakeref_t intel_cx0_phy_transaction_begin(struct intel_encoder *encoder)
 {
+	intel_wakeref_t wakeref;
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	intel_psr_pause(intel_dp);
-	return intel_display_power_get(i915, POWER_DOMAIN_DC_OFF);
+	wakeref = intel_display_power_get(i915, POWER_DOMAIN_DC_OFF);
+	intel_cx0_program_msgbus_timer(encoder);
+
+	return wakeref;
 }
 
 static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_wakeref_t wakeref)
@@ -121,42 +138,6 @@ static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, i
 	intel_clear_response_ready_flag(i915, port, lane);
 }
 
-/*
- * Check if there was a timeout detected by the hardware in the message bus
- * and bump the threshold if so.
- */
-static void intel_cx0_bus_check_and_bump_timer(struct drm_i915_private *i915,
-					       enum port port, int lane)
-{
-	enum phy phy = intel_port_to_phy(i915, port);
-	i915_reg_t reg;
-	u32 val;
-	u32 timer_val;
-
-	reg = XELPDP_PORT_MSGBUS_TIMER(port, lane);
-	val = intel_de_read(i915, reg);
-
-	if (!(val & XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT)) {
-		drm_warn(&i915->drm,
-			 "PHY %c lane %d: hardware did not detect a timeout\n",
-			 phy_name(phy), lane);
-		return;
-	}
-
-	timer_val = REG_FIELD_GET(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, val);
-
-	if (timer_val == INTEL_CX0_MSGBUS_TIMER_BUMPED_VAL)
-		return;
-
-	val &= ~XELPDP_PORT_MSGBUS_TIMER_VAL_MASK;
-	val |= XELPDP_PORT_MSGBUS_TIMER_VAL(INTEL_CX0_MSGBUS_TIMER_BUMPED_VAL);
-
-	drm_dbg_kms(&i915->drm,
-		    "PHY %c lane %d: increasing msgbus timer threshold to %#x\n",
-		    phy_name(phy), lane, INTEL_CX0_MSGBUS_TIMER_BUMPED_VAL);
-	intel_de_write(i915, reg, val);
-}
-
 static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port,
 				  int command, int lane, u32 *val)
 {
@@ -170,7 +151,13 @@ static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port,
 					 XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
 		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for message ACK. Status: 0x%x\n",
 			    phy_name(phy), *val);
-		intel_cx0_bus_check_and_bump_timer(i915, port, lane);
+
+		if (!(intel_de_read(i915, XELPDP_PORT_MSGBUS_TIMER(port, lane)) &
+		      XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT))
+			drm_dbg_kms(&i915->drm,
+				    "PHY %c Hardware did not detect a timeout\n",
+				    phy_name(phy));
+
 		intel_cx0_bus_reset(i915, port, lane);
 		return -ETIMEDOUT;
 	}
@@ -2737,39 +2724,45 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
 					    CX0_P2_STATE_READY);
 
-	/* 4. Program PHY internal PLL internal registers. */
+	/*
+	 * 4. Program PORT_MSGBUS_TIMER register's Message Bus Timer field to 0xA000.
+	 *    (This is done inside intel_cx0_phy_transaction_begin(), since we would need
+	 *    the right timer thresholds for readouts too.)
+	 */
+
+	/* 5. Program PHY internal PLL internal registers. */
 	if (intel_is_c10phy(i915, phy))
 		intel_c10_pll_program(i915, crtc_state, encoder);
 	else
 		intel_c20_pll_program(i915, crtc_state, encoder);
 
 	/*
-	 * 5. Program the enabled and disabled owned PHY lane
+	 * 6. Program the enabled and disabled owned PHY lane
 	 * transmitters over message bus
 	 */
 	intel_cx0_program_phy_lane(i915, encoder, crtc_state->lane_count, lane_reversal);
 
 	/*
-	 * 6. Follow the Display Voltage Frequency Switching - Sequence
+	 * 7. Follow the Display Voltage Frequency Switching - Sequence
 	 * Before Frequency Change. We handle this step in bxt_set_cdclk().
 	 */
 
 	/*
-	 * 7. Program DDI_CLK_VALFREQ to match intended DDI
+	 * 8. Program DDI_CLK_VALFREQ to match intended DDI
 	 * clock frequency.
 	 */
 	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port),
 		       crtc_state->port_clock);
 
 	/*
-	 * 8. Set PORT_CLOCK_CTL register PCLK PLL Request
+	 * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
 	 * LN<Lane for maxPCLK> to "1" to enable PLL.
 	 */
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
 		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
 		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
 
-	/* 9. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
+	/* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
 	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
 					 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
 					 intel_cx0_get_pclk_pll_ack(maxpclk_lane),
@@ -2778,7 +2771,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 			 phy_name(phy), XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US);
 
 	/*
-	 * 10. Follow the Display Voltage Frequency Switching Sequence After
+	 * 11. Follow the Display Voltage Frequency Switching Sequence After
 	 * Frequency Change. We handle this step in bxt_set_cdclk().
 	 */
 
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index b2db4cc366d6..adf8f4ce0d49 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -121,7 +121,7 @@
 										 _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2) + (lane) * 4)
 #define   XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT		REG_BIT(31)
 #define   XELPDP_PORT_MSGBUS_TIMER_VAL_MASK		REG_GENMASK(23, 0)
-#define   XELPDP_PORT_MSGBUS_TIMER_VAL(val)		REG_FIELD_PREP(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, val)
+#define   XELPDP_PORT_MSGBUS_TIMER_VAL			REG_FIELD_PREP(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, 0xa000)
 
 #define _XELPDP_PORT_CLOCK_CTL_A			0x640E0
 #define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
-- 
2.42.0

