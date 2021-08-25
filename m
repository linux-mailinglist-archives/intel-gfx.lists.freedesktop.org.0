Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AC93F6CCC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 02:53:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E54616E0F5;
	Wed, 25 Aug 2021 00:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9516896FA
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 00:53:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="204623092"
X-IronPort-AV: E=Sophos;i="5.84,349,1620716400"; d="scan'208";a="204623092"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 17:53:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,349,1620716400"; d="scan'208";a="507826409"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 17:53:42 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 24 Aug 2021 17:58:35 -0700
Message-Id: <20210825005840.170796-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210825005840.170796-1-jose.souza@intel.com>
References: <20210825005840.170796-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/8] drm/i915/display: Renaming DRRS
 functions to intel_drrs_*()
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

We had a mix of intel_edp_drrs_*(), intel_dp_drrs_*() and
intel_dp_set_drrs_state(), so properly renaming all functions to
keep the same pattern.

While at it, also dropping intel_dp_set_drrs_state from the
documentation as it is a static function.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 Documentation/gpu/i915.rst                    | 13 +--
 drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +-
 .../drm/i915/display/intel_display_debugfs.c  |  6 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  6 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     | 92 +++++++++----------
 drivers/gpu/drm/i915/display/intel_drrs.h     | 30 +++---
 .../gpu/drm/i915/display/intel_frontbuffer.c  |  4 +-
 7 files changed, 76 insertions(+), 81 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 03021dfa0dd81..101dde3eb1ea9 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -187,22 +187,19 @@ Display Refresh Rate Switching (DRRS)
    :doc: Display Refresh Rate Switching (DRRS)
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
-   :functions: intel_dp_set_drrs_state
+   :functions: intel_drrs_enable
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
-   :functions: intel_edp_drrs_enable
+   :functions: intel_drrs_disable
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
-   :functions: intel_edp_drrs_disable
+   :functions: intel_drrs_invalidate
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
-   :functions: intel_edp_drrs_invalidate
+   :functions: intel_drrs_flush
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
-   :functions: intel_edp_drrs_flush
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
-   :functions: intel_dp_drrs_init
+   :functions: intel_drrs_init
 
 DPIO
 ----
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 828df570a4809..7714566dec81b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3015,7 +3015,7 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
 	if (!dig_port->lspcon.active || dig_port->dp.has_hdmi_sink)
 		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
 
-	intel_edp_drrs_enable(intel_dp, crtc_state);
+	intel_drrs_enable(intel_dp, crtc_state);
 
 	if (crtc_state->has_audio)
 		intel_audio_codec_enable(encoder, crtc_state, conn_state);
@@ -3203,7 +3203,7 @@ static void intel_pre_disable_ddi(struct intel_atomic_state *state,
 		return;
 
 	intel_dp = enc_to_intel_dp(encoder);
-	intel_edp_drrs_disable(intel_dp, old_crtc_state);
+	intel_drrs_disable(intel_dp, old_crtc_state);
 	intel_psr_disable(intel_dp, old_crtc_state);
 }
 
@@ -3233,7 +3233,7 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
 
 	intel_psr_update(intel_dp, crtc_state, conn_state);
 	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
-	intel_edp_drrs_update(intel_dp, crtc_state);
+	intel_drrs_update(intel_dp, crtc_state);
 
 	intel_panel_update_backlight(state, encoder, crtc_state, conn_state);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index b136a0fc0963b..ca819f9e353d0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -2045,11 +2045,9 @@ static int i915_drrs_ctl_set(void *data, u64 val)
 
 			intel_dp = enc_to_intel_dp(encoder);
 			if (val)
-				intel_edp_drrs_enable(intel_dp,
-						      crtc_state);
+				intel_drrs_enable(intel_dp, crtc_state);
 			else
-				intel_edp_drrs_disable(intel_dp,
-						       crtc_state);
+				intel_drrs_disable(intel_dp, crtc_state);
 		}
 		drm_connector_list_iter_end(&conn_iter);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 965b888e0e771..192564eb60949 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1784,8 +1784,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	intel_vrr_compute_config(pipe_config, conn_state);
 	intel_psr_compute_config(intel_dp, pipe_config);
-	intel_dp_drrs_compute_config(intel_dp, pipe_config, output_bpp,
-				     constant_n);
+	intel_drrs_compute_config(intel_dp, pipe_config, output_bpp,
+				  constant_n);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
 	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
 
@@ -4804,7 +4804,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 
 	fixed_mode = intel_panel_edid_fixed_mode(intel_connector);
 	if (fixed_mode)
