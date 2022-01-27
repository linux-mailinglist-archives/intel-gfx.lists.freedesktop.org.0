Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B2949DE08
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 10:33:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C240B10EF97;
	Thu, 27 Jan 2022 09:33:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC5AD10EFC5
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 09:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643276002; x=1674812002;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=oGKlxFAqgxSLVBCGa2OUS++a1/O+udGg6QOUHpwqK3g=;
 b=mEFN2dCTxThCfNwDPKPlpTCMSrqzx8hvrT2GlrIpUw5TYpFmaB6QOhEE
 ku0mIqhEUICzNA1+9W+MoGvOOe/6GYyk20rq9tma12ZwHQryrM6+UioaM
 /VltXdxxPRuNlX0vrnJVxJL2q4b1qGxyxsnojItyKDnvVBB37Jh/VZNxb
 W+wpnNavRkxLBy4pT+FW4PJa7nT0Ldahu5b0TsPMaV9DvuEAh+u6EqwsB
 ajbB+jfjOBf5wzFDDt8M6ZlVU/PDQxNXz6CwvBjhsq9joU9KCQH+nSbNB
 8PX8mIPkx11RRYMbu21PFiYEuzw/uquJCQdf1qe4tof/a89ala+xlLI+o Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="227472898"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="227472898"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 01:33:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="618266804"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by FMSMGA003.fm.intel.com with SMTP; 27 Jan 2022 01:33:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 11:33:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 11:32:54 +0200
Message-Id: <20220127093303.17309-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/14] drm/i915: Make M/N set/get a bit more
 direct
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

Throw out the middle-men (dp_{get/set}_m_n()) and just call
the cpu/pch transcoder functions directly. Let's us nuke
this enum link_m_n_set stuff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  19 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  16 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 189 +++++++++---------
 drivers/gpu/drm/i915/display/intel_display.h  |  23 ++-
 .../drm/i915/display/intel_display_types.h    |  19 --
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |   7 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   6 +-
 8 files changed, 153 insertions(+), 130 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index f37677df6ebf..da2b59d990bb 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -100,6 +100,23 @@ void g4x_dp_set_clock(struct intel_encoder *encoder,
 	}
 }
 
+static void g4x_dp_get_m_n(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (crtc_state->has_pch_encoder) {
+		intel_pch_transcoder_get_m1_n1(crtc, &crtc_state->dp_m_n);
+		intel_pch_transcoder_get_m2_n2(crtc, &crtc_state->dp_m2_n2);
+	} else {
+		enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+		intel_cpu_transcoder_get_m1_n1(crtc, cpu_transcoder,
+					       &crtc_state->dp_m_n);
+		intel_cpu_transcoder_get_m2_n2(crtc, cpu_transcoder,
+					       &crtc_state->dp_m2_n2);
+	}
+}
+
 static void intel_dp_prepare(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *pipe_config)
 {
@@ -384,7 +401,7 @@ static void intel_dp_get_config(struct intel_encoder *encoder,
 	pipe_config->lane_count =
 		((tmp & DP_PORT_WIDTH_MASK) >> DP_PORT_WIDTH_SHIFT) + 1;
 
-	intel_dp_get_m_n(crtc, pipe_config);
+	g4x_dp_get_m_n(pipe_config);
 
 	if (port == PORT_A) {
 		if ((intel_de_read(dev_priv, DP_A) & DP_PLL_FREQ_MASK) == DP_PLL_FREQ_162MHZ)
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ca8becb07e45..9bc916d36bd2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2498,6 +2498,8 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				    const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (DISPLAY_VER(dev_priv) >= 12)
 		tgl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
@@ -2510,7 +2512,10 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
 		intel_ddi_set_dp_msa(crtc_state, conn_state);
 
-		intel_dp_set_m_n(crtc_state, M1_N1);
+		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
+					       &crtc_state->dp_m_n);
+		intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder,
+					       &crtc_state->dp_m2_n2);
 	}
 }
 
