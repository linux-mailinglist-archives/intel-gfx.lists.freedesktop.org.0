Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 906A3964636
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 15:17:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3844A10E696;
	Thu, 29 Aug 2024 13:17:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OIK9dQBc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF1910E69A;
 Thu, 29 Aug 2024 13:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724937442; x=1756473442;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FW7XZVkIDLtCNp0XKkOGIhlYNvCwf6sIPArOSPd9TJQ=;
 b=OIK9dQBcvMcQ5PluGgIP0azxfFuCnmpj/kvIC3Bk/N9bI+CsC1ITHd/c
 W3kIaYlh0jVpgtYJOl9s3/R+WyiqMEAtraDQbLB2y4DD1LH6GlvYr7RYp
 ZSbCdqbOZvvnjhiPSRvbo01ggqgFwuDuXmzADLB0b+A9c7A2NlOsA/3Zu
 /uvBDsQwNyar6E9ajG//JzWyLAGn2+e8xNhUXZGYfx/BSQiwbc38Xr0+K
 sRSuPDIc/XLyH44VEz6BCLi1kEdW3fIitP5WHa67N8nZRnwd4LO5NugMn
 Pm4vP5qxjhhTp/odniVmpKKUZ1MQCcsEAD8D5YJH8s3foO7TcoTATH/8P Q==;
X-CSE-ConnectionGUID: atAFz445QNKSAntMI6gx0A==
X-CSE-MsgGUID: pfgzBxxLStWGNLPK2Vq2Hw==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23667273"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23667273"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 06:17:22 -0700
X-CSE-ConnectionGUID: XJvsHRuhSuu17Ju7DMX6aA==
X-CSE-MsgGUID: UfPIyfXQR6GkBPAt1qE/3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63261661"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 06:17:19 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 13/19] drm/i915/display: Separate out joiner stuff in a new
 file
Date: Thu, 29 Aug 2024 18:48:21 +0530
Message-ID: <20240829131828.2350930-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
References: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Move all the static functions intel_joiner* to the new file
intel_joiner.c.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/display/intel_display.c | 234 +------------------
 drivers/gpu/drm/i915/display/intel_display.h |   5 +
 drivers/gpu/drm/i915/display/intel_joiner.c  | 233 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_joiner.h  |  32 +++
 drivers/gpu/drm/xe/Makefile                  |   1 +
 6 files changed, 278 insertions(+), 228 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_joiner.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_joiner.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index e55ce8ba123c..c337385bbe7d 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -333,6 +333,7 @@ i915-y += \
 	display/intel_encoder.o \
 	display/intel_gmbus.o \
 	display/intel_hdmi.o \
+	display/intel_joiner.o \
 	display/intel_lspcon.o \
 	display/intel_lvds.o \
 	display/intel_panel.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 371318f69d1d..49591d108565 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -97,6 +97,7 @@
 #include "intel_frontbuffer.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
+#include "intel_joiner.h"
 #include "intel_link_bw.h"
 #include "intel_lvds.h"
 #include "intel_lvds_regs.h"
@@ -249,11 +250,6 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
 		is_trans_port_sync_slave(crtc_state);
 }
 
-static enum pipe intel_joiner_get_primary_pipe(const struct intel_crtc_state *crtc_state)
-{
-	return ffs(crtc_state->joiner_pipes) - 1;
-}
-
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->joiner_pipes)
@@ -278,11 +274,6 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
 		crtc->pipe == intel_joiner_get_primary_pipe(crtc_state);
 }
 
-static int intel_joiner_get_num_pipes(const struct intel_crtc_state *crtc_state)
-{
-	return hweight8(crtc_state->joiner_pipes);
-}
-
 u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -2341,23 +2332,6 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 			ilk_pipe_pixel_rate(crtc_state);
 }
 
