Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE3D77FBCA
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 18:16:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EE6410E519;
	Thu, 17 Aug 2023 16:16:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6532B10E511
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 16:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692288967; x=1723824967;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zmEds8mhZnYZyx6yGNfh+yTNmOLZokDaeYq3jFgFCg0=;
 b=VSk2Uwz/JyPGxdTei/qkEoiBdPRBVClQo+R/Wb7V7HuB5Mdxk3bHk6zA
 +RyyLPpHNky1oHS0xDWEvAsOku8W3AabhUbQX+oT1ybHLuecYh/Z709Wl
 rvdO/upaRTzs8agszm9wuoU21RmKbjNiB3P5Ba9fehImQHUTuXu11qD/O
 G++nyVdgljkuJW23suj0kri0RhSBXPeCFcD7exrWmVYfMleJ8JeRKefTt
 f+O++nDOTUU0dYjfC9ABviAJyC0QFh6XWUOBz8akgis1dUnGqr6YxhDdz
 Scsgh7+FQ9SYMdTyTIMFRwuh5LOA9/lNuA7UCLVWY+ocyTT9DlaseaxKR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="357826624"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="357826624"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="711601356"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="711601356"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:50 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:14:47 +0300
Message-Id: <20230817161456.3857111-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230817161456.3857111-1-imre.deak@intel.com>
References: <20230817161456.3857111-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/17] drm/i915/fdi: Improve FDI BW sharing
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
reduced link bpp only for the encoder's pipe - check the overall BW
limits after all CRTC states have been computed and if the check fails
reduce the maximum link bpp for a selected pipe (for FDI pipe B or C as
required) and recompute all the CRTC states. Retry this sequence until
either the overall BW limit check passes, or further bpp reduction is
not possible (because all pipes/encoders sharing the link BW reached
their minimum link bpp).

This change also prepares for an upcoming patch resolving BW limits in
a similar way on MST links as well.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   5 +-
 drivers/gpu/drm/i915/display/intel_atomic.c   | 205 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_atomic.h   |   8 +
 drivers/gpu/drm/i915/display/intel_crt.c      |   7 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  40 ++--
 drivers/gpu/drm/i915/display/intel_display.h  |   4 +
 .../drm/i915/display/intel_display_types.h    |   9 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   3 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |  66 ++++--
 drivers/gpu/drm/i915/display/intel_fdi.h      |   4 +
 drivers/gpu/drm/i915/display/intel_lvds.c     |   9 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   9 +-
 13 files changed, 326 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 634b14116d9dd..ebbceddc13259 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -133,8 +133,11 @@ static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