@@ -3358,7 +3363,6 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 			pipe_config->output_types |= BIT(INTEL_OUTPUT_DP);
 		pipe_config->lane_count =
 			((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
-		intel_dp_get_m_n(crtc, pipe_config);
 
 		if (DISPLAY_VER(dev_priv) >= 11) {
 			i915_reg_t dp_tp_ctl = dp_tp_ctl_reg(encoder, pipe_config);
@@ -3372,6 +3376,11 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 				    pipe_config->fec_enable);
 		}
 
+		intel_cpu_transcoder_get_m1_n1(crtc, cpu_transcoder,
+					       &pipe_config->dp_m_n);
+		intel_cpu_transcoder_get_m2_n2(crtc, cpu_transcoder,
+					       &pipe_config->dp_m2_n2);
+
 		if (dig_port->lspcon.active && dig_port->dp.has_hdmi_sink)
 			pipe_config->infoframes.enable |=
 				intel_lspcon_infoframes_enabled(encoder, pipe_config);
@@ -3395,7 +3404,8 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 			pipe_config->mst_master_transcoder =
 					REG_FIELD_GET(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, temp);
 
-		intel_dp_get_m_n(crtc, pipe_config);
+		intel_cpu_transcoder_get_m1_n1(crtc, cpu_transcoder,
+					       &pipe_config->dp_m_n);
 
 		pipe_config->infoframes.enable |=
 			intel_hdmi_infoframes_enabled(encoder, pipe_config);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 75de794185b2..3b40a0b0b79e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -118,9 +118,10 @@
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
-static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
-					 const struct intel_link_m_n *m_n,
-					 const struct intel_link_m_n *m2_n2);
+static void intel_pch_transcoder_set_m1_n1(struct intel_crtc *crtc,
+					   const struct intel_link_m_n *m_n);
+static void intel_pch_transcoder_set_m2_n2(struct intel_crtc *crtc,
+					   const struct intel_link_m_n *m_n);
 static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
 static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state);
 static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
@@ -1817,6 +1818,7 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	enum pipe pipe = crtc->pipe;
 
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
@@ -1835,15 +1837,26 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
 
-	if (intel_crtc_has_dp_encoder(new_crtc_state))
-		intel_dp_set_m_n(new_crtc_state, M1_N1);
+	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
+		if (new_crtc_state->has_pch_encoder) {
+			intel_pch_transcoder_set_m1_n1(crtc,
+						       &new_crtc_state->dp_m_n);
+			intel_pch_transcoder_set_m2_n2(crtc,
+						       &new_crtc_state->dp_m2_n2);
+		} else {
+			intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
+						       &new_crtc_state->dp_m_n);
+			intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder,
+						       &new_crtc_state->dp_m2_n2);
+		}
+	}
 
 	intel_set_transcoder_timings(new_crtc_state);
 	intel_set_pipe_src_size(new_crtc_state);
 
 	if (new_crtc_state->has_pch_encoder)
-		intel_cpu_transcoder_set_m_n(new_crtc_state,
-					     &new_crtc_state->fdi_m_n, NULL);
+		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
+					       &new_crtc_state->fdi_m_n);
 
 	ilk_set_pipeconf(new_crtc_state);
 
@@ -2009,8 +2022,8 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 			       crtc_state->pixel_multiplier - 1);
 
 	if (crtc_state->has_pch_encoder)
-		intel_cpu_transcoder_set_m_n(crtc_state,
-					     &crtc_state->fdi_m_n, NULL);
+		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
+					       &crtc_state->fdi_m_n);
 
 	hsw_set_frame_start_delay(crtc_state);
 
@@ -2444,13 +2457,18 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	enum pipe pipe = crtc->pipe;
 
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
 
-	if (intel_crtc_has_dp_encoder(new_crtc_state))
-		intel_dp_set_m_n(new_crtc_state, M1_N1);
+	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
+		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
+					       &new_crtc_state->dp_m_n);
+		intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder,
+					       &new_crtc_state->dp_m2_n2);
+	}
 
 	intel_set_transcoder_timings(new_crtc_state);
 	intel_set_pipe_src_size(new_crtc_state);
@@ -2496,13 +2514,15 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	enum pipe pipe = crtc->pipe;
 
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
 
 	if (intel_crtc_has_dp_encoder(new_crtc_state))
-		intel_dp_set_m_n(new_crtc_state, M1_N1);
+		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
+					       &new_crtc_state->dp_m_n);
 
 	intel_set_transcoder_timings(new_crtc_state);
 	intel_set_pipe_src_size(new_crtc_state);
@@ -3124,10 +3144,9 @@ static void intel_set_m_n(struct drm_i915_private *i915,
 	intel_de_write(i915, link_n_reg, m_n->link_n);
 }
 
