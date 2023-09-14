Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBB57A0E3D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:27:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A589910E58C;
	Thu, 14 Sep 2023 19:27:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92DC310E589
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719614; x=1726255614;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lTpSRaLS1ZlpSL4LnmDGm12Q7v1nyogIEB5O1wXe6ik=;
 b=ZG1CCriJ1EJxK+6wU+Xjt6JgqyKh6GefQNM50NCe4XNw1/F2Xm3g5RAs
 4Y2UkiAGMnVXVJIpy2UK+EYGUOSfIzreTZhHbgUAKW1yLI5R7IQi7NWjC
 S/P69aqALe6pm/6VoF/v7mMzt/TdLltOY2qO+j6A7xGJHY2HmYA4yicDu
 xna/jCpb7KYwAbcJ/KCsqdnW8cTnKUqcu4qPmG8SwC56qKkw0yyEncynp
 P77Vle4FbxJUxfeIFGmreLMF9coDtJaT9lPqttTdPmv/0FcyiygjImoIE
 LWCfEFVhYGxtLvPTaJdcRNvTp1QDDljcNT76gE6C/nHlj6BanSFmavCjN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421711"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421711"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790540"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790540"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:26:53 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:44 +0300
Message-Id: <20230914192659.757475-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 10/25] drm/i915/fdi: Improve FDI BW sharing
 between pipe B and C
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

At the moment modesetting pipe C on IVB will fail if pipe B uses 4 FDI
lanes. Make the BW sharing more dynamic by trying to reduce pipe B's
link bpp in this case, until pipe B uses only up to 2 FDI lanes.

For this instead of the encoder compute config retry loop - which
reduced link bpp only for the encoder's pipe - reduce the maximum link
bpp for pipe B/C as required after all CRTC states are computed and
recompute the CRTC states with the new bpp limit.

v2:
- Don't assume that a CRTC is already in the atomic state, while
  reducing its link bpp.
- Add DocBook description to intel_fdi_atomic_check_link().
v3:
- Enable BW management for FDI links in a separate patch. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c      |  6 +-
 drivers/gpu/drm/i915/display/intel_crt.c     |  7 ++
 drivers/gpu/drm/i915/display/intel_display.c | 14 +---
 drivers/gpu/drm/i915/display/intel_dp.c      |  3 +-
 drivers/gpu/drm/i915/display/intel_fdi.c     | 87 +++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_fdi.h     |  4 +
 drivers/gpu/drm/i915/display/intel_link_bw.c |  7 +-
 drivers/gpu/drm/i915/display/intel_lvds.c    | 10 ++-
 drivers/gpu/drm/i915/display/intel_sdvo.c    | 10 ++-
 9 files changed, 107 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 634b14116d9dd..8b5d26cd3b85e 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -19,6 +19,7 @@
 #include "intel_fifo_underrun.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
+#include "intel_link_bw.h"
 #include "intel_sdvo.h"
 #include "vlv_sideband.h"
 
@@ -133,8 +134,11 @@ static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
-	if (HAS_PCH_SPLIT(i915))
+	if (HAS_PCH_SPLIT(i915)) {
 		crtc_state->has_pch_encoder = true;
+		if (!intel_link_bw_compute_pipe_bpp(crtc_state))
+			return -EINVAL;
+	}
 
 	if (IS_G4X(i915))
 		crtc_state->has_hdmi_sink = g4x_compute_has_hdmi_sink(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index f6df6c4fa72ef..7aa89d0fa3d6c 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -49,6 +49,7 @@
 #include "intel_gmbus.h"
 #include "intel_hotplug.h"
 #include "intel_hotplug_irq.h"
+#include "intel_link_bw.h"
 #include "intel_load_detect.h"
 #include "intel_pch_display.h"
 #include "intel_pch_refclk.h"
@@ -413,6 +414,9 @@ static int pch_crt_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 
 	pipe_config->has_pch_encoder = true;
+	if (!intel_link_bw_compute_pipe_bpp(pipe_config))
+		return -EINVAL;
+
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	return 0;
@@ -435,6 +439,9 @@ static int hsw_crt_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 
 	pipe_config->has_pch_encoder = true;
+	if (!intel_link_bw_compute_pipe_bpp(pipe_config))
+		return -EINVAL;
+
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	/* LPT FDI RX only supports 8bpc. */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 29816153fdd59..aad16dcceb788 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4607,7 +4607,6 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	struct drm_connector_state *connector_state;
 	int pipe_src_w, pipe_src_h;
 	int base_bpp, ret, i;
-	bool retry = true;
 
 	crtc_state->cpu_transcoder = (enum transcoder) crtc->pipe;
 
@@ -4637,6 +4636,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 			    "[CRTC:%d:%s] Link bpp limited to " BPP_X16_FMT "\n",
 			    crtc->base.base.id, crtc->base.name,
 			    BPP_X16_ARGS(crtc_state->max_link_bpp_x16));