-static void intel_joiner_adjust_timings(const struct intel_crtc_state *crtc_state,
-					struct drm_display_mode *mode)
-{
-	int num_pipes = intel_joiner_get_num_pipes(crtc_state);
-
-	if (num_pipes < 2)
-		return;
-
-	mode->crtc_clock /= num_pipes;
-	mode->crtc_hdisplay /= num_pipes;
-	mode->crtc_hblank_start /= num_pipes;
-	mode->crtc_hblank_end /= num_pipes;
-	mode->crtc_hsync_start /= num_pipes;
-	mode->crtc_hsync_end /= num_pipes;
-	mode->crtc_htotal /= num_pipes;
-}
-
 static void intel_splitter_adjust_timings(const struct intel_crtc_state *crtc_state,
 					  struct drm_display_mode *mode)
 {
@@ -2426,21 +2400,6 @@ void intel_encoder_get_config(struct intel_encoder *encoder,
 	intel_crtc_readout_derived_state(crtc_state);
 }
 
-static void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
-{
-	int num_pipes = intel_joiner_get_num_pipes(crtc_state);
-	int width, height;
-
-	if (num_pipes < 2)
-		return;
-
-	width = drm_rect_width(&crtc_state->pipe_src);
-	height = drm_rect_height(&crtc_state->pipe_src);
-
-	drm_rect_init(&crtc_state->pipe_src, 0, 0,
-		      width / num_pipes, height);
-}
-
 static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -2885,23 +2844,6 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 				      TRANS_SET_CONTEXT_LATENCY(dev_priv, cpu_transcoder));
 }
 
-static void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	int num_pipes = intel_joiner_get_num_pipes(crtc_state);
-	enum pipe primary_pipe, pipe = crtc->pipe;
-	int width;
-
-	if (num_pipes < 2)
-		return;
-
-	primary_pipe = intel_joiner_get_primary_pipe(crtc_state);
-	width = drm_rect_width(&crtc_state->pipe_src);
-
-	drm_rect_translate_to(&crtc_state->pipe_src,
-			      (pipe - primary_pipe) * width, 0);
-}
-
 static void intel_get_pipe_src_size(struct intel_crtc *crtc,
 				    struct intel_crtc_state *pipe_config)
 {
@@ -3505,20 +3447,6 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	return ret;
 }
 
-static u8 intel_joiner_supported_pipes(struct drm_i915_private *i915)
-{
-	u8 pipes;
-
-	if (DISPLAY_VER(i915) >= 12)
-		pipes = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D);
-	else if (DISPLAY_VER(i915) >= 11)
-		pipes = BIT(PIPE_B) | BIT(PIPE_C);
-	else
-		pipes = 0;
-
-	return pipes & DISPLAY_RUNTIME_INFO(i915)->pipe_mask;
-}
-
 static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 					   enum transcoder cpu_transcoder)
 {
@@ -3535,66 +3463,6 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 	return tmp & TRANS_DDI_FUNC_ENABLE;
 }
 
-static void intel_joiner_enabled_pipes(struct drm_i915_private *dev_priv,
-				       u8 *primary_pipes, u8 *secondary_pipes)
-{
-	struct intel_crtc *crtc;
-
-	*primary_pipes = 0;
-	*secondary_pipes = 0;
-
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
-					 intel_joiner_supported_pipes(dev_priv)) {
-		intel_dss_get_compressed_joiner_pipes(crtc,
-						      primary_pipes,
-						      secondary_pipes);
-
-		intel_dss_get_uncompressed_joiner_pipes(crtc,
-							primary_pipes,
-							secondary_pipes);
-	}
-
-	/* Joiner pipes should always be consecutive primary and secondary */
-	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
-		 "Joiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
-		 *primary_pipes, *secondary_pipes);
-}
-
-static enum pipe intel_joiner_find_primary_pipe(enum pipe pipe,
-						u8 primary_pipes,
-						u8 secondary_pipes)
-{
-	if ((secondary_pipes & BIT(pipe)) == 0)
-		return pipe;
-
-	/* ignore everything above our pipe */
-	primary_pipes &= ~GENMASK(7, pipe);
-
-	/* highest remaining bit should be our primary pipe */
-	return fls(primary_pipes) - 1;
-}
-
-static u8 intel_joiner_find_secondary_pipes(enum pipe pipe,
-					    u8 primary_pipes,
-					    u8 secondary_pipes)
-{
-	enum pipe primary_pipe, next_primary_pipe;
-
-	primary_pipe = intel_joiner_find_primary_pipe(pipe, primary_pipes, secondary_pipes);
-
-	if ((primary_pipes & BIT(primary_pipe)) == 0)
-		return 0;
-
-	/* ignore our primary pipe and everything below it */
-	primary_pipes &= ~GENMASK(primary_pipe, 0);
-	/* make sure a high bit is set for the ffs() */
-	primary_pipes |= BIT(7);
-	/* lowest remaining bit should be the next primary pipe */
-	next_primary_pipe = ffs(primary_pipes) - 1;
-
-	return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
-}
-
 static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
 {
 	u8 panel_transcoder_mask = BIT(TRANSCODER_EDP);
@@ -3794,23 +3662,6 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 	return transcoder_is_dsi(pipe_config->cpu_transcoder);
 }
 
