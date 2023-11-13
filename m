Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1687EA17B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 17:47:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C22910E171;
	Mon, 13 Nov 2023 16:47:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA43310E3C5
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 16:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699894049; x=1731430049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zju985AvFKlPyACxW6pUCg5JOrhNJNamOOJ7X00KI8M=;
 b=WkvoAxWm5/7TE/F+S7ry/MJArWCXzU/yxQQumPCil2WeWYfN8Aebn/uI
 N2qcGgl6+10wxGxFYOCswNdyaM3Nv6d8+9CLTvDgJtQc/BvjLDGWUJQfO
 32/GgdW11XlpEVNFCVyi+25Sk3xRL4Gxtw5R3q241wOSxQTlwx/KiYWMA
 uuDycxhwAiy3T0J3B8LflNaPXLgmaR70cQeeiD89esqCn19ROnrq4uu2Z
 YD3jZ4AOB4PGATk8x52YgEdtQSCijGMZmJjP2NdUtcuhBX7YmRL+5bndU
 HrpujUGt0+GNGmWJbMvNdR9YNoz2OU7KaqLeZyAkQoBxg2grv5RPs9Spz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="476685369"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="476685369"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 08:47:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="12511056"
Received: from cgheban-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.92])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 08:47:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Nov 2023 18:47:10 +0200
Message-Id: <20231113164711.4100548-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231113164711.4100548-1-jani.nikula@intel.com>
References: <20231113164711.4100548-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: convert vlv_dpio_read()/write()
 from pipe to phy
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

vlv_dpio_read() and vlv_dpio_write() really operate on the phy, not
pipe. Passing the pipe instead of the phy as parameter is supposed to be
a convenience, but when the caller has the phy, it becomes an
inconvenience. See e.g. chv_dpio_cmn_power_well_enable() and
assert_chv_phy_powergate().

Figure out the phy in the callers, and pass phy to the dpio functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../i915/display/intel_display_power_well.c   |  23 +--
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 160 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll.c     | 106 ++++++------
 drivers/gpu/drm/i915/vlv_sideband.c           |  10 +-
 drivers/gpu/drm/i915/vlv_sideband.h           |   6 +-
 5 files changed, 152 insertions(+), 153 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 07d650050099..47cd6bb04366 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1400,20 +1400,16 @@ static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 {
 	enum i915_power_well_id id = i915_power_well_instance(power_well)->id;
 	enum dpio_phy phy;
-	enum pipe pipe;
 	u32 tmp;
 
 	drm_WARN_ON_ONCE(&dev_priv->drm,
 			 id != VLV_DISP_PW_DPIO_CMN_BC &&
 			 id != CHV_DISP_PW_DPIO_CMN_D);
 
-	if (id == VLV_DISP_PW_DPIO_CMN_BC) {
-		pipe = PIPE_A;
+	if (id == VLV_DISP_PW_DPIO_CMN_BC)
 		phy = DPIO_PHY0;
-	} else {
-		pipe = PIPE_C;
+	else
 		phy = DPIO_PHY1;
-	}
 
 	/* since ref/cri clock was enabled */
 	udelay(1); /* >10ns for cmnreset, >0ns for sidereset */
@@ -1428,24 +1424,24 @@ static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 	vlv_dpio_get(dev_priv);
 
 	/* Enable dynamic power down */
-	tmp = vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW28);
+	tmp = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW28);
 	tmp |= DPIO_DYNPWRDOWNEN_CH0 | DPIO_CL1POWERDOWNEN |
 		DPIO_SUS_CLK_CONFIG_GATE_CLKREQ;
-	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW28, tmp);
+	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW28, tmp);
 
 	if (id == VLV_DISP_PW_DPIO_CMN_BC) {
-		tmp = vlv_dpio_read(dev_priv, pipe, _CHV_CMN_DW6_CH1);
+		tmp = vlv_dpio_read(dev_priv, phy, _CHV_CMN_DW6_CH1);
 		tmp |= DPIO_DYNPWRDOWNEN_CH1;
-		vlv_dpio_write(dev_priv, pipe, _CHV_CMN_DW6_CH1, tmp);
+		vlv_dpio_write(dev_priv, phy, _CHV_CMN_DW6_CH1, tmp);
 	} else {
 		/*
 		 * Force the non-existing CL2 off. BXT does this
 		 * too, so maybe it saves some power even though
 		 * CL2 doesn't exist?
 		 */
-		tmp = vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW30);
+		tmp = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW30);
 		tmp |= DPIO_CL2_LDOFUSE_PWRENB;
-		vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW30, tmp);
+		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW30, tmp);
 	}
 
 	vlv_dpio_put(dev_priv);
