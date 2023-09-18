Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3467A51FF
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 20:25:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1BC210E2CB;
	Mon, 18 Sep 2023 18:24:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 366C310E2CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Sep 2023 18:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695061490; x=1726597490;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kNLRGPVa8PFTcNaX1DnOLswpuZcy4il76UNX2NEpfps=;
 b=evsa2MDo7wfdpjr31nc9LvcyYtsxQLqDihPMMm7S3jsZWJNdirYrybFc
 iQcnnAm3VkY/xAed8UAMspORDQWm8XrwH/v2RyGLBeo6rpsKIxnS9zQpX
 rrN98VQB1UW+pvTO9auMRYHrIf+brim+DDC69u7xDy9EiiY0AQWLdPrIU
 dMdYQTQVXQfU/o4Y6j6xjfHaiyyqexmtYtdt2rMN+M0jQ/1a2+QlLPYRh
 5BeOYp0UKllM2lpWfU1cXCYKtQvMp3kd7mek4gpdR59QC7+7RHkvZHNzj
 UZWBJXk6p4q2hX+6HSZOHXWLn+l3ueGBinv2SMgHN4t8edp6CaioMxQYL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="410686518"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="410686518"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 11:24:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="722552043"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="722552043"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 11:24:48 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Sep 2023 21:25:05 +0300
Message-Id: <20230918182506.1634464-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230915003354.857552-1-imre.deak@intel.com>
References: <20230915003354.857552-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 09/25] drm/i915: Add helpers for BW
 management on shared display links
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

At the moment a modeset fails if the config computation of a pipe can't
fit its required BW to the available link BW even though the limitation
may be resolved by reducing the BW requirement of other pipes.

To improve the above this patch adds helper functions checking the
overall BW limits after all CRTC states have been computed. If the check
fails the maximum link bpp for a selected pipe will be reduced and all
the CRTC states will be recomputed until either the overall BW limit
check passes, or further bpp reduction is not possible (because all
pipes/encoders sharing the link BW reached their minimum link bpp).

Atm, the MST encoder allocates twice the required BW for YUV420 format
streams. A follow-up patchset will fix that, add a code comment about
this.

This change prepares for upcoming patches enabling the above BW
management on FDI and MST links.

v2:
- Rename intel_crtc_state::max_link_bpp to max_link_bpp_x16 and
  intel_link_bw_limits::max_bpp to max_bpp_x16. (Jani)
v3:
- Add the helper functions in a separate patch. (Ville)
- Add the functions to intel_link_bw.c instead of intel_atomic.c (Ville)
- Return -ENOSPC instead of -EINVAL to userspace in case of a link BW
  limit failure.
v4:
- Make intel_atomic_check_config() static.
v5: (Ville)
- Rename intel_link_bw_limits::min_bpp_pipes to min_bpp_reached_pipes
  and intel_link_bw_reset_pipe_limit_to_min() to
  intel_link_bw_set_min_bpp_for_pipe().
- Rename pipe_bpp to link_bpp in intel_link_bw_reduce_bpp().
- Add FIXME: comment about MST encoder's YUV420 BW allocation and
  tracking the link bpp limit accordingly.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  65 ++++-
 .../drm/i915/display/intel_display_types.h    |   3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   4 +
 drivers/gpu/drm/i915/display/intel_link_bw.c  | 232 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_link_bw.h  |  38 +++
 7 files changed, 339 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_link_bw.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_link_bw.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 1b2e02e9d92cb..de4967c141f00 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -268,6 +268,7 @@ i915-y += \
 	display/intel_hotplug.o \
 	display/intel_hotplug_irq.o \
 	display/intel_hti.o \
+	display/intel_link_bw.o \
 	display/intel_load_detect.o \
 	display/intel_lpe_audio.o \
 	display/intel_modeset_lock.o \
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 182c6dd64f47c..1eda6a9f19aa8 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -175,6 +175,7 @@ void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
 	crtc_state->hsw_workaround_pipe = INVALID_PIPE;
 	crtc_state->scaler_state.scaler_id = -1;
 	crtc_state->mst_master_transcoder = INVALID_TRANSCODER;