-	if (HAS_PCH_SPLIT(i915))
+	if (HAS_PCH_SPLIT(i915)) {
 		crtc_state->has_pch_encoder = true;
+		if (!intel_atomic_compute_pipe_bpp(crtc_state))
+			return -EINVAL;
+	}
 
 	if (IS_G4X(i915))
 		crtc_state->has_hdmi_sink = g4x_compute_has_hdmi_sink(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 7cf51dd8c0567..8e55eb3b2cee0 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -38,6 +38,7 @@
 #include "intel_atomic.h"
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
+#include "intel_fdi.h"
 #include "intel_global_state.h"
 #include "intel_hdcp.h"
 #include "intel_psr.h"
@@ -358,3 +359,207 @@ intel_atomic_get_crtc_state(struct drm_atomic_state *state,
 
 	return to_intel_crtc_state(crtc_state);
 }
+
+/**
+ * intel_atomic_compute_pipe_bpp - compute pipe bpp limited by max link bpp
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
+bool intel_atomic_compute_pipe_bpp(struct intel_crtc_state *crtc_state)
+{
+	int pipe_bpp = min(crtc_state->pipe_bpp,
+			   crtc_state->max_link_bpp >> 4);
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
+/**
+ * intel_atomic_reduce_link_bpp - reduce maximum link bpp for a selected pipe
+ * @state: atomic state
+ * @limits: link BW limits
+ * @pipe_mask: mask of pipes to select from
+ * @reason: explanation of why bpp reduction is needed
+ *
+ * Select the pipe from @pipe_mask with the biggest link bpp value and set the
+ * maximum of link bpp in @limits below this value. Modeset the selected pipe,
+ * so that its state will get recomputed.
+ *
+ * This function can be called to resolve a link's BW overallocation by reducing
+ * the link bpp of one pipe on * the link and hence reducing the total link BW.
+ *
+ * Returns
+ *   - 0 in case of success
+ *   - %-EINVAL if no pipe can further reduce its link bpp
+ *   - A negative error code if modesetting the selected pipe failed.
+ */
+int intel_atomic_reduce_link_bpp(struct intel_atomic_state *state,
+				 struct intel_link_bw_limits *limits,
+				 u8 pipe_mask,
+				 const char *reason)
+{
+	struct intel_crtc *crtc;
+	struct intel_crtc_state *crtc_state;
+	enum pipe max_bpp_pipe = INVALID_PIPE;
+	int max_bpp = 0;
+	int i;
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		int pipe_bpp;
+
+		if (!(pipe_mask & BIT(crtc->pipe)))
+			continue;
+
+		if (limits->min_bpp_pipes & BIT(crtc->pipe))
+			continue;
+
+		if (crtc_state->dsc.compression_enable)
+			pipe_bpp = crtc_state->dsc.compressed_bpp;
+		else
+			pipe_bpp = crtc_state->pipe_bpp;
+
+		if (pipe_bpp > max_bpp) {
+			max_bpp = pipe_bpp;
+			max_bpp_pipe = crtc->pipe;
+		}
+	}
+
+	if (max_bpp_pipe == INVALID_PIPE)
+		return -EINVAL;
+
+	limits->max_bpp[max_bpp_pipe] = (max_bpp << 4) - 1;
+
+	return intel_modeset_pipes_in_mask(state, reason,
+					   BIT(max_bpp_pipe));
+}
+
+static int intel_atomic_check_link(struct intel_atomic_state *state,
+				   struct intel_link_bw_limits *limits)
+{
+	int ret;
+
+	ret = intel_fdi_atomic_check_link(state, limits);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static bool
+assert_link_limit_change_valid(struct drm_i915_private *i915,
+			       const struct intel_link_bw_limits *old_limits,
+			       const struct intel_link_bw_limits *new_limits)
+{
+	bool bpps_changed = false;
+	enum pipe pipe;
+
+	for_each_pipe(i915, pipe) {
+		/* The bpp limit can only decrease. */
+		if (drm_WARN_ON(&i915->drm,
+				new_limits->max_bpp[pipe] >
+				old_limits->max_bpp[pipe]))
+			return false;
+
+		if (new_limits->max_bpp[pipe] <
+		    old_limits->max_bpp[pipe])
+			bpps_changed = true;
+	}
+
+	if (drm_WARN_ON(&i915->drm,
+			!bpps_changed))
+		return false;
+
+	return true;
+}
+
+static bool
+reset_link_bpp_limit_to_min(struct intel_atomic_state *state,
+			    const struct intel_link_bw_limits *old_limits,
+			    struct intel_link_bw_limits *new_limits,
+			    enum pipe failed_pipe)
+{
+	if (failed_pipe == INVALID_PIPE)
+		return false;
+
+	if (new_limits->min_bpp_pipes & BIT(failed_pipe))
+		return false;
+
+	if (new_limits->max_bpp[failed_pipe] ==
+	    old_limits->max_bpp[failed_pipe])
+		return false;
+
+	new_limits->max_bpp[failed_pipe] =
+		old_limits->max_bpp[failed_pipe];
+	new_limits->min_bpp_pipes |= BIT(failed_pipe);
+
+	return true;
+}
+
+/**
+ * intel_atomic_check_config_and_link - compute CRTC configs, resolving any BW limits
+ * @state: atomic state
+ *
+ * Compute the configuration of all CRTCs in @state and resolve any BW
+ * limitations on links shared by these CRTCs.
+ *
+ * Return 0 in case of success, or a negative error code otherwise.
+ */
+int intel_atomic_check_config_and_link(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_link_bw_limits new_limits = {};
+	struct intel_link_bw_limits old_limits;
+	enum pipe pipe;
+	int ret;
+
+	for_each_pipe(i915, pipe)
+		new_limits.max_bpp[pipe] = INT_MAX;
+
+	old_limits = new_limits;
+
+	while (true) {
+		enum pipe failed_pipe;
+
+		ret = intel_atomic_check_config(state, &new_limits,
+						&failed_pipe);
+		if (ret) {
+			if (ret == -EINVAL &&
+			    reset_link_bpp_limit_to_min(state,
+							&old_limits,
+							&new_limits,
+							failed_pipe))
+				continue;
+
+			break;
+		}
+
+		old_limits = new_limits;
+
+		ret = intel_atomic_check_link(state, &new_limits);
+		if (ret != -EAGAIN)
+			break;
+
+		if (!assert_link_limit_change_valid(i915,
+						    &old_limits,
+						    &new_limits)) {
+			ret = -EINVAL;
+			break;
+		}
+	}
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/drm/i915/display/intel_atomic.h
index e506f6a873447..bbf3595d52c41 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic.h
@@ -20,6 +20,7 @@ struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_link_bw_limits;
 
 int intel_digital_connector_atomic_get_property(struct drm_connector *connector,
 						const struct drm_connector_state *state,
@@ -52,4 +53,11 @@ struct intel_crtc_state *
 intel_atomic_get_crtc_state(struct drm_atomic_state *state,
 			    struct intel_crtc *crtc);
 
+int intel_atomic_reduce_link_bpp(struct intel_atomic_state *state,
+				 struct intel_link_bw_limits *limits,
+				 u8 pipe_mask,
+				 const char *reason);
+bool intel_atomic_compute_pipe_bpp(struct intel_crtc_state *crtc_state);
+int intel_atomic_check_config_and_link(struct intel_atomic_state *state);
+
 #endif /* __INTEL_ATOMIC_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index f66340b4caf0f..3322080a574e8 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -36,6 +36,7 @@
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
+#include "intel_atomic.h"
 #include "intel_connector.h"
 #include "intel_crt.h"
 #include "intel_crtc.h"
@@ -413,6 +414,9 @@ static int pch_crt_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 
 	pipe_config->has_pch_encoder = true;
+	if (!intel_atomic_compute_pipe_bpp(pipe_config))
+		return -EINVAL;
+
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	return 0;
@@ -435,6 +439,9 @@ static int hsw_crt_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 
 	pipe_config->has_pch_encoder = true;
+	if (!intel_atomic_compute_pipe_bpp(pipe_config))
+		return -EINVAL;
+
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	/* LPT FDI RX only supports 8bpc. */
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 182c6dd64f47c..0a701163e2f33 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -175,6 +175,7 @@ void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
 	crtc_state->hsw_workaround_pipe = INVALID_PIPE;
 	crtc_state->scaler_state.scaler_id = -1;
 	crtc_state->mst_master_transcoder = INVALID_TRANSCODER;
+	crtc_state->max_link_bpp = INT_MAX;
 }
 
 static struct intel_crtc *intel_crtc_alloc(void)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 381f68890565c..de2152c94c161 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4641,7 +4641,8 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
 
 static int
 intel_modeset_pipe_config(struct intel_atomic_state *state,
-			  struct intel_crtc *crtc)
+			  struct intel_crtc *crtc,
+			  const struct intel_link_bw_limits *limits)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
@@ -4650,7 +4651,6 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	struct drm_connector_state *connector_state;
 	int pipe_src_w, pipe_src_h;
 	int base_bpp, ret, i;
-	bool retry = true;
 
 	crtc_state->cpu_transcoder = (enum transcoder) crtc->pipe;
 
@@ -4673,6 +4673,17 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	crtc_state->max_link_bpp = limits->max_bpp[crtc->pipe];
+
+	if (crtc_state->pipe_bpp > crtc_state->max_link_bpp >> 4) {
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s] Link bpp limited to %d.%04d\n",
+			    crtc->base.base.id, crtc->base.name,
+			    crtc_state->max_link_bpp >> 4,
+			    (crtc_state->max_link_bpp & 0xf) * 625);
+		crtc_state->bw_constrained = true;
+	}
+
 	base_bpp = crtc_state->pipe_bpp;
 
 	/*
@@ -4714,7 +4725,6 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 			crtc_state->output_types |= BIT(encoder->type);
 	}
 
-encoder_retry:
 	/* Ensure the port clock defaults are reset when retrying. */
 	crtc_state->port_clock = 0;
 	crtc_state->pixel_multiplier = 1;
