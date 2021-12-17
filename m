Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DE347953C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 21:05:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B689310E583;
	Fri, 17 Dec 2021 20:04:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A430310E583
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 20:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639771496; x=1671307496;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YoKhkqKRWRpXaWpvPuvbh2yYl4FLJo8O/zTCq6jDjnc=;
 b=hRqSmBGfBI5TWmOwAyHIHIyNihx+c3Ni0MPKmKU/sTBxRGEOwqnxnrK/
 fXFeyM8QR4nqN2zQ4hbbtYBkqTCkEsx13+JJPKx5M0SPkgezHMtw2LMOq
 C5R1cJG5lKzJ77Pz27jotFc8MEDaBsrFaTldqedHa26QRzSPqOx2Hp+xA
 7RTrMpytwNON/ybU4QveCq2Xq8nxtYZK4Td63K0AYEnc4oLSefG3LpGR4
 ZVvlXUw2fX1Yvj7h5MZ7QbmQUZCsWvgDSVVgsTnvCmV3PtCxNMsiiR32g
 dJOMm40TrYIlwGYszncitSi1Rfgel/dNANaRijZV5yEA8NPwzR1d/uQPw Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10201"; a="237367002"
X-IronPort-AV: E=Sophos;i="5.88,214,1635231600"; d="scan'208";a="237367002"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 12:04:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,214,1635231600"; d="scan'208";a="662940404"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 12:04:54 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Dec 2021 12:03:02 -0800
Message-Id: <20211217200302.2855240-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Move cdclk checks to atomic
 check
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

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 130 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   3 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |  13 ++
 4 files changed, 96 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 249f81a80eb7..4a5ddc202c05 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1698,12 +1698,15 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
 {
+	struct cdclk_steps *cdclk_steps = dev_priv->cdclk.steps;
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
+	u32 squash_ctl = 0;
 	u32 val;
 	u16 waveform;
 	int clock;
 	int ret;
+	int i;
 
 	/* Inform power controller of upcoming frequency change. */
 	if (DISPLAY_VER(dev_priv) >= 11)
@@ -1727,40 +1730,43 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
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
-				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
-
-		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
+					CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
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
@@ -1950,10 +1956,11 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
 		skl_cdclk_uninit_hw(i915);
 }
 
-static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
+static bool intel_cdclk_crawl(struct drm_i915_private *dev_priv,
 				  const struct intel_cdclk_config *a,
 				  const struct intel_cdclk_config *b)
 {
+	struct cdclk_steps *cdclk_transition = dev_priv->cdclk.steps;
 	int a_div, b_div;
 
 	if (!HAS_CDCLK_CRAWL(dev_priv))
@@ -1966,16 +1973,22 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 	a_div = DIV_ROUND_CLOSEST(a->vco, a->cdclk);
 	b_div = DIV_ROUND_CLOSEST(b->vco, b->cdclk);
 
+	cdclk_transition[0].action = CDCLK_CRAWL;
+	cdclk_transition[0].cdclk = b->cdclk;
+	cdclk_transition[1].action = CDCLK_NOOP;
+	cdclk_transition[1].cdclk = b->cdclk;
+
 	return a->vco != 0 && b->vco != 0 &&
 		a->vco != b->vco &&
 		a_div == b_div &&
 		a->ref == b->ref;
 }
 
