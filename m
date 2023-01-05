Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0593465EB77
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:00:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ED8A10E722;
	Thu,  5 Jan 2023 13:00:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A446E10E721
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672923606; x=1704459606;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q69bQI+n+y3IVdEGcjvmFoi1KpQC3n7L3besQhOApl4=;
 b=fDs2tuyloe7G5woavpsqcPVDLUhqNxugbPNnbfgprVhpx7NTy4w1JEJR
 snF1oK5rOA/Ba9K0NgnWC1zZyID8E0ONIOtBvnMuT9PGhylyKW6mrVhQh
 QwCLksfsftysBBdghzoiQFoTA/Me6bJ5/kJGNn2OLiYMNvTEYM0v9lgv8
 qFPDQruidVQthUNsmMY3ElK+Zzhz5RUIMRrUJVcl38wIiN3shjXZabRjT
 hjA4qZkdEdwQS7/tZJRVsgOYn9FbV306wgKHrcXYHSVnzg4WKegPXlOUv
 e2vWOXJNVofNHTYHdX0L8T1kuY8HNFdZ96SJbOJDH6IpL5TRxjenv4pPq A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="305697869"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="305697869"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:00:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="829541210"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="829541210"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2023 05:00:04 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:54:39 +0200
Message-Id: <20230105125446.960504-15-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105125446.960504-1-mika.kahola@intel.com>
References: <20230105125446.960504-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/21] drm/i915/mtl: Enabling/disabling
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enabling and disabling sequence for Thunderbolt PLL.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-15-mika.kahola@intel.com
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 137 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |   7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c     |   4 +-
 3 files changed, 139 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 67e8889aec29..9218f99bca4e 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -14,8 +14,8 @@
 #include "intel_hdmi.h"
 #include "intel_panel.h"
 #include "intel_psr.h"
-#include "intel_uncore.h"
 #include "intel_tc.h"
+#include "intel_uncore.h"
 
 bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
 {
@@ -2365,8 +2365,8 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane)
 		       XELPDP_LANE1_PCLK_PLL_ACK;
 }
 
-void intel_cx0pll_enable(struct intel_encoder *encoder,
-			 const struct intel_crtc_state *crtc_state)
+static void intel_cx0pll_enable(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
@@ -2439,7 +2439,86 @@ void intel_cx0pll_enable(struct intel_encoder *encoder,
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
+	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_CLOCK_CTL(encoder->port),
+				      XELPDP_TBT_CLOCK_ACK,
+				      XELPDP_TBT_CLOCK_ACK,
+				      100, 0, NULL))
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
@@ -2491,6 +2570,56 @@ void intel_cx0pll_disable(struct intel_encoder *encoder)
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
+	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_CLOCK_CTL(encoder->port),
+				      XELPDP_TBT_CLOCK_ACK,
+				      ~XELPDP_TBT_CLOCK_ACK,
+				      10, 0, NULL))
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
index 8ca77dfea24b..141802038f12 100644
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
index 829c90b17b08..c2b9a2053732 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4419,8 +4419,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
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

