Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1416E42E9E1
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 09:16:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0BE06ECDF;
	Fri, 15 Oct 2021 07:16:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EED56ECDF
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 07:16:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="288732331"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="288732331"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 00:16:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="564213528"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 15 Oct 2021 00:16:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 10:16:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>,
	Jani Nikula <jani.nikula@intel.com>
Date: Fri, 15 Oct 2021 10:16:20 +0300
Message-Id: <20211015071625.593-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015071625.593-1-ville.syrjala@linux.intel.com>
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/9] drm/i915: Move LPT PCH readout code
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

Nuke the hsw_get_ddi_port_state() eyesore by putting the
readout code into intel_pch_display.c, and calling it directly
from hsw_crt_get_config().

Cc: Dave Airlie <airlied@redhat.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      |  2 +
 drivers/gpu/drm/i915/display/intel_display.c  | 46 ++-----------------
 drivers/gpu/drm/i915/display/intel_display.h  |  2 +
 .../gpu/drm/i915/display/intel_pch_display.c  | 18 ++++++++
 .../gpu/drm/i915/display/intel_pch_display.h  |  1 +
 5 files changed, 26 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 4038ae342ea1..03cfae46f92f 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -147,6 +147,8 @@ static void hsw_crt_get_config(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
+	lpt_pch_get_config(pipe_config);
+
 	hsw_ddi_get_config(encoder, pipe_config);
 
 	pipe_config->hw.adjusted_mode.flags &= ~(DRM_MODE_FLAG_PHSYNC |
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2ee02c16bd1c..8f65b8b6a306 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4090,8 +4090,8 @@ void intel_dp_get_m_n(struct intel_crtc *crtc,
 					     &pipe_config->dp_m2_n2);
 }
 
-static void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
-				   struct intel_crtc_state *pipe_config)
+void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
+			    struct intel_crtc_state *pipe_config)
 {
 	intel_cpu_transcoder_get_m_n(crtc, pipe_config->cpu_transcoder,
 				     &pipe_config->fdi_m_n, NULL);
@@ -4486,45 +4486,6 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 	return transcoder_is_dsi(pipe_config->cpu_transcoder);
 }
 
-static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
-				   struct intel_crtc_state *pipe_config)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
-	enum port port;
-	u32 tmp;
-
-	if (transcoder_is_dsi(cpu_transcoder)) {
-		port = (cpu_transcoder == TRANSCODER_DSI_A) ?
-						PORT_A : PORT_B;
-	} else {
-		tmp = intel_de_read(dev_priv,
-				    TRANS_DDI_FUNC_CTL(cpu_transcoder));
-		if (!(tmp & TRANS_DDI_FUNC_ENABLE))
-			return;
-		if (DISPLAY_VER(dev_priv) >= 12)
-			port = TGL_TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);
-		else
-			port = TRANS_DDI_FUNC_CTL_VAL_TO_PORT(tmp);
-	}
-
-	/*
-	 * Haswell has only FDI/PCH transcoder A. It is which is connected to
-	 * DDI E. So just check whether this pipe is wired to DDI E and whether
-	 * the PCH transcoder is on.
-	 */
-	if (DISPLAY_VER(dev_priv) < 9 &&
-	    (port == PORT_E) && intel_de_read(dev_priv, LPT_TRANSCONF) & TRANS_ENABLE) {
-		pipe_config->has_pch_encoder = true;
-
-		tmp = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
-		pipe_config->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
-					  FDI_DP_PORT_WIDTH_SHIFT) + 1;
-
-		ilk_get_fdi_m_n_config(crtc, pipe_config);
-	}
-}
-
 static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 				struct intel_crtc_state *pipe_config)
 {
@@ -4562,8 +4523,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		/* we cannot read out most state, so don't bother.. */
 		pipe_config->quirks |= PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE;
 	} else if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
-	    DISPLAY_VER(dev_priv) >= 11) {
-		hsw_get_ddi_port_state(crtc, pipe_config);
+		   DISPLAY_VER(dev_priv) >= 11) {
 		intel_get_transcoder_timings(crtc, pipe_config);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 93c84f2174b5..5bc8d8913178 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -584,6 +584,8 @@ void intel_dp_get_m_n(struct intel_crtc *crtc,
 		      struct intel_crtc_state *pipe_config);
 void intel_dp_set_m_n(const struct intel_crtc_state *crtc_state,
 		      enum link_m_n_set m_n);
+void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
+			    struct intel_crtc_state *pipe_config);
 int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
 
 bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 50995c4f2aaa..df7195ed1aaa 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -366,3 +366,21 @@ void lpt_pch_enable(struct intel_atomic_state *state,
 
 	lpt_enable_pch_transcoder(dev_priv, cpu_transcoder);
 }
+
+void lpt_pch_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	u32 tmp;
+
+	if ((intel_de_read(dev_priv, LPT_TRANSCONF) & TRANS_ENABLE) == 0)
+		return;
+
+	crtc_state->has_pch_encoder = true;
+
+	tmp = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
+	crtc_state->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
+				 FDI_DP_PORT_WIDTH_SHIFT) + 1;
+
+	ilk_get_fdi_m_n_config(crtc, crtc_state);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.h b/drivers/gpu/drm/i915/display/intel_pch_display.h
index 7f9df2c13cf3..e0ff331c0bc6 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.h
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.h
@@ -18,5 +18,6 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv);
 void lpt_pch_enable(struct intel_atomic_state *state,
 		    struct intel_crtc *crtc);
+void lpt_pch_get_config(struct intel_crtc_state *crtc_state);
 
 #endif
-- 
2.32.0

