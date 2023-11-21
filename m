Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0967F2576
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 06:44:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2318410E26B;
	Tue, 21 Nov 2023 05:43:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E2F110E26B
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 05:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700545437; x=1732081437;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4d/hY8WGGjRddwlavSegq561ZtP7z2nqVqktB7u3nw4=;
 b=jUK9GiJMhZOE+XFsYIAfgQwPMgSVG/3dciqQYNcdRdU2CpuXYIazw0V5
 GebRdH6I5wb6EcR9cYxI89kDgZf6RLzwX5x9Qq1QDqZSYr37YCjhKKC9r
 lgrJQsKWCZrzJ/bph6QyNoGWATgzBAxNbdfaxZGf0YTnVPZ2Rr65ckO7+
 k7heyduPWMWUnDBhG9gOGa4L0lyQG3hNGJhS1db5YsOPdu9qTgmBZrvTS
 vh73s3ku0c9ri3Z9yz0Sluc+ktAQ0CNA0ucOBMgEtppEBFe5b66j9i/Az
 e2TKn5LZof0cAxArnbuhkDLFDoKUZDcI8RHANEDGkLVvPnOJfVlyoPJtk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="394611865"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="394611865"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 21:43:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="760002181"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="760002181"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 20 Nov 2023 21:43:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Nov 2023 07:43:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Nov 2023 07:43:22 +0200