@@ -4754,17 +4764,6 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
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
@@ -6177,7 +6176,9 @@ static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
 	return 0;
 }
 
-static int intel_atomic_check_config(struct intel_atomic_state *state)
+int intel_atomic_check_config(struct intel_atomic_state *state,
+			      struct intel_link_bw_limits *limits,
+			      enum pipe *failed_pipe)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *new_crtc_state;
@@ -6185,6 +6186,8 @@ static int intel_atomic_check_config(struct intel_atomic_state *state)
 	int ret;
 	int i;
 
+	*failed_pipe = INVALID_PIPE;
+
 	ret = intel_bigjoiner_add_affected_crtcs(state);
 	if (ret)
 		return ret;
@@ -6210,7 +6213,7 @@ static int intel_atomic_check_config(struct intel_atomic_state *state)
 		if (!new_crtc_state->hw.enable)
 			continue;
 
-		ret = intel_modeset_pipe_config(state, crtc);
+		ret = intel_modeset_pipe_config(state, crtc, limits);
 		if (ret)
 			break;
 
@@ -6219,6 +6222,9 @@ static int intel_atomic_check_config(struct intel_atomic_state *state)
 			break;
 	}
 
+	if (ret)
+		*failed_pipe = crtc->pipe;
+
 	return ret;
 }
 
@@ -6266,7 +6272,7 @@ int intel_atomic_check(struct drm_device *dev,
 			return ret;
 	}
 
