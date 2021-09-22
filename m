Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D32415309
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 23:47:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D423F6E056;
	Wed, 22 Sep 2021 21:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F61E6E051
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 21:47:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="203206931"
X-IronPort-AV: E=Sophos;i="5.85,315,1624345200"; d="scan'208";a="203206931"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 14:47:08 -0700
X-IronPort-AV: E=Sophos;i="5.85,315,1624345200"; d="scan'208";a="435593155"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 14:47:07 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Wed, 22 Sep 2021 14:52:42 -0700
Message-Id: <20210922215242.66683-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210922215242.66683-1-jose.souza@intel.com>
References: <20210922215242.66683-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 3/3] drm/i915/display: Only keep PSR enabled
 if there is active planes
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

PSR always had a requirement to only be enabled if there is active
planes but not following that never caused any issues.
But that changes in Alderlake-P, leaving PSR enabled without
active planes causes transcoder/port underruns.

Similar behavior was fixed during the pipe disable sequence by
commit 84030adb9e27 ("drm/i915/display: Disable audio, DRRS and PSR before planes").

intel_dp_compute_psr_vsc_sdp() had to move from
intel_psr_enable_locked() to intel_psr_compute_config() because we
need to be able to disable/enable PSR from atomic states without
connector and encoder state.

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 -
 drivers/gpu/drm/i915/display/intel_display.c  |  14 +-
 .../drm/i915/display/intel_display_types.h    |   3 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   6 +-
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 140 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_psr.h      |  11 +-
 7 files changed, 98 insertions(+), 80 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index bba0ab99836b1..a4667741d3548 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3034,7 +3034,6 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
 		intel_dp_stop_link_train(intel_dp, crtc_state);
 
 	intel_edp_backlight_on(crtc_state, conn_state);
-	intel_psr_enable(intel_dp, crtc_state, conn_state);
 
 	if (!dig_port->lspcon.active || dig_port->dp.has_hdmi_sink)
 		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
@@ -3255,7 +3254,6 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
 
 	intel_ddi_set_dp_msa(crtc_state, conn_state);
 
-	intel_psr_update(intel_dp, crtc_state, conn_state);
 	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
 	intel_drrs_update(intel_dp, crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 66e63f3429172..9985a1c5be96f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8095,10 +8095,12 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		if (bp_gamma)
 			PIPE_CONF_CHECK_COLOR_LUT(gamma_mode, hw.gamma_lut, bp_gamma);
 
-		PIPE_CONF_CHECK_BOOL(has_psr);
-		PIPE_CONF_CHECK_BOOL(has_psr2);
-		PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
-		PIPE_CONF_CHECK_I(dc3co_exitline);
+		if (current_config->active_planes) {
+			PIPE_CONF_CHECK_BOOL(has_psr);
+			PIPE_CONF_CHECK_BOOL(has_psr2);
+			PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
+			PIPE_CONF_CHECK_I(dc3co_exitline);
+		}
 	}
 
 	PIPE_CONF_CHECK_BOOL(double_wide);
@@ -8155,7 +8157,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(min_voltage_level);
 	}
 
-	if (fastset && (current_config->has_psr || pipe_config->has_psr))
+	if (current_config->has_psr || pipe_config->has_psr)
 		PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable,
 					    ~intel_hdmi_infoframe_enable(DP_SDP_VSC));
 	else
@@ -10209,6 +10211,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		intel_encoders_update_prepare(state);
 
 	intel_dbuf_pre_plane_update(state);
+	intel_psr_pre_plane_update(state);
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (new_crtc_state->uapi.async_flip)
@@ -10272,6 +10275,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	}
 
 	intel_dbuf_post_plane_update(state);
