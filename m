Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F34FF4007BA
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Sep 2021 00:05:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DEE06E8E5;
	Fri,  3 Sep 2021 22:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35E236E8E5
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 22:05:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="217665956"
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="217665956"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 15:05:25 -0700
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="544130160"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 15:05:25 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Fri,  3 Sep 2021 15:10:34 -0700
Message-Id: <20210903221036.34770-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915/display: Some code improvements
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

v3:
- Fixed the mode refesh rate debug message

Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 58 ++++++++---------------
 1 file changed, 20 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index a2b65eca14418..fa0411341a0da 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -89,19 +89,13 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
 
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
@@ -117,15 +111,8 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
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
@@ -134,7 +121,7 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 8 && !IS_CHERRYVIEW(dev_priv)) {
-		switch (index) {
+		switch (refresh_type) {
 		case DRRS_HIGH_RR:
 			intel_dp_set_m_n(crtc_state, M1_N1);
 			break;
@@ -151,7 +138,7 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
 		u32 val;
 
 		val = intel_de_read(dev_priv, reg);
-		if (index > DRRS_HIGH_RR) {
+		if (refresh_type == DRRS_LOW_RR) {
 			if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 				val |= PIPECONF_EDP_RR_MODE_SWITCH_VLV;
 			else
@@ -165,10 +152,14 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
 		intel_de_write(dev_priv, reg, val);
 	}
 
-	dev_priv->drrs.refresh_rate_type = index;
+	dev_priv->drrs.refresh_rate_type = refresh_type;
 
+	if (refresh_type == DRRS_LOW_RR)
+		mode = intel_dp->attached_connector->panel.downclock_mode;
+	else
+		mode = intel_dp->attached_connector->panel.fixed_mode;
 	drm_dbg_kms(&dev_priv->drm, "eDP Refresh Rate set to : %dHz\n",
-		    refresh_rate);
+		    drm_mode_vrefresh(mode));
 }
 
 static void
@@ -216,13 +207,7 @@ intel_drrs_disable_locked(struct intel_dp *intel_dp,
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
 
@@ -290,6 +275,7 @@ static void intel_drrs_downclock_work(struct work_struct *work)
 	struct drm_i915_private *dev_priv =
 		container_of(work, typeof(*dev_priv), drrs.work.work);
 	struct intel_dp *intel_dp;
+	struct drm_crtc *crtc;
 
 	mutex_lock(&dev_priv->drrs.mutex);
 
@@ -306,12 +292,8 @@ static void intel_drrs_downclock_work(struct work_struct *work)
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
@@ -354,9 +336,9 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 	dev_priv->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
 
 	/* invalidate means busy screen hence upclock */
-	if (frontbuffer_bits && dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR)
+	if (frontbuffer_bits)
 		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
-				     drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));
+				     DRRS_HIGH_RR);
 
 	mutex_unlock(&dev_priv->drrs.mutex);
 }
@@ -400,9 +382,9 @@ void intel_drrs_flush(struct drm_i915_private *dev_priv,
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

