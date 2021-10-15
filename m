Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECA342E9E0
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 09:16:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBC536E22B;
	Fri, 15 Oct 2021 07:16:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 153B76E22B
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 07:16:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="227760138"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="227760138"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 00:16:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="527879911"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 15 Oct 2021 00:16:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 10:16:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>,
	Jani Nikula <jani.nikula@intel.com>
Date: Fri, 15 Oct 2021 10:16:21 +0300
Message-Id: <20211015071625.593-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015071625.593-1-ville.syrjala@linux.intel.com>
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/9] drm/i915: Extract ilk_pch_get_config()
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

Pull the ilk+ PCH state readout into its own function and relocate
to the appropriate file.

The clock readout parts are perhaps a bit iffy since we depend
on the gmch DPLL readout code. But we can think about the clock
readout big picture later.

Cc: Dave Airlie <airlied@redhat.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 72 ++-----------------
 drivers/gpu/drm/i915/display/intel_display.h  |  3 +-
 .../gpu/drm/i915/display/intel_pch_display.c  | 68 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_pch_display.h  |  1 +
 4 files changed, 75 insertions(+), 69 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8f65b8b6a306..e8f15fb3ed07 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -113,11 +113,6 @@
 #include "skl_universal_plane.h"
 #include "vlv_sideband.h"
 
-static void i9xx_crtc_clock_get(struct intel_crtc *crtc,
-				struct intel_crtc_state *pipe_config);
-static void ilk_pch_clock_get(struct intel_crtc *crtc,
-			      struct intel_crtc_state *pipe_config);
-
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
 static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
@@ -4228,50 +4223,9 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	i9xx_get_pipe_color_config(pipe_config);
 	intel_color_get_config(pipe_config);
 
-	if (intel_de_read(dev_priv, PCH_TRANSCONF(crtc->pipe)) & TRANS_ENABLE) {
-		struct intel_shared_dpll *pll;
-		enum intel_dpll_id pll_id;
-		bool pll_active;
+	pipe_config->pixel_multiplier = 1;
 
-		pipe_config->has_pch_encoder = true;
-
-		tmp = intel_de_read(dev_priv, FDI_RX_CTL(crtc->pipe));
-		pipe_config->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
-					  FDI_DP_PORT_WIDTH_SHIFT) + 1;
-
-		ilk_get_fdi_m_n_config(crtc, pipe_config);
-
-		if (HAS_PCH_IBX(dev_priv)) {
-			/*
-			 * The pipe->pch transcoder and pch transcoder->pll
-			 * mapping is fixed.
-			 */
-			pll_id = (enum intel_dpll_id) crtc->pipe;
-		} else {
-			tmp = intel_de_read(dev_priv, PCH_DPLL_SEL);
-			if (tmp & TRANS_DPLLB_SEL(crtc->pipe))
-				pll_id = DPLL_ID_PCH_PLL_B;
-			else
-				pll_id= DPLL_ID_PCH_PLL_A;
-		}
-
-		pipe_config->shared_dpll =
-			intel_get_shared_dpll_by_id(dev_priv, pll_id);
-		pll = pipe_config->shared_dpll;
-
-		pll_active = intel_dpll_get_hw_state(dev_priv, pll,
-						     &pipe_config->dpll_hw_state);
-		drm_WARN_ON(dev, !pll_active);
-
-		tmp = pipe_config->dpll_hw_state.dpll;
-		pipe_config->pixel_multiplier =
-			((tmp & PLL_REF_SDVO_HDMI_MULTIPLIER_MASK)
-			 >> PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT) + 1;
-
-		ilk_pch_clock_get(crtc, pipe_config);
-	} else {
-		pipe_config->pixel_multiplier = 1;
-	}
+	ilk_pch_get_config(pipe_config);
 
 	intel_get_transcoder_timings(crtc, pipe_config);
 	intel_get_pipe_src_size(crtc, pipe_config);
@@ -4854,8 +4808,8 @@ static int i9xx_pll_refclk(struct drm_device *dev,
 }
 
 /* Returns the clock of the currently programmed mode of the given pipe. */
-static void i9xx_crtc_clock_get(struct intel_crtc *crtc,
-				struct intel_crtc_state *pipe_config)
+void i9xx_crtc_clock_get(struct intel_crtc *crtc,
+			 struct intel_crtc_state *pipe_config)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -4965,24 +4919,6 @@ int intel_dotclock_calculate(int link_freq,
 	return div_u64(mul_u32_u32(m_n->link_m, link_freq), m_n->link_n);
 }
 
