Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7108A6FC8D
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 13:36:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2365910E26A;
	Tue, 25 Mar 2025 12:36:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eW3+r2Sf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B8C710E26A;
 Tue, 25 Mar 2025 12:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742906210; x=1774442210;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=atttiMEv9F9eMy7sZiVXIDH5Ytpv0DfPaWw4wJLB+EI=;
 b=eW3+r2Sfu2FBYxDHjbrBGbXZhHwCATzlYmsjW/gWZhbp1x4BufnbiaKR
 7eOff/jX/dK706iRC4rUnZ53foyo4OHTsY/ENerqM5x9vj48o6+WpBbMX
 v0hv1EJ/LTFZqaga+Xxm62FF1VtLUARkcS1AZmG4sMDEO76zXcGEdOkde
 /aCZ+uMeUphZ5xdC8/SHOv41OXXJqs4WhjbEIxIihdDUHmHshO084Hy8j
 /pDhHLjXabMmQl0OFOTv05VoLmr5KPRY3EPf/Gdfs//rAFWEKK1QNmcti
 4gacMtH16SYdWIl/nkEdTwgpt5S1UOoki+WeF5hEvGDs/77A/M+yubD6v A==;
X-CSE-ConnectionGUID: czgvKmUoQ06E19KNdSMiUg==
X-CSE-MsgGUID: 3TT5m+4jStOjczHld3q+xg==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="47933190"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="47933190"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:36:49 -0700
X-CSE-ConnectionGUID: xH08rZxwQPShfvCBR5rfgg==
X-CSE-MsgGUID: h3D+94ZoS16vYqmC2jKyWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="155274779"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.134])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 05:36:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/6] drm/i915/dpll: convert intel_dpll.[ch] to struct
 intel_display