+		crtc_state->bw_constrained = true;
 	}
 
 	base_bpp = crtc_state->pipe_bpp;
@@ -4680,7 +4680,6 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 			crtc_state->output_types |= BIT(encoder->type);
 	}
 
-encoder_retry:
 	/* Ensure the port clock defaults are reset when retrying. */
 	crtc_state->port_clock = 0;
 	crtc_state->pixel_multiplier = 1;
@@ -4720,17 +4719,6 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	ret = intel_crtc_compute_config(state, crtc);
 	if (ret == -EDEADLK)
 		return ret;
-	if (ret == -EAGAIN) {
-		if (drm_WARN(&i915->drm, !retry,
-			     "[CRTC:%d:%s] loop in pipe configuration computation\n",
-			     crtc->base.base.id, crtc->base.name))
-			return -EINVAL;
-
-		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] bw constrained, retrying\n",
-			    crtc->base.base.id, crtc->base.name);
-		retry = false;
-		goto encoder_retry;
-	}
 	if (ret < 0) {
 		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] config failure: %d\n",
 			    crtc->base.base.id, crtc->base.name, ret);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d5e6813d36c8f..03010accc1c7f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2219,7 +2219,8 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	const struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	int max_link_bpp_x16;
 
-	max_link_bpp_x16 = to_bpp_x16(limits->pipe.max_bpp);
+	max_link_bpp_x16 = min(crtc_state->max_link_bpp_x16,
+			       to_bpp_x16(limits->pipe.max_bpp));
 
 	if (!dsc) {
 		max_link_bpp_x16 = rounddown(max_link_bpp_x16, to_bpp_x16(2 * 3));
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 4d7d524c68017..ad01915a4a39b 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -13,6 +13,7 @@
 #include "intel_display_types.h"
 #include "intel_fdi.h"
 #include "intel_fdi_regs.h"
+#include "intel_link_bw.h"
 
 struct intel_fdi_funcs {
 	void (*fdi_link_train)(struct intel_crtc *crtc,
@@ -129,13 +130,16 @@ static int pipe_required_fdi_lanes(struct intel_crtc_state *crtc_state)
 }
 
 static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
-			       struct intel_crtc_state *pipe_config)
+			       struct intel_crtc_state *pipe_config,
+			       enum pipe *pipe_to_reduce)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_atomic_state *state = pipe_config->uapi.state;
 	struct intel_crtc *other_crtc;
 	struct intel_crtc_state *other_crtc_state;
 
+	*pipe_to_reduce = pipe;
+
 	drm_dbg_kms(&dev_priv->drm,
 		    "checking fdi config on pipe %c, lanes %i\n",
 		    pipe_name(pipe), pipe_config->fdi_lanes);
@@ -198,6 +202,9 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 		if (pipe_required_fdi_lanes(other_crtc_state) > 2) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "fdi link B uses too many lanes to enable link C\n");
+
+			*pipe_to_reduce = PIPE_B;
+
 			return -EINVAL;
 		}
 		return 0;
@@ -238,10 +245,8 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *i915 = to_i915(dev);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
-	int lane, link_bw, fdi_dotclock, ret;
-	bool needs_recompute = false;
+	int lane, link_bw, fdi_dotclock;
 
-retry:
 	/* FDI is a binary signal running at ~2.7GHz, encoding
 	 * each output octet as 10 bits. The actual frequency
 	 * is stored as a divider into a 100MHz clock, and the
@@ -261,25 +266,69 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
 	intel_link_compute_m_n(pipe_config->pipe_bpp, lane, fdi_dotclock,
 			       link_bw, &pipe_config->fdi_m_n, false);
 
-	ret = ilk_check_fdi_lanes(dev, crtc->pipe, pipe_config);
-	if (ret == -EDEADLK)
+	return 0;
+}
+
+static int intel_fdi_atomic_check_bw(struct intel_atomic_state *state,
+				     struct intel_crtc *crtc,
+				     struct intel_crtc_state *pipe_config,
+				     struct intel_link_bw_limits *limits)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	enum pipe pipe_to_reduce;
+	int ret;
+
+	ret = ilk_check_fdi_lanes(&i915->drm, crtc->pipe, pipe_config,
+				  &pipe_to_reduce);
+	if (ret != -EINVAL)
 		return ret;
 
-	if (ret == -EINVAL && pipe_config->pipe_bpp > 6*3) {
-		pipe_config->pipe_bpp -= 2*3;
-		drm_dbg_kms(&i915->drm,
-			    "fdi link bw constraint, reducing pipe bpp to %i\n",
-			    pipe_config->pipe_bpp);
-		needs_recompute = true;
-		pipe_config->bw_constrained = true;
-
-		goto retry;
+	ret = intel_link_bw_reduce_bpp(state, limits,
+				       BIT(pipe_to_reduce),
+				       "FDI link BW");
+
+	return ret ? : -EAGAIN;
+}
+
+/**
+ * intel_fdi_atomic_check_link - check all modeset FDI link configuration
+ * @state: intel atomic state
+ * @limits: link BW limits
+ *
+ * Check the link configuration for all modeset FDI outputs. If the
+ * configuration is invalid @limits will be updated if possible to
+ * reduce the total BW, after which the configuration for all CRTCs in
+ * @state must be recomputed with the updated @limits.
+ *
+ * Returns:
+ *   - 0 if the confugration is valid
+ *   - %-EAGAIN, if the configuration is invalid and @limits got updated
+ *     with fallback values with which the configuration of all CRTCs
+ *     in @state must be recomputed
+ *   - Other negative error, if the configuration is invalid without a
+ *     fallback possibility, or the check failed for another reason
+ */
+int intel_fdi_atomic_check_link(struct intel_atomic_state *state,
+				struct intel_link_bw_limits *limits)
+{
+	struct intel_crtc *crtc;
+	struct intel_crtc_state *crtc_state;
+	int i;
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		int ret;
+
+		if (!crtc_state->has_pch_encoder ||
+		    !intel_crtc_needs_modeset(crtc_state) ||
+		    !crtc_state->hw.enable)
+			continue;
+
+		ret = intel_fdi_atomic_check_bw(state, crtc, crtc_state, limits);
+		if (ret)
+			return ret;
 	}
 
