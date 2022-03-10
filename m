Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9A84D3E68
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:48:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77CC510E5D9;
	Thu, 10 Mar 2022 00:48:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23D3C10E5EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 00:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646873306; x=1678409306;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qjCjgDJHUdd1CvTZ/SWnTvR0LR0CpNufUiWUUlyKsiY=;
 b=FuKPNRnExpIhuBy5wklabDJL0ZcNToPGAf0ffs3f3Rsnw5OJH5/9Xpja
 qtwFwxmhkgEiA35mWQp2uCDSgo3RDHKQZxt+Z55YffVDDpKY0YT+3E3jU
 jD4EKej8KiAyPefcnJclJnDaAIj3RvFGHmjIlJ02KPnS1sIKML5xVBjED
 RmRKFgCko41mTJfr2RRIxkvhJHDpo8+8BEUxQIJcCtM3MOTo4IvGddiOa
 +y1JMzlYs53CXUAzyc9no8sZwWlnwgnbiX0j4f0FmqOO+9VNqupE3/1We
 ETU5lUMPaOqH4qbCbC7cS0lnsWTKMzC6MP6KPkArKkyPSLQhuY3kUtfXU w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="242570654"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="242570654"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:48:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="688483401"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 09 Mar 2022 16:48:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 02:48:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 02:47:56 +0200
Message-Id: <20220310004802.16310-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/13] drm/i915: Clean up DRRS refresh rate enum
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

Make the DRRS refresh rate enum less magical.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 18 ++------
 drivers/gpu/drm/i915/display/intel_drrs.c     | 44 +++++++++----------
 drivers/gpu/drm/i915/i915_drv.h               | 14 ++----
 3 files changed, 28 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 28414472110e..798bf233a60f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1149,7 +1149,6 @@ static void drrs_status_per_crtc(struct seq_file *m,
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct i915_drrs *drrs = &dev_priv->drrs;
-	int vrefresh = 0;
 	struct drm_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 
@@ -1191,21 +1190,12 @@ static void drrs_status_per_crtc(struct seq_file *m,
 					drrs->busy_frontbuffer_bits);
 
 		seq_puts(m, "\n\t\t");
-		if (drrs->refresh_rate_type == DRRS_HIGH_RR) {
-			seq_puts(m, "DRRS_State: DRRS_HIGH_RR\n");
-			vrefresh = drm_mode_vrefresh(panel->fixed_mode);
-		} else if (drrs->refresh_rate_type == DRRS_LOW_RR) {
-			seq_puts(m, "DRRS_State: DRRS_LOW_RR\n");
-			vrefresh = drm_mode_vrefresh(panel->downclock_mode);
-		} else {
-			seq_printf(m, "DRRS_State: Unknown(%d)\n",
-						drrs->refresh_rate_type);
-			mutex_unlock(&drrs->mutex);
-			return;
-		}
-		seq_printf(m, "\t\tVrefresh: %d", vrefresh);
 
+		seq_printf(m, "DRRS refresh rate: %s\n",
+			   drrs->refresh_rate == DRRS_REFRESH_RATE_LOW ?
+			   "low" : "high");
 		seq_puts(m, "\n\t\t");
+
 		mutex_unlock(&drrs->mutex);
 	} else {
 		/* DRRS not supported. Print the VBT parameter*/
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 7c4a3ecee93a..3979ceaaf651 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -103,7 +103,7 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
 
 static void
 intel_drrs_set_refresh_rate_pipeconf(const struct intel_crtc_state *crtc_state,
-				     enum drrs_refresh_rate_type refresh_type)
+				     enum drrs_refresh_rate refresh_rate)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -117,7 +117,7 @@ intel_drrs_set_refresh_rate_pipeconf(const struct intel_crtc_state *crtc_state,
 
 	val = intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
 
-	if (refresh_type == DRRS_LOW_RR)
+	if (refresh_rate == DRRS_REFRESH_RATE_LOW)
 		val |= bit;
 	else
 		val &= ~bit;
@@ -127,22 +127,21 @@ intel_drrs_set_refresh_rate_pipeconf(const struct intel_crtc_state *crtc_state,
 
 static void
 intel_drrs_set_refresh_rate_m_n(const struct intel_crtc_state *crtc_state,
-				enum drrs_refresh_rate_type refresh_type)
+				enum drrs_refresh_rate refresh_rate)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	intel_cpu_transcoder_set_m1_n1(crtc, crtc_state->cpu_transcoder,
-				       refresh_type == DRRS_LOW_RR ?
+				       refresh_rate == DRRS_REFRESH_RATE_LOW ?
 				       &crtc_state->dp_m2_n2 : &crtc_state->dp_m_n);
 }
 
 static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
 				 const struct intel_crtc_state *crtc_state,