-static void intel_pch_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
-					 const struct intel_link_m_n *m_n)
+static void intel_pch_transcoder_set_m1_n1(struct intel_crtc *crtc,
+					   const struct intel_link_m_n *m_n)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
@@ -3136,73 +3155,55 @@ static void intel_pch_transcoder_set_m_n(const struct intel_crtc_state *crtc_sta
 		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
 }
 
+static void intel_pch_transcoder_set_m2_n2(struct intel_crtc *crtc,
+					   const struct intel_link_m_n *m_n)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+
+	intel_set_m_n(dev_priv, m_n,
+		      PCH_TRANS_DATA_M2(pipe), PCH_TRANS_DATA_N2(pipe),
+		      PCH_TRANS_LINK_M2(pipe), PCH_TRANS_LINK_N2(pipe));
+}
+
 static bool transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
-				 enum transcoder transcoder)
+				 enum transcoder cpu_transcoder)
 {
 	if (IS_HASWELL(dev_priv))
-		return transcoder == TRANSCODER_EDP;
+		return cpu_transcoder == TRANSCODER_EDP;
 
-	/*
-	 * Strictly speaking some registers are available before
-	 * gen7, but we only support DRRS on gen7+
-	 */
-	return DISPLAY_VER(dev_priv) == 7 || IS_CHERRYVIEW(dev_priv);
+	return IS_DISPLAY_VER(dev_priv, 5, 7) || IS_CHERRYVIEW(dev_priv);
 }
 
-static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
-					 const struct intel_link_m_n *m_n,
-					 const struct intel_link_m_n *m2_n2)
+void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
+				    enum transcoder cpu_transcoder,
+				    const struct intel_link_m_n *m_n)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
-	enum transcoder transcoder = crtc_state->cpu_transcoder;
 
-	if (DISPLAY_VER(dev_priv) >= 5) {
+	if (DISPLAY_VER(dev_priv) >= 5)
 		intel_set_m_n(dev_priv, m_n,
-			      PIPE_DATA_M1(transcoder), PIPE_DATA_N1(transcoder),
-			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
-		/*
-		 *  M2_N2 registers are set only if DRRS is supported
-		 * (to make sure the registers are not unnecessarily accessed).
-		 */
-		if (m2_n2 && crtc_state->has_drrs &&
-		    transcoder_has_m2_n2(dev_priv, transcoder)) {
-			intel_set_m_n(dev_priv, m2_n2,
-				      PIPE_DATA_M2(transcoder), PIPE_DATA_N2(transcoder),
-				      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
-		}
-	} else {
+			      PIPE_DATA_M1(cpu_transcoder), PIPE_DATA_N1(cpu_transcoder),
+			      PIPE_LINK_M1(cpu_transcoder), PIPE_LINK_N1(cpu_transcoder));
+	else
 		intel_set_m_n(dev_priv, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
 			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
-	}
 }
 
-void intel_dp_set_m_n(const struct intel_crtc_state *crtc_state, enum link_m_n_set m_n)
+void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
+				    enum transcoder cpu_transcoder,
+				    const struct intel_link_m_n *m_n)
 {
-	const struct intel_link_m_n *dp_m_n, *dp_m2_n2 = NULL;
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	if (m_n == M1_N1) {
-		dp_m_n = &crtc_state->dp_m_n;
-		dp_m2_n2 = &crtc_state->dp_m2_n2;
-	} else if (m_n == M2_N2) {
-
-		/*
-		 * M2_N2 registers are not supported. Hence m2_n2 divider value
-		 * needs to be programmed into M1_N1.
-		 */
-		dp_m_n = &crtc_state->dp_m2_n2;
-	} else {
-		drm_err(&i915->drm, "Unsupported divider value\n");
+	if (!transcoder_has_m2_n2(dev_priv, cpu_transcoder))
 		return;
-	}
 
-	if (crtc_state->has_pch_encoder)
-		intel_pch_transcoder_set_m_n(crtc_state, &crtc_state->dp_m_n);
-	else
-		intel_cpu_transcoder_set_m_n(crtc_state, dp_m_n, dp_m2_n2);
+	intel_set_m_n(dev_priv, m_n,
+		      PIPE_DATA_M2(cpu_transcoder), PIPE_DATA_N2(cpu_transcoder),
+		      PIPE_LINK_M2(cpu_transcoder), PIPE_LINK_N2(cpu_transcoder));
 }
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
@@ -3872,11 +3873,10 @@ static void intel_get_m_n(struct drm_i915_private *i915,
 	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915, data_m_reg)) + 1;
 }
 