-static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	u8 primary_pipes, secondary_pipes;
-	enum pipe pipe = crtc->pipe;
-
-	intel_joiner_enabled_pipes(i915, &primary_pipes, &secondary_pipes);
-
-	if (((primary_pipes | secondary_pipes) & BIT(pipe)) == 0)
-		return;
-
-	crtc_state->joiner_pipes =
-		BIT(intel_joiner_find_primary_pipe(pipe, primary_pipes, secondary_pipes)) |
-		intel_joiner_find_secondary_pipes(pipe, primary_pipes, secondary_pipes);
-}
-
 static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 				struct intel_crtc_state *pipe_config)
 {
@@ -5822,9 +5673,9 @@ static bool active_planes_affects_min_cdclk(struct drm_i915_private *dev_priv)
 		IS_IVYBRIDGE(dev_priv);
 }
 
-static int intel_crtc_add_joiner_planes(struct intel_atomic_state *state,
-					struct intel_crtc *crtc,
-					struct intel_crtc *other)
+int intel_crtc_add_joiner_planes(struct intel_atomic_state *state,
+				 struct intel_crtc *crtc,
+				 struct intel_crtc *other)
 {
 	const struct intel_plane_state __maybe_unused *plane_state;
 	struct intel_plane *plane;
@@ -5839,32 +5690,6 @@ static int intel_crtc_add_joiner_planes(struct intel_atomic_state *state,
 	return intel_crtc_add_planes_to_state(state, other, plane_ids);
 }
 
-static int intel_joiner_add_affected_planes(struct intel_atomic_state *state)
-{
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_crtc_state *crtc_state;
-	struct intel_crtc *crtc;
-	int i;
-
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		struct intel_crtc *other;
-
-		for_each_intel_crtc_in_pipe_mask(&i915->drm, other,
-						 crtc_state->joiner_pipes) {
-			int ret;
-
-			if (crtc == other)
-				continue;
-
-			ret = intel_crtc_add_joiner_planes(state, crtc, other);
-			if (ret)
-				return ret;
-		}
-	}
-
-	return 0;
-}
-
 static int intel_atomic_check_planes(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
@@ -6049,8 +5874,8 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 	return 0;
 }
 
-static void kill_joiner_secondaries(struct intel_atomic_state *state,
-				    struct intel_crtc *primary_crtc)
+void intel_crtc_kill_joiner_secondaries(struct intel_atomic_state *state,
+					struct intel_crtc *primary_crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *primary_crtc_state =
@@ -6349,53 +6174,6 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 	return 0;
 }
 