-		downclock_mode = intel_dp_drrs_init(intel_connector, fixed_mode);
+		downclock_mode = intel_drrs_init(intel_connector, fixed_mode);
 
 	/* multiply the mode clock and horizontal timings for MSO */
 	intel_edp_mso_mode_fixup(intel_connector, fixed_mode);
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index be9b6d4482f04..1aa9793521158 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -39,8 +39,8 @@
  * no movement on screen, after a timeout of 1 second, a switch to low RR is
  * made.
  *
- * For integration with frontbuffer tracking code, intel_edp_drrs_invalidate()
- * and intel_edp_drrs_flush() are called.
+ * For integration with frontbuffer tracking code, intel_drrs_invalidate()
+ * and intel_drrs_flush() are called.
  *
  * DRRS can be further extended to support other internal panels and also
  * the scenario of video playback wherein RR is set based on the rate
@@ -48,9 +48,9 @@
  */
 
 void
-intel_dp_drrs_compute_config(struct intel_dp *intel_dp,
-			     struct intel_crtc_state *pipe_config,
-			     int output_bpp, bool constant_n)
+intel_drrs_compute_config(struct intel_dp *intel_dp,
+			  struct intel_crtc_state *pipe_config,
+			  int output_bpp, bool constant_n)
 {
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -62,7 +62,7 @@ intel_dp_drrs_compute_config(struct intel_dp *intel_dp,
 	/*
 	 * DRRS and PSR can't be enable together, so giving preference to PSR
 	 * as it allows more power-savings by complete shutting down display,
-	 * so to guarantee this, intel_dp_drrs_compute_config() must be called
+	 * so to guarantee this, intel_drrs_compute_config() must be called
 	 * after intel_psr_compute_config().
 	 */
 	if (pipe_config->has_psr)
@@ -88,7 +88,7 @@ intel_dp_drrs_compute_config(struct intel_dp *intel_dp,
 }
 
 /**
- * intel_dp_set_drrs_state - program registers for RR switch to take effect
+ * intel_drrs_set_state - program registers for RR switch to take effect
  * @dev_priv: i915 device
  * @crtc_state: a pointer to the active intel_crtc_state
  * @refresh_rate: RR to be programmed
@@ -100,9 +100,9 @@ intel_dp_drrs_compute_config(struct intel_dp *intel_dp,
  *
  * The caller of this function needs to take a lock on dev_priv->drrs.
  */
-static void intel_dp_set_drrs_state(struct drm_i915_private *dev_priv,
-				    const struct intel_crtc_state *crtc_state,
-				    int refresh_rate)
+static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
+				 const struct intel_crtc_state *crtc_state,
+				 int refresh_rate)
 {
 	struct intel_dp *intel_dp = dev_priv->drrs.dp;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -185,7 +185,7 @@ static void intel_dp_set_drrs_state(struct drm_i915_private *dev_priv,
 }
 
 static void
-intel_edp_drrs_enable_locked(struct intel_dp *intel_dp)
+intel_drrs_enable_locked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
@@ -194,14 +194,14 @@ intel_edp_drrs_enable_locked(struct intel_dp *intel_dp)
 }
 
 /**
- * intel_edp_drrs_enable - init drrs struct if supported
+ * intel_drrs_enable - init drrs struct if supported
  * @intel_dp: DP struct
  * @crtc_state: A pointer to the active crtc state.
  *
  * Initializes frontbuffer_bits and drrs.dp
  */
-void intel_edp_drrs_enable(struct intel_dp *intel_dp,
-			   const struct intel_crtc_state *crtc_state)
+void intel_drrs_enable(struct intel_dp *intel_dp,
+		       const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
@@ -217,15 +217,15 @@ void intel_edp_drrs_enable(struct intel_dp *intel_dp,
 		goto unlock;
 	}
 
-	intel_edp_drrs_enable_locked(intel_dp);
+	intel_drrs_enable_locked(intel_dp);
 
 unlock:
 	mutex_unlock(&dev_priv->drrs.mutex);
 }
 
 static void
-intel_edp_drrs_disable_locked(struct intel_dp *intel_dp,
-			      const struct intel_crtc_state *crtc_state)
+intel_drrs_disable_locked(struct intel_dp *intel_dp,
+			  const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
@@ -233,20 +233,20 @@ intel_edp_drrs_disable_locked(struct intel_dp *intel_dp,
 		int refresh;
 
 		refresh = drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode);
-		intel_dp_set_drrs_state(dev_priv, crtc_state, refresh);
+		intel_drrs_set_state(dev_priv, crtc_state, refresh);
 	}
 
 	dev_priv->drrs.dp = NULL;
 }
 
 /**
- * intel_edp_drrs_disable - Disable DRRS
+ * intel_drrs_disable - Disable DRRS
  * @intel_dp: DP struct
  * @old_crtc_state: Pointer to old crtc_state.
  *
  */