@@ -1499,7 +1495,6 @@ static void chv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
 static void assert_chv_phy_powergate(struct drm_i915_private *dev_priv, enum dpio_phy phy,
 				     enum dpio_channel ch, bool override, unsigned int mask)
 {
-	enum pipe pipe = phy == DPIO_PHY0 ? PIPE_A : PIPE_C;
 	u32 reg, val, expected, actual;
 
 	/*
@@ -1518,7 +1513,7 @@ static void assert_chv_phy_powergate(struct drm_i915_private *dev_priv, enum dpi
 		reg = _CHV_CMN_DW6_CH1;
 
 	vlv_dpio_get(dev_priv);
-	val = vlv_dpio_read(dev_priv, pipe, reg);
+	val = vlv_dpio_read(dev_priv, phy, reg);
 	vlv_dpio_put(dev_priv);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index d6af46e33424..32886c0ec2cc 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -703,50 +703,50 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
-	enum pipe pipe = crtc->pipe;
+	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	u32 val;
 	int i;
 
 	vlv_dpio_get(dev_priv);
 
 	/* Clear calc init */
-	val = vlv_dpio_read(dev_priv, pipe, VLV_PCS01_DW10(ch));
+	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW10(ch));
 	val &= ~(DPIO_PCS_SWING_CALC_TX0_TX2 | DPIO_PCS_SWING_CALC_TX1_TX3);
 	val &= ~(DPIO_PCS_TX1DEEMP_MASK | DPIO_PCS_TX2DEEMP_MASK);
 	val |= DPIO_PCS_TX1DEEMP_9P5 | DPIO_PCS_TX2DEEMP_9P5;
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS01_DW10(ch), val);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW10(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(dev_priv, pipe, VLV_PCS23_DW10(ch));
+		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW10(ch));
 		val &= ~(DPIO_PCS_SWING_CALC_TX0_TX2 | DPIO_PCS_SWING_CALC_TX1_TX3);
 		val &= ~(DPIO_PCS_TX1DEEMP_MASK | DPIO_PCS_TX2DEEMP_MASK);
 		val |= DPIO_PCS_TX1DEEMP_9P5 | DPIO_PCS_TX2DEEMP_9P5;
-		vlv_dpio_write(dev_priv, pipe, VLV_PCS23_DW10(ch), val);
+		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW10(ch), val);
 	}
 
-	val = vlv_dpio_read(dev_priv, pipe, VLV_PCS01_DW9(ch));
+	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW9(ch));
 	val &= ~(DPIO_PCS_TX1MARGIN_MASK | DPIO_PCS_TX2MARGIN_MASK);
 	val |= DPIO_PCS_TX1MARGIN_000 | DPIO_PCS_TX2MARGIN_000;
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS01_DW9(ch), val);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW9(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(dev_priv, pipe, VLV_PCS23_DW9(ch));
+		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW9(ch));
 		val &= ~(DPIO_PCS_TX1MARGIN_MASK | DPIO_PCS_TX2MARGIN_MASK);
 		val |= DPIO_PCS_TX1MARGIN_000 | DPIO_PCS_TX2MARGIN_000;
-		vlv_dpio_write(dev_priv, pipe, VLV_PCS23_DW9(ch), val);
+		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW9(ch), val);
 	}
 
 	/* Program swing deemph */
 	for (i = 0; i < crtc_state->lane_count; i++) {
-		val = vlv_dpio_read(dev_priv, pipe, CHV_TX_DW4(ch, i));
+		val = vlv_dpio_read(dev_priv, phy, CHV_TX_DW4(ch, i));
 		val &= ~DPIO_SWING_DEEMPH9P5_MASK;
 		val |= deemph_reg_value << DPIO_SWING_DEEMPH9P5_SHIFT;
-		vlv_dpio_write(dev_priv, pipe, CHV_TX_DW4(ch, i), val);
+		vlv_dpio_write(dev_priv, phy, CHV_TX_DW4(ch, i), val);
 	}
 
 	/* Program swing margin */
 	for (i = 0; i < crtc_state->lane_count; i++) {
-		val = vlv_dpio_read(dev_priv, pipe, CHV_TX_DW2(ch, i));
+		val = vlv_dpio_read(dev_priv, phy, CHV_TX_DW2(ch, i));
 
 		val &= ~DPIO_SWING_MARGIN000_MASK;
 		val |= margin_reg_value << DPIO_SWING_MARGIN000_SHIFT;
@@ -759,7 +759,7 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
 		val &= ~(0xff << DPIO_UNIQ_TRANS_SCALE_SHIFT);
 		val |= 0x9a << DPIO_UNIQ_TRANS_SCALE_SHIFT;
 
-		vlv_dpio_write(dev_priv, pipe, CHV_TX_DW2(ch, i), val);
+		vlv_dpio_write(dev_priv, phy, CHV_TX_DW2(ch, i), val);
 	}
 
 	/*
@@ -769,23 +769,23 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
 	 * 27 for ch0 and ch1.
 	 */
 	for (i = 0; i < crtc_state->lane_count; i++) {
-		val = vlv_dpio_read(dev_priv, pipe, CHV_TX_DW3(ch, i));
+		val = vlv_dpio_read(dev_priv, phy, CHV_TX_DW3(ch, i));
 		if (uniq_trans_scale)
 			val |= DPIO_TX_UNIQ_TRANS_SCALE_EN;
 		else
 			val &= ~DPIO_TX_UNIQ_TRANS_SCALE_EN;
-		vlv_dpio_write(dev_priv, pipe, CHV_TX_DW3(ch, i), val);
+		vlv_dpio_write(dev_priv, phy, CHV_TX_DW3(ch, i), val);
 	}
 
 	/* Start swing calculation */