Message-ID: <20231121054324.9988-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
References: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/11] drm/i915: Hoist the
 encoder->audio_{enable, disable}() calls higher up
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Push the encoder->audio_{enable,disable}() calls out from the
encoder->{enable,disable}() hooks. Moving towards audio fastset.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c        |  2 -
 drivers/gpu/drm/i915/display/g4x_hdmi.c      | 10 ----
 drivers/gpu/drm/i915/display/intel_ddi.c     |  3 --
 drivers/gpu/drm/i915/display/intel_display.c | 49 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  4 --
 5 files changed, 49 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 96232af42db2..dfe0b07a122d 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -516,8 +516,6 @@ static void intel_disable_dp(struct intel_atomic_state *state,
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
-
 	intel_dp->link_trained = false;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 26a0981102ff..8096492b3fad 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -273,8 +273,6 @@ static void g4x_enable_hdmi(struct intel_atomic_state *state,
 			    const struct drm_connector_state *conn_state)
 {
 	g4x_hdmi_enable_port(encoder, pipe_config);
-
-	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void ibx_enable_hdmi(struct intel_atomic_state *state,
@@ -322,8 +320,6 @@ static void ibx_enable_hdmi(struct intel_atomic_state *state,
 		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
 		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
 	}
-
-	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void cpt_enable_hdmi(struct intel_atomic_state *state,
@@ -373,8 +369,6 @@ static void cpt_enable_hdmi(struct intel_atomic_state *state,
 		intel_de_rmw(dev_priv, TRANS_CHICKEN1(pipe),
 			     TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE, 0);
 	}
-
-	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void vlv_enable_hdmi(struct intel_atomic_state *state,
@@ -382,7 +376,6 @@ static void vlv_enable_hdmi(struct intel_atomic_state *state,
 			    const struct intel_crtc_state *pipe_config,
 			    const struct drm_connector_state *conn_state)
 {
-	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static void intel_disable_hdmi(struct intel_atomic_state *state,
@@ -449,8 +442,6 @@ static void g4x_disable_hdmi(struct intel_atomic_state *state,
 			     const struct intel_crtc_state *old_crtc_state,
 			     const struct drm_connector_state *old_conn_state)
 {
-	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
-
 	intel_disable_hdmi(state, encoder, old_crtc_state, old_conn_state);
 }
 
@@ -459,7 +450,6 @@ static void pch_disable_hdmi(struct intel_atomic_state *state,
 			     const struct intel_crtc_state *old_crtc_state,
 			     const struct drm_connector_state *old_conn_state)
 {
-	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
 }
 
 static void pch_post_disable_hdmi(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 06558fd8d1f1..38f28c480b38 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3359,7 +3359,6 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 
 	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
 
-	encoder->audio_enable(encoder, crtc_state, conn_state);
 }
 
 static void intel_disable_ddi_dp(struct intel_atomic_state *state,
@@ -3403,8 +3402,6 @@ static void intel_disable_ddi(struct intel_atomic_state *state,
 			      const struct intel_crtc_state *old_crtc_state,
 			      const struct drm_connector_state *old_conn_state)
 {
-	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
-
 	intel_tc_port_link_cancel_reset_work(enc_to_dig_port(encoder));
 
 	intel_hdcp_disable(to_intel_connector(old_conn_state->connector));
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8184930ff596..5d76b8129449 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -888,6 +888,48 @@ static bool needs_async_flip_vtd_wa(const struct intel_crtc_state *crtc_state)
 		(DISPLAY_VER(i915) == 9 || IS_BROADWELL(i915) || IS_HASWELL(i915));
 }
 
+static void intel_encoders_audio_enable(struct intel_atomic_state *state,
+					struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct drm_connector_state *conn_state;
+	struct drm_connector *conn;
+	int i;
+
+	for_each_new_connector_in_state(&state->base, conn, conn_state, i) {
+		struct intel_encoder *encoder =
+			to_intel_encoder(conn_state->best_encoder);
+
+		if (conn_state->crtc != &crtc->base)
+			continue;
+
+		if (encoder->audio_enable)
+			encoder->audio_enable(encoder, crtc_state, conn_state);
+	}
+}
+
+static void intel_encoders_audio_disable(struct intel_atomic_state *state,
+					 struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	const struct drm_connector_state *old_conn_state;
+	struct drm_connector *conn;
+	int i;
+
+	for_each_old_connector_in_state(&state->base, conn, old_conn_state, i) {
+		struct intel_encoder *encoder =
+			to_intel_encoder(old_conn_state->best_encoder);
+
+		if (old_conn_state->crtc != &crtc->base)
+			continue;
+
+		if (encoder->audio_disable)
+			encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
+	}
+}
+
 #define is_enabling(feature, old_crtc_state, new_crtc_state) \
 	((!(old_crtc_state)->feature || intel_crtc_needs_modeset(new_crtc_state)) && \
 	 (new_crtc_state)->feature)
@@ -1460,6 +1502,7 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
+	intel_encoders_audio_enable(state, crtc);
 
 	if (HAS_PCH_CPT(dev_priv))
 		intel_wait_for_pipe_scanline_moving(crtc);
@@ -1633,6 +1676,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
+	intel_encoders_audio_enable(state, crtc);
 
 	if (psl_clkgate_wa) {
 		intel_crtc_wait_for_next_vblank(crtc);
@@ -1684,6 +1728,7 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
 
+	intel_encoders_audio_disable(state, crtc);
 	intel_encoders_disable(state, crtc);
 
 	intel_crtc_vblank_off(old_crtc_state);
@@ -1718,6 +1763,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	 * Need care with mst->ddi interactions.
 	 */
 	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
+		intel_encoders_audio_disable(state, crtc);
 		intel_encoders_disable(state, crtc);
 		intel_encoders_post_disable(state, crtc);
 	}
@@ -1987,6 +2033,7 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 	intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
+	intel_encoders_audio_enable(state, crtc);
 }
 
 static void i9xx_crtc_enable(struct intel_atomic_state *state,
@@ -2028,6 +2075,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
+	intel_encoders_audio_enable(state, crtc);
 
 	/* prevents spurious underruns */
 	if (DISPLAY_VER(dev_priv) == 2)
@@ -2064,6 +2112,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) == 2)
 		intel_crtc_wait_for_next_vblank(crtc);
 
+	intel_encoders_audio_disable(state, crtc);
 	intel_encoders_disable(state, crtc);
 
 	intel_crtc_vblank_off(old_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 70646ea28e15..e461734af572 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -895,8 +895,6 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 	drm_dbg_kms(&i915->drm, "active links %d\n",
 		    intel_dp->active_mst_links);
 
-	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
-
 	intel_hdcp_disable(intel_mst->connector);
 
 	intel_dp_sink_disable_decompression(state, connector, old_crtc_state);
@@ -1142,8 +1140,6 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	intel_crtc_vblank_on(pipe_config);
 
 	intel_hdcp_enable(state, encoder, pipe_config, conn_state);
-
-	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
-- 
2.41.0