-static void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
-					 struct intel_link_m_n *m_n)
+void intel_pch_transcoder_get_m1_n1(struct intel_crtc *crtc,
+				    struct intel_link_m_n *m_n)
 {
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
 	intel_get_m_n(dev_priv, m_n,
@@ -3884,47 +3884,46 @@ static void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
 		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
 }
 
-static void intel_cpu_transcoder_get_m_n(struct intel_crtc *crtc,
-					 enum transcoder transcoder,
-					 struct intel_link_m_n *m_n,
-					 struct intel_link_m_n *m2_n2)
+void intel_pch_transcoder_get_m2_n2(struct intel_crtc *crtc,
+				    struct intel_link_m_n *m_n)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	if (DISPLAY_VER(dev_priv) >= 5) {
+	intel_get_m_n(dev_priv, m_n,
+		      PCH_TRANS_DATA_M2(pipe), PCH_TRANS_DATA_N2(pipe),
+		      PCH_TRANS_LINK_M2(pipe), PCH_TRANS_LINK_N2(pipe));
+}
+
+void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
+				    enum transcoder cpu_transcoder,
+				    struct intel_link_m_n *m_n)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+
+	if (DISPLAY_VER(dev_priv) >= 5)
 		intel_get_m_n(dev_priv, m_n,
-			      PIPE_DATA_M1(transcoder), PIPE_DATA_N1(transcoder),
-			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
-
-		if (m2_n2 && transcoder_has_m2_n2(dev_priv, transcoder)) {
-			intel_get_m_n(dev_priv, m2_n2,
-				      PIPE_DATA_M2(transcoder), PIPE_DATA_N2(transcoder),
-				      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
-		}
-	} else {
+			      PIPE_DATA_M1(cpu_transcoder), PIPE_DATA_N1(cpu_transcoder),
+			      PIPE_LINK_M1(cpu_transcoder), PIPE_LINK_N1(cpu_transcoder));
+	else
 		intel_get_m_n(dev_priv, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
 			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
-	}
 }
 
-void intel_dp_get_m_n(struct intel_crtc *crtc,
-		      struct intel_crtc_state *pipe_config)
+void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
+				    enum transcoder cpu_transcoder,
+				    struct intel_link_m_n *m_n)
 {
-	if (pipe_config->has_pch_encoder)
-		intel_pch_transcoder_get_m_n(crtc, &pipe_config->dp_m_n);
-	else
-		intel_cpu_transcoder_get_m_n(crtc, pipe_config->cpu_transcoder,
-					     &pipe_config->dp_m_n,
-					     &pipe_config->dp_m2_n2);
-}
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
-			    struct intel_crtc_state *pipe_config)
-{
-	intel_cpu_transcoder_get_m_n(crtc, pipe_config->cpu_transcoder,
-				     &pipe_config->fdi_m_n, NULL);
+	if (!transcoder_has_m2_n2(dev_priv, cpu_transcoder))
+		return;
+
+	intel_get_m_n(dev_priv, m_n,
+		      PIPE_DATA_M2(cpu_transcoder), PIPE_DATA_N2(cpu_transcoder),
+		      PIPE_LINK_M2(cpu_transcoder), PIPE_LINK_N2(cpu_transcoder));
 }
 
 static void ilk_get_pfit_pos_size(struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index a241007f5c82..090534eb4535 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -27,7 +27,6 @@
 
 #include <drm/drm_util.h>
 
-enum link_m_n_set;
 enum drm_scaling_filter;
 struct dpll;
 struct drm_connector;
@@ -554,6 +553,22 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 				bool bigjoiner);
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
+void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
+				    enum transcoder cpu_transcoder,
+				    const struct intel_link_m_n *m_n);
+void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
+				    enum transcoder cpu_transcoder,
+				    const struct intel_link_m_n *m_n);
+void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
+				    enum transcoder cpu_transcoder,
+				    struct intel_link_m_n *m_n);
+void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
+				    enum transcoder cpu_transcoder,
+				    struct intel_link_m_n *m_n);
+void intel_pch_transcoder_get_m1_n1(struct intel_crtc *crtc,
+				    struct intel_link_m_n *m_n);
+void intel_pch_transcoder_get_m2_n2(struct intel_crtc *crtc,
+				    struct intel_link_m_n *m_n);
 
 void intel_plane_destroy(struct drm_plane *plane);
 void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
