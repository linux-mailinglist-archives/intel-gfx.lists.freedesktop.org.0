Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 574526A0B05
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 14:46:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 664F210EB9B;
	Thu, 23 Feb 2023 13:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB80610E4F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 13:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677159957; x=1708695957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lcfQiPh+Q/i9xVGqHNflMXiIzV3kWh1PvCuze9ATfN8=;
 b=RyPSZN5HsyzznkTHNT0B5v+6liFwXGz7wAg8EUFo5tMNw4TY/7NUM/u4
 L2gIxeIgU17y2CpeCQa2Bl5X4afX8z0b/64otpD9ZwzMRjSWl1r2x9x6P
 K80M77H+LDdGuStjimPOj/rUUh/mumGvXQKV+P12fkcSfiscbBco4TqRT
 +E9veihoEG5TRrRtLk6D2Kdu2cEgNK0ETsxQAgFa0sHYHurpDF1l8YZAX
 l9apoBiWA42UX2tC+qyZ91tXCG25EKNaG2GXxzMxO9qyy0g7nzDbEXntI
 qaLNc0JGjpM0knykI5hrcg9SM9O6I++w1c77n1LSXLL+McTP4xhI3Vjo9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="334581688"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="334581688"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 05:45:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="846562552"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="846562552"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 23 Feb 2023 05:45:56 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 15:40:14 +0200
Message-Id: <20230223134021.2236889-16-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230223134021.2236889-1-mika.kahola@intel.com>
References: <20230223134021.2236889-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 15/22] drm/i915/mtl: Enabling/disabling
 sequence Thunderbolt pll
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

Enabling and disabling sequence for Thunderbolt PLL.

v2: Use __intel_de_wait_for_register() instead of
    __intel_wait_for_register() (Jani)
    Use '0' instead of ~XELPDP_TBT_CLOCK_ACK (Gustavo)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 136 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |   7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c     |   4 +-
 3 files changed, 138 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index fb16ad7396f6..6ce3b8aaf773 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -15,7 +15,6 @@
 #include "intel_panel.h"
 #include "intel_tc.h"
 #include "intel_psr.h"
-#include "intel_uncore.h"
 #include "intel_tc.h"
 
 bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
@@ -2460,8 +2459,8 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane)
 		       XELPDP_LANE1_PCLK_PLL_ACK;
 }
 
