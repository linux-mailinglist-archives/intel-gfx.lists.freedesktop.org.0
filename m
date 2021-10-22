Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F28437585
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 12:33:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 493AF6ECFE;
	Fri, 22 Oct 2021 10:33:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B6346ECFE
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 10:33:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="209379907"
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="209379907"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 03:33:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; d="scan'208";a="445239482"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 22 Oct 2021 03:33:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Oct 2021 13:33:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Fri, 22 Oct 2021 13:32:57 +0300
Message-Id: <20211022103304.24164-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211022103304.24164-1-ville.syrjala@linux.intel.com>
References: <20211022103304.24164-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/9] Revert "drm/i915/display: Disable audio,
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

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 30 +++++++------------
 drivers/gpu/drm/i915/display/intel_display.c  | 24 ---------------
 .../drm/i915/display/intel_display_types.h    |  4 ---
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 14 ++-------
 4 files changed, 13 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ab52eab346fe..6c11992496f2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3061,6 +3061,12 @@ static void intel_disable_ddi_dp(struct intel_atomic_state *state,
 
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
@@ -3078,6 +3084,10 @@ static void intel_disable_ddi_hdmi(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = old_conn_state->connector;
 
+	if (old_crtc_state->has_audio)
+		intel_audio_codec_disable(encoder,
+					  old_crtc_state, old_conn_state);
+
 	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
 					       false, false))
 		drm_dbg_kms(&i915->drm,
@@ -3085,25 +3095,6 @@ static void intel_disable_ddi_hdmi(struct intel_atomic_state *state,
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
@@ -4437,7 +4428,6 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder->enable = intel_enable_ddi;
 	encoder->pre_pll_enable = intel_ddi_pre_pll_enable;
 	encoder->pre_enable = intel_ddi_pre_enable;
-	encoder->pre_disable = intel_pre_disable_ddi;
 	encoder->disable = intel_disable_ddi;
 	encoder->post_disable = intel_ddi_post_disable;
 	encoder->update_pipe = intel_ddi_update_pipe;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5201d6cdd5db..3d2a1cba78c1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1693,28 +1693,6 @@ static void intel_encoders_enable(struct intel_atomic_state *state,
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
@@ -8273,8 +8251,6 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 
 	drm_WARN_ON(&dev_priv->drm, old_crtc_state->bigjoiner_slave);
 
-	intel_encoders_pre_disable(state, crtc);
-
 	intel_crtc_disable_planes(state, crtc);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 85cb55034bb0..3568d33be096 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -194,10 +194,6 @@ struct intel_encoder {
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
index 0de0b4ff4d73..289a8a0a3a01 100644
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
@@ -916,7 +909,6 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
 
 	intel_encoder->compute_config = intel_dp_mst_compute_config;
 	intel_encoder->compute_config_late = intel_dp_mst_compute_config_late;
-	intel_encoder->pre_disable = intel_mst_pre_disable_dp;
 	intel_encoder->disable = intel_mst_disable_dp;
 	intel_encoder->post_disable = intel_mst_post_disable_dp;
 	intel_encoder->update_pipe = intel_ddi_update_pipe;
-- 
2.32.0