Date: Tue, 25 Mar 2025 14:36:33 +0200
Message-Id: <16fe331ba51c269d6f9871d7b0a3b8df3c7b5342.1742906146.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742906146.git.jani.nikula@intel.com>
References: <cover.1742906146.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_dpll.[ch] to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_display_driver.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     | 312 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll.h     |  13 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |   5 +-
 5 files changed, 160 insertions(+), 178 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 48282611db3e..5e2c210fcd84 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2146,9 +2146,9 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 
 	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI)) {
 		if (display->platform.cherryview)
-			chv_disable_pll(dev_priv, pipe);
+			chv_disable_pll(display, pipe);
 		else if (display->platform.valleyview)
-			vlv_disable_pll(dev_priv, pipe);
+			vlv_disable_pll(display, pipe);
 		else
 			i9xx_disable_pll(old_crtc_state);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index e4fbf1e5b2bb..61748525da0b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -181,8 +181,6 @@ static void intel_plane_possible_crtcs_init(struct intel_display *display)
 
 void intel_display_driver_early_probe(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	if (!HAS_DISPLAY(display))
 		return;
 
@@ -198,7 +196,7 @@ void intel_display_driver_early_probe(struct intel_display *display)
 	intel_color_init_hooks(display);
 	intel_init_cdclk_hooks(display);
 	intel_audio_hooks_init(display);
-	intel_dpll_init_clock_hook(i915);
+	intel_dpll_init_clock_hook(display);
 	intel_init_display_hooks(display);
 	intel_fdi_init_hook(display);
 	intel_dmc_wl_init(display);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 23f4e01c3e8f..0481b1365b85 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -373,14 +373,15 @@ int chv_calc_dpll_params(int refclk, struct dpll *clock)
 
 static int i9xx_pll_refclk(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 
 	if ((hw_state->dpll & PLL_REF_INPUT_MASK) == PLLB_REF_INPUT_SPREADSPECTRUMIN)
-		return i915->display.vbt.lvds_ssc_freq;
+		return display->vbt.lvds_ssc_freq;
 	else if (HAS_PCH_SPLIT(i915))
 		return 120000;
-	else if (DISPLAY_VER(i915) != 2)
+	else if (DISPLAY_VER(display) != 2)
 		return 96000;
 	else
 		return 48000;
@@ -389,27 +390,27 @@ static int i9xx_pll_refclk(const struct intel_crtc_state *crtc_state)
 void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
 			    struct intel_dpll_hw_state *dpll_hw_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
 
-	if (DISPLAY_VER(dev_priv) >= 4) {
+	if (DISPLAY_VER(display) >= 4) {
 		u32 tmp;
 
 		/* No way to read it out on pipes B and C */
-		if (IS_CHERRYVIEW(dev_priv) && crtc->pipe != PIPE_A)
-			tmp = dev_priv->display.state.chv_dpll_md[crtc->pipe];
+		if (display->platform.cherryview && crtc->pipe != PIPE_A)
+			tmp = display->state.chv_dpll_md[crtc->pipe];
 		else
-			tmp = intel_de_read(dev_priv,
-					    DPLL_MD(dev_priv, crtc->pipe));
+			tmp = intel_de_read(display,
+					    DPLL_MD(display, crtc->pipe));
 
 		hw_state->dpll_md = tmp;
 	}
 
-	hw_state->dpll = intel_de_read(dev_priv, DPLL(dev_priv, crtc->pipe));
+	hw_state->dpll = intel_de_read(display, DPLL(display, crtc->pipe));
 
-	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv)) {
-		hw_state->fp0 = intel_de_read(dev_priv, FP0(crtc->pipe));
-		hw_state->fp1 = intel_de_read(dev_priv, FP1(crtc->pipe));
+	if (!display->platform.valleyview && !display->platform.cherryview) {
+		hw_state->fp0 = intel_de_read(display, FP0(crtc->pipe));
+		hw_state->fp1 = intel_de_read(display, FP1(crtc->pipe));
 	} else {
 		/* Mask out read-only status bits. */
 		hw_state->dpll &= ~(DPLL_LOCK_VLV |
@@ -423,7 +424,6 @@ void i9xx_crtc_clock_get(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	u32 dpll = hw_state->dpll;
 	u32 fp;
@@ -437,7 +437,7 @@ void i9xx_crtc_clock_get(struct intel_crtc_state *crtc_state)
 		fp = hw_state->fp1;
 
 	clock.m1 = (fp & FP_M1_DIV_MASK) >> FP_M1_DIV_SHIFT;
-	if (IS_PINEVIEW(dev_priv)) {
+	if (display->platform.pineview) {
 		clock.n = ffs((fp & FP_N_PINEVIEW_DIV_MASK) >> FP_N_DIV_SHIFT) - 1;
 		clock.m2 = (fp & FP_M2_PINEVIEW_DIV_MASK) >> FP_M2_DIV_SHIFT;
 	} else {
@@ -445,8 +445,8 @@ void i9xx_crtc_clock_get(struct intel_crtc_state *crtc_state)
 		clock.m2 = (fp & FP_M2_DIV_MASK) >> FP_M2_DIV_SHIFT;
 	}
 
-	if (DISPLAY_VER(dev_priv) != 2) {
-		if (IS_PINEVIEW(dev_priv))
+	if (DISPLAY_VER(display) != 2) {
+		if (display->platform.pineview)
 			clock.p1 = ffs((dpll & DPLL_FPA01_P1_POST_DIV_MASK_PINEVIEW) >>
 				DPLL_FPA01_P1_POST_DIV_SHIFT_PINEVIEW);
 		else
@@ -463,23 +463,23 @@ void i9xx_crtc_clock_get(struct intel_crtc_state *crtc_state)
 				7 : 14;
 			break;
 		default:
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "Unknown DPLL mode %08x in programmed "
 				    "mode\n", (int)(dpll & DPLL_MODE_MASK));
 			return;
 		}
 
-		if (IS_PINEVIEW(dev_priv))
+		if (display->platform.pineview)
 			port_clock = pnv_calc_dpll_params(refclk, &clock);
 		else
 			port_clock = i9xx_calc_dpll_params(refclk, &clock);
 	} else {
 		enum pipe lvds_pipe;
 
-		if (IS_I85X(dev_priv) &&
+		if (display->platform.i85x &&
 		    intel_lvds_port_enabled(display, LVDS, &lvds_pipe) &&
 		    lvds_pipe == crtc->pipe) {
-			u32 lvds = intel_de_read(dev_priv, LVDS);
+			u32 lvds = intel_de_read(display, LVDS);
 
 			clock.p1 = ffs((dpll & DPLL_FPA01_P1_POST_DIV_MASK_I830_LVDS) >>
 				       DPLL_FPA01_P1_POST_DIV_SHIFT);
@@ -578,7 +578,7 @@ void chv_crtc_clock_get(struct intel_crtc_state *crtc_state)
  * Returns whether the given set of divisors are valid for a given refclk with
  * the given connectors.
  */
-static bool intel_pll_is_valid(struct drm_i915_private *dev_priv,
+static bool intel_pll_is_valid(struct intel_display *display,
 			       const struct intel_limit *limit,
 			       const struct dpll *clock)
 {
@@ -591,14 +591,14 @@ static bool intel_pll_is_valid(struct drm_i915_private *dev_priv,
 	if (clock->m1 < limit->m1.min || limit->m1.max < clock->m1)
 		return false;
 
-	if (!IS_PINEVIEW(dev_priv) &&
-	    !IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv) &&
-	    !IS_BROXTON(dev_priv) && !IS_GEMINILAKE(dev_priv))
+	if (!display->platform.pineview &&
+	    !display->platform.valleyview && !display->platform.cherryview &&
+	    !display->platform.broxton && !display->platform.geminilake)
 		if (clock->m1 <= clock->m2)
 			return false;
 
-	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv) &&
-	    !IS_BROXTON(dev_priv) && !IS_GEMINILAKE(dev_priv)) {
+	if (!display->platform.valleyview && !display->platform.cherryview &&
+	    !display->platform.broxton && !display->platform.geminilake) {
 		if (clock->p < limit->p.min || limit->p.max < clock->p)
 			return false;
 		if (clock->m < limit->m.min || limit->m.max < clock->m)
@@ -657,7 +657,7 @@ i9xx_find_best_dpll(const struct intel_limit *limit,
 		    const struct dpll *match_clock,
 		    struct dpll *best_clock)
 {
-	struct drm_device *dev = crtc_state->uapi.crtc->dev;
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct dpll clock;
 	int err = target;
 
@@ -678,7 +678,7 @@ i9xx_find_best_dpll(const struct intel_limit *limit,
 					int this_err;
 
 					i9xx_calc_dpll_params(refclk, &clock);
-					if (!intel_pll_is_valid(to_i915(dev),
+					if (!intel_pll_is_valid(display,
 								limit,
 								&clock))
 						continue;
@@ -715,7 +715,7 @@ pnv_find_best_dpll(const struct intel_limit *limit,
 		   const struct dpll *match_clock,
 		   struct dpll *best_clock)
 {
-	struct drm_device *dev = crtc_state->uapi.crtc->dev;
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct dpll clock;
 	int err = target;
 
@@ -734,7 +734,7 @@ pnv_find_best_dpll(const struct intel_limit *limit,
 					int this_err;
 
 					pnv_calc_dpll_params(refclk, &clock);
-					if (!intel_pll_is_valid(to_i915(dev),
+					if (!intel_pll_is_valid(display,
 								limit,
 								&clock))
 						continue;
@@ -771,7 +771,7 @@ g4x_find_best_dpll(const struct intel_limit *limit,
 		   const struct dpll *match_clock,
 		   struct dpll *best_clock)
 {
-	struct drm_device *dev = crtc_state->uapi.crtc->dev;
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct dpll clock;
 	int max_n;
 	bool found = false;
@@ -795,7 +795,7 @@ g4x_find_best_dpll(const struct intel_limit *limit,
 					int this_err;
 
 					i9xx_calc_dpll_params(refclk, &clock);
-					if (!intel_pll_is_valid(to_i915(dev),
+					if (!intel_pll_is_valid(display,
 								limit,
 								&clock))
 						continue;
@@ -818,7 +818,7 @@ g4x_find_best_dpll(const struct intel_limit *limit,
  * Check if the calculated PLL configuration is more optimal compared to the
  * best configuration and error found so far. Return the calculated error.
  */
-static bool vlv_PLL_is_optimal(struct drm_device *dev, int target_freq,
+static bool vlv_PLL_is_optimal(struct intel_display *display, int target_freq,
 			       const struct dpll *calculated_clock,
 			       const struct dpll *best_clock,
 			       unsigned int best_error_ppm,
@@ -828,13 +828,13 @@ static bool vlv_PLL_is_optimal(struct drm_device *dev, int target_freq,
 	 * For CHV ignore the error and consider only the P value.
 	 * Prefer a bigger P value based on HW requirements.
 	 */
-	if (IS_CHERRYVIEW(to_i915(dev))) {
+	if (display->platform.cherryview) {
 		*error_ppm = 0;
 
 		return calculated_clock->p > best_clock->p;
 	}
 
-	if (drm_WARN_ON_ONCE(dev, !target_freq))
+	if (drm_WARN_ON_ONCE(display->drm, !target_freq))
 		return false;
 
 	*error_ppm = div_u64(1000000ULL *
@@ -865,8 +865,7 @@ vlv_find_best_dpll(const struct intel_limit *limit,
 		   const struct dpll *match_clock,
 		   struct dpll *best_clock)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_device *dev = crtc->base.dev;
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct dpll clock;
 	unsigned int bestppm = 1000000;
 	/* min update 19.2 MHz */
@@ -890,12 +889,12 @@ vlv_find_best_dpll(const struct intel_limit *limit,
 
 					vlv_calc_dpll_params(refclk, &clock);
 
-					if (!intel_pll_is_valid(to_i915(dev),
+					if (!intel_pll_is_valid(display,
 								limit,
 								&clock))
 						continue;
 
-					if (!vlv_PLL_is_optimal(dev, target,
+					if (!vlv_PLL_is_optimal(display, target,
 								&clock,
 								best_clock,
 								bestppm, &ppm))
@@ -923,8 +922,7 @@ chv_find_best_dpll(const struct intel_limit *limit,
 		   const struct dpll *match_clock,
 		   struct dpll *best_clock)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_device *dev = crtc->base.dev;
+	struct intel_display *display = to_intel_display(crtc_state);
 	unsigned int best_error_ppm;
 	struct dpll clock;
 	u64 m2;
@@ -959,10 +957,10 @@ chv_find_best_dpll(const struct intel_limit *limit,
 
 			chv_calc_dpll_params(refclk, &clock);
 
-			if (!intel_pll_is_valid(to_i915(dev), limit, &clock))
+			if (!intel_pll_is_valid(display, limit, &clock))
 				continue;
 
-			if (!vlv_PLL_is_optimal(dev, target, &clock, best_clock,
+			if (!vlv_PLL_is_optimal(display, target, &clock, best_clock,
 						best_error_ppm, &error_ppm))
 				continue;
 
@@ -1006,8 +1004,6 @@ static u32 i9xx_dpll(const struct intel_crtc_state *crtc_state,
 		     const struct dpll *reduced_clock)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dpll;
 
 	dpll = DPLL_VCO_ENABLE | DPLL_VGA_MODE_DIS;
@@ -1017,8 +1013,8 @@ static u32 i9xx_dpll(const struct intel_crtc_state *crtc_state,
 	else
 		dpll |= DPLLB_MODE_DAC_SERIAL;
 
-	if (IS_I945G(dev_priv) || IS_I945GM(dev_priv) ||
-	    IS_G33(dev_priv) || IS_PINEVIEW(dev_priv)) {
+	if (display->platform.i945g || display->platform.i945gm ||
+	    display->platform.g33 || display->platform.pineview) {
 		dpll |= (crtc_state->pixel_multiplier - 1)
 			<< SDVO_MULTIPLIER_SHIFT_HIRES;
 	}
@@ -1031,10 +1027,10 @@ static u32 i9xx_dpll(const struct intel_crtc_state *crtc_state,
 		dpll |= DPLL_SDVO_HIGH_SPEED;
 
 	/* compute bitmask from p1 value */
-	if (IS_G4X(dev_priv)) {
+	if (display->platform.g4x) {
 		dpll |= (1 << (clock->p1 - 1)) << DPLL_FPA01_P1_POST_DIV_SHIFT;
 		dpll |= (1 << (reduced_clock->p1 - 1)) << DPLL_FPA1_P1_POST_DIV_SHIFT;
-	} else if (IS_PINEVIEW(dev_priv)) {
+	} else if (display->platform.pineview) {
 		dpll |= (1 << (clock->p1 - 1)) << DPLL_FPA01_P1_POST_DIV_SHIFT_PINEVIEW;
 		WARN_ON(reduced_clock->p1 != clock->p1);
 	} else {
@@ -1058,7 +1054,7 @@ static u32 i9xx_dpll(const struct intel_crtc_state *crtc_state,
 	}
 	WARN_ON(reduced_clock->p2 != clock->p2);
 
-	if (DISPLAY_VER(dev_priv) >= 4)
+	if (DISPLAY_VER(display) >= 4)
 		dpll |= (6 << PLL_LOAD_PULSE_PHASE_SHIFT);
 
 	if (crtc_state->sdvo_tv_clock)
@@ -1076,11 +1072,10 @@ static void i9xx_compute_dpll(struct intel_crtc_state *crtc_state,
 			      const struct dpll *clock,
 			      const struct dpll *reduced_clock)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 
-	if (IS_PINEVIEW(dev_priv)) {
+	if (display->platform.pineview) {
 		hw_state->fp0 = pnv_dpll_compute_fp(clock);
 		hw_state->fp1 = pnv_dpll_compute_fp(reduced_clock);
 	} else {
@@ -1090,7 +1085,7 @@ static void i9xx_compute_dpll(struct intel_crtc_state *crtc_state,
 
 	hw_state->dpll = i9xx_dpll(crtc_state, clock, reduced_clock);
 
-	if (DISPLAY_VER(dev_priv) >= 4)
+	if (DISPLAY_VER(display) >= 4)
 		hw_state->dpll_md = i965_dpll_md(crtc_state);
 }
 
@@ -1099,8 +1094,6 @@ static u32 i8xx_dpll(const struct intel_crtc_state *crtc_state,
 		     const struct dpll *reduced_clock)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dpll;
 
 	dpll = DPLL_VCO_ENABLE | DPLL_VGA_MODE_DIS;
@@ -1130,7 +1123,7 @@ static u32 i8xx_dpll(const struct intel_crtc_state *crtc_state,
 	 * both DPLLS. The spec says we should disable the DVO 2X clock
 	 * when not needed, but this seems to work fine in practice.
 	 */
-	if (IS_I830(dev_priv) ||
+	if (display->platform.i830 ||
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DVO))
 		dpll |= DPLL_DVO_2X_MODE;
 
@@ -1158,14 +1151,14 @@ static void i8xx_compute_dpll(struct intel_crtc_state *crtc_state,
 static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder =
 		intel_get_crtc_new_encoder(state, crtc_state);
 	int ret;
 
-	if (DISPLAY_VER(dev_priv) < 11 &&
+	if (DISPLAY_VER(display) < 11 &&
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
 
@@ -1187,13 +1180,13 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder =
 		intel_get_crtc_new_encoder(state, crtc_state);
 
-	if (DISPLAY_VER(dev_priv) < 11 &&
+	if (DISPLAY_VER(display) < 11 &&
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
 
@@ -1246,7 +1239,7 @@ static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
-	    ((intel_panel_use_ssc(display) && i915->display.vbt.lvds_ssc_freq == 100000) ||
+	    ((intel_panel_use_ssc(display) && display->vbt.lvds_ssc_freq == 100000) ||
 	     (HAS_PCH_IBX(i915) && intel_is_dual_link_lvds(display))))
 		return 25;
 
@@ -1277,8 +1270,6 @@ static u32 ilk_dpll(const struct intel_crtc_state *crtc_state,
 		    const struct dpll *reduced_clock)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dpll;
 
 	dpll = DPLL_VCO_ENABLE;
@@ -1312,7 +1303,7 @@ static u32 ilk_dpll(const struct intel_crtc_state *crtc_state,
 	 * clear if it''s a win or loss power wise. No point in doing
 	 * this on ILK at all since it has a fixed DPLL<->pipe mapping.
 	 */
-	if (INTEL_NUM_PIPES(dev_priv) == 3 &&
+	if (INTEL_NUM_PIPES(display) == 3 &&
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG))
 		dpll |= DPLL_SDVO_HIGH_SPEED;
 
@@ -1363,7 +1354,6 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit;
@@ -1376,10 +1366,10 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(display)) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "using SSC reference clock of %d kHz\n",
-				    dev_priv->display.vbt.lvds_ssc_freq);
-			refclk = dev_priv->display.vbt.lvds_ssc_freq;
+				    display->vbt.lvds_ssc_freq);
+			refclk = display->vbt.lvds_ssc_freq;
 		}
 
 		if (intel_is_dual_link_lvds(display)) {
@@ -1540,7 +1530,6 @@ static int g4x_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit;
@@ -1548,8 +1537,8 @@ static int g4x_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(display)) {
-			refclk = dev_priv->display.vbt.lvds_ssc_freq;
-			drm_dbg_kms(&dev_priv->drm,
+			refclk = display->vbt.lvds_ssc_freq;
+			drm_dbg_kms(display->drm,
 				    "using SSC reference clock of %d kHz\n",
 				    refclk);
 		}
@@ -1590,7 +1579,6 @@ static int pnv_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit;
@@ -1598,8 +1586,8 @@ static int pnv_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(display)) {
-			refclk = dev_priv->display.vbt.lvds_ssc_freq;
-			drm_dbg_kms(&dev_priv->drm,
+			refclk = display->vbt.lvds_ssc_freq;
+			drm_dbg_kms(display->drm,
 				    "using SSC reference clock of %d kHz\n",
 				    refclk);
 		}
@@ -1629,7 +1617,6 @@ static int i9xx_crtc_compute_clock(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit;
@@ -1637,8 +1624,8 @@ static int i9xx_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(display)) {
-			refclk = dev_priv->display.vbt.lvds_ssc_freq;
-			drm_dbg_kms(&dev_priv->drm,
+			refclk = display->vbt.lvds_ssc_freq;
+			drm_dbg_kms(display->drm,
 				    "using SSC reference clock of %d kHz\n",
 				    refclk);
 		}
@@ -1670,7 +1657,6 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit;
@@ -1678,8 +1664,8 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		if (intel_panel_use_ssc(display)) {
-			refclk = dev_priv->display.vbt.lvds_ssc_freq;
-			drm_dbg_kms(&dev_priv->drm,
+			refclk = display->vbt.lvds_ssc_freq;
+			drm_dbg_kms(display->drm,
 				    "using SSC reference clock of %d kHz\n",
 				    refclk);
 		}
@@ -1752,12 +1738,12 @@ static const struct intel_dpll_funcs i8xx_dpll_funcs = {
 int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
-	drm_WARN_ON(&i915->drm, !intel_crtc_needs_modeset(crtc_state));
+	drm_WARN_ON(display->drm, !intel_crtc_needs_modeset(crtc_state));
 
 	memset(&crtc_state->dpll_hw_state, 0,
 	       sizeof(crtc_state->dpll_hw_state));
@@ -1765,9 +1751,9 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 	if (!crtc_state->hw.enable)
 		return 0;
 
-	ret = i915->display.funcs.dpll->crtc_compute_clock(state, crtc);
+	ret = display->funcs.dpll->crtc_compute_clock(state, crtc);
 	if (ret) {
-		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] Couldn't calculate DPLL settings\n",
+		drm_dbg_kms(display->drm, "[CRTC:%d:%s] Couldn't calculate DPLL settings\n",
 			    crtc->base.base.id, crtc->base.name);
 		return ret;
 	}
@@ -1778,23 +1764,23 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
-	drm_WARN_ON(&i915->drm, !intel_crtc_needs_modeset(crtc_state));
-	drm_WARN_ON(&i915->drm, !crtc_state->hw.enable && crtc_state->shared_dpll);
+	drm_WARN_ON(display->drm, !intel_crtc_needs_modeset(crtc_state));
+	drm_WARN_ON(display->drm, !crtc_state->hw.enable && crtc_state->shared_dpll);
 
 	if (!crtc_state->hw.enable || crtc_state->shared_dpll)
 		return 0;
 
-	if (!i915->display.funcs.dpll->crtc_get_shared_dpll)
+	if (!display->funcs.dpll->crtc_get_shared_dpll)
 		return 0;
 
-	ret = i915->display.funcs.dpll->crtc_get_shared_dpll(state, crtc);
+	ret = display->funcs.dpll->crtc_get_shared_dpll(state, crtc);
 	if (ret) {
-		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] Couldn't get a shared DPLL\n",
+		drm_dbg_kms(display->drm, "[CRTC:%d:%s] Couldn't get a shared DPLL\n",
 			    crtc->base.base.id, crtc->base.name);
 		return ret;
 	}
@@ -1803,43 +1789,44 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 }
 
 void
-intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
-{
-	if (DISPLAY_VER(dev_priv) >= 14)
-		dev_priv->display.funcs.dpll = &mtl_dpll_funcs;
-	else if (IS_DG2(dev_priv))
-		dev_priv->display.funcs.dpll = &dg2_dpll_funcs;
-	else if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
-		dev_priv->display.funcs.dpll = &hsw_dpll_funcs;
+intel_dpll_init_clock_hook(struct intel_display *display)
+{
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	if (DISPLAY_VER(display) >= 14)
+		display->funcs.dpll = &mtl_dpll_funcs;
+	else if (display->platform.dg2)
+		display->funcs.dpll = &dg2_dpll_funcs;
+	else if (DISPLAY_VER(display) >= 9 || HAS_DDI(display))
+		display->funcs.dpll = &hsw_dpll_funcs;
 	else if (HAS_PCH_SPLIT(dev_priv))
-		dev_priv->display.funcs.dpll = &ilk_dpll_funcs;
-	else if (IS_CHERRYVIEW(dev_priv))
-		dev_priv->display.funcs.dpll = &chv_dpll_funcs;
-	else if (IS_VALLEYVIEW(dev_priv))
-		dev_priv->display.funcs.dpll = &vlv_dpll_funcs;
-	else if (IS_G4X(dev_priv))
-		dev_priv->display.funcs.dpll = &g4x_dpll_funcs;
-	else if (IS_PINEVIEW(dev_priv))
-		dev_priv->display.funcs.dpll = &pnv_dpll_funcs;
-	else if (DISPLAY_VER(dev_priv) != 2)
-		dev_priv->display.funcs.dpll = &i9xx_dpll_funcs;
+		display->funcs.dpll = &ilk_dpll_funcs;
+	else if (display->platform.cherryview)
+		display->funcs.dpll = &chv_dpll_funcs;
+	else if (display->platform.valleyview)
+		display->funcs.dpll = &vlv_dpll_funcs;
+	else if (display->platform.g4x)
+		display->funcs.dpll = &g4x_dpll_funcs;
+	else if (display->platform.pineview)
+		display->funcs.dpll = &pnv_dpll_funcs;
+	else if (DISPLAY_VER(display) != 2)
+		display->funcs.dpll = &i9xx_dpll_funcs;
 	else
-		dev_priv->display.funcs.dpll = &i8xx_dpll_funcs;
+		display->funcs.dpll = &i8xx_dpll_funcs;
 }
 
-static bool i9xx_has_pps(struct drm_i915_private *dev_priv)
+static bool i9xx_has_pps(struct intel_display *display)
 {
-	if (IS_I830(dev_priv))
+	if (display->platform.i830)
 		return false;
 
-	return IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
+	return display->platform.pineview || display->platform.mobile;
 }
 
 void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	enum pipe pipe = crtc->pipe;
 	int i;
@@ -1847,27 +1834,27 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 	assert_transcoder_disabled(display, crtc_state->cpu_transcoder);
 
 	/* PLL is protected by panel, make sure we can write it */
-	if (i9xx_has_pps(dev_priv))
+	if (i9xx_has_pps(display))
 		assert_pps_unlocked(display, pipe);
 
-	intel_de_write(dev_priv, FP0(pipe), hw_state->fp0);
-	intel_de_write(dev_priv, FP1(pipe), hw_state->fp1);
+	intel_de_write(display, FP0(pipe), hw_state->fp0);
+	intel_de_write(display, FP1(pipe), hw_state->fp1);
 
 	/*
 	 * Apparently we need to have VGA mode enabled prior to changing
 	 * the P1/P2 dividers. Otherwise the DPLL will keep using the old
 	 * dividers, even though the register value does change.
 	 */
-	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
+	intel_de_write(display, DPLL(display, pipe),
 		       hw_state->dpll & ~DPLL_VGA_MODE_DIS);
-	intel_de_write(dev_priv, DPLL(dev_priv, pipe), hw_state->dpll);
+	intel_de_write(display, DPLL(display, pipe), hw_state->dpll);
 
 	/* Wait for the clocks to stabilize. */
-	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
+	intel_de_posting_read(display, DPLL(display, pipe));
 	udelay(150);
 
-	if (DISPLAY_VER(dev_priv) >= 4) {
-		intel_de_write(dev_priv, DPLL_MD(dev_priv, pipe),
+	if (DISPLAY_VER(display) >= 4) {
+		intel_de_write(display, DPLL_MD(display, pipe),
 			       hw_state->dpll_md);
 	} else {
 		/* The pixel multiplier can only be updated once the
@@ -1875,20 +1862,21 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 		 *
 		 * So write it again.
 		 */
-		intel_de_write(dev_priv, DPLL(dev_priv, pipe), hw_state->dpll);
+		intel_de_write(display, DPLL(display, pipe), hw_state->dpll);
 	}
 
 	/* We do this three times for luck */
 	for (i = 0; i < 3; i++) {
-		intel_de_write(dev_priv, DPLL(dev_priv, pipe), hw_state->dpll);
-		intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
+		intel_de_write(display, DPLL(display, pipe), hw_state->dpll);
+		intel_de_posting_read(display, DPLL(display, pipe));
 		udelay(150); /* wait for warmup */
 	}
 }
 
-static void vlv_pllb_recal_opamp(struct drm_i915_private *dev_priv,
+static void vlv_pllb_recal_opamp(struct intel_display *display,
 				 enum dpio_phy phy, enum dpio_channel ch)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 tmp;
 
 	/*
@@ -1917,6 +1905,7 @@ static void vlv_pllb_recal_opamp(struct drm_i915_private *dev_priv,
 
 static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct dpll *clock = &crtc_state->dpll;
@@ -1931,7 +1920,7 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 
 	/* PLL B needs special handling */
 	if (pipe == PIPE_B)
-		vlv_pllb_recal_opamp(dev_priv, phy, ch);
+		vlv_pllb_recal_opamp(display, phy, ch);
 
 	/* Set up Tx target for periodic Rcomp update */
 	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW17_BCAST, 0x0100000f);
@@ -2004,24 +1993,23 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 
 static void _vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write(dev_priv, DPLL(dev_priv, pipe), hw_state->dpll);
-	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
+	intel_de_write(display, DPLL(display, pipe), hw_state->dpll);
+	intel_de_posting_read(display, DPLL(display, pipe));
 	udelay(150);
 
-	if (intel_de_wait_for_set(dev_priv, DPLL(dev_priv, pipe), DPLL_LOCK_VLV, 1))
-		drm_err(&dev_priv->drm, "DPLL %d failed to lock\n", pipe);
+	if (intel_de_wait_for_set(display, DPLL(display, pipe), DPLL_LOCK_VLV, 1))
+		drm_err(display->drm, "DPLL %d failed to lock\n", pipe);
 }
 
 void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	enum pipe pipe = crtc->pipe;
 
@@ -2031,7 +2019,7 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 	assert_pps_unlocked(display, pipe);
 
 	/* Enable Refclk */
-	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
+	intel_de_write(display, DPLL(display, pipe),
 		       hw_state->dpll & ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));
 
 	if (hw_state->dpll & DPLL_VCO_ENABLE) {
@@ -2039,8 +2027,8 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 		_vlv_enable_pll(crtc_state);
 	}
 
-	intel_de_write(dev_priv, DPLL_MD(dev_priv, pipe), hw_state->dpll_md);
-	intel_de_posting_read(dev_priv, DPLL_MD(dev_priv, pipe));
+	intel_de_write(display, DPLL_MD(display, pipe), hw_state->dpll_md);
+	intel_de_posting_read(display, DPLL_MD(display, pipe));
 }
 
 static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
@@ -2134,6 +2122,7 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 
 static void _chv_enable_pll(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
@@ -2157,18 +2146,17 @@ static void _chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	udelay(1);
 
 	/* Enable PLL */
-	intel_de_write(dev_priv, DPLL(dev_priv, pipe), hw_state->dpll);
+	intel_de_write(display, DPLL(display, pipe), hw_state->dpll);
 
 	/* Check PLL is locked */
-	if (intel_de_wait_for_set(dev_priv, DPLL(dev_priv, pipe), DPLL_LOCK_VLV, 1))
-		drm_err(&dev_priv->drm, "PLL %d failed to lock\n", pipe);
+	if (intel_de_wait_for_set(display, DPLL(display, pipe), DPLL_LOCK_VLV, 1))
+		drm_err(display->drm, "PLL %d failed to lock\n", pipe);
 }
 
 void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	enum pipe pipe = crtc->pipe;
 
@@ -2178,7 +2166,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	assert_pps_unlocked(display, pipe);
 
 	/* Enable Refclk and SSC */
-	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
+	intel_de_write(display, DPLL(display, pipe),
 		       hw_state->dpll & ~DPLL_VCO_ENABLE);
 
 	if (hw_state->dpll & DPLL_VCO_ENABLE) {
@@ -2193,29 +2181,29 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 		 * DPLLCMD is AWOL. Use chicken bits to propagate
 		 * the value from DPLLBMD to either pipe B or C.
 		 */
-		intel_de_write(dev_priv, CBR4_VLV, CBR_DPLLBMD_PIPE(pipe));
-		intel_de_write(dev_priv, DPLL_MD(dev_priv, PIPE_B),
+		intel_de_write(display, CBR4_VLV, CBR_DPLLBMD_PIPE(pipe));
+		intel_de_write(display, DPLL_MD(display, PIPE_B),
 			       hw_state->dpll_md);
-		intel_de_write(dev_priv, CBR4_VLV, 0);
-		dev_priv->display.state.chv_dpll_md[pipe] = hw_state->dpll_md;
+		intel_de_write(display, CBR4_VLV, 0);
+		display->state.chv_dpll_md[pipe] = hw_state->dpll_md;
 
 		/*
 		 * DPLLB VGA mode also seems to cause problems.
 		 * We should always have it disabled.
 		 */
-		drm_WARN_ON(&dev_priv->drm,
-			    (intel_de_read(dev_priv, DPLL(dev_priv, PIPE_B)) &
+		drm_WARN_ON(display->drm,
+			    (intel_de_read(display, DPLL(display, PIPE_B)) &
 			     DPLL_VGA_MODE_DIS) == 0);
 	} else {
-		intel_de_write(dev_priv, DPLL_MD(dev_priv, pipe),
+		intel_de_write(display, DPLL_MD(display, pipe),
 			       hw_state->dpll_md);
-		intel_de_posting_read(dev_priv, DPLL_MD(dev_priv, pipe));
+		intel_de_posting_read(display, DPLL_MD(display, pipe));
 	}
 }
 
 /**
  * vlv_force_pll_on - forcibly enable just the PLL
- * @dev_priv: i915 private structure
+ * @display: display device
  * @pipe: pipe PLL to enable
  * @dpll: PLL configuration
  *
@@ -2223,10 +2211,9 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
  * in cases where we need the PLL enabled even when @pipe is not going to
  * be enabled.
  */
-int vlv_force_pll_on(struct drm_i915_private *dev_priv, enum pipe pipe,
+int vlv_force_pll_on(struct intel_display *display, enum pipe pipe,
 		     const struct dpll *dpll)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 	struct intel_crtc_state *crtc_state;
 
@@ -2239,7 +2226,7 @@ int vlv_force_pll_on(struct drm_i915_private *dev_priv, enum pipe pipe,
 	crtc_state->dpll = *dpll;
 	crtc_state->output_types = BIT(INTEL_OUTPUT_EDP);
 
-	if (IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.cherryview) {
 		chv_compute_dpll(crtc_state);
 		chv_enable_pll(crtc_state);
 	} else {
@@ -2252,9 +2239,8 @@ int vlv_force_pll_on(struct drm_i915_private *dev_priv, enum pipe pipe,
 	return 0;
 }
 
-void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
+void vlv_disable_pll(struct intel_display *display, enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 val;
 
 	/* Make sure the pipe isn't still relying on us */
@@ -2269,9 +2255,9 @@ void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 	intel_de_posting_read(display, DPLL(display, pipe));
 }
 
-void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
+void chv_disable_pll(struct intel_display *display, enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum dpio_channel ch = vlv_pipe_to_channel(pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
 	u32 val;
@@ -2317,18 +2303,18 @@ void i9xx_disable_pll(const struct intel_crtc_state *crtc_state)
 
 /**
  * vlv_force_pll_off - forcibly disable just the PLL
- * @dev_priv: i915 private structure
+ * @display: display device
  * @pipe: pipe PLL to disable
  *
  * Disable the PLL for @pipe. To be used in cases where we need
  * the PLL enabled even when @pipe is not going to be enabled.
  */
-void vlv_force_pll_off(struct drm_i915_private *dev_priv, enum pipe pipe)
+void vlv_force_pll_off(struct intel_display *display, enum pipe pipe)
 {
-	if (IS_CHERRYVIEW(dev_priv))
-		chv_disable_pll(dev_priv, pipe);
+	if (display->platform.cherryview)
+		chv_disable_pll(display, pipe);
 	else
-		vlv_disable_pll(dev_priv, pipe);
+		vlv_disable_pll(display, pipe);
 }
 
 /* Only for pre-ILK configs */
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
index 21d06cbd2ce7..280e90a57c87 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll.h
@@ -8,16 +8,15 @@
 
 #include <linux/types.h>
 
+enum pipe;
 struct dpll;
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_display;
 struct intel_dpll_hw_state;
-enum pipe;
 
-void intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv);
+void intel_dpll_init_clock_hook(struct intel_display *display);
 int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
 int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
@@ -29,14 +28,14 @@ void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
 void vlv_compute_dpll(struct intel_crtc_state *crtc_state);
 void chv_compute_dpll(struct intel_crtc_state *crtc_state);
 
-int vlv_force_pll_on(struct drm_i915_private *dev_priv, enum pipe pipe,
+int vlv_force_pll_on(struct intel_display *display, enum pipe pipe,
 		     const struct dpll *dpll);
-void vlv_force_pll_off(struct drm_i915_private *dev_priv, enum pipe pipe);
+void vlv_force_pll_off(struct intel_display *display, enum pipe pipe);
 
 void chv_enable_pll(const struct intel_crtc_state *crtc_state);
-void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe);
+void chv_disable_pll(struct intel_display *display, enum pipe pipe);
 void vlv_enable_pll(const struct intel_crtc_state *crtc_state);
-void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe);
+void vlv_disable_pll(struct intel_display *display, enum pipe pipe);
 void i9xx_enable_pll(const struct intel_crtc_state *crtc_state);
 void i9xx_disable_pll(const struct intel_crtc_state *crtc_state);
 bool bxt_find_best_dpll(struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 6a92acfa1634..7154d5e06c7b 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -91,7 +91,6 @@ static void
 vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum pipe pipe = intel_dp->pps.vlv_pps_pipe;
 	bool pll_enabled, release_cl_override = false;
@@ -134,7 +133,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 		release_cl_override = display->platform.cherryview &&
 			!chv_phy_powergate_ch(display, phy, ch, true);
 
-		if (vlv_force_pll_on(dev_priv, pipe, vlv_get_dpll(display))) {
+		if (vlv_force_pll_on(display, pipe, vlv_get_dpll(display))) {
 			drm_err(display->drm,
 				"Failed to force on PLL for pipe %c!\n",
 				pipe_name(pipe));
@@ -158,7 +157,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	intel_de_posting_read(display, intel_dp->output_reg);
 
 	if (!pll_enabled) {
-		vlv_force_pll_off(dev_priv, pipe);
+		vlv_force_pll_off(display, pipe);
 
 		if (release_cl_override)
 			chv_phy_powergate_ch(display, phy, ch, false);
-- 
2.39.5

