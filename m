Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E3665EC8F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:11:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89FC110E721;
	Thu,  5 Jan 2023 13:11:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5986A10E721
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672924293; x=1704460293;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KWFMxoVTcugDAb/0GHz5kSYPrCYMniknh8ljrHpDv9M=;
 b=UBrji/FY9zLHcCFtvLId1lSWnFWjXCYhAbRGQAvKBwWPUx+fM4D+QqZQ
 dQhRcNOY4Vm+Xkgwdt4q+cGGZxh6mM8lx3BjJIy/YO0+YkZ4VTj3Lh+Xz
 kbGraHhlrZ0hjD+racYqPLO8QYxzDsTyzhw4IkXnVqtJlo0/RVpPDf4pf
 1NeYPSaX9gySSDqrQzsNqkefuXxKTbgwcODCQWStoQKqoD42WqpOxK3PI
 EXf4pJA4ZnBODEtKwuGqgPf3zlnxq80pNEPIw0ytI6O79USNciO8+A/Gb
 OsiDGbnxKWDa2LrAPmFo2A90RBuzWeJfMWweVKMyZnzBRKxq5RcJp7ZY+ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="323429804"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="323429804"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:11:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="633129101"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="633129101"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:11:30 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:10:45 +0100
Message-Id: <20230105131046.2173431-8-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105131046.2173431-1-andrzej.hajda@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 8/9] drm/i915/display/interfaces: use
 intel_de_rmw if possible
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The helper makes the code more compact and readable.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c   | 49 +++++++---------------
 drivers/gpu/drm/i915/display/intel_fdi.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c | 30 +++----------
 3 files changed, 22 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 1f5a471a0adf27..500dac59a14157 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -644,19 +644,14 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	intel_wakeref_t wakeref;
 	int ret = 0;
-	u32 tmp;
 
 	wakeref = intel_display_power_get_if_enabled(dev_priv,
 						     intel_encoder->power_domain);
 	if (drm_WARN_ON(dev, !wakeref))
 		return -ENXIO;
 
-	tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
-	if (enable)
-		tmp |= hdcp_mask;
-	else
-		tmp &= ~hdcp_mask;
-	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), tmp);
+	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder),
+		     hdcp_mask, enable ? hdcp_mask : 0);
 	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
 	return ret;
 }
@@ -2200,15 +2195,13 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp;
-	u32 val;
 
 	if (!crtc_state->fec_enable)
 		return;
 
 	intel_dp = enc_to_intel_dp(encoder);
-	val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
-	val |= DP_TP_CTL_FEC_ENABLE;
-	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
+	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+		     0, DP_TP_CTL_FEC_ENABLE);
 }
 
 static void intel_ddi_disable_fec_state(struct intel_encoder *encoder,
@@ -2216,15 +2209,13 @@ static void intel_ddi_disable_fec_state(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp;
-	u32 val;
 
 	if (!crtc_state->fec_enable)
 		return;
 
 	intel_dp = enc_to_intel_dp(encoder);
-	val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
-	val &= ~DP_TP_CTL_FEC_ENABLE;
-	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
+	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+		     DP_TP_CTL_FEC_ENABLE, 0);
 	intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
 }
 
@@ -2622,12 +2613,10 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
 		wait = true;
 	}
 
-	if (intel_crtc_has_dp_encoder(crtc_state)) {
-		val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
-		val &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
-		val |= DP_TP_CTL_LINK_TRAIN_PAT1;
-		intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
-	}
+	if (intel_crtc_has_dp_encoder(crtc_state))
+		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+			     DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK,
+			     DP_TP_CTL_LINK_TRAIN_PAT1);
 
 	/* Disable FEC in DP Sink */
 	intel_ddi_disable_fec_state(encoder, crtc_state);