-static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
+static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
 				   const struct intel_cdclk_config *a,
 				   const struct intel_cdclk_config *b)
 {
+	struct cdclk_steps *cdclk_transition = dev_priv->cdclk.steps;
 	/*
 	 * FIXME should store a bit more state in intel_cdclk_config
 	 * to differentiate squasher vs. cd2x divider properly. For
@@ -1985,6 +1998,11 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
 	if (!has_cdclk_squasher(dev_priv))
 		return false;
 
+	cdclk_transition[0].action = CDCLK_SQUASH;
+	cdclk_transition[0].cdclk = b->cdclk;
+	cdclk_transition[1].action = CDCLK_NOOP;
+	cdclk_transition[1].cdclk = b->cdclk;
+
 	return a->cdclk != b->cdclk &&
 		a->vco != 0 &&
 		a->vco == b->vco &&
@@ -2001,9 +2019,19 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
  * True if changing between the two CDCLK configurations
  * requires all pipes to be off, false if not.
  */
-bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
+bool intel_cdclk_needs_modeset(struct drm_i915_private *dev_priv,
+			       const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b)
 {
+	struct cdclk_steps *cdclk_transition = dev_priv->cdclk.steps;
+
+	if (a->cdclk != b->cdclk || a->vco != b->vco ||	a->ref != b->ref) {
+		cdclk_transition[0].action = CDCLK_MODESET;
+		cdclk_transition[0].cdclk = b->cdclk;
+		cdclk_transition[1].action = CDCLK_NOOP;
+		cdclk_transition[1].cdclk = b->cdclk;
+	}
+
 	return a->cdclk != b->cdclk ||
 		a->vco != b->vco ||
 		a->ref != b->ref;
@@ -2051,10 +2079,11 @@ static bool intel_cdclk_can_cd2x_update(struct drm_i915_private *dev_priv,
  * Returns:
  * True if the CDCLK configurations don't match, false if they do.
  */
-static bool intel_cdclk_changed(const struct intel_cdclk_config *a,
+static bool intel_cdclk_changed(struct drm_i915_private *dev_priv,
+				const struct intel_cdclk_config *a,
 				const struct intel_cdclk_config *b)
 {
-	return intel_cdclk_needs_modeset(a, b) ||
+	return intel_cdclk_needs_modeset(dev_priv, a, b) ||
 		a->voltage_level != b->voltage_level;
 }
 
@@ -2082,7 +2111,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 {
 	struct intel_encoder *encoder;
 
-	if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
+	if (!intel_cdclk_changed(dev_priv, &dev_priv->cdclk.hw, cdclk_config))
 		return;
 
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->cdclk_funcs->set_cdclk))
@@ -2129,7 +2158,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	intel_audio_cdclk_change_post(dev_priv);
 
 	if (drm_WARN(&dev_priv->drm,
-		     intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config),
+		     intel_cdclk_changed(dev_priv, &dev_priv->cdclk.hw, cdclk_config),
 		     "cdclk state doesn't match!\n")) {
 		intel_dump_cdclk_config(&dev_priv->cdclk.hw, "[hw state]");
 		intel_dump_cdclk_config(cdclk_config, "[sw state]");
@@ -2153,7 +2182,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_new_cdclk_state(state);
 	enum pipe pipe = new_cdclk_state->pipe;
 
-	if (!intel_cdclk_changed(&old_cdclk_state->actual,
+	if (!intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
 				 &new_cdclk_state->actual))
 		return;
 
@@ -2182,7 +2211,7 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_new_cdclk_state(state);
 	enum pipe pipe = new_cdclk_state->pipe;
 
-	if (!intel_cdclk_changed(&old_cdclk_state->actual,
+	if (!intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
 				 &new_cdclk_state->actual))
 		return;
 
@@ -2736,7 +2765,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
-	if (intel_cdclk_changed(&old_cdclk_state->actual,
+	if (intel_cdclk_changed(dev_priv, &old_cdclk_state->actual,
 				&new_cdclk_state->actual)) {
 		/*
 		 * Also serialize commits across all crtcs
@@ -2747,7 +2776,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			return ret;
 	} else if (old_cdclk_state->active_pipes != new_cdclk_state->active_pipes ||
 		   old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk ||
-		   intel_cdclk_changed(&old_cdclk_state->logical,
+		   intel_cdclk_changed(dev_priv, &old_cdclk_state->logical,
 				       &new_cdclk_state->logical)) {
 		ret = intel_atomic_lock_global_state(&new_cdclk_state->base);
 		if (ret)
@@ -2774,14 +2803,14 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			pipe = INVALID_PIPE;
 	}
 
-	if (intel_cdclk_can_squash(dev_priv,
-				   &old_cdclk_state->actual,
-				   &new_cdclk_state->actual)) {
+	if (intel_cdclk_squash(dev_priv,
+			       &old_cdclk_state->actual,
+			       &new_cdclk_state->actual)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via squasher\n");
-	} else if (intel_cdclk_can_crawl(dev_priv,
-					 &old_cdclk_state->actual,
-					 &new_cdclk_state->actual)) {
+	} else if (intel_cdclk_crawl(dev_priv,
+				     &old_cdclk_state->actual,
+				     &new_cdclk_state->actual)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via crawl\n");
 	} else if (pipe != INVALID_PIPE) {
@@ -2790,7 +2819,8 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk cd2x divider with pipe %c active\n",
 			    pipe_name(pipe));
-	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
+	} else if (intel_cdclk_needs_modeset(dev_priv,
+					     &old_cdclk_state->actual,
 					     &new_cdclk_state->actual)) {
 		/* All pipes must be switched off while we change the cdclk. */
 		ret = intel_modeset_all_pipes(state);
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 71dd84740ae3..cc52ef029bb4 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -58,7 +58,8 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv);
 void intel_update_max_cdclk(struct drm_i915_private *dev_priv);
 void intel_update_cdclk(struct drm_i915_private *dev_priv);
 u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
-bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
+bool intel_cdclk_needs_modeset(struct drm_i915_private *dev_priv,
+			       const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b);
 void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
 void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 05babdcf5f2e..5c6671296019 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1297,7 +1297,7 @@ static void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 	intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
 	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
+		    intel_cdclk_needs_modeset(dev_priv, &dev_priv->cdclk.hw,
 					      &cdclk_config));
 
 	gen9_assert_dbuf_enabled(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ed48179bacd8..2d2f97138fe2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -119,6 +119,14 @@
 
 struct drm_i915_gem_object;
 
+enum cdclk_actions {
+	CDCLK_MODESET = 0,
+	CDCLK_SQUASH,
+	CDCLK_CRAWL,
+	CDCLK_NOOP,
+	CDCLK_ACTIONS
+};
+
 /* Threshold == 5 for long IRQs, 50 for short */
 #define HPD_STORM_DEFAULT_THRESHOLD 50
 
@@ -769,6 +777,11 @@ struct drm_i915_private {
 		const struct intel_cdclk_vals *table;
 
 		struct intel_global_obj obj;
+
+		struct cdclk_steps {
+			enum cdclk_actions action;
+			u32 cdclk;
+		} steps[CDCLK_ACTIONS];
 	} cdclk;
 
 	struct {
-- 
2.25.1

