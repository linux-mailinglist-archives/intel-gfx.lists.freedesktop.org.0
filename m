Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5128269F4
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 09:58:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 549A210E1BF;
	Mon,  8 Jan 2024 08:58:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BFD810E19E
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 08:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704704318; x=1736240318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O+x4+LJDbZHV8O5IQZaE9/ldZkVoxhl/eg6PBdbToso=;
 b=TgoWztU0DaXZaylo8zRbIZLihCcJqpEQtSu6oCvRFwN42+1kJIbpBa4o
 T+Tj16okOQAcLHDEVk1N4eps+w2gEY7m9yYuZpl4LGIHOiiQC6i520qG2
 PEy2gVjU0NSMGg5fO0Tz9M+ZZsp3m19vir1F4RCpmmZQhEpmspu0Bgupl
 2OZQ0kAot3LChhKmuQDenbhQGxssRzZGJLg6nM4/0LH271loRXpK6y9+J
 MJ2nH2+GOA5oLcqVOkpaFY1lAf7PFrz6WIMdqvXTqpmIVkGfUDOMCXbxB
 VBfdBdAoSw5vBSiKLBSREdFeJI7OsX14ODnCIZKL3YBkKJ/yTylmFiN+d w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="4623056"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; 
   d="scan'208";a="4623056"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 00:58:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="1112681018"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="1112681018"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga005.fm.intel.com with ESMTP; 08 Jan 2024 00:58:36 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] Start separating pipe vs transcoder set logic for
 bigjoiner during modeset
Date: Mon,  8 Jan 2024 10:58:30 +0200
Message-Id: <20240108085830.18584-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240108085830.18584-1-stanislav.lisovskiy@intel.com>
References: <20240108085830.18584-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
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

Handle only bigjoiner masters in skl_commit_modeset_enables/disables,
slave crtcs should be handled by master hooks. Same for encoders.
That way we can also remove a bunch of checks like intel_crtc_is_bigjoiner_slave.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c | 148 ++++++++++++++++---
 2 files changed, 128 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f70af660dfcfa..ec643010452ca 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3344,8 +3344,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 {
 	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
 
-	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
-		intel_ddi_enable_transcoder_func(encoder, crtc_state);
+	intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
 	/* Enable/Disable DP2.0 SDP split config before transcoder */
 	intel_audio_sdp_split_update(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 29cb5dfa852b7..53e5ccfdf062a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1551,6 +1551,93 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 	hsw_set_transconf(crtc_state);
 }
 
+static void hsw_crtc_enable_slave(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe, hsw_workaround_pipe;
+	bool psl_clkgate_wa;
+
+	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
+		return;
+
+	intel_dmc_enable_pipe(dev_priv, crtc->pipe);
+
+	if (!new_crtc_state->bigjoiner_pipes) {
+		intel_encoders_pre_pll_enable(state, crtc);
+
+		if (new_crtc_state->shared_dpll)
+			intel_enable_shared_dpll(new_crtc_state);
+
+		intel_encoders_pre_enable(state, crtc);
+	} else {
+		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
+	}
+
+	intel_dsc_enable(new_crtc_state);
+
+	if (DISPLAY_VER(dev_priv) >= 13)
+		intel_uncompressed_joiner_enable(new_crtc_state);
+
+	intel_set_pipe_src_size(new_crtc_state);
+	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
+		bdw_set_pipe_misc(new_crtc_state);
+
+	crtc->active = true;
+
+	/* Display WA #1180: WaDisableScalarClockGating: glk */
+	psl_clkgate_wa = DISPLAY_VER(dev_priv) == 10 &&
+		new_crtc_state->pch_pfit.enabled;
+	if (psl_clkgate_wa)
+		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
+
+	if (DISPLAY_VER(dev_priv) >= 9)
+		skl_pfit_enable(new_crtc_state);
+	else
+		ilk_pfit_enable(new_crtc_state);
+
+	/*
+	 * On ILK+ LUT must be loaded before the pipe is running but with
+	 * clocks enabled
+	 */
+	intel_color_load_luts(new_crtc_state);
+	intel_color_commit_noarm(new_crtc_state);
+	intel_color_commit_arm(new_crtc_state);
+	/* update DSPCNTR to configure gamma/csc for pipe bottom color */
+	if (DISPLAY_VER(dev_priv) < 9)
+		intel_disable_primary_plane(new_crtc_state);
+
+	hsw_set_linetime_wm(new_crtc_state);
+
+	if (DISPLAY_VER(dev_priv) >= 11)
+		icl_set_pipe_chicken(new_crtc_state);
+
+	intel_initial_watermarks(state, crtc);
+
+	intel_crtc_vblank_on(new_crtc_state);
+
+	intel_encoders_enable(state, crtc);
+
+	if (psl_clkgate_wa) {
+		intel_crtc_wait_for_next_vblank(crtc);
+		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
+	}
+
+	/* If we change the relative order between pipe/planes enabling, we need
+	 * to change the workaround. */
+	hsw_workaround_pipe = new_crtc_state->hsw_workaround_pipe;
+	if (IS_HASWELL(dev_priv) && hsw_workaround_pipe != INVALID_PIPE) {
+		struct intel_crtc *wa_crtc;
+
+		wa_crtc = intel_crtc_for_pipe(dev_priv, hsw_workaround_pipe);
+
+		intel_crtc_wait_for_next_vblank(wa_crtc);
+		intel_crtc_wait_for_next_vblank(wa_crtc);
+	}
+}
+
 static void hsw_crtc_enable(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc)
 {
@@ -1560,10 +1647,16 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	enum pipe pipe = crtc->pipe, hsw_workaround_pipe;
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	bool psl_clkgate_wa;
+	struct intel_crtc *slave_crtc;
 
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
 
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
+					 intel_crtc_bigjoiner_slave_pipes(new_crtc_state)) {
+		hsw_crtc_enable_slave(state, slave_crtc);
+	}
+
 	intel_dmc_enable_pipe(dev_priv, crtc->pipe);
 
 	if (!new_crtc_state->bigjoiner_pipes) {
@@ -1586,8 +1679,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
 		bdw_set_pipe_misc(new_crtc_state);
 
-	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
-	    !transcoder_is_dsi(cpu_transcoder))
+	if (!transcoder_is_dsi(cpu_transcoder))
 		hsw_configure_cpu_transcoder(new_crtc_state);
 
 	crtc->active = true;
@@ -1621,9 +1713,6 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	intel_initial_watermarks(state, crtc);
 
-	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
-		intel_crtc_vblank_on(new_crtc_state);
-
 	intel_encoders_enable(state, crtc);
 
 	if (psl_clkgate_wa) {
@@ -1698,6 +1787,15 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
 	intel_disable_shared_dpll(old_crtc_state);
 }
 
+static void hsw_crtc_disable_slave(struct intel_atomic_state *state,
+				   struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+
+	intel_disable_shared_dpll(old_crtc_state);
+}
+
 static void hsw_crtc_disable(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc)
 {
@@ -1709,23 +1807,21 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	 * FIXME collapse everything to one hook.
 	 * Need care with mst->ddi interactions.
 	 */
-	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
-		intel_encoders_disable(state, crtc);
-		intel_encoders_post_disable(state, crtc);
-	}
+	intel_encoders_disable(state, crtc);
+	intel_encoders_post_disable(state, crtc);
 
 	intel_disable_shared_dpll(old_crtc_state);
 
-	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
-		struct intel_crtc *slave_crtc;
+	struct intel_crtc *slave_crtc;
 
-		intel_encoders_post_pll_disable(state, crtc);
+	intel_encoders_post_pll_disable(state, crtc);
 
-		intel_dmc_disable_pipe(i915, crtc->pipe);
+	intel_dmc_disable_pipe(i915, crtc->pipe);
 
-		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-						 intel_crtc_bigjoiner_slave_pipes(old_crtc_state))
-			intel_dmc_disable_pipe(i915, slave_crtc->pipe);
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
+					 intel_crtc_bigjoiner_slave_pipes(old_crtc_state)) {
+		intel_dmc_disable_pipe(i915, slave_crtc->pipe);
+		hsw_crtc_disable_slave(state, slave_crtc);
 	}
 }
 