@@ -2660,15 +2649,10 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		if (is_mst) {
 			enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
-			u32 val;
 
-			val = intel_de_read(dev_priv,
-					    TRANS_DDI_FUNC_CTL(cpu_transcoder));
-			val &= ~(TGL_TRANS_DDI_PORT_MASK |
-				 TRANS_DDI_MODE_SELECT_MASK);
-			intel_de_write(dev_priv,
-				       TRANS_DDI_FUNC_CTL(cpu_transcoder),
-				       val);
+			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder),
+				     TGL_TRANS_DDI_PORT_MASK | TRANS_DDI_MODE_SELECT_MASK,
+				     0);
 		}
 	} else {
 		if (!is_mst)
@@ -3222,12 +3206,9 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
-	u32 val;
 
-	val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
-	val &= ~DP_TP_CTL_LINK_TRAIN_MASK;
-	val |= DP_TP_CTL_LINK_TRAIN_IDLE;
-	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
+	intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+		     DP_TP_CTL_LINK_TRAIN_MASK, DP_TP_CTL_LINK_TRAIN_IDLE);
 
 	/*
 	 * Until TGL on PORT_A we can have only eDP in SST mode. There the only
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index f62d9a9313498c..02bba5bcc00afc 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -366,8 +366,7 @@ void intel_fdi_normal_train(struct intel_crtc *crtc)
 
 	/* IVB wants error correction enabled */
 	if (IS_IVYBRIDGE(dev_priv))
-		intel_de_write(dev_priv, reg,
-			       intel_de_read(dev_priv, reg) | FDI_FS_ERRC_ENABLE | FDI_FE_ERRC_ENABLE);
+		intel_de_rmw(dev_priv, reg, 0, FDI_FS_ERRC_ENABLE | FDI_FE_ERRC_ENABLE);
 }
 
 /* The FDI link training functions for ILK/Ibexpeak. */
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 0bc4f6b48e80ae..3ddfc8080ee890 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -215,41 +215,23 @@ intel_gmbus_reset(struct drm_i915_private *i915)
 static void pnv_gmbus_clock_gating(struct drm_i915_private *i915,
 				   bool enable)
 {
-	u32 val;
-
 	/* When using bit bashing for I2C, this bit needs to be set to 1 */
-	val = intel_de_read(i915, DSPCLK_GATE_D(i915));
-	if (!enable)
-		val |= PNV_GMBUSUNIT_CLOCK_GATE_DISABLE;
-	else
-		val &= ~PNV_GMBUSUNIT_CLOCK_GATE_DISABLE;
-	intel_de_write(i915, DSPCLK_GATE_D(i915), val);
+	intel_de_rmw(i915, DSPCLK_GATE_D(i915), PNV_GMBUSUNIT_CLOCK_GATE_DISABLE,
+		     !enable ? PNV_GMBUSUNIT_CLOCK_GATE_DISABLE : 0);
 }
 
 static void pch_gmbus_clock_gating(struct drm_i915_private *i915,
 				   bool enable)
 {
-	u32 val;
-
-	val = intel_de_read(i915, SOUTH_DSPCLK_GATE_D);
-	if (!enable)
-		val |= PCH_GMBUSUNIT_CLOCK_GATE_DISABLE;
-	else
-		val &= ~PCH_GMBUSUNIT_CLOCK_GATE_DISABLE;
-	intel_de_write(i915, SOUTH_DSPCLK_GATE_D, val);
+	intel_de_rmw(i915, SOUTH_DSPCLK_GATE_D, PCH_GMBUSUNIT_CLOCK_GATE_DISABLE,
+		     !enable ? PCH_GMBUSUNIT_CLOCK_GATE_DISABLE : 0);
 }
 
 static void bxt_gmbus_clock_gating(struct drm_i915_private *i915,
 				   bool enable)
 {
-	u32 val;
-
-	val = intel_de_read(i915, GEN9_CLKGATE_DIS_4);
-	if (!enable)
-		val |= BXT_GMBUS_GATING_DIS;
-	else
-		val &= ~BXT_GMBUS_GATING_DIS;
-	intel_de_write(i915, GEN9_CLKGATE_DIS_4, val);
+	intel_de_rmw(i915, GEN9_CLKGATE_DIS_4, BXT_GMBUS_GATING_DIS,
+		     !enable ? BXT_GMBUS_GATING_DIS : 0);
 }
 
 static u32 get_reserved(struct intel_gmbus *bus)
-- 
2.34.1