+	crtc_state->max_link_bpp_x16 = INT_MAX;
 }
 
 static struct intel_crtc *intel_crtc_alloc(void)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3bdc338a22e19..537884035304c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -87,6 +87,7 @@
 #include "intel_frontbuffer.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
+#include "intel_link_bw.h"
 #include "intel_lvds.h"
 #include "intel_lvds_regs.h"
 #include "intel_modeset_setup.h"
@@ -4596,7 +4597,8 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
 
 static int
 intel_modeset_pipe_config(struct intel_atomic_state *state,
-			  struct intel_crtc *crtc)
+			  struct intel_crtc *crtc,
+			  const struct intel_link_bw_limits *limits)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
@@ -4628,6 +4630,15 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	crtc_state->max_link_bpp_x16 = limits->max_bpp_x16[crtc->pipe];
+
+	if (crtc_state->pipe_bpp > to_bpp_int(crtc_state->max_link_bpp_x16)) {
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s] Link bpp limited to " BPP_X16_FMT "\n",
+			    crtc->base.base.id, crtc->base.name,
+			    BPP_X16_ARGS(crtc_state->max_link_bpp_x16));
+	}
+
 	base_bpp = crtc_state->pipe_bpp;
 
 	/*
@@ -6218,7 +6229,9 @@ static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
 	return 0;
 }
 
-static int intel_atomic_check_config(struct intel_atomic_state *state)
+static int intel_atomic_check_config(struct intel_atomic_state *state,
+				     struct intel_link_bw_limits *limits,
+				     enum pipe *failed_pipe)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *new_crtc_state;
@@ -6226,6 +6239,8 @@ static int intel_atomic_check_config(struct intel_atomic_state *state)
 	int ret;
 	int i;
 
+	*failed_pipe = INVALID_PIPE;
+
 	ret = intel_bigjoiner_add_affected_crtcs(state);
 	if (ret)
 		return ret;
@@ -6251,7 +6266,7 @@ static int intel_atomic_check_config(struct intel_atomic_state *state)
 		if (!new_crtc_state->hw.enable)
 			continue;
 
-		ret = intel_modeset_pipe_config(state, crtc);
+		ret = intel_modeset_pipe_config(state, crtc, limits);
 		if (ret)
 			break;
 
@@ -6260,9 +6275,51 @@ static int intel_atomic_check_config(struct intel_atomic_state *state)
 			break;
 	}
 
+	if (ret)
+		*failed_pipe = crtc->pipe;
+
 	return ret;
 }
 
+static int intel_atomic_check_config_and_link(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_link_bw_limits new_limits;
+	struct intel_link_bw_limits old_limits;
+	int ret;
+
+	intel_link_bw_init_limits(i915, &new_limits);
+	old_limits = new_limits;
+
+	while (true) {
+		enum pipe failed_pipe;
+
+		ret = intel_atomic_check_config(state, &new_limits,
+						&failed_pipe);
+		if (ret) {
+			/*
+			 * The bpp limit for a pipe is below the minimum it supports, set the
+			 * limit to the minimum and recalculate the config.
+			 */
+			if (ret == -EINVAL &&
+			    intel_link_bw_set_min_bpp_for_pipe(state,
+							       &old_limits,
+							       &new_limits,
+							       failed_pipe))
+				continue;
+
+			break;
+		}
+
+		old_limits = new_limits;
+
+		ret = intel_link_bw_atomic_check(state, &new_limits);
+		if (ret != -EAGAIN)
+			break;
+	}
+
+	return ret;
+}
 /**
  * intel_atomic_check - validate state object
  * @dev: drm device
@@ -6307,7 +6364,7 @@ int intel_atomic_check(struct drm_device *dev,
 			return ret;
 	}
 
-	ret = intel_atomic_check_config(state);
+	ret = intel_atomic_check_config_and_link(state);
 	if (ret)
 		goto fail;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 50a22261f5eec..4d7948fa4bbba 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1189,7 +1189,8 @@ struct intel_crtc_state {
 		u32 ctrl, div;
 	} dsi_pll;
 
-	int pipe_bpp;
+	int max_link_bpp_x16;	/* in 1/16 bpp units */
+	int pipe_bpp;		/* in 1 bpp units */
 	struct intel_link_m_n dp_m_n;
 
 	/* m2_n2 for eDP downclock */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a914d83ab3dde..f26c2eecb2778 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -157,6 +157,10 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 	int slots = -EINVAL;
 	int link_bpp;
 