+	intel_psr_post_plane_update(state);
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
 		intel_post_plane_update(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e9e806d90eec4..c900bfbb7cc52 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1056,12 +1056,14 @@ struct intel_crtc_state {
 	struct intel_link_m_n dp_m2_n2;
 	bool has_drrs;
 
+	/* PSR is supported but might not be enabled due the lack of enabled planes */
 	bool has_psr;
 	bool has_psr2;
 	bool enable_psr2_sel_fetch;
 	bool req_psr2_sdp_prior_scanline;
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
+	struct drm_dp_vsc_sdp psr_vsc;
 
 	/*
 	 * Frequence the dpll for the port should run at. Differs from the
@@ -1525,7 +1527,6 @@ struct intel_psr {
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
-	struct drm_dp_vsc_sdp vsc;
 };
 
 struct intel_dp {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7559911c140a7..378008873e039 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1674,7 +1674,7 @@ void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
 {
 	vsc->sdp_type = DP_SDP_VSC;
 
-	if (intel_dp->psr.psr2_enabled) {
+	if (crtc_state->has_psr2) {
 		if (intel_dp->psr.colorimetry_support &&
 		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
 			/* [PSR2, +Colorimetry] */
@@ -1828,7 +1828,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		g4x_dp_set_clock(encoder, pipe_config);
 
 	intel_vrr_compute_config(pipe_config, conn_state);
-	intel_psr_compute_config(intel_dp, pipe_config);
+	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
 	intel_drrs_compute_config(intel_dp, pipe_config, output_bpp,
 				  constant_n);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
@@ -2888,7 +2888,7 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
 
 void intel_write_dp_vsc_sdp(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
-			    struct drm_dp_vsc_sdp *vsc)
+			    const struct drm_dp_vsc_sdp *vsc)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 94b568704b22b..3343c25916807 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -88,7 +88,7 @@ void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
 				  struct drm_dp_vsc_sdp *vsc);
 void intel_write_dp_vsc_sdp(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state,
-			    struct drm_dp_vsc_sdp *vsc);
+			    const struct drm_dp_vsc_sdp *vsc);
 void intel_dp_set_infoframes(struct intel_encoder *encoder, bool enable,
 			     const struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 868e5205dd09e..19a96d3c4acf4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -950,7 +950,8 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 }
 
 void intel_psr_compute_config(struct intel_dp *intel_dp,
-			      struct intel_crtc_state *crtc_state)
+			      struct intel_crtc_state *crtc_state,
+			      struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	const struct drm_display_mode *adjusted_mode =
@@ -1002,7 +1003,10 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 
 	crtc_state->has_psr = true;
 	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
+
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
+	intel_dp_compute_psr_vsc_sdp(intel_dp, crtc_state, conn_state,
+				     &crtc_state->psr_vsc);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
@@ -1182,8 +1186,7 @@ static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 }
 
 static void intel_psr_enable_locked(struct intel_dp *intel_dp,
-				    const struct intel_crtc_state *crtc_state,
-				    const struct drm_connector_state *conn_state)
+				    const struct intel_crtc_state *crtc_state)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1210,9 +1213,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 
 	drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
 		    intel_dp->psr.psr2_enabled ? "2" : "1");
-	intel_dp_compute_psr_vsc_sdp(intel_dp, crtc_state, conn_state,
-				     &intel_dp->psr.vsc);
-	intel_write_dp_vsc_sdp(encoder, crtc_state, &intel_dp->psr.vsc);
+	intel_write_dp_vsc_sdp(encoder, crtc_state, &crtc_state->psr_vsc);
 	intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
 	intel_psr_enable_sink(intel_dp);
 	intel_psr_enable_source(intel_dp);
@@ -1222,33 +1223,6 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	intel_psr_activate(intel_dp);
 }
 
-/**
- * intel_psr_enable - Enable PSR
- * @intel_dp: Intel DP
- * @crtc_state: new CRTC state
- * @conn_state: new CONNECTOR state
- *
- * This function can only be called after the pipe is fully trained and enabled.
- */
-void intel_psr_enable(struct intel_dp *intel_dp,
-		      const struct intel_crtc_state *crtc_state,
-		      const struct drm_connector_state *conn_state)
-{
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-
-	if (!CAN_PSR(intel_dp))
-		return;
-
-	if (!crtc_state->has_psr)
-		return;
-
-	drm_WARN_ON(&dev_priv->drm, dev_priv->drrs.dp);
-
-	mutex_lock(&intel_dp->psr.lock);
-	intel_psr_enable_locked(intel_dp, crtc_state, conn_state);
-	mutex_unlock(&intel_dp->psr.lock);
-}
-
 static void intel_psr_exit(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1734,48 +1708,92 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	return 0;
 }
 
