Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 711A23F6CCD
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 02:54:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98029896FA;
	Wed, 25 Aug 2021 00:53:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1630289718
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 00:53:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="204623093"
X-IronPort-AV: E=Sophos;i="5.84,349,1620716400"; d="scan'208";a="204623093"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 17:53:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,349,1620716400"; d="scan'208";a="507826412"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 17:53:42 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 24 Aug 2021 17:58:36 -0700
Message-Id: <20210825005840.170796-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210825005840.170796-1-jose.souza@intel.com>
References: <20210825005840.170796-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/8] drm/i915/display: Some code improvements
 and code style fixes for DRRS
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

It started as a code style fix for the lines above 100 col but it
turned out to simplifications to intel_drrs_set_state().
Now it receives the desired refresh rate type, high or low.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 60 ++++++++---------------
 1 file changed, 21 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 1aa9793521158..5eb5033242575 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -91,7 +91,7 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
  * intel_drrs_set_state - program registers for RR switch to take effect
  * @dev_priv: i915 device
  * @crtc_state: a pointer to the active intel_crtc_state
- * @refresh_rate: RR to be programmed
+ * @refresh_type: high or low refresh rate to be programmed
  *
  * This function gets called when refresh rate (RR) has to be changed from
  * one frequency to another. Switches can be between high and low RR
@@ -102,19 +102,13 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
  */
 static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
 				 const struct intel_crtc_state *crtc_state,
-				 int refresh_rate)
+				 enum drrs_refresh_rate_type refresh_type)
 {
 	struct intel_dp *intel_dp = dev_priv->drrs.dp;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	enum drrs_refresh_rate_type index = DRRS_HIGH_RR;
+	struct drm_display_mode *mode;
 
-	if (refresh_rate <= 0) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Refresh rate should be positive non-zero.\n");
-		return;
-	}
-
-	if (intel_dp == NULL) {
+	if (!intel_dp) {
 		drm_dbg_kms(&dev_priv->drm, "DRRS not supported.\n");
 		return;
 	}
@@ -130,15 +124,8 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (drm_mode_vrefresh(intel_dp->attached_connector->panel.downclock_mode) ==
-			refresh_rate)
-		index = DRRS_LOW_RR;
-
-	if (index == dev_priv->drrs.refresh_rate_type) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "DRRS requested for previously set RR...ignoring\n");
+	if (refresh_type == dev_priv->drrs.refresh_rate_type)
 		return;
-	}
 
 	if (!crtc_state->hw.active) {
 		drm_dbg_kms(&dev_priv->drm,
@@ -147,7 +134,7 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 8 && !IS_CHERRYVIEW(dev_priv)) {
-		switch (index) {
+		switch (refresh_type) {
 		case DRRS_HIGH_RR:
 			intel_dp_set_m_n(crtc_state, M1_N1);
 			break;
@@ -164,7 +151,7 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
 		u32 val;
 
 		val = intel_de_read(dev_priv, reg);
-		if (index > DRRS_HIGH_RR) {
+		if (refresh_type == DRRS_LOW_RR) {
 			if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 				val |= PIPECONF_EDP_RR_MODE_SWITCH_VLV;
 			else
@@ -178,10 +165,14 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
 		intel_de_write(dev_priv, reg, val);
 	}
 
-	dev_priv->drrs.refresh_rate_type = index;
+	dev_priv->drrs.refresh_rate_type = refresh_type;
 
+	if (refresh_type == DRRS_LOW_RR)
+		mode = intel_dp->attached_connector->panel.fixed_mode;
+	else
+		mode = intel_dp->attached_connector->panel.downclock_mode;
 	drm_dbg_kms(&dev_priv->drm, "eDP Refresh Rate set to : %dHz\n",
-		    refresh_rate);
+		    drm_mode_vrefresh(mode));
 }
 
 static void
@@ -229,13 +220,7 @@ intel_drrs_disable_locked(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	if (dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR) {
-		int refresh;
-
-		refresh = drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode);
-		intel_drrs_set_state(dev_priv, crtc_state, refresh);
-	}
-
+	intel_drrs_set_state(dev_priv, crtc_state, DRRS_HIGH_RR);
 	dev_priv->drrs.dp = NULL;
 }
 
@@ -303,6 +288,7 @@ static void intel_drrs_downclock_work(struct work_struct *work)
 	struct drm_i915_private *dev_priv =
 		container_of(work, typeof(*dev_priv), drrs.work.work);
 	struct intel_dp *intel_dp;
+	struct drm_crtc *crtc;
 
 	mutex_lock(&dev_priv->drrs.mutex);
 
@@ -319,12 +305,8 @@ static void intel_drrs_downclock_work(struct work_struct *work)
 	if (dev_priv->drrs.busy_frontbuffer_bits)
 		goto unlock;
 
-	if (dev_priv->drrs.refresh_rate_type != DRRS_LOW_RR) {
-		struct drm_crtc *crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
-
-		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
-				     drm_mode_vrefresh(intel_dp->attached_connector->panel.downclock_mode));
-	}
+	crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
+	intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config, DRRS_LOW_RR);
 
 unlock:
 	mutex_unlock(&dev_priv->drrs.mutex);
@@ -367,9 +349,9 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 	dev_priv->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
 
 	/* invalidate means busy screen hence upclock */
-	if (frontbuffer_bits && dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR)
+	if (frontbuffer_bits)
 		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
-				     drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));
+				     DRRS_HIGH_RR);
 
 	mutex_unlock(&dev_priv->drrs.mutex);
 }
@@ -413,9 +395,9 @@ void intel_drrs_flush(struct drm_i915_private *dev_priv,
 	dev_priv->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
 
 	/* flush means busy screen hence upclock */
-	if (frontbuffer_bits && dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR)
+	if (frontbuffer_bits)
 		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
-				     drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));
+				     DRRS_HIGH_RR);
 
 	/*
 	 * flush also means no more activity hence schedule downclock, if all
-- 
2.33.0