-void intel_edp_drrs_disable(struct intel_dp *intel_dp,
-			    const struct intel_crtc_state *old_crtc_state)
+void intel_drrs_disable(struct intel_dp *intel_dp,
+			const struct intel_crtc_state *old_crtc_state)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
@@ -259,24 +259,24 @@ void intel_edp_drrs_disable(struct intel_dp *intel_dp,
 		return;
 	}
 
-	intel_edp_drrs_disable_locked(intel_dp, old_crtc_state);
+	intel_drrs_disable_locked(intel_dp, old_crtc_state);
 	mutex_unlock(&dev_priv->drrs.mutex);
 
 	cancel_delayed_work_sync(&dev_priv->drrs.work);
 }
 
 /**
- * intel_edp_drrs_update - Update DRRS state
+ * intel_drrs_update - Update DRRS state
  * @intel_dp: Intel DP
  * @crtc_state: new CRTC state
  *
  * This function will update DRRS states, disabling or enabling DRRS when
- * executing fastsets. For full modeset, intel_edp_drrs_disable() and
- * intel_edp_drrs_enable() should be called instead.
+ * executing fastsets. For full modeset, intel_drrs_disable() and
+ * intel_drrs_enable() should be called instead.
  */
 void
-intel_edp_drrs_update(struct intel_dp *intel_dp,
-		      const struct intel_crtc_state *crtc_state)
+intel_drrs_update(struct intel_dp *intel_dp,
+		  const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
@@ -290,15 +290,15 @@ intel_edp_drrs_update(struct intel_dp *intel_dp,
 		goto unlock;
 
 	if (crtc_state->has_drrs)
-		intel_edp_drrs_enable_locked(intel_dp);
+		intel_drrs_enable_locked(intel_dp);
 	else
-		intel_edp_drrs_disable_locked(intel_dp, crtc_state);
+		intel_drrs_disable_locked(intel_dp, crtc_state);
 
 unlock:
 	mutex_unlock(&dev_priv->drrs.mutex);
 }
 
-static void intel_edp_drrs_downclock_work(struct work_struct *work)
+static void intel_drrs_downclock_work(struct work_struct *work)
 {
 	struct drm_i915_private *dev_priv =
 		container_of(work, typeof(*dev_priv), drrs.work.work);
@@ -322,8 +322,8 @@ static void intel_edp_drrs_downclock_work(struct work_struct *work)
 	if (dev_priv->drrs.refresh_rate_type != DRRS_LOW_RR) {
 		struct drm_crtc *crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
 
-		intel_dp_set_drrs_state(dev_priv, to_intel_crtc(crtc)->config,
-					drm_mode_vrefresh(intel_dp->attached_connector->panel.downclock_mode));
+		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
+				     drm_mode_vrefresh(intel_dp->attached_connector->panel.downclock_mode));
 	}
 
 unlock:
@@ -331,7 +331,7 @@ static void intel_edp_drrs_downclock_work(struct work_struct *work)
 }
 
 /**
- * intel_edp_drrs_invalidate - Disable Idleness DRRS
+ * intel_drrs_invalidate - Disable Idleness DRRS
  * @dev_priv: i915 device
  * @frontbuffer_bits: frontbuffer plane tracking bits
  *
@@ -340,8 +340,8 @@ static void intel_edp_drrs_downclock_work(struct work_struct *work)
  *
  * Dirty frontbuffers relevant to DRRS are tracked in busy_frontbuffer_bits.
  */
-void intel_edp_drrs_invalidate(struct drm_i915_private *dev_priv,
-			       unsigned int frontbuffer_bits)
+void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
+			   unsigned int frontbuffer_bits)
 {
 	struct intel_dp *intel_dp;
 	struct drm_crtc *crtc;
@@ -368,14 +368,14 @@ void intel_edp_drrs_invalidate(struct drm_i915_private *dev_priv,
 
 	/* invalidate means busy screen hence upclock */
 	if (frontbuffer_bits && dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR)
-		intel_dp_set_drrs_state(dev_priv, to_intel_crtc(crtc)->config,
-					drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));
+		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
+				     drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));
 
 	mutex_unlock(&dev_priv->drrs.mutex);
 }
 
 /**
- * intel_edp_drrs_flush - Restart Idleness DRRS
+ * intel_drrs_flush - Restart Idleness DRRS
  * @dev_priv: i915 device
  * @frontbuffer_bits: frontbuffer plane tracking bits
  *
@@ -386,8 +386,8 @@ void intel_edp_drrs_invalidate(struct drm_i915_private *dev_priv,
  *
  * Dirty frontbuffers relevant to DRRS are tracked in busy_frontbuffer_bits.
  */
