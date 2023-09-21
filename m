Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D367A9DF5
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 21:52:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6778B882B5;
	Thu, 21 Sep 2023 19:51:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29F4810E60B
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 19:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695325912; x=1726861912;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uMdMWm4wRDj5Exv4wX7VG8zQleC1lGc+iGgdOruy1EU=;
 b=ZES3YNjXvMR/4E2EnR1H9Ow/ts3oDRL4w6FaepwzSzJANeNbQKY5mPFP
 E3uJ6SH5sj19M/JgopoI5+JbXdaMSyUlFYkt/1YNOvHWM8mft/iUA5PR9
 5OFtmXUzhV2oHeAi9CPATGjYXDogQPoI2ZqGBLYjdy9M6mxBSKNuo98kC
 aG+n8j554N6umrG7wChs+eLOXSpBrElwItlkrAN49gNQ6YKfOZxpv9+fM
 JQ0va7JD3EDJJgpA1Up3b37PDBYYazoeTgiqygyn/YaOR79G8XoQ3b2zB
 NjNNJj9SnB42I3vFG/BNmFirxEMS4zZM54FFoBANipMXbEZSl6dvyURUC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="379523099"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="379523099"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="817523751"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="817523751"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:50 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 22:51:57 +0300
Message-Id: <20230921195159.2646027-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230921195159.2646027-1-imre.deak@intel.com>
References: <20230921195159.2646027-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/11] drm/i915: Add helpers for BW management
 on shared display links
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
v6:
- Move intel_link_bw_compute_pipe_bpp() to intel_fdi.c (Ville)
- WARN_ON(BIT(pipe) & min_bpp_reached_pipes) in
  intel_link_bw_set_bpp_limit_for_pipe(). (Ville)
- Rename intel_link_bw_set_min_bpp_for_pipe() to
  intel_link_bw_set_bpp_limit_for_pipe() and
  intel_link_bw_limits::min_bpp_reached_pipes to
  bpp_limit_reached_pipes. (Ville)
- Remove unused header includes.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  65 +++++-
 .../drm/i915/display/intel_display_types.h    |   3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   4 +
 drivers/gpu/drm/i915/display/intel_link_bw.c  | 205 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_link_bw.h  |  37 ++++
 7 files changed, 311 insertions(+), 5 deletions(-)
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
index 22e85fe7e8aa4..19bf506634b8e 100644
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
index ec54c32296204..600e3808de181 100644
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
@@ -4643,7 +4644,8 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
 
 static int
 intel_modeset_pipe_config(struct intel_atomic_state *state,
-			  struct intel_crtc *crtc)
+			  struct intel_crtc *crtc,
+			  const struct intel_link_bw_limits *limits)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
@@ -4675,6 +4677,15 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
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
@@ -6282,7 +6293,9 @@ static int intel_bigjoiner_add_affected_crtcs(struct intel_atomic_state *state)
 	return 0;
 }
 
-static int intel_atomic_check_config(struct intel_atomic_state *state)
+static int intel_atomic_check_config(struct intel_atomic_state *state,
+				     struct intel_link_bw_limits *limits,
+				     enum pipe *failed_pipe)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *new_crtc_state;
@@ -6290,6 +6303,8 @@ static int intel_atomic_check_config(struct intel_atomic_state *state)
 	int ret;
 	int i;
 
+	*failed_pipe = INVALID_PIPE;
+
 	ret = intel_bigjoiner_add_affected_crtcs(state);
 	if (ret)
 		return ret;
@@ -6315,7 +6330,7 @@ static int intel_atomic_check_config(struct intel_atomic_state *state)
 		if (!new_crtc_state->hw.enable)
 			continue;
 
-		ret = intel_modeset_pipe_config(state, crtc);
+		ret = intel_modeset_pipe_config(state, crtc, limits);
 		if (ret)
 			break;
 
@@ -6324,9 +6339,51 @@ static int intel_atomic_check_config(struct intel_atomic_state *state)
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
+			    intel_link_bw_set_bpp_limit_for_pipe(state,
+								 &old_limits,
+								 &new_limits,
+								 failed_pipe))
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
@@ -6371,7 +6428,7 @@ int intel_atomic_check(struct drm_device *dev,
 			return ret;
 	}
 
-	ret = intel_atomic_check_config(state);
+	ret = intel_atomic_check_config_and_link(state);
 	if (ret)
 		goto fail;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3c6bb1cb5b441..8d8b2f8d37a99 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1191,7 +1191,8 @@ struct intel_crtc_state {
 		u32 ctrl, div;
 	} dsi_pll;
 
-	int pipe_bpp;
+	int max_link_bpp_x16;	/* in 1/16 bpp units */
+	int pipe_bpp;		/* in 1 bpp units */
 	struct intel_link_m_n dp_m_n;
 
 	/* m2_n2 for eDP downclock */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index d84eb06269a9c..648cf37e02a87 100644
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
index 0000000000000..ed63e7a9d859d
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -0,0 +1,205 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include "i915_drv.h"
+
+#include "intel_atomic.h"
+#include "intel_display_types.h"
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
+	limits->bpp_limit_reached_pipes = 0;
+	for_each_pipe(i915, pipe)
+		limits->max_bpp_x16[pipe] = INT_MAX;
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
+		if (limits->bpp_limit_reached_pipes & BIT(crtc->pipe))
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
+ * intel_link_bw_set_bpp_limit_for_pipe - set link bpp limit for a pipe to its minimum
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
+intel_link_bw_set_bpp_limit_for_pipe(struct intel_atomic_state *state,
+				     const struct intel_link_bw_limits *old_limits,
+				     struct intel_link_bw_limits *new_limits,
+				     enum pipe pipe)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+
+	if (pipe == INVALID_PIPE)
+		return false;
+
+	if (new_limits->max_bpp_x16[pipe] ==
+	    old_limits->max_bpp_x16[pipe])
+		return false;
+
+	if (drm_WARN_ON(&i915->drm,
+			new_limits->bpp_limit_reached_pipes & BIT(pipe)))
+		return false;
+
+	new_limits->max_bpp_x16[pipe] =
+		old_limits->max_bpp_x16[pipe];
+	new_limits->bpp_limit_reached_pipes |= BIT(pipe);
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
index 0000000000000..e07df22a779a2
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.h
@@ -0,0 +1,37 @@
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
+	u8 bpp_limit_reached_pipes;
+	/* in 1/16 bpp units */
+	int max_bpp_x16[I915_MAX_PIPES];
+};
+
+void intel_link_bw_init_limits(struct drm_i915_private *i915,
+			       struct intel_link_bw_limits *limits);
+int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
+			     struct intel_link_bw_limits *limits,
+			     u8 pipe_mask,
+			     const char *reason);
+bool intel_link_bw_set_bpp_limit_for_pipe(struct intel_atomic_state *state,
+					  const struct intel_link_bw_limits *old_limits,
+					  struct intel_link_bw_limits *new_limits,
+					  enum pipe pipe);
+int intel_link_bw_atomic_check(struct intel_atomic_state *state,
+			       struct intel_link_bw_limits *new_limits);
+
+#endif
-- 
2.37.2