-	if (needs_recompute)
-		return -EAGAIN;
-
-	return ret;
+	return 0;
 }
 
 static void cpt_set_fdi_bc_bifurcation(struct drm_i915_private *dev_priv, bool enable)
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
index 1cdb86172702f..129444c580f27 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.h
+++ b/drivers/gpu/drm/i915/display/intel_fdi.h
@@ -8,14 +8,18 @@
 
 enum pipe;
 struct drm_i915_private;
+struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_encoder;
+struct intel_link_bw_limits;
 
 int intel_fdi_link_freq(struct drm_i915_private *i915,
 			const struct intel_crtc_state *pipe_config);
 int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
 			   struct intel_crtc_state *pipe_config);
+int intel_fdi_atomic_check_link(struct intel_atomic_state *state,
+				struct intel_link_bw_limits *limits);
 void intel_fdi_normal_train(struct intel_crtc *crtc);
 void ilk_fdi_disable(struct intel_crtc *crtc);
 void ilk_fdi_pll_disable(struct intel_crtc *intel_crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index 22494772b9d59..aacf22bab3135 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -160,7 +160,12 @@ intel_link_bw_reset_pipe_limit_to_min(struct intel_atomic_state *state,
 static int check_all_link_config(struct intel_atomic_state *state,
 				 struct intel_link_bw_limits *limits)
 {
-	/* TODO: Check all shared display link configurations like FDI */
+	int ret;
+
+	ret = intel_fdi_atomic_check_link(state, limits);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 3ace56979b70e..0366d4cc6b72b 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -48,6 +48,7 @@
 #include "intel_dpll.h"
 #include "intel_fdi.h"
 #include "intel_gmbus.h"
+#include "intel_link_bw.h"
 #include "intel_lvds.h"
 #include "intel_lvds_regs.h"
 #include "intel_panel.h"
@@ -425,6 +426,12 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 	}
 
+	if (HAS_PCH_SPLIT(i915)) {
+		crtc_state->has_pch_encoder = true;
+		if (!intel_link_bw_compute_pipe_bpp(crtc_state))
+			return -EINVAL;
+	}
+
 	if (lvds_encoder->a3_power == LVDS_A3_POWER_UP)
 		lvds_bpp = 8*3;
 	else
@@ -453,9 +460,6 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
-	if (HAS_PCH_SPLIT(i915))
-		crtc_state->has_pch_encoder = true;
-
 	ret = intel_panel_fitting(crtc_state, conn_state);
 	if (ret)
 		return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 135a2527fd1b4..3c912f3bc10ba 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -48,6 +48,7 @@
 #include "intel_gmbus.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
+#include "intel_link_bw.h"
 #include "intel_panel.h"
 #include "intel_sdvo.h"
 #include "intel_sdvo_regs.h"
@@ -1351,14 +1352,17 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct drm_display_mode *mode = &pipe_config->hw.mode;
 
+	if (HAS_PCH_SPLIT(to_i915(encoder->base.dev))) {
+		pipe_config->has_pch_encoder = true;
+		if (!intel_link_bw_compute_pipe_bpp(pipe_config))
+			return -EINVAL;
+	}
+
 	DRM_DEBUG_KMS("forcing bpc to 8 for SDVO\n");
 	pipe_config->pipe_bpp = 8*3;
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
-	if (HAS_PCH_SPLIT(to_i915(encoder->base.dev)))
-		pipe_config->has_pch_encoder = true;
-
 	/*
 	 * We need to construct preferred input timings based on our
 	 * output timings.  To do that, we have to set the output
-- 
2.37.2

