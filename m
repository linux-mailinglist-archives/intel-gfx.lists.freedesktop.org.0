Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E686E94ED
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 14:46:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ED2310EC28;
	Thu, 20 Apr 2023 12:46:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3599210E2F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 12:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681994764; x=1713530764;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZTiyQfa7uVVBwDhNOgpLfuLGpVkXlel6T67SgvLkeq4=;
 b=CghfOdgtfRo3hHsxOHaq3kPQX+OodQwzoWgBXIEW+/m43HQ6f+Y33Gpr
 cDZSd1FZxBaikrpYUJPCXFcpAYQnuFF+6Ojvq48ak8uFv1sKrKdy/cM5N
 rPHOCxTLGk98Mt0xxFZ/2h1xcMQn8aCViRuNlvgOloEHB/XHB/f9rEhWz
 Qid5AhZTejerc3kThdu8niBGFkscgYpePncg3/aWXUEqxLS58pGc+wRh9
 VAfiP+I1RQfiBb0TGKEmw33HuKwPZK9sU2WdfDZ4iYVrjyZG23qczh7m/
 2ndcbCF7yPhLZ46pzUARHqGh/IpqIgg9Zo4D2dJoc0yb4wvszRROszsfo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="326051912"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="326051912"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 05:46:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="761146036"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="761146036"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga004.fm.intel.com with ESMTP; 20 Apr 2023 05:46:02 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Apr 2023 15:40:44 +0300
Message-Id: <20230420124050.3617608-8-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230420124050.3617608-1-mika.kahola@intel.com>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/13] drm/i915/mtl: Enabling/disabling sequence
 Thunderbolt pll
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

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 135 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |   7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c     |   4 +-
 3 files changed, 138 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 4231ba98f075..9722d3f1b926 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2600,8 +2600,8 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
 	return val;
 }
 
-void intel_cx0pll_enable(struct intel_encoder *encoder,
-			 const struct intel_crtc_state *crtc_state)
+static void intel_cx0pll_enable(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
@@ -2676,7 +2676,86 @@ void intel_cx0pll_enable(struct intel_encoder *encoder,
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
+	}
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
@@ -2728,6 +2807,56 @@ void intel_cx0pll_disable(struct intel_encoder *encoder)
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
 void intel_c10pll_state_verify(struct intel_atomic_state *state,
 			       struct intel_crtc_state *new_crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 83bd3500091b..9ea6310b6d79 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -19,9 +19,9 @@ struct intel_crtc_state;
 enum phy;
 
 bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy);
-void intel_cx0pll_enable(struct intel_encoder *encoder,
-			 const struct intel_crtc_state *crtc_state);
-void intel_cx0pll_disable(struct intel_encoder *encoder);
+void intel_mtl_pll_enable(struct intel_encoder *encoder,
+			  const struct intel_crtc_state *crtc_state);
+void intel_mtl_pll_disable(struct intel_encoder *encoder);
 void intel_c10pll_readout_hw_state(struct intel_encoder *encoder, struct intel_c10pll_state *pll_state);
 int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state, struct intel_encoder *encoder);
 void intel_c10pll_dump_hw_state(struct drm_i915_private *dev_priv,
@@ -42,4 +42,5 @@ int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
 void intel_cx0_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state,
 				       u32 level);
+int intel_mtl_tbt_readout_hw_state(struct intel_encoder *encoder);
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 8e6d6afca400..c18226edacac 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4779,8 +4779,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
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

