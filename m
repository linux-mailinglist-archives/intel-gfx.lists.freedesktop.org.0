Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 051AE4CB318
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 00:56:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7F8C10E7F2;
	Wed,  2 Mar 2022 23:56:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B67A110E6DD
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Mar 2022 23:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646265412; x=1677801412;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J70ZHfaZxRJxxIZi4Y5MOIUxVg4FiFMPrpRXSGAp8SA=;
 b=NUQrCX7MeFGWwXyg0v0yXZmvvQRVOe7c7Zp5x353PK8UcnuDdR4T/O75
 g9hrZgYwLUBYFmB57U+nH+N3Ckj9573AMlfY+qPMIPTGMJi8BdjlAKqg7
 IbC85VmpjFOI+GJ6OWNISLRlO0Qk/APudkCvmcwZuiNY2YM3yGFJW59YH
 I05LcG3/e4GpMtjaRqU+swT7VzTli0L/lHlO4T3Av1vqtbwEA424vIOth
 ens1Vm0Qti8rGROhYv4HInMuQ++T4QdwTchYFJFLANHgxBLBa61jGcy8f
 30XwrIRW/mdrZYFobJjCLs2unYAGHQ4S8aGcHFA9hCXuv/J3Sf3iMvc4N A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="314252536"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="314252536"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 15:56:51 -0800
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="493728591"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 15:56:51 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Mar 2022 15:53:48 -0800
Message-Id: <20220302235348.1262120-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/cdclk: Add cdclk check to atomic check
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

Checking cdclk conditions during atomic check and preparing
for commit phase so we can have atomic commit as simple
as possible. Add the specific steps to be taken during
cdclk changes, prepare for squashing, crawling and modeset
scenarios.

Rename functions intel_cdclk_can_squash() and
intel_cdclk_can_crawl() since they no longer simply check
if squashing and crawling can be performed.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 169 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  16 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 3 files changed, 123 insertions(+), 64 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 8888fda8b701..04f3f77ef0a8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1700,12 +1700,23 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
 {
+	struct intel_atomic_state *state;
+	struct intel_cdclk_state *new_cdclk_state;
+	struct cdclk_steps *cdclk_steps;
+	struct intel_cdclk_state *cdclk_state;
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
+	u32 squash_ctl = 0;
 	u32 val;
 	u16 waveform;
 	int clock;
 	int ret;
+	int i;
+
+	cdclk_state =  to_intel_cdclk_state(dev_priv->cdclk.obj.state);
+	state = cdclk_state->base.state;
+	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
+	cdclk_steps = new_cdclk_state->steps;
 
 	/* Inform power controller of upcoming frequency change. */
 	if (DISPLAY_VER(dev_priv) >= 11)
@@ -1728,40 +1739,43 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco > 0) {
-		if (dev_priv->cdclk.hw.vco != vco)
+	for (i = 0; i < CDCLK_ACTIONS; i++) {
+		switch (cdclk_steps[i].action) {
+		case CDCLK_MODESET:
+			if (DISPLAY_VER(dev_priv) >= 11) {
+				if (dev_priv->cdclk.hw.vco != 0 &&
+				    dev_priv->cdclk.hw.vco != vco)
+					icl_cdclk_pll_disable(dev_priv);
+
+				if (dev_priv->cdclk.hw.vco != vco)
+					icl_cdclk_pll_enable(dev_priv, vco);
+			} else {
+				if (dev_priv->cdclk.hw.vco != 0 &&
+				    dev_priv->cdclk.hw.vco != vco)
+					bxt_de_pll_disable(dev_priv);
+
+				if (dev_priv->cdclk.hw.vco != vco)
+					bxt_de_pll_enable(dev_priv, vco);
+			}
+			clock = cdclk;
+			break;
+		case CDCLK_CRAWL:
 			adlp_cdclk_pll_crawl(dev_priv, vco);
-	} else if (DISPLAY_VER(dev_priv) >= 11) {
-		if (dev_priv->cdclk.hw.vco != 0 &&
-		    dev_priv->cdclk.hw.vco != vco)
-			icl_cdclk_pll_disable(dev_priv);
-
-		if (dev_priv->cdclk.hw.vco != vco)
-			icl_cdclk_pll_enable(dev_priv, vco);
-	} else {
-		if (dev_priv->cdclk.hw.vco != 0 &&
-		    dev_priv->cdclk.hw.vco != vco)
-			bxt_de_pll_disable(dev_priv);
-
-		if (dev_priv->cdclk.hw.vco != vco)
-			bxt_de_pll_enable(dev_priv, vco);
-	}
-
-	waveform = cdclk_squash_waveform(dev_priv, cdclk);
-
-	if (waveform)
-		clock = vco / 2;
-	else
-		clock = cdclk;
-
-	if (has_cdclk_squasher(dev_priv)) {
-		u32 squash_ctl = 0;
-
-		if (waveform)
+			clock = cdclk;
+			break;
+		case CDCLK_SQUASH:
+			waveform =  cdclk_squash_waveform(dev_priv, cdclk_steps[i].cdclk);
+			clock = vco / 2;
 			squash_ctl = CDCLK_SQUASH_ENABLE |
 				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
-
-		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
+			intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
+			break;
+		case CDCLK_NOOP:
+			break;
+		default:
+			MISSING_CASE(cdclk_steps[i].action);
+			break;
+		}
 	}
 
 	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
@@ -1951,11 +1965,12 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
 		skl_cdclk_uninit_hw(i915);
 }
 
