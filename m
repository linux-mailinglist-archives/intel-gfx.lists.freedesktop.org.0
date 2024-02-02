Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE77846D3C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 11:02:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0150210ECDA;
	Fri,  2 Feb 2024 10:02:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HeHWavlo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B27410ECDA
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 10:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706868154; x=1738404154;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qwC+GDmm/RnwsiYwgsMl3JRcLjzO+Xt4E/6NnNaxAK8=;
 b=HeHWavlopIcCuqTQvysrpl+hmHU26H4kSu9WzGp1HnaDvIfZPMgCRD7H
 818HwxHvWk9Af3zNk8LAvH3Gz8zdArT+h9MpLMuJu4iyvEi6Q2Juz97Up
 By3gKA7X1TQibhtXEUo1BCZNfKZ3ex0rjZhgcZq5aR7IHVy0WEK+5tnAT
 GShDdCI89ZA6mxAUcd+VeuD0kySn5XCtumJh9Og8JsS8jFF4TVl1gQfg2
 OW3rBFfpvWLDKBo7NIRq2cgXiMR57MjjzgLXe04z2ZVHnbr9fhEd8WnCk
 iMMHJj6JI3AWK/YG5xtAGSUeep1KHV/ltKmBpGUcL6ZKbMftyF14Piy/Y Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="4025574"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="4025574"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 02:02:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="932432953"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="932432953"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga001.fm.intel.com with ESMTP; 02 Feb 2024 02:02:31 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, Stanislav.Lisovskiy@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 3/3] Start separating pipe vs transcoder set logic for
 bigjoiner during modeset
Date: Fri,  2 Feb 2024 12:02:30 +0200
Message-Id: <20240202100230.4430-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240108120725.20057-4-stanislav.lisovskiy@intel.com>
References: <20240108120725.20057-4-stanislav.lisovskiy@intel.com>
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

Handle only bigjoiner masters in skl_commit_modeset_enables/disables,
slave crtcs should be handled by master hooks. Same for encoders.
That way we can also remove a bunch of checks like intel_crtc_is_bigjoiner_slave.

v2: Get rid of master vs slave checks and separation in crtc enable/disable hooks.
    Use unified iteration cycle for all of those, while enabling/disabling
    transcoder only for those pipes where its needed(Ville Syrjälä)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c | 116 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_display.h |   6 +
 3 files changed, 86 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 922194b957be2..6c690aefec9d1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3340,8 +3340,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 {
 	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
 
-	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
-		intel_ddi_enable_transcoder_func(encoder, crtc_state);
+	intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
 	/* Enable/Disable DP2.0 SDP split config before transcoder */
 	intel_audio_sdp_split_update(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 616a890b2658f..8fef59d1d119f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1631,18 +1631,12 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 	hsw_set_transconf(crtc_state);
 }
 
-static void hsw_crtc_enable(struct intel_atomic_state *state,
-			    struct intel_crtc *crtc)
+static void hsw_crtc_enable_pre_transcoder(struct intel_atomic_state *state,
+					   struct intel_crtc *crtc)
 {
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe, hsw_workaround_pipe;
-	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
-	bool psl_clkgate_wa;
-
-	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
-		return;
 
 	intel_dmc_enable_pipe(dev_priv, crtc->pipe);
 
@@ -1665,10 +1659,16 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	intel_set_pipe_src_size(new_crtc_state);
 	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
 		bdw_set_pipe_misc(new_crtc_state);
+}
 
-	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
-	    !transcoder_is_dsi(cpu_transcoder))
-		hsw_configure_cpu_transcoder(new_crtc_state);
+static void hsw_crtc_enable_post_transcoder(struct intel_atomic_state *state,
+					    struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe, hsw_workaround_pipe;
+	bool psl_clkgate_wa;
 
 	crtc->active = true;
 
@@ -1701,8 +1701,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	intel_initial_watermarks(state, crtc);
 
-	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
-		intel_crtc_vblank_on(new_crtc_state);
+	intel_crtc_vblank_on(new_crtc_state);
 
 	intel_encoders_enable(state, crtc);
 
@@ -1724,6 +1723,40 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	}
 }
 