-	val = vlv_dpio_read(dev_priv, pipe, VLV_PCS01_DW10(ch));
+	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW10(ch));
 	val |= DPIO_PCS_SWING_CALC_TX0_TX2 | DPIO_PCS_SWING_CALC_TX1_TX3;
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS01_DW10(ch), val);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW10(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(dev_priv, pipe, VLV_PCS23_DW10(ch));
+		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW10(ch));
 		val |= DPIO_PCS_SWING_CALC_TX0_TX2 | DPIO_PCS_SWING_CALC_TX1_TX3;
-		vlv_dpio_write(dev_priv, pipe, VLV_PCS23_DW10(ch), val);
+		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW10(ch), val);
 	}
 
 	vlv_dpio_put(dev_priv);
@@ -796,43 +796,43 @@ void chv_data_lane_soft_reset(struct intel_encoder *encoder,
 			      bool reset)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum dpio_channel ch = vlv_dig_port_to_channel(enc_to_dig_port(encoder));
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	enum pipe pipe = crtc->pipe;
+	enum dpio_channel ch = vlv_dig_port_to_channel(enc_to_dig_port(encoder));
+	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	u32 val;
 
-	val = vlv_dpio_read(dev_priv, pipe, VLV_PCS01_DW0(ch));
+	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW0(ch));
 	if (reset)
 		val &= ~(DPIO_PCS_TX_LANE2_RESET | DPIO_PCS_TX_LANE1_RESET);
 	else
 		val |= DPIO_PCS_TX_LANE2_RESET | DPIO_PCS_TX_LANE1_RESET;
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS01_DW0(ch), val);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW0(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(dev_priv, pipe, VLV_PCS23_DW0(ch));
+		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW0(ch));
 		if (reset)
 			val &= ~(DPIO_PCS_TX_LANE2_RESET | DPIO_PCS_TX_LANE1_RESET);
 		else
 			val |= DPIO_PCS_TX_LANE2_RESET | DPIO_PCS_TX_LANE1_RESET;
-		vlv_dpio_write(dev_priv, pipe, VLV_PCS23_DW0(ch), val);
+		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW0(ch), val);
 	}
 
-	val = vlv_dpio_read(dev_priv, pipe, VLV_PCS01_DW1(ch));
+	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW1(ch));
 	val |= CHV_PCS_REQ_SOFTRESET_EN;
 	if (reset)
 		val &= ~DPIO_PCS_CLK_SOFT_RESET;
 	else
 		val |= DPIO_PCS_CLK_SOFT_RESET;
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS01_DW1(ch), val);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW1(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(dev_priv, pipe, VLV_PCS23_DW1(ch));
+		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW1(ch));
 		val |= CHV_PCS_REQ_SOFTRESET_EN;
 		if (reset)
 			val &= ~DPIO_PCS_CLK_SOFT_RESET;
 		else
 			val |= DPIO_PCS_CLK_SOFT_RESET;
-		vlv_dpio_write(dev_priv, pipe, VLV_PCS23_DW1(ch), val);
+		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW1(ch), val);
 	}
 }
 
@@ -843,6 +843,7 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
+	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	enum pipe pipe = crtc->pipe;
 	unsigned int lane_mask =
 		intel_dp_unused_lane_mask(crtc_state->lane_count);
@@ -865,40 +866,40 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 
 	/* program left/right clock distribution */
 	if (pipe != PIPE_B) {
-		val = vlv_dpio_read(dev_priv, pipe, _CHV_CMN_DW5_CH0);
+		val = vlv_dpio_read(dev_priv, phy, _CHV_CMN_DW5_CH0);
 		val &= ~(CHV_BUFLEFTENA1_MASK | CHV_BUFRIGHTENA1_MASK);
 		if (ch == DPIO_CH0)
 			val |= CHV_BUFLEFTENA1_FORCE;
 		if (ch == DPIO_CH1)
 			val |= CHV_BUFRIGHTENA1_FORCE;
-		vlv_dpio_write(dev_priv, pipe, _CHV_CMN_DW5_CH0, val);
+		vlv_dpio_write(dev_priv, phy, _CHV_CMN_DW5_CH0, val);
 	} else {
-		val = vlv_dpio_read(dev_priv, pipe, _CHV_CMN_DW1_CH1);
+		val = vlv_dpio_read(dev_priv, phy, _CHV_CMN_DW1_CH1);
 		val &= ~(CHV_BUFLEFTENA2_MASK | CHV_BUFRIGHTENA2_MASK);
 		if (ch == DPIO_CH0)
 			val |= CHV_BUFLEFTENA2_FORCE;
 		if (ch == DPIO_CH1)
 			val |= CHV_BUFRIGHTENA2_FORCE;
-		vlv_dpio_write(dev_priv, pipe, _CHV_CMN_DW1_CH1, val);
+		vlv_dpio_write(dev_priv, phy, _CHV_CMN_DW1_CH1, val);
 	}
 
 	/* program clock channel usage */
