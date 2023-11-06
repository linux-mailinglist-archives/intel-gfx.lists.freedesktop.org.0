Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D06F27E2EDE
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 22:19:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BFFE10E434;
	Mon,  6 Nov 2023 21:19:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B481910E437
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 21:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699305589; x=1730841589;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Zc8hXqDfeytya+UC6qI6EB1Vbvs1UvLr86tyUum1Nb4=;
 b=C3frZFJDDs17SrOpAft7cijiTiElO3AVuXK8AimMykqT3oagAL4dNs6J
 CBQCG2S12CJQfvldd2KVYNxNldlhaSsEvgMW9p9ZQ69IeNSHY1JjfIuk9
 JaJJGCPiUHMEUyDcI5x3K9h6AJ4Lyn3ifZDzQyB5BmB9Q0YbrykiBUoMt
 mE6/F9qma5ip4si8OC/Gwx2cuKfiMUwq+cERQ8vofTwDw7t2efPzlJa3E
 41Grp8W+Pr2cGJ5jgGGhFGEjSf3bTXkGWKyc5UX8Msqv7gMlG63RunT3r
 RUbnhJS4y20NKqtn4zNF8TeRKCoaxvjE1PFXN4Tqx8s3dLU425H0qyspk w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="10911561"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="10911561"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 13:19:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="755964280"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="755964280"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 06 Nov 2023 13:19:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Nov 2023 23:19:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 23:19:13 +0200
Message-ID: <20231106211915.13406-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/11] drm/i915: Hoist the
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Push he encoder->audio_{enable,disable}() calls out from the
encoder->{enable,disable}() hooks. Moving towards audio fastset.

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
index 2e4920d70105..97569423f430 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3266,7 +3266,6 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 
 	intel_hdcp_enable(state, encoder, crtc_state, conn_state);
 
-	encoder->audio_enable(encoder, crtc_state, conn_state);
 }
 
 static void intel_disable_ddi_dp(struct intel_atomic_state *state,
@@ -3308,8 +3307,6 @@ static void intel_disable_ddi(struct intel_atomic_state *state,
 			      const struct intel_crtc_state *old_crtc_state,
 			      const struct drm_connector_state *old_conn_state)
 {
-	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
-
 	intel_tc_port_link_cancel_reset_work(enc_to_dig_port(encoder));
 
 	intel_hdcp_disable(to_intel_connector(old_conn_state->connector));
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ec76006b1756..d606befa007c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -889,6 +889,48 @@ static bool needs_async_flip_vtd_wa(const struct intel_crtc_state *crtc_state)
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
@@ -1461,6 +1503,7 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
+	intel_encoders_audio_enable(state, crtc);
 
 	if (HAS_PCH_CPT(dev_priv))
 		intel_wait_for_pipe_scanline_moving(crtc);
@@ -1634,6 +1677,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
+	intel_encoders_audio_enable(state, crtc);
 
 	if (psl_clkgate_wa) {
 		intel_crtc_wait_for_next_vblank(crtc);
@@ -1685,6 +1729,7 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
 
+	intel_encoders_audio_disable(state, crtc);
 	intel_encoders_disable(state, crtc);
 
 	intel_crtc_vblank_off(old_crtc_state);
@@ -1719,6 +1764,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	 * Need care with mst->ddi interactions.
 	 */
 	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
+		intel_encoders_audio_disable(state, crtc);
 		intel_encoders_disable(state, crtc);
 		intel_encoders_post_disable(state, crtc);
 	}
@@ -1988,6 +2034,7 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 	intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
+	intel_encoders_audio_enable(state, crtc);
 }
 
 static void i9xx_crtc_enable(struct intel_atomic_state *state,
@@ -2029,6 +2076,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
+	intel_encoders_audio_enable(state, crtc);
 
 	/* prevents spurious underruns */
 	if (DISPLAY_VER(dev_priv) == 2)
@@ -2065,6 +2113,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) == 2)
 		intel_crtc_wait_for_next_vblank(crtc);
 
+	intel_encoders_audio_disable(state, crtc);
 	intel_encoders_disable(state, crtc);
 
 	intel_crtc_vblank_off(old_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 5f0ccab5ab1f..70ab93b3f141 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -608,8 +608,6 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 	drm_dbg_kms(&i915->drm, "active links %d\n",
 		    intel_dp->active_mst_links);
 
-	encoder->audio_disable(encoder, old_crtc_state, old_conn_state);
-
 	intel_hdcp_disable(intel_mst->connector);
 }
 
@@ -845,8 +843,6 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	intel_crtc_vblank_on(pipe_config);
 
 	intel_hdcp_enable(state, encoder, pipe_config, conn_state);
-
-	encoder->audio_enable(encoder, pipe_config, conn_state);
 }
 
 static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder *encoder,
-- 
2.41.0