+static void hsw_crtc_enable(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
+	struct intel_crtc *_crtc;
+	int slave_pipe_mask = intel_crtc_bigjoiner_slave_pipes(new_crtc_state);
+	int pipe_mask = slave_pipe_mask | crtc->pipe;
+
+	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
+		return;
+
+	/*
+	 * Use reverse iterator to go through slave pipes first.
+	 * TODO: We might need smarter iterator here
+	 */
+	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, _crtc,
+						 pipe_mask) {
+		const struct intel_crtc_state *_new_crtc_state =
+			intel_atomic_get_new_crtc_state(state, _crtc);
+		bool needs_transcoder = ((slave_pipe_mask & _crtc->pipe) == 0) &&
+					!transcoder_is_dsi(cpu_transcoder);
+
+		hsw_crtc_enable_pre_transcoder(state, _crtc);
+
+		if (needs_transcoder)
+			hsw_configure_cpu_transcoder(_new_crtc_state);
+
+		hsw_crtc_enable_post_transcoder(state, _crtc);
+	}
+}
+
 void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
@@ -1784,28 +1817,27 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	int slave_pipe_mask = intel_crtc_bigjoiner_slave_pipes(old_crtc_state);
+	int pipe_mask = slave_pipe_mask | crtc->pipe;
+	struct intel_crtc *_crtc;
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, _crtc,
+					 pipe_mask) {
+		const struct intel_crtc_state *_old_crtc_state =
+			intel_atomic_get_old_crtc_state(state, _crtc);
+		bool needs_encoder_disable = (_crtc->pipe & slave_pipe_mask) == 0;
+
+		if (needs_encoder_disable) {
+			intel_encoders_disable(state, _crtc);
+			intel_encoders_post_disable(state, _crtc);
+		}
 
-	/*
-	 * FIXME collapse everything to one hook.
-	 * Need care with mst->ddi interactions.
-	 */
-	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
-		intel_encoders_disable(state, crtc);
-		intel_encoders_post_disable(state, crtc);
-	}
-
-	intel_disable_shared_dpll(old_crtc_state);
-
-	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
-		struct intel_crtc *slave_crtc;
-
-		intel_encoders_post_pll_disable(state, crtc);
+		intel_disable_shared_dpll(_old_crtc_state);
 
-		intel_dmc_disable_pipe(i915, crtc->pipe);
+		if (needs_encoder_disable)
+			intel_encoders_post_pll_disable(state, _crtc);
 
-		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-						 intel_crtc_bigjoiner_slave_pipes(old_crtc_state))
-			intel_dmc_disable_pipe(i915, slave_crtc->pipe);
+		intel_dmc_disable_pipe(i915, _crtc->pipe);
 	}
 }
 
@@ -6797,8 +6829,10 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
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
@@ -6816,6 +6850,9 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if (!old_crtc_state->hw.active)
 			continue;
 
+		if (intel_crtc_is_bigjoiner_slave(old_crtc_state))
+			continue;
+
 		intel_old_crtc_state_disables(state, old_crtc_state,
 					      new_crtc_state, crtc);
 	}
@@ -6928,8 +6965,10 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
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
@@ -6939,7 +6978,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 
 	/*
 	 * Then we enable all remaining pipes that depend on other
-	 * pipes: MST slaves and port sync masters, big joiner master
+	 * pipes: MST slaves and port sync masters
 	 */
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		enum pipe pipe = crtc->pipe;
@@ -6947,6 +6986,9 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		if ((modeset_pipes & BIT(pipe)) == 0)
 			continue;
 
+		if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
+			continue;
+
 		modeset_pipes &= ~BIT(pipe);
 
 		intel_enable_crtc(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index f4a0773f0fca8..e1e8d956c305e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -280,6 +280,12 @@ enum phy_fia {
 			    base.head)					\
 		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))
 
+#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc, pipe_mask)	\
+	list_for_each_entry_reverse(intel_crtc,					\
+				    &(dev)->mode_config.crtc_list,		\
+				    base.head)					\
+		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))
+
 #define for_each_intel_encoder(dev, intel_encoder)		\
 	list_for_each_entry(intel_encoder,			\
 			    &(dev)->mode_config.encoder_list,	\
-- 
2.37.3