-void intel_cx0pll_enable(struct intel_encoder *encoder,
-			 const struct intel_crtc_state *crtc_state)
+static void intel_cx0pll_enable(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
@@ -2534,7 +2533,86 @@ void intel_cx0pll_enable(struct intel_encoder *encoder,
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
-void intel_cx0pll_disable(struct intel_encoder *encoder)
+static int intel_mtl_tbt_clock_select(struct drm_i915_private *i915, int clock)
+{
+	switch (clock) {
+	case 162000:
+		return XELPDP_DDI_CLOCK_SELECT_TBT_162;
+	case 270000:
+		return XELPDP_DDI_CLOCK_SELECT_TBT_270;
+	case 540000:
+		return XELPDP_DDI_CLOCK_SELECT_TBT_540;
+	case 810000:
+		return XELPDP_DDI_CLOCK_SELECT_TBT_810;
+	default:
+		MISSING_CASE(clock);
+		return XELPDP_DDI_CLOCK_SELECT_TBT_162;
+       }
+}
+
+static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
+				     const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	u32 val = 0;
+
+	/*
+	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
+	 * clock muxes, gating and SSC
+	 */
+	val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(i915, crtc_state->port_clock));
+	val |= XELPDP_FORWARD_CLOCK_UNGATE;
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_FORWARD_CLOCK_UNGATE, val);
+
+	/* 2. Read back PORT_CLOCK_CTL REGISTER */
+	val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
+
+	/*
+	 * 3. Follow the Display Voltage Frequency Switching - Sequence
+	 * Before Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+
+	/*
+	 * 4. Set PORT_CLOCK_CTL register TBT CLOCK Request to "1" to enable PLL.
+	 */
+	val |= XELPDP_TBT_CLOCK_REQUEST;
+	intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(encoder->port), val);
+
+	/* 5. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "1". */
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+				         XELPDP_TBT_CLOCK_ACK,
+				         XELPDP_TBT_CLOCK_ACK,
+				         100, 0, NULL))
+		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not locked after 100us.\n",
+			 encoder->base.base.id, encoder->base.name, phy_name(phy));
+
+	/*
+	 * 6. Follow the Display Voltage Frequency Switching Sequence After
+	 * Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+
+	/*
+	 * 7. Program DDI_CLK_VALFREQ to match intended DDI
+	 * clock frequency.
+	 */
+	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port),
+		       crtc_state->port_clock);
+}
+
+void intel_mtl_pll_enable(struct intel_encoder *encoder,
+			  const struct intel_crtc_state *crtc_state)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (intel_tc_port_in_tbt_alt_mode(dig_port))
+		intel_mtl_tbt_pll_enable(encoder, crtc_state);
+	else
+		intel_cx0pll_enable(encoder, crtc_state);
+}
+
+static void intel_cx0pll_disable(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
@@ -2586,6 +2664,56 @@ void intel_cx0pll_disable(struct intel_encoder *encoder)
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
+static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	/*
+	 * 1. Follow the Display Voltage Frequency Switching Sequence Before
+	 * Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+
+	/*
+	 * 2. Set PORT_CLOCK_CTL register TBT CLOCK Request to "0" to disable PLL.
+	 */
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+		     XELPDP_TBT_CLOCK_REQUEST, 0);
+
+	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "0". */
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+				         XELPDP_TBT_CLOCK_ACK,
+				         0,
+				         10, 0, NULL))
+		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not unlocked after 10us.\n",
+			 encoder->base.base.id, encoder->base.name, phy_name(phy));
+
+	/*
+	 * 4. Follow the Display Voltage Frequency Switching Sequence After
+	 * Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+
+	/*
+	 * 5. Program PORT CLOCK CTRL register to disable and gate clocks
+	 */
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+		     XELPDP_DDI_CLOCK_SELECT_MASK |
+		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
+
+	/* 6. Program DDI_CLK_VALFREQ to 0. */
+	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port), 0);
+}
+
+void intel_mtl_pll_disable(struct intel_encoder *encoder)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (intel_tc_port_in_tbt_alt_mode(dig_port))
+		intel_mtl_tbt_pll_disable(encoder);
+	else
+		intel_cx0pll_disable(encoder);
+}
+
 void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 				 struct intel_crtc_state *new_crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 0a8e76fd101e..f8a86da4a3f7 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -26,9 +26,9 @@ enum phy;
 #define MB_WRITE_UNCOMMITTED		0
 
 bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy);
-void intel_cx0pll_enable(struct intel_encoder *encoder,
-			 const struct intel_crtc_state *crtc_state);
-void intel_cx0pll_disable(struct intel_encoder *encoder);
+void intel_mtl_pll_enable(struct intel_encoder *encoder,
+			  const struct intel_crtc_state *crtc_state);
+void intel_mtl_pll_disable(struct intel_encoder *encoder);
 void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
 				     struct intel_c10mpllb_state *pll_state);
 int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
@@ -53,4 +53,5 @@ int intel_c20_phy_check_hdmi_link_rate(int clock);
 void intel_cx0_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state,
 				       u32 level);
+int intel_mtl_tbt_readout_hw_state(struct intel_encoder *encoder);
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5ec856e3c3bf..5e940d2a39d2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4405,8 +4405,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder->pipe_mask = ~0;
 
 	if (DISPLAY_VER(dev_priv) >= 14) {
-		encoder->enable_clock = intel_cx0pll_enable;
-		encoder->disable_clock = intel_cx0pll_disable;
+		encoder->enable_clock = intel_mtl_pll_enable;
+		encoder->disable_clock = intel_mtl_pll_disable;
 		encoder->get_config = mtl_ddi_get_config;
 	} else if (IS_DG2(dev_priv)) {
 		encoder->enable_clock = intel_mpllb_enable;
-- 
2.34.1

