Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7789A7A9DFA
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 21:52:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34A510E60F;
	Thu, 21 Sep 2023 19:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FB9F10E610
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 19:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695325913; x=1726861913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VVG0td4xo7oM4I2+VKGdLtT0E7BvkwkFm5NYV3cjAF8=;
 b=AL+rzzAyPQIvQ8NkH50CwzVgDss9tu5fX5srq7KRAJA7zWTKIis1xvGN
 SU86hKVg8k3MSacxrlRNZrJuQLD7XsAtUqmkB0EKmDwCnRtpFfAU39Yu5
 4+cBkhAzjjr75xbGx1ALXF4CXHfNlBoJaECC5zOG1r9Usb5niXHNXCmyz
 u70l78+pLs8i64ddHefJFCk+4VMN5ZAIzNrFtAMe/gklSyzqGa3db9ef4
 MbeqV12VuGhpRMo6ln7Nq+oFlroBEZ6u6D0dXo69nTQNauyyZOhH3rgfW
 Y/3Bh2DNzezrOGVDm1Mt67MisIXC8cWVfW2Kf6m/mp3IULgUE4zsi2U/v A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="379523106"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="379523106"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="817523759"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="817523759"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:52 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 22:51:58 +0300
Message-Id: <20230921195159.2646027-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230921195159.2646027-1-imre.deak@intel.com>
References: <20230921195159.2646027-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/11] drm/i915/fdi: Improve FDI BW sharing
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

Atm, all FDI encoder's compute config function returns an error if a BW
constrain prevents increasing the pipe bpp value. SDVO is an exception
where this case is only handled in the outer config retry loop, failing
the modeset. For consistency handle this case already during compute
config similarly to the other encoders.

v2:
- Don't assume that a CRTC is already in the atomic state, while
  reducing its link bpp.
- Add DocBook description to intel_fdi_atomic_check_link().
v3:
- Enable BW management for FDI links in a separate patch. (Ville)
v4: (Ville)
- Fail the SDVO encoder config computation if it doesn't support the
  link bpp limit.
- Add TODO: comments about checking link_bpp_x16 instead of
  bw_constrained.
v5:
- Replace link bpp limit check with a FIXME: comment in
  intel_sdvo_compute_config(). (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_crt.c     |   7 ++
 drivers/gpu/drm/i915/display/intel_display.c |  14 +--
 drivers/gpu/drm/i915/display/intel_dp.c      |   3 +-
 drivers/gpu/drm/i915/display/intel_fdi.c     | 115 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_fdi.h     |   7 ++
 drivers/gpu/drm/i915/display/intel_link_bw.c |   9 +-
 drivers/gpu/drm/i915/display/intel_lvds.c    |  10 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c    |  11 +-
 9 files changed, 141 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 634b14116d9dd..45e044b4a88db 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -16,6 +16,7 @@
 #include "intel_display_types.h"
 #include "intel_dp_aux.h"
 #include "intel_dpio_phy.h"
+#include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
@@ -133,8 +134,11 @@ static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
-	if (HAS_PCH_SPLIT(i915))
+	if (HAS_PCH_SPLIT(i915)) {
 		crtc_state->has_pch_encoder = true;
+		if (!intel_fdi_compute_pipe_bpp(crtc_state))
+			return -EINVAL;
+	}
 
 	if (IS_G4X(i915))
 		crtc_state->has_hdmi_sink = g4x_compute_has_hdmi_sink(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 595e65f1c13aa..d4bad0ddff41e 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -413,6 +413,9 @@ static int pch_crt_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 
 	pipe_config->has_pch_encoder = true;
+	if (!intel_fdi_compute_pipe_bpp(pipe_config))
+		return -EINVAL;
+
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	return 0;
@@ -435,10 +438,14 @@ static int hsw_crt_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 
 	pipe_config->has_pch_encoder = true;
+	if (!intel_fdi_compute_pipe_bpp(pipe_config))
+		return -EINVAL;
+
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	/* LPT FDI RX only supports 8bpc. */
 	if (HAS_PCH_LPT(dev_priv)) {
+		/* TODO: Check crtc_state->max_link_bpp_x16 instead of bw_constrained */
 		if (pipe_config->bw_constrained && pipe_config->pipe_bpp < 24) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "LPT only supports 24bpp\n");
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 600e3808de181..8b4957751b670 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4654,7 +4654,6 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	struct drm_connector_state *connector_state;
 	int pipe_src_w, pipe_src_h;
 	int base_bpp, ret, i;
-	bool retry = true;
 
 	crtc_state->cpu_transcoder = (enum transcoder) crtc->pipe;
 
@@ -4684,6 +4683,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 			    "[CRTC:%d:%s] Link bpp limited to " BPP_X16_FMT "\n",
 			    crtc->base.base.id, crtc->base.name,
 			    BPP_X16_ARGS(crtc_state->max_link_bpp_x16));
+		crtc_state->bw_constrained = true;
 	}
 
 	base_bpp = crtc_state->pipe_bpp;
@@ -4727,7 +4727,6 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 			crtc_state->output_types |= BIT(encoder->type);
 	}
 
