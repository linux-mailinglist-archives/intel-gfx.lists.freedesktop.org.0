Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0794095A2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 16:44:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 578416ECAB;
	Mon, 13 Sep 2021 14:44:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A87FE6ECAB
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 14:44:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="221361349"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="221361349"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 07:44:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="507330387"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 13 Sep 2021 07:44:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Sep 2021 17:44:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Mon, 13 Sep 2021 17:44:25 +0300
Message-Id: <20210913144440.23008-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/16] Revert "drm/i915/display: Disable audio,
 DRRS and PSR before planes"
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

Disabling planes in the middle of the modeset seuqnece does not make
sense since userspace can anyway disable planes before the modeset
even starts. So when the modeset seuqence starts the set of enabled
planes is entirely arbitrary. Trying to sprinkle the plane disabling
into the modeset sequence just means more randomness and potential
for hard to reproduce bugs.

So it makes most sense to just disable all planes first so that the
rest of the modeset sequence remains identical regardless of which
planes happen to be enabled by userspace at the time.

This reverts commit 84030adb9e27d202a66022488bf0349a8bd45213.

Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 30 +++++++------------
 drivers/gpu/drm/i915/display/intel_display.c  | 24 ---------------
 .../drm/i915/display/intel_display_types.h    |  4 ---
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 14 ++-------
 4 files changed, 13 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 23ef291f7b30..c1fd7cbb40e1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3164,6 +3164,12 @@ static void intel_disable_ddi_dp(struct intel_atomic_state *state,
 
 	intel_dp->link_trained = false;
 
+	if (old_crtc_state->has_audio)
+		intel_audio_codec_disable(encoder,
+					  old_crtc_state, old_conn_state);
+
+	intel_drrs_disable(intel_dp, old_crtc_state);
+	intel_psr_disable(intel_dp, old_crtc_state);
 	intel_edp_backlight_off(old_conn_state);
 	/* Disable the decompression in DP Sink */
 	intel_dp_sink_set_decompression_state(intel_dp, old_crtc_state,
@@ -3181,6 +3187,10 @@ static void intel_disable_ddi_hdmi(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = old_conn_state->connector;
 
+	if (old_crtc_state->has_audio)
+		intel_audio_codec_disable(encoder,
+					  old_crtc_state, old_conn_state);
+
 	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
 					       false, false))
 		drm_dbg_kms(&i915->drm,
@@ -3188,25 +3198,6 @@ static void intel_disable_ddi_hdmi(struct intel_atomic_state *state,
 			    connector->base.id, connector->name);
 }
 
-static void intel_pre_disable_ddi(struct intel_atomic_state *state,
-				  struct intel_encoder *encoder,
-				  const struct intel_crtc_state *old_crtc_state,
-				  const struct drm_connector_state *old_conn_state)
-{
-	struct intel_dp *intel_dp;
-
-	if (old_crtc_state->has_audio)
-		intel_audio_codec_disable(encoder, old_crtc_state,
-					  old_conn_state);
-
-	if (intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_HDMI))
-		return;
-
-	intel_dp = enc_to_intel_dp(encoder);
-	intel_drrs_disable(intel_dp, old_crtc_state);
-	intel_psr_disable(intel_dp, old_crtc_state);
-}
-
 static void intel_disable_ddi(struct intel_atomic_state *state,
 			      struct intel_encoder *encoder,
 			      const struct intel_crtc_state *old_crtc_state,
@@ -4541,7 +4532,6 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder->enable = intel_enable_ddi;
 	encoder->pre_pll_enable = intel_ddi_pre_pll_enable;
 	encoder->pre_enable = intel_ddi_pre_enable;
-	encoder->pre_disable = intel_pre_disable_ddi;
 	encoder->disable = intel_disable_ddi;
 	encoder->post_disable = intel_ddi_post_disable;
 	encoder->update_pipe = intel_ddi_update_pipe;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a7ca38613f89..cd150512d275 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2723,28 +2723,6 @@ static void intel_encoders_enable(struct intel_atomic_state *state,
 	}
 }
 
-static void intel_encoders_pre_disable(struct intel_atomic_state *state,
-				       struct intel_crtc *crtc)
-{
-	const struct intel_crtc_state *old_crtc_state =
-		intel_atomic_get_old_crtc_state(state, crtc);
-	const struct drm_connector_state *old_conn_state;
-	struct drm_connector *conn;
-	int i;
-
-	for_each_old_connector_in_state(&state->base, conn, old_conn_state, i) {
-		struct intel_encoder *encoder =
-			to_intel_encoder(old_conn_state->best_encoder);
-
-		if (old_conn_state->crtc != &crtc->base)
-			continue;
-
-		if (encoder->pre_disable)
-			encoder->pre_disable(state, encoder, old_crtc_state,
-					     old_conn_state);
-	}
-}
-
 static void intel_encoders_disable(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
@@ -9807,8 +9785,6 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 
 	drm_WARN_ON(&dev_priv->drm, old_crtc_state->bigjoiner_slave);
 
-	intel_encoders_pre_disable(state, crtc);
-
 	intel_crtc_disable_planes(state, crtc);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e9e806d90eec..7d852affead1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -196,10 +196,6 @@ struct intel_encoder {
 	void (*update_complete)(struct intel_atomic_state *,
 				struct intel_encoder *,
 				struct intel_crtc *);
-	void (*pre_disable)(struct intel_atomic_state *,
-			    struct intel_encoder *,
-			    const struct intel_crtc_state *,
-			    const struct drm_connector_state *);
 	void (*disable)(struct intel_atomic_state *,
 			struct intel_encoder *,
 			const struct intel_crtc_state *,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index d104441344c0..914bea983a28 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -348,16 +348,6 @@ static void wait_for_act_sent(struct intel_encoder *encoder,
 	drm_dp_check_act_status(&intel_dp->mst_mgr);
 }
 
-static void intel_mst_pre_disable_dp(struct intel_atomic_state *state,
-				     struct intel_encoder *encoder,
-				     const struct intel_crtc_state *old_crtc_state,
-				     const struct drm_connector_state *old_conn_state)
-{
-	if (old_crtc_state->has_audio)
-		intel_audio_codec_disable(encoder, old_crtc_state,
-					  old_conn_state);
-}
-
 static void intel_mst_disable_dp(struct intel_atomic_state *state,
 				 struct intel_encoder *encoder,
 				 const struct intel_crtc_state *old_crtc_state,
@@ -382,6 +372,9 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "failed to update payload %d\n", ret);
 	}
+	if (old_crtc_state->has_audio)
+		intel_audio_codec_disable(encoder,
+					  old_crtc_state, old_conn_state);
 }
 
 static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
@@ -905,7 +898,6 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
 
 	intel_encoder->compute_config = intel_dp_mst_compute_config;
 	intel_encoder->compute_config_late = intel_dp_mst_compute_config_late;
-	intel_encoder->pre_disable = intel_mst_pre_disable_dp;
 	intel_encoder->disable = intel_mst_disable_dp;
 	intel_encoder->post_disable = intel_mst_post_disable_dp;
 	intel_encoder->update_pipe = intel_ddi_update_pipe;
-- 
2.32.0