-	ret = intel_atomic_check_config(state);
+	ret = intel_atomic_check_config_and_link(state);
 	if (ret)
 		goto fail;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index ffbabfc9e1e10..8c3d2eb422567 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -55,6 +55,7 @@ struct intel_digital_port;
 struct intel_dp;
 struct intel_encoder;
 struct intel_initial_plane_config;
+struct intel_link_bw_limits;
 struct intel_link_m_n;
 struct intel_plane;
 struct intel_plane_state;
@@ -391,6 +392,9 @@ enum phy_fia {
 			     (new_connector_state) = to_intel_digital_connector_state((__state)->base.connectors[__i].new_state), 1))
 
 int intel_atomic_check(struct drm_device *dev, struct drm_atomic_state *state);
+int intel_atomic_check_config(struct intel_atomic_state *state,
+			      struct intel_link_bw_limits *limits,
+			      enum pipe *failed_pipe);
 int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc);
 u8 intel_calc_active_pipes(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 731f2ec04d5cd..aa17ac64273a9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -66,6 +66,12 @@ struct intel_tc_port;
  * Display related stuff
  */
 
+struct intel_link_bw_limits {
+	u8 min_bpp_pipes;
+	/* in 1/16 bpp units */
+	int max_bpp[I915_MAX_PIPES];
+};
+
 /* these are outputs from the chip - integrated only
    external chips are via DVO or SDVO output */
 enum intel_output_type {
@@ -1189,7 +1195,8 @@ struct intel_crtc_state {
 		u32 ctrl, div;
 	} dsi_pll;
 
-	int pipe_bpp;
+	int max_link_bpp; /* in 1/16 bpp units */
+	int pipe_bpp;     /* in 1 bpp units */
 	struct intel_link_m_n dp_m_n;
 
 	/* m2_n2 for eDP downclock */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b5d38765dde54..e85a6f89ca9e3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1833,7 +1833,8 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	const struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	int max_link_bpp;
 
-	max_link_bpp = limits->pipe.max_bpp << 4;
+	max_link_bpp = min(crtc_state->max_link_bpp,
+			   limits->pipe.max_bpp << 4);
 
 	if (!dsc) {
 		max_link_bpp = rounddown(max_link_bpp, (2 * 3) << 4);
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index e12b46a84fa11..061d2e54786ea 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -129,13 +129,16 @@ static int pipe_required_fdi_lanes(struct intel_crtc_state *crtc_state)
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
@@ -198,6 +201,9 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 		if (pipe_required_fdi_lanes(other_crtc_state) > 2) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "fdi link B uses too many lanes to enable link C\n");
+
+			*pipe_to_reduce = PIPE_B;
+
 			return -EINVAL;
 		}
 		return 0;
@@ -238,10 +244,8 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
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
@@ -261,25 +265,51 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
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
+	ret = intel_atomic_reduce_link_bpp(state, limits,
+					   BIT(pipe_to_reduce),
+					   "FDI link BW");
 
-		goto retry;
-	}
+	return ret ? : -EAGAIN;
+}
+
+int intel_fdi_atomic_check_link(struct intel_atomic_state *state,
+				struct intel_link_bw_limits *limits)
+{
+	struct intel_crtc *crtc;
+	struct intel_crtc_state *crtc_state;
+	int i;
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		int ret;
 
-	if (needs_recompute)
-		return -EAGAIN;
+		if (!crtc_state->has_pch_encoder ||
+		    !intel_crtc_needs_modeset(crtc_state) ||
+		    !crtc_state->hw.enable)
+			continue;
+
+		ret = intel_fdi_atomic_check_bw(state, crtc, crtc_state, limits);
+		if (ret)
+			return ret;
+	}
 
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
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 3ace56979b70e..08dcc2d10a2c1 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -425,6 +425,12 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 	}
 
+	if (HAS_PCH_SPLIT(i915)) {
+		crtc_state->has_pch_encoder = true;
+		if (!intel_atomic_compute_pipe_bpp(crtc_state))
+			return -EINVAL;
+	}
+
 	if (lvds_encoder->a3_power == LVDS_A3_POWER_UP)
 		lvds_bpp = 8*3;
 	else
@@ -453,9 +459,6 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
 
-	if (HAS_PCH_SPLIT(i915))
-		crtc_state->has_pch_encoder = true;
-
 	ret = intel_panel_fitting(crtc_state, conn_state);
 	if (ret)
 		return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 7d25a64698e2f..1c6330151f4d6 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1352,14 +1352,17 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct drm_display_mode *mode = &pipe_config->hw.mode;
 
+	if (HAS_PCH_SPLIT(to_i915(encoder->base.dev))) {
+		pipe_config->has_pch_encoder = true;
+		if (!intel_atomic_compute_pipe_bpp(pipe_config))
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

