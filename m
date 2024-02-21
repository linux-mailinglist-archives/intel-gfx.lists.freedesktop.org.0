Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AB185E71E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 20:20:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3539A10E7CA;
	Wed, 21 Feb 2024 19:20:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zvr0bH6h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BD0910E224
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 19:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708543217; x=1740079217;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TfJ4X7TAcyCDII/5KFsBKsKsBT0R6u/k2h1dPHPY3ZU=;
 b=Zvr0bH6hldQR45GZNq+bmw8S3Nz0R63e3eqUWp2d5JT+Fzo6+Jr032+/
 oRkv1UoewJQcGYLIhjRVumpYc7YF8hvkhUSRzA2O8sj6kCzagpj4eGS3P
 UZkOIQV6/HSPyxBQmNdj8agDzHsRiL7YIUSqZsy3bPkHVbLti7s5ytQD8
 fOrpQQkg7j/b5xW72awgEHkIIDE2jnxtah7dw5cOU4THO2UDbPlr4p8NH
 xufmyC5FZJsVgLw1lL2G46aMhLxPbmLYVth2KgXYALZztCKFGK6FJgRrh
 zG0FEud9I+P8uoYkL53y+wb6NtCNj9PnP7RJ5rIav0s9XgfekLgy61trb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="13286349"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="13286349"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 11:20:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="36024260"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa002.jf.intel.com with ESMTP; 21 Feb 2024 11:20:15 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: [PATCH 2/3] Start separating pipe vs transcoder set logic for
 bigjoiner during modeset
Date: Wed, 21 Feb 2024 21:20:09 +0200
Message-Id: <20240221192010.25413-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240221192010.25413-1-stanislav.lisovskiy@intel.com>
References: <20240221192010.25413-1-stanislav.lisovskiy@intel.com>
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

v3: Move all the intel_encoder_* calls under transcoder code path(Ville Syrjälä)

v4:  - Call intel_crtc_vblank_on from hsw_crtc_enable only for non-transcoder path
       (for master pipe that will be called from intel_encoders_enable/intel_enable_ddi)
     - Fix stupid mistake with using crtc->pipe for the mask, instead of BIT(crtc->pipe)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  21 +--
 drivers/gpu/drm/i915/display/intel_display.c | 183 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_display.h |   6 +
 3 files changed, 121 insertions(+), 89 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index bea4415902044..6071e9f500871 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3100,7 +3100,6 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 				   const struct drm_connector_state *old_conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_crtc *slave_crtc;
 
 	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST)) {
 		intel_crtc_vblank_off(old_crtc_state);
@@ -3117,17 +3116,6 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 			ilk_pfit_disable(old_crtc_state);
 	}
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
-					 intel_crtc_bigjoiner_slave_pipes(old_crtc_state)) {
-		const struct intel_crtc_state *old_slave_crtc_state =
-			intel_atomic_get_old_crtc_state(state, slave_crtc);
-
-		intel_crtc_vblank_off(old_slave_crtc_state);
-
-		intel_dsc_disable(old_slave_crtc_state);
-		skl_scaler_disable(old_slave_crtc_state);
-	}
-
 	/*
 	 * When called from DP MST code:
 	 * - old_conn_state will be NULL
@@ -3363,8 +3351,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 {
 	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
 
-	if (!intel_crtc_is_bigjoiner_slave(crtc_state))
-		intel_ddi_enable_transcoder_func(encoder, crtc_state);
+	intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
 	/* Enable/Disable DP2.0 SDP split config before transcoder */
 	intel_audio_sdp_split_update(crtc_state);
@@ -3469,9 +3456,6 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_crtc *slave_crtc;
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
 	/* FIXME: Add MTL pll_mgr */
@@ -3479,9 +3463,6 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 		return;
 
 	intel_update_active_dpll(state, crtc, encoder);
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-					 intel_crtc_bigjoiner_slave_pipes(crtc_state))
-		intel_update_active_dpll(state, slave_crtc, encoder);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 916c13a149fd5..e1ea53fd6a288 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1631,31 +1631,12 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
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
-
-	intel_dmc_enable_pipe(dev_priv, crtc->pipe);
-
-	if (!new_crtc_state->bigjoiner_pipes) {
-		intel_encoders_pre_pll_enable(state, crtc);
-
-		if (new_crtc_state->shared_dpll)
-			intel_enable_shared_dpll(new_crtc_state);
-
-		intel_encoders_pre_enable(state, crtc);
-	} else {
-		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
-	}
 
 	intel_dsc_enable(new_crtc_state);
 
@@ -1665,19 +1646,17 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
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
 
 	crtc->active = true;
 
-	/* Display WA #1180: WaDisableScalarClockGating: glk */
-	psl_clkgate_wa = DISPLAY_VER(dev_priv) == 10 &&
-		new_crtc_state->pch_pfit.enabled;
-	if (psl_clkgate_wa)
-		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
-
 	if (DISPLAY_VER(dev_priv) >= 9)
 		skl_pfit_enable(new_crtc_state);
 	else
@@ -1700,27 +1679,84 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		icl_set_pipe_chicken(new_crtc_state);
 
 	intel_initial_watermarks(state, crtc);