-static void ilk_pch_clock_get(struct intel_crtc *crtc,
-			      struct intel_crtc_state *pipe_config)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-
-	/* read out port_clock from the DPLL */
-	i9xx_crtc_clock_get(crtc, pipe_config);
-
-	/*
-	 * In case there is an active pipe without active ports,
-	 * we may need some idea for the dotclock anyway.
-	 * Calculate one based on the FDI configuration.
-	 */
-	pipe_config->hw.adjusted_mode.crtc_clock =
-		intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, pipe_config),
-					 &pipe_config->fdi_m_n);
-}
-
 /* Returns the currently programmed mode of the given encoder. */
 struct drm_display_mode *
 intel_encoder_current_mode(struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 5bc8d8913178..c2efba7c6c17 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -586,8 +586,9 @@ void intel_dp_set_m_n(const struct intel_crtc_state *crtc_state,
 		      enum link_m_n_set m_n);
 void ilk_get_fdi_m_n_config(struct intel_crtc *crtc,
 			    struct intel_crtc_state *pipe_config);
+void i9xx_crtc_clock_get(struct intel_crtc *crtc,
+			 struct intel_crtc_state *pipe_config);
 int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
-
 bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state);
 void hsw_enable_ips(const struct intel_crtc_state *crtc_state);
 void hsw_disable_ips(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index df7195ed1aaa..f3edabdd0a4c 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -299,6 +299,74 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 	ilk_enable_pch_transcoder(crtc_state);
 }
 
+static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+
+	/* read out port_clock from the DPLL */
+	i9xx_crtc_clock_get(crtc, crtc_state);
+
+	/*
+	 * In case there is an active pipe without active ports,
+	 * we may need some idea for the dotclock anyway.
+	 * Calculate one based on the FDI configuration.
+	 */
+	crtc_state->hw.adjusted_mode.crtc_clock =
+		intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, crtc_state),
+					 &crtc_state->fdi_m_n);
+}
+
+void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_shared_dpll *pll;
+	enum pipe pipe = crtc->pipe;
+	enum intel_dpll_id pll_id;
+	bool pll_active;
+	u32 tmp;
+
+	if ((intel_de_read(dev_priv, PCH_TRANSCONF(pipe)) & TRANS_ENABLE) == 0)
+		return;
+
+	crtc_state->has_pch_encoder = true;
+
+	tmp = intel_de_read(dev_priv, FDI_RX_CTL(pipe));
+	crtc_state->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
+				 FDI_DP_PORT_WIDTH_SHIFT) + 1;
+
+	ilk_get_fdi_m_n_config(crtc, crtc_state);
+
+	if (HAS_PCH_IBX(dev_priv)) {
+		/*
+		 * The pipe->pch transcoder and pch transcoder->pll
+		 * mapping is fixed.
+		 */
+		pll_id = (enum intel_dpll_id) pipe;
+	} else {
+		tmp = intel_de_read(dev_priv, PCH_DPLL_SEL);
+		if (tmp & TRANS_DPLLB_SEL(pipe))
+			pll_id = DPLL_ID_PCH_PLL_B;
+		else
+			pll_id = DPLL_ID_PCH_PLL_A;
+	}
+
+	crtc_state->shared_dpll = intel_get_shared_dpll_by_id(dev_priv, pll_id);
+	pll = crtc_state->shared_dpll;
+
+	pll_active = intel_dpll_get_hw_state(dev_priv, pll,
+					     &crtc_state->dpll_hw_state);
+	drm_WARN_ON(&dev_priv->drm, !pll_active);
+
+	tmp = crtc_state->dpll_hw_state.dpll;
+	crtc_state->pixel_multiplier =
+		((tmp & PLL_REF_SDVO_HDMI_MULTIPLIER_MASK)
+		 >> PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT) + 1;
+
+	ilk_pch_clock_get(crtc_state);
+}
+
 static void lpt_enable_pch_transcoder(struct drm_i915_private *dev_priv,
 				      enum transcoder cpu_transcoder)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.h b/drivers/gpu/drm/i915/display/intel_pch_display.h
index e0ff331c0bc6..6e834fbebd64 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.h
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.h
@@ -14,6 +14,7 @@ struct intel_crtc_state;
 void ilk_disable_pch_transcoder(struct intel_crtc *crtc);
 void ilk_pch_enable(struct intel_atomic_state *state,
 		    struct intel_crtc *crtc);
+void ilk_pch_get_config(struct intel_crtc_state *crtc_state);
 
 void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv);
 void lpt_pch_enable(struct intel_atomic_state *state,
-- 
2.32.0