-static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
-{
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	struct intel_crtc_state *crtc_state;
-	struct intel_crtc *crtc;
-	u8 affected_pipes = 0;
-	u8 modeset_pipes = 0;
-	int i;
-
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		affected_pipes |= crtc_state->joiner_pipes;
-		if (intel_crtc_needs_modeset(crtc_state))
-			modeset_pipes |= crtc_state->joiner_pipes;
-	}
-
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, affected_pipes) {
-		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
-		if (IS_ERR(crtc_state))
-			return PTR_ERR(crtc_state);
-	}
-
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, modeset_pipes) {
-		int ret;
-
-		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
-
-		crtc_state->uapi.mode_changed = true;
-
-		ret = drm_atomic_add_affected_connectors(&state->base, &crtc->base);
-		if (ret)
-			return ret;
-
-		ret = intel_atomic_add_affected_planes(state, crtc);
-		if (ret)
-			return ret;
-	}
-
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		/* Kill old joiner link, we may re-establish afterwards */
-		if (intel_crtc_needs_modeset(crtc_state) &&
-		    intel_crtc_is_joiner_primary(crtc_state))
-			kill_joiner_secondaries(state, crtc);
-	}
-
-	return 0;
-}
-
 static int intel_atomic_check_config(struct intel_atomic_state *state,
 				     struct intel_link_bw_limits *limits,
 				     enum pipe *failed_pipe)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b0cf6ca70952..37d658bfd235 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -583,5 +583,10 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
 })
 
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
+int intel_crtc_add_joiner_planes(struct intel_atomic_state *state,
+				 struct intel_crtc *crtc,
+				 struct intel_crtc *other);
+void intel_crtc_kill_joiner_secondaries(struct intel_atomic_state *state,
+					struct intel_crtc *primary_crtc);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_joiner.c b/drivers/gpu/drm/i915/display/intel_joiner.c
new file mode 100644
index 000000000000..b24dfdbc9840
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_joiner.c
@@ -0,0 +1,233 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#include <drm/drm_rect.h>
+
+#include "i915_drv.h"
+#include "intel_atomic.h"
+#include "intel_display.h"
+#include "intel_display_device.h"
+#include "intel_display_types.h"
+#include "intel_dss.h"
+#include "intel_joiner.h"
+
+enum pipe intel_joiner_get_primary_pipe(const struct intel_crtc_state *crtc_state)
+{
+	return ffs(crtc_state->joiner_pipes) - 1;
+}
+
+int intel_joiner_get_num_pipes(const struct intel_crtc_state *crtc_state)
+{
+	return hweight8(crtc_state->joiner_pipes);
+}
+
+void intel_joiner_adjust_timings(const struct intel_crtc_state *crtc_state,
+				 struct drm_display_mode *mode)
+{
+	int num_pipes = intel_joiner_get_num_pipes(crtc_state);
+
+	if (num_pipes < 2)
+		return;
+
+	mode->crtc_clock /= num_pipes;
+	mode->crtc_hdisplay /= num_pipes;
+	mode->crtc_hblank_start /= num_pipes;
+	mode->crtc_hblank_end /= num_pipes;
+	mode->crtc_hsync_start /= num_pipes;
+	mode->crtc_hsync_end /= num_pipes;
+	mode->crtc_htotal /= num_pipes;
+}
+
+void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
+{
+	int num_pipes = intel_joiner_get_num_pipes(crtc_state);
+	int width, height;
+
+	if (num_pipes < 2)
+		return;
+
+	width = drm_rect_width(&crtc_state->pipe_src);
+	height = drm_rect_height(&crtc_state->pipe_src);
+
+	drm_rect_init(&crtc_state->pipe_src, 0, 0,
+		      width / num_pipes, height);
+}
+
+void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	int num_pipes = intel_joiner_get_num_pipes(crtc_state);
+	enum pipe primary_pipe, pipe = crtc->pipe;
+	int width;
+
+	if (num_pipes < 2)
+		return;
+
+	primary_pipe = intel_joiner_get_primary_pipe(crtc_state);
+	width = drm_rect_width(&crtc_state->pipe_src);
+
+	drm_rect_translate_to(&crtc_state->pipe_src,
+			      (pipe - primary_pipe) * width, 0);
+}
+
+u8 intel_joiner_supported_pipes(struct drm_i915_private *i915)
+{
+	u8 pipes;
+
+	if (DISPLAY_VER(i915) >= 12)
+		pipes = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D);
+	else if (DISPLAY_VER(i915) >= 11)
+		pipes = BIT(PIPE_B) | BIT(PIPE_C);
+	else
+		pipes = 0;
+
+	return pipes & DISPLAY_RUNTIME_INFO(i915)->pipe_mask;
+}
+
+void intel_joiner_enabled_pipes(struct drm_i915_private *dev_priv,
+				u8 *primary_pipes, u8 *secondary_pipes)
+{
+	struct intel_crtc *crtc;
+
+	*primary_pipes = 0;
+	*secondary_pipes = 0;
+
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
+					 intel_joiner_supported_pipes(dev_priv)) {
+		intel_dss_get_compressed_joiner_pipes(crtc,
+						      primary_pipes,
+						      secondary_pipes);
+
+		intel_dss_get_uncompressed_joiner_pipes(crtc,
+							primary_pipes,
+							secondary_pipes);
+	}
+
+	/* Joiner pipes should always be consecutive primary and secondary */
+	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
+		 "Joiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
+		 *primary_pipes, *secondary_pipes);
+}
+
+enum pipe intel_joiner_find_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
+{
+	if ((secondary_pipes & BIT(pipe)) == 0)
+		return pipe;
+
+	/* ignore everything above our pipe */
+	primary_pipes &= ~GENMASK(7, pipe);
+
+	/* highest remaining bit should be our primary pipe */
+	return fls(primary_pipes) - 1;
+}
+
+u8 intel_joiner_find_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
+{
+	enum pipe primary_pipe, next_primary_pipe;
+
+	primary_pipe = intel_joiner_find_primary_pipe(pipe, primary_pipes, secondary_pipes);
+
+	if ((primary_pipes & BIT(primary_pipe)) == 0)
+		return 0;
+
+	/* ignore our primary pipe and everything below it */
+	primary_pipes &= ~GENMASK(primary_pipe, 0);
+	/* make sure a high bit is set for the ffs() */
+	primary_pipes |= BIT(7);
+	/* lowest remaining bit should be the next primary pipe */
+	next_primary_pipe = ffs(primary_pipes) - 1;
+
+	return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
+}
+
+void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	u8 primary_pipes, secondary_pipes;
+	enum pipe pipe = crtc->pipe;
+
+	intel_joiner_enabled_pipes(i915, &primary_pipes, &secondary_pipes);
+
+	if (((primary_pipes | secondary_pipes) & BIT(pipe)) == 0)
+		return;
+
+	crtc_state->joiner_pipes =
+		BIT(intel_joiner_find_primary_pipe(pipe, primary_pipes, secondary_pipes)) |
+		intel_joiner_find_secondary_pipes(pipe, primary_pipes, secondary_pipes);
+}
+
+int intel_joiner_add_affected_planes(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	int i;
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		struct intel_crtc *other;
+
+		for_each_intel_crtc_in_pipe_mask(&i915->drm, other,
+						 crtc_state->joiner_pipes) {
+			int ret;
+
+			if (crtc == other)
+				continue;
+
+			ret = intel_crtc_add_joiner_planes(state, crtc, other);
+			if (ret)
+				return ret;
+		}
+	}
+
+	return 0;
+}
+
+int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	u8 affected_pipes = 0;
+	u8 modeset_pipes = 0;
+	int i;
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		affected_pipes |= crtc_state->joiner_pipes;
+		if (intel_crtc_needs_modeset(crtc_state))
+			modeset_pipes |= crtc_state->joiner_pipes;
+	}
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, affected_pipes) {
+		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
+		if (IS_ERR(crtc_state))
+			return PTR_ERR(crtc_state);
+	}
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, modeset_pipes) {
+		int ret;
+
+		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+
+		crtc_state->uapi.mode_changed = true;
+
+		ret = drm_atomic_add_affected_connectors(&state->base, &crtc->base);
+		if (ret)
+			return ret;
+
+		ret = intel_atomic_add_affected_planes(state, crtc);
+		if (ret)
+			return ret;
+	}
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		/* Kill old joiner link, we may re-establish afterwards */
+		if (intel_crtc_needs_modeset(crtc_state) &&
+		    intel_crtc_is_joiner_primary(crtc_state))
+			intel_crtc_kill_joiner_secondaries(state, crtc);
+	}
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_joiner.h b/drivers/gpu/drm/i915/display/intel_joiner.h
new file mode 100644
index 000000000000..3417274de4a2
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_joiner.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_JOINER_H__
+#define __INTEL_JOINER_H__
+
+#include "linux/types.h"
+
+enum pipe;
+struct drm_display_mode;
+struct drm_i915_private;
+struct intel_atomic_state;
+struct intel_crtc_state;
+
+enum pipe intel_joiner_get_primary_pipe(const struct intel_crtc_state *crtc_state);
+int intel_joiner_get_num_pipes(const struct intel_crtc_state *crtc_state);
+void intel_joiner_adjust_timings(const struct intel_crtc_state *crtc_state,
+				 struct drm_display_mode *mode);
+void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state);
+void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state);
+u8 intel_joiner_supported_pipes(struct drm_i915_private *i915);
+void intel_joiner_enabled_pipes(struct drm_i915_private *dev_priv,
+				u8 *primary_pipes, u8 *secondary_pipes);
+enum pipe intel_joiner_find_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes);
+u8 intel_joiner_find_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes);
+void intel_joiner_get_config(struct intel_crtc_state *crtc_state);
+int intel_joiner_add_affected_planes(struct intel_atomic_state *state);
+int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state);
+
+#endif/* __INTEL_JOINER_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 619272783669..fc452dcd1088 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -242,6 +242,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_hotplug.o \
 	i915-display/intel_hotplug_irq.o \
 	i915-display/intel_hti.o \
+	i915-display/intel_joiner.o \
 	i915-display/intel_link_bw.o \
 	i915-display/intel_lspcon.o \
 	i915-display/intel_modeset_lock.o \
-- 
2.45.2