-	val = vlv_dpio_read(dev_priv, pipe, VLV_PCS01_DW8(ch));
+	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW8(ch));
 	val |= CHV_PCS_USEDCLKCHANNEL_OVRRIDE;
 	if (pipe != PIPE_B)
 		val &= ~CHV_PCS_USEDCLKCHANNEL;
 	else
 		val |= CHV_PCS_USEDCLKCHANNEL;
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS01_DW8(ch), val);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW8(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(dev_priv, pipe, VLV_PCS23_DW8(ch));
+		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW8(ch));
 		val |= CHV_PCS_USEDCLKCHANNEL_OVRRIDE;
 		if (pipe != PIPE_B)
 			val &= ~CHV_PCS_USEDCLKCHANNEL;
 		else
 			val |= CHV_PCS_USEDCLKCHANNEL;
-		vlv_dpio_write(dev_priv, pipe, VLV_PCS23_DW8(ch), val);
+		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW8(ch), val);
 	}
 
 	/*
@@ -906,12 +907,12 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 	 * matches the pipe, but here we need to
 	 * pick the CL based on the port.
 	 */
-	val = vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW19(ch));
+	val = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW19(ch));
 	if (pipe != PIPE_B)
 		val &= ~CHV_CMN_USEDCLKCHANNEL;
 	else
 		val |= CHV_CMN_USEDCLKCHANNEL;
-	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW19(ch), val);
+	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW19(ch), val);
 
 	vlv_dpio_put(dev_priv);
 }
@@ -924,21 +925,21 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
-	enum pipe pipe = crtc->pipe;
+	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	int data, i, stagger;
 	u32 val;
 
 	vlv_dpio_get(dev_priv);
 
 	/* allow hardware to manage TX FIFO reset source */
-	val = vlv_dpio_read(dev_priv, pipe, VLV_PCS01_DW11(ch));
+	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW11(ch));
 	val &= ~DPIO_LANEDESKEW_STRAP_OVRD;
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS01_DW11(ch), val);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW11(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(dev_priv, pipe, VLV_PCS23_DW11(ch));
+		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW11(ch));
 		val &= ~DPIO_LANEDESKEW_STRAP_OVRD;
-		vlv_dpio_write(dev_priv, pipe, VLV_PCS23_DW11(ch), val);
+		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW11(ch), val);
 	}
 
 	/* Program Tx lane latency optimal setting*/
@@ -948,7 +949,7 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 			data = 0x0;
 		else
 			data = (i == 1) ? 0x0 : 0x1;
-		vlv_dpio_write(dev_priv, pipe, CHV_TX_DW14(ch, i),
+		vlv_dpio_write(dev_priv, phy, CHV_TX_DW14(ch, i),
 				data << DPIO_UPAR_SHIFT);
 	}
 
@@ -964,17 +965,17 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	else
 		stagger = 0x2;
 
-	val = vlv_dpio_read(dev_priv, pipe, VLV_PCS01_DW11(ch));
+	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW11(ch));
 	val |= DPIO_TX2_STAGGER_MASK(0x1f);
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS01_DW11(ch), val);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW11(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(dev_priv, pipe, VLV_PCS23_DW11(ch));
+		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW11(ch));
 		val |= DPIO_TX2_STAGGER_MASK(0x1f);
-		vlv_dpio_write(dev_priv, pipe, VLV_PCS23_DW11(ch), val);
+		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW11(ch), val);
 	}
 
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS01_DW12(ch),
+	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW12(ch),
 		       DPIO_LANESTAGGER_STRAP(stagger) |
 		       DPIO_LANESTAGGER_STRAP_OVRD |
 		       DPIO_TX1_STAGGER_MASK(0x1f) |