+}
 
-	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
-		intel_crtc_vblank_on(new_crtc_state);
+static void hsw_crtc_enable(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
+	struct intel_crtc *_crtc;
+	int slave_pipe_mask = intel_crtc_bigjoiner_slave_pipes(new_crtc_state);
+	int pipe_mask = slave_pipe_mask | BIT(crtc->pipe);
+	bool psl_clkgate_wa;
+	enum pipe pipe = crtc->pipe, hsw_workaround_pipe;
 
-	intel_encoders_enable(state, crtc);
+	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
+		return;
 
-	if (psl_clkgate_wa) {
-		intel_crtc_wait_for_next_vblank(crtc);
-		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
-	}
+	/*
+	 * Use reverse iterator to go through slave pipes first.
+	 * TODO: We might need smarter iterator here
+	 */
+	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, _crtc,
+						 pipe_mask) {
+		const struct intel_crtc_state *_new_crtc_state =
+			intel_atomic_get_new_crtc_state(state, _crtc);
+		bool needs_transcoder = ((slave_pipe_mask & BIT(_crtc->pipe)) == 0) &&
+					!transcoder_is_dsi(cpu_transcoder);
+
+		intel_dmc_enable_pipe(dev_priv, crtc->pipe);
+
+		if (!new_crtc_state->bigjoiner_pipes) {
+			if (needs_transcoder)
+				intel_encoders_pre_pll_enable(state, crtc);
+
+			if (new_crtc_state->shared_dpll)
+				intel_enable_shared_dpll(new_crtc_state);
+
+			if (needs_transcoder)
+				intel_encoders_pre_enable(state, crtc);
+		} else {
+			icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
+		}
+
+		hsw_crtc_enable_pre_transcoder(state, _crtc);
+
+		if (needs_transcoder)
+			hsw_configure_cpu_transcoder(_new_crtc_state);
+
+		/* Display WA #1180: WaDisableScalarClockGating: glk */
+		psl_clkgate_wa = DISPLAY_VER(dev_priv) == 10 &&
+			new_crtc_state->pch_pfit.enabled;
+		if (psl_clkgate_wa)
+			glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
+
+		hsw_crtc_enable_post_transcoder(state, _crtc);
+
+		if (needs_transcoder)
+			intel_encoders_enable(state, crtc);
+		else
+			intel_crtc_vblank_on(_new_crtc_state);
+
+		if (psl_clkgate_wa) {
+			intel_crtc_wait_for_next_vblank(crtc);
+			glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
+		}
 
-	/* If we change the relative order between pipe/planes enabling, we need
-	 * to change the workaround. */
-	hsw_workaround_pipe = new_crtc_state->hsw_workaround_pipe;
-	if (IS_HASWELL(dev_priv) && hsw_workaround_pipe != INVALID_PIPE) {
-		struct intel_crtc *wa_crtc;
+		/* If we change the relative order between pipe/planes enabling, we need
+		 * to change the workaround. */
+		hsw_workaround_pipe = new_crtc_state->hsw_workaround_pipe;
+		if (IS_HASWELL(dev_priv) && hsw_workaround_pipe != INVALID_PIPE) {
+			struct intel_crtc *wa_crtc;
 
-		wa_crtc = intel_crtc_for_pipe(dev_priv, hsw_workaround_pipe);
+			wa_crtc = intel_crtc_for_pipe(dev_priv, hsw_workaround_pipe);
 
-		intel_crtc_wait_for_next_vblank(wa_crtc);
-		intel_crtc_wait_for_next_vblank(wa_crtc);
+			intel_crtc_wait_for_next_vblank(wa_crtc);
+			intel_crtc_wait_for_next_vblank(wa_crtc);
+		}
 	}
 }
 
@@ -1784,28 +1820,27 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	int slave_pipe_mask = intel_crtc_bigjoiner_slave_pipes(old_crtc_state);
+	int pipe_mask = slave_pipe_mask | BIT(crtc->pipe);
+	struct intel_crtc *_crtc;
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, _crtc,
+					 pipe_mask) {
+		const struct intel_crtc_state *_old_crtc_state =
+			intel_atomic_get_old_crtc_state(state, _crtc);
+		bool needs_encoder_disable = (slave_pipe_mask & BIT(_crtc->pipe)) == 0;
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
 
@@ -6788,8 +6823,10 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
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
@@ -6807,6 +6844,9 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if (!old_crtc_state->hw.active)
 			continue;
 
+		if (intel_crtc_is_bigjoiner_slave(old_crtc_state))
+			continue;
+
 		intel_old_crtc_state_disables(state, old_crtc_state,
 					      new_crtc_state, crtc);
 	}
@@ -6919,8 +6959,10 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
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
@@ -6930,7 +6972,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 
 	/*
 	 * Then we enable all remaining pipes that depend on other
-	 * pipes: MST slaves and port sync masters, big joiner master
+	 * pipes: MST slaves and port sync masters
 	 */
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		enum pipe pipe = crtc->pipe;
@@ -6938,6 +6980,9 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
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