-/**
- * intel_psr_update - Update PSR state
- * @intel_dp: Intel DP
- * @crtc_state: new CRTC state
- * @conn_state: new CONNECTOR state
- *
- * This functions will update PSR states, disabling, enabling or switching PSR
- * version when executing fastsets. For full modeset, intel_psr_disable() and
- * intel_psr_enable() should be called instead.
- */
-void intel_psr_update(struct intel_dp *intel_dp,
-		      const struct intel_crtc_state *crtc_state,
-		      const struct drm_connector_state *conn_state)
+static void _intel_psr_pre_plane_update(const struct intel_atomic_state *state,
+					const struct intel_crtc_state *crtc_state)
 {
-	struct intel_psr *psr = &intel_dp->psr;
-	bool enable, psr2_enable;
+	struct intel_encoder *encoder;
 
-	if (!CAN_PSR(intel_dp))
+	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
+					     crtc_state->uapi.encoder_mask) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+		struct intel_psr *psr = &intel_dp->psr;
+		bool needs_to_disable = false;
+
+		mutex_lock(&psr->lock);
+
+		/*
+		 * Reasons to disable:
+		 * - PSR disabled in new state
+		 * - All planes will go inactive
+		 * - Changing between PSR versions
+		 */
+		needs_to_disable |= !crtc_state->has_psr;
+		needs_to_disable |= !crtc_state->active_planes;
+		needs_to_disable |= crtc_state->has_psr2 != psr->psr2_enabled;
+
+		if (psr->enabled && needs_to_disable)
+			intel_psr_disable_locked(intel_dp);
+
+		mutex_unlock(&psr->lock);
+	}
+}
+
+void intel_psr_pre_plane_update(const struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	int i;
+
+	if (!HAS_PSR(dev_priv))
 		return;
 
-	mutex_lock(&intel_dp->psr.lock);
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i)
+		_intel_psr_pre_plane_update(state, crtc_state);
+}
 
-	enable = crtc_state->has_psr;
-	psr2_enable = crtc_state->has_psr2;
+static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
+					 const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_encoder *encoder;
+
+	if (!crtc_state->has_psr)
+		return;
+
+	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
+					     crtc_state->uapi.encoder_mask) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+		struct intel_psr *psr = &intel_dp->psr;
+
+		mutex_lock(&psr->lock);
+
+		drm_WARN_ON(&dev_priv->drm, psr->enabled && !crtc_state->active_planes);
+
+		/* Only enable if there is active planes */
+		if (!psr->enabled && crtc_state->active_planes)
+			intel_psr_enable_locked(intel_dp, crtc_state);
 
-	if (enable == psr->enabled && psr2_enable == psr->psr2_enabled &&
-	    crtc_state->enable_psr2_sel_fetch == psr->psr2_sel_fetch_enabled) {
 		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
 		if (crtc_state->crc_enabled && psr->enabled)
 			psr_force_hw_tracking_exit(intel_dp);
 
-		goto unlock;
+		mutex_unlock(&psr->lock);
 	}
+}
 
-	if (psr->enabled)
-		intel_psr_disable_locked(intel_dp);
+void intel_psr_post_plane_update(const struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	int i;
 
-	if (enable)
-		intel_psr_enable_locked(intel_dp, crtc_state, conn_state);
+	if (!HAS_PSR(dev_priv))
+		return;
 
-unlock:
-	mutex_unlock(&intel_dp->psr.lock);
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i)
+		_intel_psr_post_plane_update(state, crtc_state);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index e502964697c62..facffbacd3575 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -20,14 +20,10 @@ struct intel_plane;
 struct intel_encoder;
 
 void intel_psr_init_dpcd(struct intel_dp *intel_dp);
-void intel_psr_enable(struct intel_dp *intel_dp,
-		      const struct intel_crtc_state *crtc_state,
-		      const struct drm_connector_state *conn_state);
+void intel_psr_pre_plane_update(const struct intel_atomic_state *state);
+void intel_psr_post_plane_update(const struct intel_atomic_state *state);
 void intel_psr_disable(struct intel_dp *intel_dp,
 		       const struct intel_crtc_state *old_crtc_state);
-void intel_psr_update(struct intel_dp *intel_dp,
-		      const struct intel_crtc_state *crtc_state,
-		      const struct drm_connector_state *conn_state);
 int intel_psr_debug_set(struct intel_dp *intel_dp, u64 value);
 void intel_psr_invalidate(struct drm_i915_private *dev_priv,
 			  unsigned frontbuffer_bits,
@@ -37,7 +33,8 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
 		     enum fb_op_origin origin);
 void intel_psr_init(struct intel_dp *intel_dp);
 void intel_psr_compute_config(struct intel_dp *intel_dp,
-			      struct intel_crtc_state *crtc_state);
+			      struct intel_crtc_state *crtc_state,
+			      struct drm_connector_state *conn_state);
 void intel_psr_get_config(struct intel_encoder *encoder,
 			  struct intel_crtc_state *pipe_config);
 void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir);
-- 
2.33.0