@@ -982,7 +983,7 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 		       DPIO_TX2_STAGGER_MULT(0));
 
 	if (crtc_state->lane_count > 2) {
-		vlv_dpio_write(dev_priv, pipe, VLV_PCS23_DW12(ch),
+		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW12(ch),
 			       DPIO_LANESTAGGER_STRAP(stagger) |
 			       DPIO_LANESTAGGER_STRAP_OVRD |
 			       DPIO_TX1_STAGGER_MASK(0x1f) |
@@ -1012,19 +1013,20 @@ void chv_phy_post_pll_disable(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum pipe pipe = to_intel_crtc(old_crtc_state->uapi.crtc)->pipe;
+	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
 	u32 val;
 
 	vlv_dpio_get(dev_priv);
 
 	/* disable left/right clock distribution */
 	if (pipe != PIPE_B) {
-		val = vlv_dpio_read(dev_priv, pipe, _CHV_CMN_DW5_CH0);
+		val = vlv_dpio_read(dev_priv, phy, _CHV_CMN_DW5_CH0);
 		val &= ~(CHV_BUFLEFTENA1_MASK | CHV_BUFRIGHTENA1_MASK);
-		vlv_dpio_write(dev_priv, pipe, _CHV_CMN_DW5_CH0, val);
+		vlv_dpio_write(dev_priv, phy, _CHV_CMN_DW5_CH0, val);
 	} else {
-		val = vlv_dpio_read(dev_priv, pipe, _CHV_CMN_DW1_CH1);
+		val = vlv_dpio_read(dev_priv, phy, _CHV_CMN_DW1_CH1);
 		val &= ~(CHV_BUFLEFTENA2_MASK | CHV_BUFRIGHTENA2_MASK);
-		vlv_dpio_write(dev_priv, pipe, _CHV_CMN_DW1_CH1, val);
+		vlv_dpio_write(dev_priv, phy, _CHV_CMN_DW1_CH1, val);
 	}
 
 	vlv_dpio_put(dev_priv);
@@ -1050,22 +1052,22 @@ void vlv_set_phy_signal_level(struct intel_encoder *encoder,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
-	enum pipe pipe = crtc->pipe;
+	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 
 	vlv_dpio_get(dev_priv);
 
-	vlv_dpio_write(dev_priv, pipe, VLV_TX_DW5(port), 0x00000000);
-	vlv_dpio_write(dev_priv, pipe, VLV_TX_DW4(port), demph_reg_value);
-	vlv_dpio_write(dev_priv, pipe, VLV_TX_DW2(port),
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW5(port), 0x00000000);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW4(port), demph_reg_value);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW2(port),
 			 uniqtranscale_reg_value);
-	vlv_dpio_write(dev_priv, pipe, VLV_TX_DW3(port), 0x0C782040);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW3(port), 0x0C782040);
 
 	if (tx3_demph)
-		vlv_dpio_write(dev_priv, pipe, VLV_TX3_DW4(port), tx3_demph);
+		vlv_dpio_write(dev_priv, phy, VLV_TX3_DW4(port), tx3_demph);
 
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS_DW11(port), 0x00030000);
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS_DW9(port), preemph_reg_value);
-	vlv_dpio_write(dev_priv, pipe, VLV_TX_DW5(port), DPIO_TX_OCALINIT_EN);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW11(port), 0x00030000);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW9(port), preemph_reg_value);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW5(port), DPIO_TX_OCALINIT_EN);
 
 	vlv_dpio_put(dev_priv);
 }
@@ -1077,24 +1079,24 @@ void vlv_phy_pre_pll_enable(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
-	enum pipe pipe = crtc->pipe;
+	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 
 	/* Program Tx lane resets to default */
 	vlv_dpio_get(dev_priv);
 
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS_DW0(port),
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(port),
 			 DPIO_PCS_TX_LANE2_RESET |
 			 DPIO_PCS_TX_LANE1_RESET);
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS_DW1(port),
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1(port),
 			 DPIO_PCS_CLK_CRI_RXEB_EIOS_EN |
 			 DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN |
 			 (1<<DPIO_PCS_CLK_DATAWIDTH_SHIFT) |
 				 DPIO_PCS_CLK_SOFT_RESET);
 
 	/* Fix up inter-pair skew failure */
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS_DW12(port), 0x00750f00);
-	vlv_dpio_write(dev_priv, pipe, VLV_TX_DW11(port), 0x00001500);
-	vlv_dpio_write(dev_priv, pipe, VLV_TX_DW14(port), 0x40400000);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW12(port), 0x00750f00);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW11(port), 0x00001500);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW14(port), 0x40400000);
 
 	vlv_dpio_put(dev_priv);
 }
@@ -1107,24 +1109,24 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
-	enum pipe pipe = crtc->pipe;
+	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	u32 val;
 
 	vlv_dpio_get(dev_priv);
 
 	/* Enable clock channels for this port */
-	val = vlv_dpio_read(dev_priv, pipe, VLV_PCS01_DW8(port));
+	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW8(port));
 	val = 0;
-	if (pipe)
+	if (phy)
 		val |= (1<<21);
 	else
 		val &= ~(1<<21);
 	val |= 0x001000c4;
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS_DW8(port), val);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW8(port), val);
 
 	/* Program lane clock */
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS_DW14(port), 0x00760018);
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS_DW23(port), 0x00400888);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW14(port), 0x00760018);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW23(port), 0x00400888);
 
 	vlv_dpio_put(dev_priv);
 }