-encoder_retry:
 	/* Ensure the port clock defaults are reset when retrying. */
 	crtc_state->port_clock = 0;
 	crtc_state->pixel_multiplier = 1;
@@ -4767,17 +4766,6 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
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
index cfdbff74eec19..11420595c4f91 100644
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
index 4d7d524c68017..7448219b401c6 100644
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
@@ -232,16 +239,42 @@ int intel_fdi_link_freq(struct drm_i915_private *i915,
 		return i915->display.fdi.pll_freq;
 }
 
+/**
+ * intel_fdi_compute_pipe_bpp - compute pipe bpp limited by max link bpp
+ * @crtc_state: the crtc state
+ *
+ * Compute the pipe bpp limited by the CRTC's maximum link bpp. Encoders can
+ * call this function during state computation in the simple case where the
+ * link bpp will always match the pipe bpp. This is the case for all non-DP
+ * encoders, while DP encoders will use a link bpp lower than pipe bpp in case
+ * of DSC compression.
+ *
+ * Returns %true in case of success, %false if pipe bpp would need to be
+ * reduced below its valid range.
+ */
+bool intel_fdi_compute_pipe_bpp(struct intel_crtc_state *crtc_state)
+{
+	int pipe_bpp = min(crtc_state->pipe_bpp,
+			   to_bpp_int(crtc_state->max_link_bpp_x16));
+
+	pipe_bpp = rounddown(pipe_bpp, 2 * 3);
+
+	if (pipe_bpp < 6 * 3)
+		return false;
+
+	crtc_state->pipe_bpp = pipe_bpp;
+
+	return true;
+}
+
 int ilk_fdi_compute_config(struct intel_crtc *crtc,
 			   struct intel_crtc_state *pipe_config)
 {
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
@@ -261,25 +294,69 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
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
index 1cdb86172702f..66b01c55c0eb0 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.h
+++ b/drivers/gpu/drm/i915/display/intel_fdi.h
@@ -6,16 +6,23 @@
 #ifndef _INTEL_FDI_H_
 #define _INTEL_FDI_H_
 
+#include <linux/types.h>
+
 enum pipe;
 struct drm_i915_private;
+struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_encoder;
+struct intel_link_bw_limits;
 
 int intel_fdi_link_freq(struct drm_i915_private *i915,
 			const struct intel_crtc_state *pipe_config);
+bool intel_fdi_compute_pipe_bpp(struct intel_crtc_state *crtc_state);
 int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
 			   struct intel_crtc_state *pipe_config);
+int intel_fdi_atomic_check_link(struct intel_atomic_state *state,
+				struct intel_link_bw_limits *limits);
 void intel_fdi_normal_train(struct intel_crtc *crtc);
 void ilk_fdi_disable(struct intel_crtc *crtc);
 void ilk_fdi_pll_disable(struct intel_crtc *intel_crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index ed63e7a9d859d..c5eb5f2425361 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -7,6 +7,7 @@
 
 #include "intel_atomic.h"
 #include "intel_display_types.h"
+#include "intel_fdi.h"
 #include "intel_link_bw.h"
 
 /**
@@ -139,7 +140,13 @@ intel_link_bw_set_bpp_limit_for_pipe(struct intel_atomic_state *state,
 static int check_all_link_config(struct intel_atomic_state *state,
 				 struct intel_link_bw_limits *limits)
 {
-	/* TODO: Check all shared display link configurations like FDI */
+	/* TODO: Check additional shared display link configurations like MST */
+	int ret;
+
+	ret = intel_fdi_atomic_check_link(state, limits);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 2306e133e3f60..2a4ca7e65775e 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -425,11 +425,18 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 	}
 
+	if (HAS_PCH_SPLIT(i915)) {
+		crtc_state->has_pch_encoder = true;
+		if (!intel_fdi_compute_pipe_bpp(crtc_state))
+			return -EINVAL;
+	}
+
 	if (lvds_encoder->a3_power == LVDS_A3_POWER_UP)
 		lvds_bpp = 8*3;
 	else
 		lvds_bpp = 6*3;
 
+	/* TODO: Check crtc_state->max_link_bpp_x16 instead of bw_constrained */
 	if (lvds_bpp != crtc_state->pipe_bpp && !crtc_state->bw_constrained) {
 		drm_dbg_kms(&i915->drm,
 			    "forcing display bpp (was %d) to LVDS (%d)\n",
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
index 881bbbb8513f4..950ba0431f5f0 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -44,6 +44,7 @@
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
 #include "intel_gmbus.h"
 #include "intel_hdmi.h"
@@ -1351,14 +1352,18 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct drm_display_mode *mode = &pipe_config->hw.mode;
 
+	if (HAS_PCH_SPLIT(to_i915(encoder->base.dev))) {
+		pipe_config->has_pch_encoder = true;
+		if (!intel_fdi_compute_pipe_bpp(pipe_config))
+			return -EINVAL;
+	}
+
 	DRM_DEBUG_KMS("forcing bpc to 8 for SDVO\n");
+	/* FIXME: Don't increase pipe_bpp */
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