-				 enum drrs_refresh_rate_type refresh_type)
+				 enum drrs_refresh_rate refresh_rate)
 {
 	struct intel_dp *intel_dp = dev_priv->drrs.dp;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_display_mode *mode;
 
 	if (!intel_dp) {
 		drm_dbg_kms(&dev_priv->drm, "DRRS not supported.\n");
@@ -160,7 +159,7 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (refresh_type == dev_priv->drrs.refresh_rate_type)
+	if (refresh_rate == dev_priv->drrs.refresh_rate)
 		return;
 
 	if (!crtc_state->hw.active) {
@@ -170,18 +169,14 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 8 && !IS_CHERRYVIEW(dev_priv))
-		intel_drrs_set_refresh_rate_m_n(crtc_state, refresh_type);
+		intel_drrs_set_refresh_rate_m_n(crtc_state, refresh_rate);
 	else if (DISPLAY_VER(dev_priv) > 6)
-		intel_drrs_set_refresh_rate_pipeconf(crtc_state, refresh_type);
+		intel_drrs_set_refresh_rate_pipeconf(crtc_state, refresh_rate);
 
-	dev_priv->drrs.refresh_rate_type = refresh_type;
+	dev_priv->drrs.refresh_rate = refresh_rate;
 
-	if (refresh_type == DRRS_LOW_RR)
-		mode = intel_dp->attached_connector->panel.downclock_mode;
-	else
-		mode = intel_dp->attached_connector->panel.fixed_mode;
-	drm_dbg_kms(&dev_priv->drm, "eDP Refresh Rate set to : %dHz\n",
-		    drm_mode_vrefresh(mode));
+	drm_dbg_kms(&dev_priv->drm, "eDP Refresh Rate set to : %s\n",
+		    refresh_rate == DRRS_REFRESH_RATE_LOW ? "low" : "high");
 }
 
 static void
@@ -229,7 +224,7 @@ intel_drrs_disable_locked(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	intel_drrs_set_state(dev_priv, crtc_state, DRRS_HIGH_RR);
+	intel_drrs_set_state(dev_priv, crtc_state, DRRS_REFRESH_RATE_HIGH);
 	dev_priv->drrs.dp = NULL;
 }
 
@@ -297,7 +292,6 @@ static void intel_drrs_downclock_work(struct work_struct *work)
 	struct drm_i915_private *dev_priv =
 		container_of(work, typeof(*dev_priv), drrs.work.work);
 	struct intel_dp *intel_dp;
-	struct drm_crtc *crtc;
 
 	mutex_lock(&dev_priv->drrs.mutex);
 
@@ -311,11 +305,13 @@ static void intel_drrs_downclock_work(struct work_struct *work)
 	 * recheck.
 	 */
 
-	if (dev_priv->drrs.busy_frontbuffer_bits)
-		goto unlock;
+	if (!dev_priv->drrs.busy_frontbuffer_bits) {
+		struct intel_crtc *crtc =
+			to_intel_crtc(dp_to_dig_port(intel_dp)->base.base.crtc);
 
-	crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
-	intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config, DRRS_LOW_RR);
+		intel_drrs_set_state(dev_priv, crtc->config,
+				     DRRS_REFRESH_RATE_LOW);
+	}
 
 unlock:
 	mutex_unlock(&dev_priv->drrs.mutex);
@@ -354,7 +350,7 @@ static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
 	/* flush/invalidate means busy screen hence upclock */
 	if (frontbuffer_bits)
 		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
-				     DRRS_HIGH_RR);
+				     DRRS_REFRESH_RATE_HIGH);
 
 	/*
 	 * flush also means no more activity hence schedule downclock, if all
@@ -466,7 +462,7 @@ intel_drrs_init(struct intel_connector *connector,
 
 	dev_priv->drrs.type = dev_priv->vbt.drrs_type;
 
-	dev_priv->drrs.refresh_rate_type = DRRS_HIGH_RR;
+	dev_priv->drrs.refresh_rate = DRRS_REFRESH_RATE_HIGH;
 	drm_dbg_kms(&dev_priv->drm,
 		    "[CONNECTOR:%d:%s] seamless DRRS supported\n",
 		    connector->base.base.id, connector->base.name);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0fc5d7e447b9..7d622d1afe93 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -196,15 +196,9 @@ struct drm_i915_display_funcs {
 
 #define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
 
-/*
- * HIGH_RR is the highest eDP panel refresh rate read from EDID
- * LOW_RR is the lowest eDP panel refresh rate found from EDID
- * parsing for same resolution.
- */
-enum drrs_refresh_rate_type {
-	DRRS_HIGH_RR,
-	DRRS_LOW_RR,
-	DRRS_MAX_RR, /* RR count */
+enum drrs_refresh_rate {
+	DRRS_REFRESH_RATE_HIGH,
+	DRRS_REFRESH_RATE_LOW,
 };
 
 enum drrs_type {
@@ -218,7 +212,7 @@ struct i915_drrs {
 	struct delayed_work work;
 	struct intel_dp *dp;
 	unsigned busy_frontbuffer_bits;
-	enum drrs_refresh_rate_type refresh_rate_type;
+	enum drrs_refresh_rate refresh_rate;
 	enum drrs_type type;
 };
 
-- 
2.34.1

