Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2487663F55
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 12:37:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BEE210E5A4;
	Tue, 10 Jan 2023 11:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B756B10E5A4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 11:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673350632; x=1704886632;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jYnbYMlTdoLfF0BDNzfdcDybLRHnRAuiYXsfXr98HGU=;
 b=Vhj26rQ8bNvaoU4dazb+XNksKZyMHw0glkPMT3XVFc2OQjit353Zwsim
 RATYoGYXukBoQnBmN3ses4aiL8n/YHEn84WnubTwRtyDkt2C4TQ8Ehffa
 IlQTNyCfEgdVEYRAX1tdNFNOwC0f9XRbIm5+pI3bzto1yncImMlHEnYrM
 Wi2zJyPeb2pDphuBxWszauJADNh9iro+LHETJmcKxG8WtsPSCjLJD9o55
 Sa4WpFJ+4+npsBtJTfKXIRqsu5BFrAyeZbcIsxREYV+3kXzfBpnwH5L+P
 fgbBl7Mk9WCsa9+7U8cF0sK5GaujIWXYS57FYxjQLSVFA2i+cK91CdwMm Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="320815220"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="320815220"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 03:37:12 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="606933794"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="606933794"
Received: from lab-ah.igk.intel.com ([10.102.42.211])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 03:37:10 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Tue, 10 Jan 2023 12:36:56 +0100
Message-Id: <20230110113656.4050491-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <Y7xqk3HKlq/50SSD@intel.com>
References: <Y7xqk3HKlq/50SSD@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/display/misc: use intel_de_rmw if
 possible
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The helper makes the code more compact and readable.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c     | 12 ++++--------
 drivers/gpu/drm/i915/display/intel_drrs.c | 12 +++---------
 drivers/gpu/drm/i915/display/intel_dvo.c  |  7 ++-----
 drivers/gpu/drm/i915/display/intel_lvds.c | 12 ++++--------
 drivers/gpu/drm/i915/display/intel_tv.c   |  6 ++----
 5 files changed, 15 insertions(+), 34 deletions(-)

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
index b986bf075889a1..3b5ff84dc61582 100644
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
-- 
2.34.1