-static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
-				  const struct intel_cdclk_config *a,
-				  const struct intel_cdclk_config *b)
+static bool intel_cdclk_crawl(struct drm_i915_private *dev_priv,
+			      const struct intel_cdclk_state *a,
+			      struct intel_cdclk_state *b)
 {
 	int a_div, b_div;
+	struct cdclk_steps *cdclk_transition = b->steps;
 
 	if (!HAS_CDCLK_CRAWL(dev_priv))
 		return false;
@@ -1964,19 +1979,25 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 	 * The vco and cd2x divider will change independently
 	 * from each, so we disallow cd2x change when crawling.
 	 */
-	a_div = DIV_ROUND_CLOSEST(a->vco, a->cdclk);
-	b_div = DIV_ROUND_CLOSEST(b->vco, b->cdclk);
+	a_div = DIV_ROUND_CLOSEST(a->actual.vco, a->actual.cdclk);
+	b_div = DIV_ROUND_CLOSEST(b->actual.vco, b->actual.cdclk);
 
-	return a->vco != 0 && b->vco != 0 &&
-		a->vco != b->vco &&
+	cdclk_transition[0].action = CDCLK_CRAWL;
+	cdclk_transition[0].cdclk = b->actual.cdclk;
+	cdclk_transition[1].action = CDCLK_NOOP;
+	cdclk_transition[1].cdclk = b->actual.cdclk;
+
+	return a->actual.vco != 0 && b->actual.vco != 0 &&
+		a->actual.vco != b->actual.vco &&
 		a_div == b_div &&
-		a->ref == b->ref;
+		a->actual.ref == b->actual.ref;
 }
 
