Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A0D65EC90
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:11:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA43810E725;
	Thu,  5 Jan 2023 13:11:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBF1F10E725
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672924295; x=1704460295;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5TfPFlW3xLBG0YViujHA3wYbeqwxorz79g/G8HSDPfY=;
 b=e/7pAvY0RXKWSzCc+rfzTW0alCV3LFqbFIzxgQ6WIY6dtY9Fj9Qmxlff
 chtu6i/hrVyJeSoFTBrZWvxptL98HwyXHpRYeINkGnoKTg870NfMbfFYD
 uUHIbKJvqW++qbIaO2fGukJjGAdBaXDFtk7PniUmILqj8Qsj7I4HVaK5T
 LMyWzoT6fdQJnHw5CUrGiSlAo7+xUWM1DcJ2kf/i55xN2IBl4UM4LwyB2
 Y5SLTYCm5gyvAbuqCpSx7V3rcjwRepOCyqC9HKqQeQ4Z3RNbg35r3WWFl
 9TJBM3U7DZMLKAj5Xk7OFjQR8v7TyalPxfw/dEYzttbmjCvtYfYJ1YatA Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="323429818"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="323429818"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:11:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="633129106"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="633129106"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:11:33 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:10:46 +0100
Message-Id: <20230105131046.2173431-9-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105131046.2173431-1-andrzej.hajda@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 9/9] drm/i915/display/misc: use intel_de_rmw
 if possible
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
 drivers/gpu/drm/i915/display/g4x_dp.c     | 12 ++++--------
 drivers/gpu/drm/i915/display/intel_drrs.c | 12 +++---------
 drivers/gpu/drm/i915/display/intel_dvo.c  |  7 ++-----
 drivers/gpu/drm/i915/display/intel_lvds.c | 12 ++++--------
 drivers/gpu/drm/i915/display/intel_tv.c   | 18 +++++-------------
 5 files changed, 18 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 24ef36ec2d3d3c..9629b174ec5d2c 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -136,16 +136,12 @@ static void intel_dp_prepare(struct intel_encoder *encoder,
 
 		intel_dp->DP |= DP_PIPE_SEL_IVB(crtc->pipe);
 	} else if (HAS_PCH_CPT(dev_priv) && port != PORT_A) {
-		u32 trans_dp;
-
 		intel_dp->DP |= DP_LINK_TRAIN_OFF_CPT;
 
-		trans_dp = intel_de_read(dev_priv, TRANS_DP_CTL(crtc->pipe));
-		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
-			trans_dp |= TRANS_DP_ENH_FRAMING;
-		else
-			trans_dp &= ~TRANS_DP_ENH_FRAMING;
-		intel_de_write(dev_priv, TRANS_DP_CTL(crtc->pipe), trans_dp);
+		intel_de_rmw(dev_priv, TRANS_DP_CTL(crtc->pipe),
+			     TRANS_DP_ENH_FRAMING,
+			     drm_dp_enhanced_frame_cap(intel_dp->dpcd) ?
+			     TRANS_DP_ENH_FRAMING : 0);
 	} else {
 		if (IS_G4X(dev_priv) && pipe_config->limited_color_range)
 			intel_dp->DP |= DP_COLOR_RANGE_16_235;
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 5b9e44443814e9..a52974f5f66042 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -68,21 +68,15 @@ intel_drrs_set_refresh_rate_pipeconf(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc->drrs.cpu_transcoder;
-	u32 val, bit;
+	u32 bit;
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		bit = PIPECONF_REFRESH_RATE_ALT_VLV;
 	else
 		bit = PIPECONF_REFRESH_RATE_ALT_ILK;
 
-	val = intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
-
-	if (refresh_rate == DRRS_REFRESH_RATE_LOW)
-		val |= bit;
-	else
-		val &= ~bit;
-
-	intel_de_write(dev_priv, PIPECONF(cpu_transcoder), val);
+	intel_de_rmw(dev_priv, PIPECONF(cpu_transcoder),
+		     bit, refresh_rate == DRRS_REFRESH_RATE_LOW ? bit : 0);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 4aeae0f3ac9172..77d413781020de 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -444,11 +444,8 @@ static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
 	 * the clock enabled before we attempt to initialize
 	 * the device.
 	 */
-	for_each_pipe(dev_priv, pipe) {
-		dpll[pipe] = intel_de_read(dev_priv, DPLL(pipe));
-		intel_de_write(dev_priv, DPLL(pipe),
-			       dpll[pipe] | DPLL_DVO_2X_MODE);
-	}
+	for_each_pipe(dev_priv, pipe)
+		dpll[pipe] = intel_de_rmw(dev_priv, DPLL(pipe), 0, DPLL_DVO_2X_MODE);
 
 	ret = dvo->dev_ops->init(&intel_dvo->dev, i2c);
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index aecec992cd0d2d..e8f47b7ef87649 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -316,11 +316,9 @@ static void intel_enable_lvds(struct intel_atomic_state *state,
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	struct drm_i915_private *dev_priv = to_i915(dev);
 
-	intel_de_write(dev_priv, lvds_encoder->reg,
-		       intel_de_read(dev_priv, lvds_encoder->reg) | LVDS_PORT_EN);
+	intel_de_rmw(dev_priv, lvds_encoder->reg, 0, LVDS_PORT_EN);
 
-	intel_de_write(dev_priv, PP_CONTROL(0),
-		       intel_de_read(dev_priv, PP_CONTROL(0)) | PANEL_POWER_ON);
+	intel_de_rmw(dev_priv, PP_CONTROL(0), 0, PANEL_POWER_ON);
 	intel_de_posting_read(dev_priv, lvds_encoder->reg);
 
 	if (intel_de_wait_for_set(dev_priv, PP_STATUS(0), PP_ON, 5000))
@@ -338,14 +336,12 @@ static void intel_disable_lvds(struct intel_atomic_state *state,
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	intel_de_write(dev_priv, PP_CONTROL(0),
-		       intel_de_read(dev_priv, PP_CONTROL(0)) & ~PANEL_POWER_ON);
+	intel_de_rmw(dev_priv, PP_CONTROL(0), PANEL_POWER_ON, 0);
 	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(0), PP_ON, 1000))
 		drm_err(&dev_priv->drm,
 			"timed out waiting for panel to power off\n");
 
-	intel_de_write(dev_priv, lvds_encoder->reg,
-		       intel_de_read(dev_priv, lvds_encoder->reg) & ~LVDS_PORT_EN);
+	intel_de_rmw(dev_priv, lvds_encoder->reg, LVDS_PORT_EN, 0);
 	intel_de_posting_read(dev_priv, lvds_encoder->reg);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index b986bf075889a1..e1b0034db9be66 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -930,8 +930,7 @@ intel_enable_tv(struct intel_atomic_state *state,
 	/* Prevents vblank waits from timing out in intel_tv_detect_type() */
 	intel_crtc_wait_for_next_vblank(to_intel_crtc(pipe_config->uapi.crtc));
 
-	intel_de_write(dev_priv, TV_CTL,
-		       intel_de_read(dev_priv, TV_CTL) | TV_ENC_ENABLE);
+	intel_de_rmw(dev_priv, TV_CTL, 0, TV_ENC_ENABLE);
 }
 
 static void
@@ -943,8 +942,7 @@ intel_disable_tv(struct intel_atomic_state *state,
 	struct drm_device *dev = encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 
-	intel_de_write(dev_priv, TV_CTL,
-		       intel_de_read(dev_priv, TV_CTL) & ~TV_ENC_ENABLE);
+	intel_de_rmw(dev_priv, TV_CTL, TV_ENC_ENABLE, 0);
 }
 
 static const struct tv_mode *intel_tv_mode_find(const struct drm_connector_state *conn_state)
@@ -1945,15 +1943,9 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	 * Sanity check the TV output by checking to see if the
 	 * DAC register holds a value
 	 */
-	save_tv_dac = intel_de_read(dev_priv, TV_DAC);
-
-	intel_de_write(dev_priv, TV_DAC, save_tv_dac | TVDAC_STATE_CHG_EN);
-	tv_dac_on = intel_de_read(dev_priv, TV_DAC);
-
-	intel_de_write(dev_priv, TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
-	tv_dac_off = intel_de_read(dev_priv, TV_DAC);
-
-	intel_de_write(dev_priv, TV_DAC, save_tv_dac);
+	save_tv_dac = intel_de_rmw(dev_priv, TV_DAC, 0, TVDAC_STATE_CHG_EN);
+	tv_dac_on = intel_de_rmw(dev_priv, TV_DAC, ~0, save_tv_dac & ~TVDAC_STATE_CHG_EN);
+	tv_dac_off = intel_de_rmw(dev_priv, TV_DAC, ~0, save_tv_dac);
 
 	/*
 	 * If the register does not hold the state change enable
-- 
2.34.1