@@ -6900,8 +6996,10 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		 * Slave vblanks are masked till Master Vblanks.
 		 */
 		if (!is_trans_port_sync_slave(old_crtc_state) &&
-		    !intel_dp_mst_is_slave_trans(old_crtc_state) &&
-		    !intel_crtc_is_bigjoiner_slave(old_crtc_state))
+		    !intel_dp_mst_is_slave_trans(old_crtc_state))
+			continue;
+
+		if (intel_crtc_is_bigjoiner_slave(old_crtc_state))
 			continue;
 
 		intel_old_crtc_state_disables(state, old_crtc_state,
@@ -6919,6 +7017,9 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if (!old_crtc_state->hw.active)
 			continue;
 
+		if (intel_crtc_is_bigjoiner_slave(old_crtc_state))
+			continue;
+
 		intel_old_crtc_state_disables(state, old_crtc_state,
 					      new_crtc_state, crtc);
 	}
@@ -7031,8 +7132,10 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 			continue;
 
 		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
-		    is_trans_port_sync_master(new_crtc_state) ||
-		    intel_crtc_is_bigjoiner_master(new_crtc_state))
+		    is_trans_port_sync_master(new_crtc_state))
+			continue;
+
+		if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
 			continue;
 
 		modeset_pipes &= ~BIT(pipe);
@@ -7042,7 +7145,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 
 	/*
 	 * Then we enable all remaining pipes that depend on other
-	 * pipes: MST slaves and port sync masters, big joiner master
+	 * pipes: MST slaves and port sync masters
 	 */
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		enum pipe pipe = crtc->pipe;
@@ -7050,6 +7153,9 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if ((modeset_pipes & BIT(pipe)) == 0)
 			continue;
 
+		if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
+			continue;
+
 		modeset_pipes &= ~BIT(pipe);
 
 		intel_enable_crtc(state, crtc);
-- 
2.37.3