-static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
-				   const struct intel_cdclk_config *a,
-				   const struct intel_cdclk_config *b)
+static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
+			       const struct intel_cdclk_state *a,
+			       struct intel_cdclk_state *b)
 {
+	struct cdclk_steps *cdclk_transition = b->steps;
 	/*
 	 * FIXME should store a bit more state in intel_cdclk_config
 	 * to differentiate squasher vs. cd2x divider properly. For
@@ -1986,10 +2007,15 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
 	if (!has_cdclk_squasher(dev_priv))
 		return false;
 
-	return a->cdclk != b->cdclk &&
-		a->vco != 0 &&
-		a->vco == b->vco &&
-		a->ref == b->ref;
+	cdclk_transition[0].action = CDCLK_SQUASH;
+	cdclk_transition[0].cdclk = b->actual.cdclk;
+	cdclk_transition[1].action = CDCLK_NOOP;
+	cdclk_transition[1].cdclk = b->actual.cdclk;
+
+	return a->actual.cdclk != b->actual.cdclk &&
+		a->actual.vco != 0 &&
+		a->actual.vco == b->actual.vco &&
+		a->actual.ref == b->actual.ref;
 }
 
 /**
@@ -2002,9 +2028,27 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
  * True if changing between the two CDCLK configurations
  * requires all pipes to be off, false if not.
  */
-bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
+bool intel_cdclk_needs_modeset(struct drm_i915_private *i915,
+			       const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b)
 {
+	struct intel_cdclk_state *new_cdclk_state;
+	struct cdclk_steps *cdclk_transition;
+	struct intel_cdclk_state *cdclk_state =  to_intel_cdclk_state(i915->cdclk.obj.state);
+	struct intel_atomic_state *state = cdclk_state->base.state;
+
+	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
+	cdclk_transition = new_cdclk_state->steps;
+
+	if (a->cdclk != b->cdclk ||
+	    a->vco != b->vco ||
+	    a->ref != b->ref) {
+		cdclk_transition[0].action = CDCLK_MODESET;
+		cdclk_transition[0].cdclk = b->cdclk;
+		cdclk_transition[1].action = CDCLK_NOOP;
+		cdclk_transition[1].cdclk = b->cdclk;
+	}
+
 	return a->cdclk != b->cdclk ||
 		a->vco != b->vco ||
 		a->ref != b->ref;
@@ -2052,10 +2096,11 @@ static bool intel_cdclk_can_cd2x_update(struct drm_i915_private *dev_priv,
  * Returns:
  * True if the CDCLK configurations don't match, false if they do.
  */
-static bool intel_cdclk_changed(const struct intel_cdclk_config *a,
+static bool intel_cdclk_changed(struct drm_i915_private *i915,
+				const struct intel_cdclk_config *a,
 				const struct intel_cdclk_config *b)
 {
-	return intel_cdclk_needs_modeset(a, b) ||
+	return intel_cdclk_needs_modeset(i915, a, b) ||
 		a->voltage_level != b->voltage_level;
 }
 
@@ -2084,7 +2129,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 {
 	struct intel_encoder *encoder;
 
-	if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
+	if (!intel_cdclk_changed(dev_priv, &dev_priv->cdclk.hw, cdclk_config))
 		return;
 
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->cdclk_funcs->set_cdclk))
@@ -2131,7 +2176,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	intel_audio_cdclk_change_post(dev_priv);
 
 	if (drm_WARN(&dev_priv->drm,
-		     intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config),
+		     intel_cdclk_changed(dev_priv, &dev_priv->cdclk.hw, cdclk_config),
 		     "cdclk state doesn't match!\n")) {
 		intel_cdclk_dump_config(dev_priv, &dev_priv->cdclk.hw, "[hw state]");
 		intel_cdclk_dump_config(dev_priv, cdclk_config, "[sw state]");
@@ -2155,7 +2200,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_new_cdclk_state(state);
 	enum pipe pipe = new_cdclk_state->pipe;
 
-	if (!intel_cdclk_changed(&old_cdclk_state->actual,
+	if (!intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
 				 &new_cdclk_state->actual))
 		return;
 
@@ -2184,7 +2229,7 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_new_cdclk_state(state);
 	enum pipe pipe = new_cdclk_state->pipe;
 
-	if (!intel_cdclk_changed(&old_cdclk_state->actual,
+	if (!intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
 				 &new_cdclk_state->actual))
 		return;
 
@@ -2738,7 +2783,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
-	if (intel_cdclk_changed(&old_cdclk_state->actual,
+	if (intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
 				&new_cdclk_state->actual)) {
 		/*
 		 * Also serialize commits across all crtcs
@@ -2749,7 +2794,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			return ret;
 	} else if (old_cdclk_state->active_pipes != new_cdclk_state->active_pipes ||
 		   old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk ||
-		   intel_cdclk_changed(&old_cdclk_state->logical,
+		   intel_cdclk_changed(dev_priv, &old_cdclk_state->logical,
 				       &new_cdclk_state->logical)) {
 		ret = intel_atomic_lock_global_state(&new_cdclk_state->base);
 		if (ret)
@@ -2776,14 +2821,14 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			pipe = INVALID_PIPE;
 	}
 
-	if (intel_cdclk_can_squash(dev_priv,
-				   &old_cdclk_state->actual,
-				   &new_cdclk_state->actual)) {
+	if (intel_cdclk_squash(dev_priv,
+			       old_cdclk_state,
+			       new_cdclk_state)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via squasher\n");
-	} else if (intel_cdclk_can_crawl(dev_priv,
-					 &old_cdclk_state->actual,
-					 &new_cdclk_state->actual)) {
+	} else if (intel_cdclk_crawl(dev_priv,
+				     old_cdclk_state,
+				     new_cdclk_state)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via crawl\n");
 	} else if (pipe != INVALID_PIPE) {
@@ -2792,7 +2837,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk cd2x divider with pipe %c active\n",
 			    pipe_name(pipe));
-	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
+	} else if (intel_cdclk_needs_modeset(dev_priv, &old_cdclk_state->actual,
 					     &new_cdclk_state->actual)) {
 		/* All pipes must be switched off while we change the cdclk. */
 		ret = intel_modeset_all_pipes(state);
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index df66f66fbad0..5008463958b1 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -20,6 +20,14 @@ struct intel_cdclk_config {
 	u8 voltage_level;
 };
 
+enum cdclk_actions {
+	CDCLK_MODESET = 0,
+	CDCLK_SQUASH,
+	CDCLK_CRAWL,
+	CDCLK_NOOP,
+	CDCLK_ACTIONS
+};
+
 struct intel_cdclk_state {
 	struct intel_global_state base;
 
@@ -49,6 +57,11 @@ struct intel_cdclk_state {
 
 	/* bitmask of active pipes */
 	u8 active_pipes;
+
+	struct cdclk_steps {
+		enum cdclk_actions action;
+		u32 cdclk;
+	} steps[CDCLK_ACTIONS];
 };
 
 int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state);
@@ -58,7 +71,8 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv);
 void intel_update_max_cdclk(struct drm_i915_private *dev_priv);
 void intel_update_cdclk(struct drm_i915_private *dev_priv);
 u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
-bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
+bool intel_cdclk_needs_modeset(struct drm_i915_private *i915,
+			       const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b);
 void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
 void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 3dc859032bac..417a56d54056 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1118,7 +1118,7 @@ static void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 	intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
 	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
+		    intel_cdclk_needs_modeset(dev_priv, &dev_priv->cdclk.hw,
 					      &cdclk_config));
 
 	gen9_assert_dbuf_enabled(dev_priv);
-- 
2.25.1