@@ -1136,10 +1138,10 @@ void vlv_phy_reset_lanes(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
-	enum pipe pipe = crtc->pipe;
+	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 
 	vlv_dpio_get(dev_priv);
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS_DW0(port), 0x00000000);
-	vlv_dpio_write(dev_priv, pipe, VLV_PCS_DW1(port), 0x00e00060);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(port), 0x00000000);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1(port), 0x00e00060);
 	vlv_dpio_put(dev_priv);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index ac732a3a70a8..3038655377ea 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -483,7 +483,7 @@ void vlv_crtc_clock_get(struct intel_crtc *crtc,
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	enum pipe pipe = crtc->pipe;
+	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	struct dpll clock;
 	u32 mdiv;
 	int refclk = 100000;
@@ -493,7 +493,7 @@ void vlv_crtc_clock_get(struct intel_crtc *crtc,
 		return;
 
 	vlv_dpio_get(dev_priv);
-	mdiv = vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW3(pipe));
+	mdiv = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW3(crtc->pipe));
 	vlv_dpio_put(dev_priv);
 
 	clock.m1 = (mdiv >> DPIO_M1DIV_SHIFT) & 7;
@@ -510,8 +510,8 @@ void chv_crtc_clock_get(struct intel_crtc *crtc,
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	enum pipe pipe = crtc->pipe;
-	enum dpio_channel port = vlv_pipe_to_channel(pipe);
+	enum dpio_channel port = vlv_pipe_to_channel(crtc->pipe);
+	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	struct dpll clock;
 	u32 cmn_dw13, pll_dw0, pll_dw1, pll_dw2, pll_dw3;
 	int refclk = 100000;
@@ -521,11 +521,11 @@ void chv_crtc_clock_get(struct intel_crtc *crtc,
 		return;
 
 	vlv_dpio_get(dev_priv);
-	cmn_dw13 = vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW13(port));
-	pll_dw0 = vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW0(port));
-	pll_dw1 = vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW1(port));
-	pll_dw2 = vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW2(port));
-	pll_dw3 = vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW3(port));
+	cmn_dw13 = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW13(port));
+	pll_dw0 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW0(port));
+	pll_dw1 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW1(port));
+	pll_dw2 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW2(port));
+	pll_dw3 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(port));
 	vlv_dpio_put(dev_priv);
 
 	clock.m1 = (pll_dw1 & 0x7) == DPIO_CHV_M1_DIV_BY_2 ? 2 : 0;
@@ -1811,7 +1811,7 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 }
 
 static void vlv_pllb_recal_opamp(struct drm_i915_private *dev_priv,
-				 enum pipe pipe)
+				 enum dpio_phy phy)
 {
 	u32 reg_val;
 
@@ -1819,30 +1819,31 @@ static void vlv_pllb_recal_opamp(struct drm_i915_private *dev_priv,
 	 * PLLB opamp always calibrates to max value of 0x3f, force enable it
 	 * and set it to a reasonable value instead.
 	 */
-	reg_val = vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW9(1));
+	reg_val = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW9(1));
 	reg_val &= 0xffffff00;
 	reg_val |= 0x00000030;
-	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW9(1), reg_val);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW9(1), reg_val);
 
-	reg_val = vlv_dpio_read(dev_priv, pipe, VLV_REF_DW13);
+	reg_val = vlv_dpio_read(dev_priv, phy, VLV_REF_DW13);
 	reg_val &= 0x00ffffff;
 	reg_val |= 0x8c000000;
-	vlv_dpio_write(dev_priv, pipe, VLV_REF_DW13, reg_val);
+	vlv_dpio_write(dev_priv, phy, VLV_REF_DW13, reg_val);
 
-	reg_val = vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW9(1));
+	reg_val = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW9(1));
 	reg_val &= 0xffffff00;
-	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW9(1), reg_val);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW9(1), reg_val);
 
-	reg_val = vlv_dpio_read(dev_priv, pipe, VLV_REF_DW13);
+	reg_val = vlv_dpio_read(dev_priv, phy, VLV_REF_DW13);
 	reg_val &= 0x00ffffff;
 	reg_val |= 0xb0000000;
-	vlv_dpio_write(dev_priv, pipe, VLV_REF_DW13, reg_val);
+	vlv_dpio_write(dev_priv, phy, VLV_REF_DW13, reg_val);
 }
 
 static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	enum pipe pipe = crtc->pipe;
 	u32 mdiv;
 	u32 bestn, bestm1, bestm2, bestp1, bestp2;
@@ -1860,18 +1861,18 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 
 	/* PLL B needs special handling */
 	if (pipe == PIPE_B)
-		vlv_pllb_recal_opamp(dev_priv, pipe);
+		vlv_pllb_recal_opamp(dev_priv, phy);
 
 	/* Set up Tx target for periodic Rcomp update */