+	/*
+	 * FIXME: allocate the BW according to link_bpp, which in the case of
+	 * YUV420 is only half of the pipe bpp value.
+	 */
 	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
 						     to_bpp_int(limits->link.max_bpp_x16),
 						     to_bpp_int(limits->link.min_bpp_x16),
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
new file mode 100644
index 0000000000000..9b6d0891345d7
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -0,0 +1,232 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include "i915_drv.h"
+
+#include "intel_atomic.h"
+#include "intel_display_types.h"
+#include "intel_dp_mst.h"
+#include "intel_fdi.h"
+#include "intel_link_bw.h"
+
+/**
+ * intel_link_bw_init_limits - initialize BW limits
+ * @i915: device instance
+ * @limits: link BW limits
+ *
+ * Initialize @limits.
+ */
+void intel_link_bw_init_limits(struct drm_i915_private *i915, struct intel_link_bw_limits *limits)
+{
+	enum pipe pipe;
+
+	limits->min_bpp_reached_pipes = 0;
+	for_each_pipe(i915, pipe)
+		limits->max_bpp_x16[pipe] = INT_MAX;
+}
+
+/**
+ * intel_link_bw_compute_pipe_bpp - compute pipe bpp limited by max link bpp
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
+bool intel_link_bw_compute_pipe_bpp(struct intel_crtc_state *crtc_state)
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
+/**
+ * intel_link_bw_reduce_bpp - reduce maximum link bpp for a selected pipe
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
+ * the link bpp of one pipe on the link and hence reducing the total link BW.
+ *
+ * Returns
+ *   - 0 in case of success
+ *   - %-ENOSPC if no pipe can further reduce its link bpp
+ *   - Other negative error, if modesetting the selected pipe failed
+ */
+int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
+			     struct intel_link_bw_limits *limits,
+			     u8 pipe_mask,
+			     const char *reason)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	enum pipe max_bpp_pipe = INVALID_PIPE;
+	struct intel_crtc *crtc;
+	int max_bpp = 0;
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
+		struct intel_crtc_state *crtc_state;
+		int link_bpp;
+
+		if (limits->min_bpp_reached_pipes & BIT(crtc->pipe))
+			continue;
+
+		crtc_state = intel_atomic_get_crtc_state(&state->base,
+							 crtc);
+		if (IS_ERR(crtc_state))
+			return PTR_ERR(crtc_state);
+
+		if (crtc_state->dsc.compression_enable)
+			link_bpp = crtc_state->dsc.compressed_bpp;
+		else
+			/*
+			 * TODO: for YUV420 the actual link bpp is only half
+			 * of the pipe bpp value. The MST encoder's BW allocation
+			 * is based on the pipe bpp value, set the actual link bpp
+			 * limit here once the MST BW allocation is fixed.
+			 */
+			link_bpp = crtc_state->pipe_bpp;
+
+		if (link_bpp > max_bpp) {
+			max_bpp = link_bpp;
+			max_bpp_pipe = crtc->pipe;
+		}
+	}
+
+	if (max_bpp_pipe == INVALID_PIPE)
+		return -ENOSPC;
+
+	limits->max_bpp_x16[max_bpp_pipe] = to_bpp_x16(max_bpp) - 1;
+
+	return intel_modeset_pipes_in_mask_early(state, reason,
+						 BIT(max_bpp_pipe));
+}
+
+/**
+ * intel_link_bw_set_min_bpp_for_pipe - set link bpp limit for a pipe to its minimum
+ * @state: atomic state
+ * @old_limits: link BW limits
+ * @new_limits: link BW limits
+ * @pipe: pipe
+ *
+ * Set the link bpp limit for @pipe in @new_limits to its value in
+ * @old_limits and mark this limit as the minimum. This function must be
+ * called after a pipe's compute config function failed, @old_limits
+ * containing the bpp limit with which compute config previously passed.
+ *
+ * The function will fail if setting a minimum is not possible, either
+ * because the old and new limits match (and so would lead to a pipe compute
+ * config failure) or the limit is already at the minimum.
+ *
+ * Returns %true in case of success.
+ */
+bool
+intel_link_bw_set_min_bpp_for_pipe(struct intel_atomic_state *state,
+				   const struct intel_link_bw_limits *old_limits,
+				   struct intel_link_bw_limits *new_limits,
+				   enum pipe pipe)
+{
+	if (pipe == INVALID_PIPE)
+		return false;
+
+	if (new_limits->min_bpp_reached_pipes & BIT(pipe))
+		return false;
+
+	if (new_limits->max_bpp_x16[pipe] ==
+	    old_limits->max_bpp_x16[pipe])
+		return false;
+
+	new_limits->max_bpp_x16[pipe] =
+		old_limits->max_bpp_x16[pipe];
+	new_limits->min_bpp_reached_pipes |= BIT(pipe);
+
+	return true;
+}
+
+static int check_all_link_config(struct intel_atomic_state *state,
+				 struct intel_link_bw_limits *limits)
+{
+	/* TODO: Check all shared display link configurations like FDI */
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
+				new_limits->max_bpp_x16[pipe] >
+				old_limits->max_bpp_x16[pipe]))
+			return false;
+
+		if (new_limits->max_bpp_x16[pipe] <
+		    old_limits->max_bpp_x16[pipe])
+			bpps_changed = true;
+	}
+
+	/* At least one limit must change. */
+	if (drm_WARN_ON(&i915->drm,
+			!bpps_changed))
+		return false;
+
+	return true;
+}
+
+/**
+ * intel_link_bw_atomic_check - check display link states and set a fallback config if needed
+ * @state: atomic state
+ * @new_limits: link BW limits
+ *
+ * Check the configuration of all shared display links in @state and set new BW
+ * limits in @new_limits if there is a BW limitation.
+ *
+ * Returns:
+ *   - 0 if the confugration is valid
+ *   - %-EAGAIN, if the configuration is invalid and @new_limits got updated
+ *     with fallback values with which the configuration of all CRTCs
+ *     in @state must be recomputed
+ *   - Other negative error, if the configuration is invalid without a
+ *     fallback possibility, or the check failed for another reason
+ */
+int intel_link_bw_atomic_check(struct intel_atomic_state *state,
+			       struct intel_link_bw_limits *new_limits)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_link_bw_limits old_limits = *new_limits;
+	int ret;
+
+	ret = check_all_link_config(state, new_limits);
+	if (ret != -EAGAIN)
+		return ret;
+
+	if (!assert_link_limit_change_valid(i915, &old_limits, new_limits))
+		return -EINVAL;
+
+	return -EAGAIN;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.h b/drivers/gpu/drm/i915/display/intel_link_bw.h
new file mode 100644
index 0000000000000..0f666c9712f3c
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_LINK_BW_H__
+#define __INTEL_LINK_BW_H__
+
+#include <linux/types.h>
+
+#include "intel_display_limits.h"
+
+struct drm_i915_private;
+
+struct intel_atomic_state;
+struct intel_crtc_state;
+
+struct intel_link_bw_limits {
+	u8 min_bpp_reached_pipes;
+	/* in 1/16 bpp units */
+	int max_bpp_x16[I915_MAX_PIPES];
+};
+
+void intel_link_bw_init_limits(struct drm_i915_private *i915,
+			       struct intel_link_bw_limits *limits);
+bool intel_link_bw_compute_pipe_bpp(struct intel_crtc_state *crtc_state);
+int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
+			     struct intel_link_bw_limits *limits,
+			     u8 pipe_mask,
+			     const char *reason);
+bool intel_link_bw_set_min_bpp_for_pipe(struct intel_atomic_state *state,
+					const struct intel_link_bw_limits *old_limits,
+					struct intel_link_bw_limits *new_limits,
+					enum pipe pipe);
+int intel_link_bw_atomic_check(struct intel_atomic_state *state,
+			       struct intel_link_bw_limits *new_limits);
+
+#endif
-- 
2.37.2