-void intel_edp_drrs_flush(struct drm_i915_private *dev_priv,
-			  unsigned int frontbuffer_bits)
+void intel_drrs_flush(struct drm_i915_private *dev_priv,
+		      unsigned int frontbuffer_bits)
 {
 	struct intel_dp *intel_dp;
 	struct drm_crtc *crtc;
@@ -414,8 +414,8 @@ void intel_edp_drrs_flush(struct drm_i915_private *dev_priv,
 
 	/* flush means busy screen hence upclock */
 	if (frontbuffer_bits && dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR)
-		intel_dp_set_drrs_state(dev_priv, to_intel_crtc(crtc)->config,
-					drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));
+		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
+				     drm_mode_vrefresh(intel_dp->attached_connector->panel.fixed_mode));
 
 	/*
 	 * flush also means no more activity hence schedule downclock, if all
@@ -428,7 +428,7 @@ void intel_edp_drrs_flush(struct drm_i915_private *dev_priv,
 }
 
 /**
- * intel_dp_drrs_init - Init basic DRRS work and mutex.
+ * intel_drrs_init - Init basic DRRS work and mutex.
  * @connector: eDP connector
  * @fixed_mode: preferred mode of panel
  *
@@ -441,13 +441,13 @@ void intel_edp_drrs_flush(struct drm_i915_private *dev_priv,
  * from VBT setting).
  */
 struct drm_display_mode *
-intel_dp_drrs_init(struct intel_connector *connector,
-		   struct drm_display_mode *fixed_mode)
+intel_drrs_init(struct intel_connector *connector,
+		struct drm_display_mode *fixed_mode)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct drm_display_mode *downclock_mode = NULL;
 
-	INIT_DELAYED_WORK(&dev_priv->drrs.work, intel_edp_drrs_downclock_work);
+	INIT_DELAYED_WORK(&dev_priv->drrs.work, intel_drrs_downclock_work);
 	mutex_init(&dev_priv->drrs.mutex);
 
 	if (DISPLAY_VER(dev_priv) <= 6) {
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index ffa175b4cf4f4..73be7e9a43691 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -13,20 +13,20 @@ struct intel_crtc_state;
 struct intel_connector;
 struct intel_dp;
 
-void intel_edp_drrs_enable(struct intel_dp *intel_dp,
-			   const struct intel_crtc_state *crtc_state);
-void intel_edp_drrs_disable(struct intel_dp *intel_dp,
-			    const struct intel_crtc_state *crtc_state);
-void intel_edp_drrs_update(struct intel_dp *intel_dp,
-			   const struct intel_crtc_state *crtc_state);
-void intel_edp_drrs_invalidate(struct drm_i915_private *dev_priv,
-			       unsigned int frontbuffer_bits);
-void intel_edp_drrs_flush(struct drm_i915_private *dev_priv,
-			  unsigned int frontbuffer_bits);
-void intel_dp_drrs_compute_config(struct intel_dp *intel_dp,
-				  struct intel_crtc_state *pipe_config,
-				  int output_bpp, bool constant_n);
-struct drm_display_mode *intel_dp_drrs_init(struct intel_connector *connector,
-					    struct drm_display_mode *fixed_mode);
+void intel_drrs_enable(struct intel_dp *intel_dp,
+		       const struct intel_crtc_state *crtc_state);
+void intel_drrs_disable(struct intel_dp *intel_dp,
+			const struct intel_crtc_state *crtc_state);
+void intel_drrs_update(struct intel_dp *intel_dp,
+		       const struct intel_crtc_state *crtc_state);
+void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
+			   unsigned int frontbuffer_bits);
+void intel_drrs_flush(struct drm_i915_private *dev_priv,
+		      unsigned int frontbuffer_bits);
+void intel_drrs_compute_config(struct intel_dp *intel_dp,
+			       struct intel_crtc_state *pipe_config,
+			       int output_bpp, bool constant_n);
+struct drm_display_mode *intel_drrs_init(struct intel_connector *connector,
+					 struct drm_display_mode *fixed_mode);
 
 #endif /* __INTEL_DRRS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index e4834d84ce5e3..0492446cd04ad 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -92,7 +92,7 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 	trace_intel_frontbuffer_flush(frontbuffer_bits, origin);
 
 	might_sleep();
-	intel_edp_drrs_flush(i915, frontbuffer_bits);
+	intel_drrs_flush(i915, frontbuffer_bits);
 	intel_psr_flush(i915, frontbuffer_bits, origin);
 	intel_fbc_flush(i915, frontbuffer_bits, origin);
 }
@@ -181,7 +181,7 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 
 	might_sleep();
 	intel_psr_invalidate(i915, frontbuffer_bits, origin);
-	intel_edp_drrs_invalidate(i915, frontbuffer_bits);
+	intel_drrs_invalidate(i915, frontbuffer_bits);
 	intel_fbc_invalidate(i915, frontbuffer_bits, origin);
 }
 
-- 
2.33.0