-	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW9_BCAST, 0x0100000f);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW9_BCAST, 0x0100000f);
 
 	/* Disable target IRef on PLL */
-	reg_val = vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW8(pipe));
+	reg_val = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW8(pipe));
 	reg_val &= 0x00ffffff;
-	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW8(pipe), reg_val);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW8(pipe), reg_val);
 
 	/* Disable fast lock */
-	vlv_dpio_write(dev_priv, pipe, VLV_CMN_DW0, 0x610);
+	vlv_dpio_write(dev_priv, phy, VLV_CMN_DW0, 0x610);
 
 	/* Set idtafcrecal before PLL is enabled */
 	mdiv = ((bestm1 << DPIO_M1DIV_SHIFT) | (bestm2 & DPIO_M2DIV_MASK));
@@ -1885,46 +1886,46 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	 * Note: don't use the DAC post divider as it seems unstable.
 	 */
 	mdiv |= (DPIO_POST_DIV_HDMIDP << DPIO_POST_DIV_SHIFT);
-	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW3(pipe), mdiv);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(pipe), mdiv);
 
 	mdiv |= DPIO_ENABLE_CALIBRATION;
-	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW3(pipe), mdiv);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(pipe), mdiv);
 
 	/* Set HBR and RBR LPF coefficients */
 	if (crtc_state->port_clock == 162000 ||
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG) ||
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-		vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW10(pipe),
+		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW10(pipe),
 				 0x009f0003);
 	else
-		vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW10(pipe),
+		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW10(pipe),
 				 0x00d0000f);
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		/* Use SSC source */
 		if (pipe == PIPE_A)
-			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(pipe),
 					 0x0df40000);
 		else
-			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(pipe),
 					 0x0df70000);
 	} else { /* HDMI or VGA */
 		/* Use bend source */
 		if (pipe == PIPE_A)
-			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(pipe),
 					 0x0df70000);
 		else
-			vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW5(pipe),
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(pipe),
 					 0x0df40000);
 	}
 
-	coreclk = vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW7(pipe));
+	coreclk = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW7(pipe));
 	coreclk = (coreclk & 0x0000ff00) | 0x01c00000;
 	if (intel_crtc_has_dp_encoder(crtc_state))
 		coreclk |= 0x01000000;
-	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW7(pipe), coreclk);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW7(pipe), coreclk);
 
-	vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW11(pipe), 0x87871000);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW11(pipe), 0x87871000);
 
 	vlv_dpio_put(dev_priv);
 }
@@ -1975,6 +1976,7 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	enum dpio_channel port = vlv_pipe_to_channel(pipe);
+	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	u32 loopfilter, tribuf_calcntr;
 	u32 bestm2, bestp1, bestp2, bestm2_frac;
 	u32 dpio_val;
@@ -1991,39 +1993,39 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	vlv_dpio_get(dev_priv);
 
 	/* p1 and p2 divider */
-	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW13(port),
+	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW13(port),
 			5 << DPIO_CHV_S1_DIV_SHIFT |
 			bestp1 << DPIO_CHV_P1_DIV_SHIFT |
 			bestp2 << DPIO_CHV_P2_DIV_SHIFT |
 			1 << DPIO_CHV_K_DIV_SHIFT);
 
 	/* Feedback post-divider - m2 */
-	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW0(port), bestm2);
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW0(port), bestm2);
 
 	/* Feedback refclk divider - n and m1 */
-	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW1(port),
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW1(port),
 			DPIO_CHV_M1_DIV_BY_2 |
 			1 << DPIO_CHV_N_DIV_SHIFT);
 
 	/* M2 fraction division */
-	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW2(port), bestm2_frac);
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW2(port), bestm2_frac);
 
 	/* M2 fraction division enable */
-	dpio_val = vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW3(port));
+	dpio_val = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(port));
 	dpio_val &= ~(DPIO_CHV_FEEDFWD_GAIN_MASK | DPIO_CHV_FRAC_DIV_EN);
 	dpio_val |= (2 << DPIO_CHV_FEEDFWD_GAIN_SHIFT);
 	if (bestm2_frac)
 		dpio_val |= DPIO_CHV_FRAC_DIV_EN;
-	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW3(port), dpio_val);
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW3(port), dpio_val);
 
 	/* Program digital lock detect threshold */
-	dpio_val = vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW9(port));
+	dpio_val = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW9(port));
 	dpio_val &= ~(DPIO_CHV_INT_LOCK_THRESHOLD_MASK |
 					DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE);
 	dpio_val |= (0x5 << DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT);
 	if (!bestm2_frac)
 		dpio_val |= DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE;
-	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW9(port), dpio_val);
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW9(port), dpio_val);
 
 	/* Loop filter */
 	if (vco == 5400000) {
@@ -2048,16 +2050,16 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 		loopfilter |= (0x3 << DPIO_CHV_GAIN_CTRL_SHIFT);
 		tribuf_calcntr = 0;
 	}