@@ -605,12 +620,6 @@ bool intel_fuzzy_clock_check(int clock1, int clock2);
 
 void intel_display_prepare_reset(struct drm_i915_private *dev_priv);
 void intel_display_finish_reset(struct drm_i915_private *dev_priv);
-void intel_dp_get_m_n(struct intel_crtc *crtc,
-		      struct intel_crtc_state *pipe_config);
-void intel_dp_set_m_n(const struct intel_crtc_state *crtc_state,
-		      enum link_m_n_set m_n);
-void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
-			    struct intel_crtc_state *pipe_config);
 void i9xx_crtc_clock_get(struct intel_crtc *crtc,
 			 struct intel_crtc_state *pipe_config);
 int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6b107872ad39..60e15226a8cb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1445,25 +1445,6 @@ struct intel_hdmi {
 };
 
 struct intel_dp_mst_encoder;
-/*
- * enum link_m_n_set:
- *	When platform provides two set of M_N registers for dp, we can
- *	program them and switch between them incase of DRRS.
- *	But When only one such register is provided, we have to program the
- *	required divider value on that registers itself based on the DRRS state.
- *
- * M1_N1	: Program dp_m_n on M1_N1 registers
- *			  dp_m2_n2 on M2_N2 registers (If supported)
- *
- * M2_N2	: Program dp_m2_n2 on M1_N1 registers
- *			  M2_N2 registers are not supported
- */
-
-enum link_m_n_set {
-	/* Sets the m1_n1 and m2_n2 */
-	M1_N1 = 0,
-	M2_N2
-};
 
 struct intel_dp_compliance_data {
 	unsigned long edid;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b8bc7d397c81..95f9a5c03a47 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -472,6 +472,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_digital_port *dig_port = intel_mst->primary;
 	struct intel_dp *intel_dp = &dig_port->dp;
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
@@ -523,7 +524,8 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_set_dp_msa(pipe_config, conn_state);
 
-	intel_dp_set_m_n(pipe_config, M1_N1);
+	intel_cpu_transcoder_set_m1_n1(crtc, pipe_config->cpu_transcoder,
+				       &pipe_config->dp_m_n);
 }
 
 static void intel_mst_enable_dp(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 0cacdb174fd0..53f014b4436b 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -115,8 +115,11 @@ static void
 intel_drrs_set_refresh_rate_m_n(const struct intel_crtc_state *crtc_state,
 				enum drrs_refresh_rate_type refresh_type)
 {
-	intel_dp_set_m_n(crtc_state,
-			 refresh_type == DRRS_LOW_RR ? M2_N2 : M1_N1);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	intel_cpu_transcoder_set_m1_n1(crtc, crtc_state->cpu_transcoder,
+				       refresh_type == DRRS_LOW_RR ?
+				       &crtc_state->dp_m2_n2 : &crtc_state->dp_m_n);
 }
 
 static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 7ef2d40997b2..dd010be534a2 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -386,7 +386,8 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
 	crtc_state->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
 				 FDI_DP_PORT_WIDTH_SHIFT) + 1;
 
-	ilk_get_fdi_m_n_config(crtc, crtc_state);
+	intel_cpu_transcoder_get_m1_n1(crtc, crtc_state->cpu_transcoder,
+				       &crtc_state->fdi_m_n);
 
 	if (HAS_PCH_IBX(dev_priv)) {
 		/*
@@ -509,7 +510,8 @@ void lpt_pch_get_config(struct intel_crtc_state *crtc_state)
 	crtc_state->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
 				 FDI_DP_PORT_WIDTH_SHIFT) + 1;
 
-	ilk_get_fdi_m_n_config(crtc, crtc_state);
+	intel_cpu_transcoder_get_m1_n1(crtc, crtc_state->cpu_transcoder,
+				       &crtc_state->fdi_m_n);
 
 	crtc_state->hw.adjusted_mode.crtc_clock = lpt_get_iclkip(dev_priv);
 }
-- 
2.34.1

