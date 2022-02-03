Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 329BA4A8BC5
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 19:38:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0347910EA5C;
	Thu,  3 Feb 2022 18:38:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D978310EA5C
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 18:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643913527; x=1675449527;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0pv2uNoZm11afLpodxLhrNxjTXzvXkuxMt/pT253rZI=;
 b=T+82vs3wSsYO7RHUf77yRVvgbuz+VcisZYc2dW2ltIKoNu4SXCY9Fh0F
 Jzdswh7Gkfcsz12NE1sPBUohCS8l9AC85hud103pYIy/jWrBh8inXwtrM
 UH3KlU13Ifbpd9bjx6udnMlLuJHzEep3b6FeSfKq+/g5QpzVsS0ioS++V
 fdELGFT94vl0IkfV7sEreBu0fPAqBrzjsr6CgzHpJIJIAwvyZFkd4VkAG
 QyReO6JsvaC5D+2R2eEDO22WqYsX0Pgu74D2zS/wPHPtE7RRTjvDp4fhX
 wtgoYgv1CuGEjGGMn/ViHxlt8OqL92lRUIiKaN5tQzKuC3YGYFQ1sVuoB Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="231792548"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="231792548"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 10:38:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="627533322"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 03 Feb 2022 10:38:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Feb 2022 20:38:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 20:38:20 +0200
Message-Id: <20220203183823.22890-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/10] drm/i915: Convert
 for_each_intel_crtc_mask() to take a pipe mask instead
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Often using pipes is more convenient than crtc indices.
Convert the current for_each_intel_crtc_mask() to take a
pipe mask instead of a crtc index mask, and rename it to
for_each_intel_crtc_in_pipe_mask() to make it clear what
it does.

The current users of for_each_intel_crtc_mask() don't really
care which kind of mask we use, but for other uses a pipe
mask if better.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h |  4 +--
 drivers/gpu/drm/i915/display/intel_dp.c      | 34 ++++++++++----------
 2 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 22e5f0d6e171..fe9eb3acee65 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -430,11 +430,11 @@ enum hpd_pin {
 			    &(dev)->mode_config.crtc_list,		\
 			    base.head)
 
-#define for_each_intel_crtc_mask(dev, intel_crtc, crtc_mask)		\
+#define for_each_intel_crtc_in_pipe_mask(dev, intel_crtc, pipe_mask)	\
 	list_for_each_entry(intel_crtc,					\
 			    &(dev)->mode_config.crtc_list,		\
 			    base.head)					\
-		for_each_if((crtc_mask) & drm_crtc_mask(&intel_crtc->base))
+		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))
 
 #define for_each_intel_encoder(dev, intel_encoder)		\
 	list_for_each_entry(intel_encoder,			\
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 146b83916005..3fb9f643ebb9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3810,14 +3810,14 @@ static bool intel_dp_has_connector(struct intel_dp *intel_dp,
 
 static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
 				      struct drm_modeset_acquire_ctx *ctx,
-				      u32 *crtc_mask)
+				      u8 *pipe_mask)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
 	int ret = 0;
 
-	*crtc_mask = 0;
+	*pipe_mask = 0;
 
 	if (!intel_dp_needs_link_retrain(intel_dp))
 		return 0;
@@ -3851,12 +3851,12 @@ static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
 		    !try_wait_for_completion(&conn_state->commit->hw_done))
 			continue;
 
-		*crtc_mask |= drm_crtc_mask(&crtc->base);
+		*pipe_mask |= BIT(crtc->pipe);
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
 	if (!intel_dp_needs_link_retrain(intel_dp))
-		*crtc_mask = 0;
+		*pipe_mask = 0;
 
 	return ret;
 }
@@ -3875,7 +3875,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_crtc *crtc;
-	u32 crtc_mask;
+	u8 pipe_mask;
 	int ret;
 
 	if (!intel_dp_is_connected(intel_dp))
@@ -3886,17 +3886,17 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
-	ret = intel_dp_prep_link_retrain(intel_dp, ctx, &crtc_mask);
+	ret = intel_dp_prep_link_retrain(intel_dp, ctx, &pipe_mask);
 	if (ret)
 		return ret;
 
-	if (crtc_mask == 0)
+	if (pipe_mask == 0)
 		return 0;
 
 	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] retraining link\n",
 		    encoder->base.base.id, encoder->base.name);
 
-	for_each_intel_crtc_mask(&dev_priv->drm, crtc, crtc_mask) {
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
@@ -3907,7 +3907,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 							      intel_crtc_pch_transcoder(crtc), false);
 	}
 
-	for_each_intel_crtc_mask(&dev_priv->drm, crtc, crtc_mask) {
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
@@ -3924,7 +3924,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 		break;
 	}
 
-	for_each_intel_crtc_mask(&dev_priv->drm, crtc, crtc_mask) {
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
@@ -3942,14 +3942,14 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 
 static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
 				  struct drm_modeset_acquire_ctx *ctx,
-				  u32 *crtc_mask)
+				  u8 *pipe_mask)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
 	int ret = 0;
 
-	*crtc_mask = 0;
+	*pipe_mask = 0;
 
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
@@ -3980,7 +3980,7 @@ static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
 		    !try_wait_for_completion(&conn_state->commit->hw_done))
 			continue;
 
-		*crtc_mask |= drm_crtc_mask(&crtc->base);
+		*pipe_mask |= BIT(crtc->pipe);
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
@@ -3993,7 +3993,7 @@ static int intel_dp_do_phy_test(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_crtc *crtc;
-	u32 crtc_mask;
+	u8 pipe_mask;
 	int ret;
 
 	ret = drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
@@ -4001,17 +4001,17 @@ static int intel_dp_do_phy_test(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
-	ret = intel_dp_prep_phy_test(intel_dp, ctx, &crtc_mask);
+	ret = intel_dp_prep_phy_test(intel_dp, ctx, &pipe_mask);
 	if (ret)
 		return ret;
 
-	if (crtc_mask == 0)
+	if (pipe_mask == 0)
 		return 0;
 
 	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] PHY test\n",
 		    encoder->base.base.id, encoder->base.name);
 
-	for_each_intel_crtc_mask(&dev_priv->drm, crtc, crtc_mask) {
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
-- 
2.34.1