-	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW6(port), loopfilter);
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW6(port), loopfilter);
 
-	dpio_val = vlv_dpio_read(dev_priv, pipe, CHV_PLL_DW8(port));
+	dpio_val = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW8(port));
 	dpio_val &= ~DPIO_CHV_TDC_TARGET_CNT_MASK;
 	dpio_val |= (tribuf_calcntr << DPIO_CHV_TDC_TARGET_CNT_SHIFT);
-	vlv_dpio_write(dev_priv, pipe, CHV_PLL_DW8(port), dpio_val);
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW8(port), dpio_val);
 
 	/* AFC Recal */
-	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW14(port),
-			vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW14(port)) |
+	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(port),
+			vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(port)) |
 			DPIO_AFC_RECAL);
 
 	vlv_dpio_put(dev_priv);
@@ -2069,14 +2071,15 @@ static void _chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	enum dpio_channel port = vlv_pipe_to_channel(pipe);
+	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	u32 tmp;
 
 	vlv_dpio_get(dev_priv);
 
 	/* Enable back the 10bit clock to display controller */
-	tmp = vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW14(port));
+	tmp = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(port));
 	tmp |= DPIO_DCLKP_EN;
-	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW14(port), tmp);
+	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(port), tmp);
 
 	vlv_dpio_put(dev_priv);
 
@@ -2197,6 +2200,7 @@ void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
 	enum dpio_channel port = vlv_pipe_to_channel(pipe);
+	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
 	u32 val;
 
 	/* Make sure the pipe isn't still relying on us */
@@ -2213,9 +2217,9 @@ void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 	vlv_dpio_get(dev_priv);
 
 	/* Disable 10bit clock to display controller */
-	val = vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW14(port));
+	val = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(port));
 	val &= ~DPIO_DCLKP_EN;
-	vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW14(port), val);
+	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(port), val);
 
 	vlv_dpio_put(dev_priv);
 }
diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i915/vlv_sideband.c
index f7df55217845..63a795876309 100644
--- a/drivers/gpu/drm/i915/vlv_sideband.c
+++ b/drivers/gpu/drm/i915/vlv_sideband.c
@@ -227,9 +227,8 @@ static u32 vlv_dpio_phy_iosf_port(struct drm_i915_private *i915, enum dpio_phy p
 		return IOSF_PORT_DPIO;
 }
 
-u32 vlv_dpio_read(struct drm_i915_private *i915, enum pipe pipe, int reg)
+u32 vlv_dpio_read(struct drm_i915_private *i915, enum dpio_phy phy, int reg)
 {
-	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
 	u32 port = vlv_dpio_phy_iosf_port(i915, phy);
 	u32 val = 0;
 
@@ -240,16 +239,15 @@ u32 vlv_dpio_read(struct drm_i915_private *i915, enum pipe pipe, int reg)
 	 * so ideally we should check the register offset instead...
 	 */
 	drm_WARN(&i915->drm, val == 0xffffffff,
-		 "DPIO read pipe %c reg 0x%x == 0x%x\n",
-		 pipe_name(pipe), reg, val);
+		 "DPIO PHY%d read reg 0x%x == 0x%x\n",
+		 phy, reg, val);
 
 	return val;
 }
 
 void vlv_dpio_write(struct drm_i915_private *i915,
-		    enum pipe pipe, int reg, u32 val)
+		    enum dpio_phy phy, int reg, u32 val)
 {
-	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
 	u32 port = vlv_dpio_phy_iosf_port(i915, phy);
 
 	vlv_sideband_rw(i915, DPIO_DEVFN, port, SB_MWR_NP, reg, &val);
diff --git a/drivers/gpu/drm/i915/vlv_sideband.h b/drivers/gpu/drm/i915/vlv_sideband.h
index 9ce283d96b80..4073966860e2 100644
--- a/drivers/gpu/drm/i915/vlv_sideband.h
+++ b/drivers/gpu/drm/i915/vlv_sideband.h
@@ -11,7 +11,7 @@
 
 #include "vlv_sideband_reg.h"
 
-enum pipe;
+enum dpio_phy;
 struct drm_i915_private;
 
 enum {
@@ -75,9 +75,9 @@ static inline void vlv_dpio_get(struct drm_i915_private *i915)
 	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_DPIO));
 }
 
-u32 vlv_dpio_read(struct drm_i915_private *i915, enum pipe pipe, int reg);
+u32 vlv_dpio_read(struct drm_i915_private *i915, enum dpio_phy phy, int reg);
 void vlv_dpio_write(struct drm_i915_private *i915,
-		    enum pipe pipe, int reg, u32 val);
+		    enum dpio_phy phy, int reg, u32 val);
 
 static inline void vlv_dpio_put(struct drm_i915_private *i915)
 {
-- 
2.39.2

