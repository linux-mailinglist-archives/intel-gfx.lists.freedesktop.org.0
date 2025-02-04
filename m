Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D64A27313
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 14:43:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 181FB10E34B;
	Tue,  4 Feb 2025 13:43:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WTLlgfz+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABDE110E34B;
 Tue,  4 Feb 2025 13:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738676560; x=1770212560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7m02W92w+/Ts+lf1ILdI9A+SQkktbVjKZvGo0vTW2vY=;
 b=WTLlgfz+4U9RPWPR36aHS/5WPVM8FUwXDHWDvI+/jOUITD4ixxF0jILA
 ZrddfEpktYVMMQYmop4URYNiVkX2uu4iO5QOj4xLGhecAIqDl2u+sbbWS
 IwfF/xWAVPdkI6tx1m32wFeodPFWr5bM6PC+OqPAoGn99N7cABEYvahyh
 uBbYdKPphZy4CGgfdC0JRwcqGasNULRbfGz2bYMg63MsSCGJrA4oOo1wD
 lHKW+9Cak8sBN/ENz+qTBJGwLDMiA/TjBoK81iI2puGmenBmREp3q11Fz
 w0npWpDZzT2l6WuvFS4EdErNniBd5WFGyw008DdSkhOoXbIdxQpoPkvGa w==;
X-CSE-ConnectionGUID: HUUDTtw+Tj+XDLh0vXhdmQ==
X-CSE-MsgGUID: f2WLlH8OQnSaQIGX60wsXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="50622664"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="50622664"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:42:40 -0800
X-CSE-ConnectionGUID: vMI12wotT6Ko1bbvKUKtXg==
X-CSE-MsgGUID: 5KMSJVqwTsyHEZx3HZCExA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="111180999"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:42:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/3] drm/i915/cdclk: switch to new platform checks
Date: Tue,  4 Feb 2025 15:42:27 +0200
Message-Id: <20250204134228.2934744-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250204134228.2934744-1-jani.nikula@intel.com>
References: <20250204134228.2934744-1-jani.nikula@intel.com>
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

Switch the IS_<PLATFORM>() checks to display->platform.<platform>, and
drop a number of struct drm_i915_private pointers in the process.

While at it, replace

	/* NOOP */;

with
	; /* NOOP */

to avoid a checkpatch warning on misleading indentation.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 159 +++++++++------------
 1 file changed, 68 insertions(+), 91 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b520231833b7..753ba3e3a0b7 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -314,27 +314,26 @@ static unsigned int intel_hpll_vco(struct intel_display *display)
 		[4] = 2666667,
 		[5] = 4266667,
 	};
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	const unsigned int *vco_table;
 	unsigned int vco;
 	u8 tmp = 0;
 
 	/* FIXME other chipsets? */
-	if (IS_GM45(dev_priv))
+	if (display->platform.gm45)
 		vco_table = ctg_vco;
-	else if (IS_G45(dev_priv))
+	else if (display->platform.g45)
 		vco_table = elk_vco;
-	else if (IS_I965GM(dev_priv))
+	else if (display->platform.i965gm)
 		vco_table = cl_vco;
-	else if (IS_PINEVIEW(dev_priv))
+	else if (display->platform.pineview)
 		vco_table = pnv_vco;
-	else if (IS_G33(dev_priv))
+	else if (display->platform.g33)
 		vco_table = blb_vco;
 	else
 		return 0;
 
-	tmp = intel_de_read(display,
-			    IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv) ? HPLLVCO_MOBILE : HPLLVCO);
+	tmp = intel_de_read(display, display->platform.pineview ||
+			    display->platform.mobile ? HPLLVCO_MOBILE : HPLLVCO);
 
 	vco = vco_table[tmp & 0x7];
 	if (vco == 0)
@@ -508,7 +507,6 @@ static void gm45_get_cdclk(struct intel_display *display,
 static void hsw_get_cdclk(struct intel_display *display,
 			  struct intel_cdclk_config *cdclk_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 lcpll = intel_de_read(display, LCPLL_CTL);
 	u32 freq = lcpll & LCPLL_CLK_FREQ_MASK;
 
@@ -518,7 +516,7 @@ static void hsw_get_cdclk(struct intel_display *display,
 		cdclk_config->cdclk = 450000;
 	else if (freq == LCPLL_CLK_FREQ_450)
 		cdclk_config->cdclk = 450000;
-	else if (IS_HASWELL_ULT(dev_priv))
+	else if (display->platform.haswell_ult)
 		cdclk_config->cdclk = 337500;
 	else
 		cdclk_config->cdclk = 540000;
@@ -535,7 +533,7 @@ static int vlv_calc_cdclk(struct intel_display *display, int min_cdclk)
 	 * Not sure what's wrong. For now use 200MHz only when all pipes
 	 * are off.
 	 */
-	if (IS_VALLEYVIEW(dev_priv) && min_cdclk > freq_320)
+	if (display->platform.valleyview && min_cdclk > freq_320)
 		return 400000;
 	else if (min_cdclk > 266667)
 		return freq_320;
@@ -549,7 +547,7 @@ static u8 vlv_calc_voltage_level(struct intel_display *display, int cdclk)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	if (IS_VALLEYVIEW(dev_priv)) {
+	if (display->platform.valleyview) {
 		if (cdclk >= 320000) /* jump to highest voltage for 400MHz too */
 			return 2;
 		else if (cdclk >= 266667)
@@ -585,7 +583,7 @@ static void vlv_get_cdclk(struct intel_display *display,
 	vlv_iosf_sb_put(dev_priv,
 			BIT(VLV_IOSF_SB_CCK) | BIT(VLV_IOSF_SB_PUNIT));
 
-	if (IS_VALLEYVIEW(dev_priv))
+	if (display->platform.valleyview)
 		cdclk_config->voltage_level = (val & DSPFREQGUAR_MASK) >>
 			DSPFREQGUAR_SHIFT;
 	else
@@ -598,14 +596,14 @@ static void vlv_program_pfi_credits(struct intel_display *display)
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	unsigned int credits, default_credits;
 
-	if (IS_CHERRYVIEW(dev_priv))
+	if (display->platform.cherryview)
 		default_credits = PFI_CREDIT(12);
 	else
 		default_credits = PFI_CREDIT(8);
 
 	if (display->cdclk.hw.cdclk >= dev_priv->czclk_freq) {
 		/* CHV suggested value is 31 or 63 */
-		if (IS_CHERRYVIEW(dev_priv))
+		if (display->platform.cherryview)
 			credits = PFI_CREDIT_63;
 		else
 			credits = PFI_CREDIT(15);
@@ -1142,7 +1140,7 @@ static void skl_set_cdclk(struct intel_display *display,
 	 * minimum 308MHz CDCLK.
 	 */
 	drm_WARN_ON_ONCE(display->drm,
-			 IS_SKYLAKE(dev_priv) && vco == 8640000);
+			 display->platform.skylake && vco == 8640000);
 
 	ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
 				SKL_CDCLK_PREPARE_FOR_CHANGE,
@@ -1662,10 +1660,9 @@ static void icl_readout_refclk(struct intel_display *display,
 static void bxt_de_pll_readout(struct intel_display *display,
 			       struct intel_cdclk_config *cdclk_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 val, ratio;
 
-	if (IS_DG2(dev_priv))
+	if (display->platform.dg2)
 		cdclk_config->ref = 38400;
 	else if (DISPLAY_VER(display) >= 11)
 		icl_readout_refclk(display, cdclk_config);
@@ -2057,11 +2054,9 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct intel_display *displa
 
 static bool pll_enable_wa_needed(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	return (DISPLAY_VERx100(display) == 2000 ||
 		DISPLAY_VERx100(display) == 1400 ||
-		IS_DG2(dev_priv)) &&
+		display->platform.dg2) &&
 		display->cdclk.hw.vco > 0;
 }
 
@@ -2069,7 +2064,6 @@ static u32 bxt_cdclk_ctl(struct intel_display *display,
 			 const struct intel_cdclk_config *cdclk_config,
 			 enum pipe pipe)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
 	u16 waveform;
@@ -2084,7 +2078,7 @@ static u32 bxt_cdclk_ctl(struct intel_display *display,
 	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
 	 * enable otherwise.
 	 */
-	if ((IS_GEMINILAKE(i915) || IS_BROXTON(i915)) &&
+	if ((display->platform.geminilake || display->platform.broxton) &&
 	    cdclk >= 500000)
 		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
 
@@ -2144,8 +2138,8 @@ static void bxt_set_cdclk(struct intel_display *display,
 	 * mailbox communication, skip
 	 * this step.
 	 */
-	if (DISPLAY_VER(display) >= 14 || IS_DG2(dev_priv))
-		/* NOOP */;
+	if (DISPLAY_VER(display) >= 14 || display->platform.dg2)
+		; /* NOOP */
 	else if (DISPLAY_VER(display) >= 11)
 		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
 					SKL_CDCLK_PREPARE_FOR_CHANGE,
@@ -2186,7 +2180,7 @@ static void bxt_set_cdclk(struct intel_display *display,
 		 * NOOP - No Pcode communication needed for
 		 * Display versions 14 and beyond
 		 */;
-	else if (DISPLAY_VER(display) >= 11 && !IS_DG2(dev_priv))
+	else if (DISPLAY_VER(display) >= 11 && !display->platform.dg2)
 		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
 				      cdclk_config->voltage_level);
 	if (DISPLAY_VER(display) < 11) {
@@ -2318,9 +2312,7 @@ static void bxt_cdclk_uninit_hw(struct intel_display *display)
  */
 void intel_cdclk_init_hw(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	if (DISPLAY_VER(display) >= 10 || IS_BROXTON(i915))
+	if (DISPLAY_VER(display) >= 10 || display->platform.broxton)
 		bxt_cdclk_init_hw(display);
 	else if (DISPLAY_VER(display) == 9)
 		skl_cdclk_init_hw(display);
@@ -2335,9 +2327,7 @@ void intel_cdclk_init_hw(struct intel_display *display)
  */
 void intel_cdclk_uninit_hw(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	if (DISPLAY_VER(display) >= 10 || IS_BROXTON(i915))
+	if (DISPLAY_VER(display) >= 10 || display->platform.broxton)
 		bxt_cdclk_uninit_hw(display);
 	else if (DISPLAY_VER(display) == 9)
 		skl_cdclk_uninit_hw(display);
@@ -2438,10 +2428,8 @@ static bool intel_cdclk_can_cd2x_update(struct intel_display *display,
 					const struct intel_cdclk_config *a,
 					const struct intel_cdclk_config *b)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	/* Older hw doesn't have the capability */
-	if (DISPLAY_VER(display) < 10 && !IS_BROXTON(dev_priv))
+	if (DISPLAY_VER(display) < 10 && !display->platform.broxton)
 		return false;
 
 	/*
@@ -2495,7 +2483,7 @@ static void intel_pcode_notify(struct intel_display *display,
 	int ret;
 	u32 update_mask = 0;
 
-	if (!IS_DG2(i915))
+	if (!display->platform.dg2)
 		return;
 
 	update_mask = DISPLAY_TO_PCODE_UPDATE_MASK(cdclk, active_pipe_count, voltage_level);
@@ -2681,7 +2669,6 @@ void
 intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_cdclk_state *old_cdclk_state =
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
@@ -2693,7 +2680,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 				 &new_cdclk_state->actual))
 		return;
 
-	if (IS_DG2(i915))
+	if (display->platform.dg2)
 		intel_cdclk_pcode_pre_notify(state);
 
 	if (new_cdclk_state->disable_pipes) {
@@ -2735,7 +2722,6 @@ void
 intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_cdclk_state *old_cdclk_state =
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
@@ -2746,7 +2732,7 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 				 &new_cdclk_state->actual))
 		return;
 
-	if (IS_DG2(i915))
+	if (display->platform.dg2)
 		intel_cdclk_pcode_post_notify(state);
 
 	if (!new_cdclk_state->disable_pipes &&
@@ -2770,12 +2756,10 @@ static int intel_cdclk_ppc(struct intel_display *display, bool double_wide)
 /* max pixel rate as % of CDCLK (not accounting for PPC) */
 static int intel_cdclk_guardband(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	if (DISPLAY_VER(display) >= 9 ||
-	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
+	    display->platform.broadwell || display->platform.haswell)
 		return 100;
-	else if (IS_CHERRYVIEW(dev_priv))
+	else if (display->platform.cherryview)
 		return 95;
 	else
 		return 90;
@@ -2878,7 +2862,7 @@ static int intel_compute_min_cdclk(struct intel_atomic_state *state)
 	 * by changing the cd2x divider (see glk_cdclk_table[]) and
 	 * thus a full modeset won't be needed then.
 	 */
-	if (IS_GEMINILAKE(dev_priv) && cdclk_state->active_pipes &&
+	if (display->platform.geminilake && cdclk_state->active_pipes &&
 	    !is_power_of_2(cdclk_state->active_pipes))
 		min_cdclk = max(min_cdclk, 2 * 96000);
 
@@ -3232,7 +3216,6 @@ static bool intel_cdclk_need_serialize(struct intel_display *display,
 				       const struct intel_cdclk_state *old_cdclk_state,
 				       const struct intel_cdclk_state *new_cdclk_state)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	bool power_well_cnt_changed = hweight8(old_cdclk_state->active_pipes) !=
 				      hweight8(new_cdclk_state->active_pipes);
 	bool cdclk_changed = intel_cdclk_changed(&old_cdclk_state->actual,
@@ -3241,7 +3224,7 @@ static bool intel_cdclk_need_serialize(struct intel_display *display,
 	 * We need to poke hw for gen >= 12, because we notify PCode if
 	 * pipe power well count changes.
 	 */
-	return cdclk_changed || (IS_DG2(i915) && power_well_cnt_changed);
+	return cdclk_changed || (display->platform.dg2 && power_well_cnt_changed);
 }
 
 int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
@@ -3376,11 +3359,9 @@ static int intel_compute_max_dotclk(struct intel_display *display)
  */
 void intel_update_max_cdclk(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	if (DISPLAY_VER(display) >= 30) {
 		display->cdclk.max_cdclk_freq = 691200;
-	} else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
+	} else if (display->platform.jasperlake || display->platform.elkhartlake) {
 		if (display->cdclk.hw.ref == 24000)
 			display->cdclk.max_cdclk_freq = 552000;
 		else
@@ -3390,9 +3371,9 @@ void intel_update_max_cdclk(struct intel_display *display)
 			display->cdclk.max_cdclk_freq = 648000;
 		else
 			display->cdclk.max_cdclk_freq = 652800;
-	} else if (IS_GEMINILAKE(dev_priv)) {
+	} else if (display->platform.geminilake) {
 		display->cdclk.max_cdclk_freq = 316800;
-	} else if (IS_BROXTON(dev_priv)) {
+	} else if (display->platform.broxton) {
 		display->cdclk.max_cdclk_freq = 624000;
 	} else if (DISPLAY_VER(display) == 9) {
 		u32 limit = intel_de_read(display, SKL_DFSM) & SKL_DFSM_CDCLK_LIMIT_MASK;
@@ -3416,7 +3397,7 @@ void intel_update_max_cdclk(struct intel_display *display)
 			max_cdclk = 308571;
 
 		display->cdclk.max_cdclk_freq = skl_calc_cdclk(max_cdclk, vco);
-	} else if (IS_BROADWELL(dev_priv))  {
+	} else if (display->platform.broadwell)  {
 		/*
 		 * FIXME with extra cooling we can allow
 		 * 540 MHz for ULX and 675 Mhz for ULT.
@@ -3425,15 +3406,15 @@ void intel_update_max_cdclk(struct intel_display *display)
 		 */
 		if (intel_de_read(display, FUSE_STRAP) & HSW_CDCLK_LIMIT)
 			display->cdclk.max_cdclk_freq = 450000;
-		else if (IS_BROADWELL_ULX(dev_priv))
+		else if (display->platform.broadwell_ulx)
 			display->cdclk.max_cdclk_freq = 450000;
-		else if (IS_BROADWELL_ULT(dev_priv))
+		else if (display->platform.broadwell_ult)
 			display->cdclk.max_cdclk_freq = 540000;
 		else
 			display->cdclk.max_cdclk_freq = 675000;
-	} else if (IS_CHERRYVIEW(dev_priv)) {
+	} else if (display->platform.cherryview) {
 		display->cdclk.max_cdclk_freq = 320000;
-	} else if (IS_VALLEYVIEW(dev_priv)) {
+	} else if (display->platform.valleyview) {
 		display->cdclk.max_cdclk_freq = 400000;
 	} else {
 		/* otherwise assume cdclk is fixed */
@@ -3457,8 +3438,6 @@ void intel_update_max_cdclk(struct intel_display *display)
  */
 void intel_update_cdclk(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	intel_cdclk_get_cdclk(display, &display->cdclk.hw);
 
 	/*
@@ -3467,7 +3446,7 @@ void intel_update_cdclk(struct intel_display *display)
 	 * of cdclk that generates 4MHz reference clock freq which is used to
 	 * generate GMBus clock. This will vary with the cdclk freq.
 	 */
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	if (display->platform.valleyview || display->platform.cherryview)
 		intel_de_write(display, GMBUSFREQ_VLV,
 			       DIV_ROUND_UP(display->cdclk.hw.cdclk, 1000));
 }
@@ -3561,7 +3540,7 @@ u32 intel_read_rawclk(struct intel_display *display)
 		freq = cnp_rawclk(display);
 	else if (HAS_PCH_SPLIT(dev_priv))
 		freq = pch_rawclk(display);
-	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	else if (display->platform.valleyview || display->platform.cherryview)
 		freq = vlv_hrawclk(display);
 	else if (DISPLAY_VER(display) >= 3)
 		freq = i9xx_hrawclk(display);
@@ -3742,8 +3721,6 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
  */
 void intel_init_cdclk_hooks(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	if (DISPLAY_VER(display) >= 30) {
 		display->funcs.cdclk = &xe3lpd_cdclk_funcs;
 		display->cdclk.table = xe3lpd_cdclk_table;
@@ -3756,80 +3733,80 @@ void intel_init_cdclk_hooks(struct intel_display *display)
 	} else if (DISPLAY_VER(display) >= 14) {
 		display->funcs.cdclk = &rplu_cdclk_funcs;
 		display->cdclk.table = mtl_cdclk_table;
-	} else if (IS_DG2(dev_priv)) {
+	} else if (display->platform.dg2) {
 		display->funcs.cdclk = &tgl_cdclk_funcs;
 		display->cdclk.table = dg2_cdclk_table;
-	} else if (IS_ALDERLAKE_P(dev_priv)) {
+	} else if (display->platform.alderlake_p) {
 		/* Wa_22011320316:adl-p[a0] */
-		if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
+		if (display->platform.alderlake_p && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0)) {
 			display->cdclk.table = adlp_a_step_cdclk_table;
 			display->funcs.cdclk = &tgl_cdclk_funcs;
-		} else if (IS_RAPTORLAKE_U(dev_priv)) {
+		} else if (display->platform.alderlake_p_raptorlake_u) {
 			display->cdclk.table = rplu_cdclk_table;
 			display->funcs.cdclk = &rplu_cdclk_funcs;
 		} else {
 			display->cdclk.table = adlp_cdclk_table;
 			display->funcs.cdclk = &tgl_cdclk_funcs;
 		}
-	} else if (IS_ROCKETLAKE(dev_priv)) {
+	} else if (display->platform.rocketlake) {
 		display->funcs.cdclk = &tgl_cdclk_funcs;
 		display->cdclk.table = rkl_cdclk_table;
 	} else if (DISPLAY_VER(display) >= 12) {
 		display->funcs.cdclk = &tgl_cdclk_funcs;
 		display->cdclk.table = icl_cdclk_table;
-	} else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
+	} else if (display->platform.jasperlake || display->platform.elkhartlake) {
 		display->funcs.cdclk = &ehl_cdclk_funcs;
 		display->cdclk.table = icl_cdclk_table;
 	} else if (DISPLAY_VER(display) >= 11) {
 		display->funcs.cdclk = &icl_cdclk_funcs;
 		display->cdclk.table = icl_cdclk_table;
-	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+	} else if (display->platform.geminilake || display->platform.broxton) {
 		display->funcs.cdclk = &bxt_cdclk_funcs;
-		if (IS_GEMINILAKE(dev_priv))
+		if (display->platform.geminilake)
 			display->cdclk.table = glk_cdclk_table;
 		else
 			display->cdclk.table = bxt_cdclk_table;
 	} else if (DISPLAY_VER(display) == 9) {
 		display->funcs.cdclk = &skl_cdclk_funcs;
-	} else if (IS_BROADWELL(dev_priv)) {
+	} else if (display->platform.broadwell) {
 		display->funcs.cdclk = &bdw_cdclk_funcs;
-	} else if (IS_HASWELL(dev_priv)) {
+	} else if (display->platform.haswell) {
 		display->funcs.cdclk = &hsw_cdclk_funcs;
-	} else if (IS_CHERRYVIEW(dev_priv)) {
+	} else if (display->platform.cherryview) {
 		display->funcs.cdclk = &chv_cdclk_funcs;
-	} else if (IS_VALLEYVIEW(dev_priv)) {
+	} else if (display->platform.valleyview) {
 		display->funcs.cdclk = &vlv_cdclk_funcs;
-	} else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv)) {
+	} else if (display->platform.sandybridge || display->platform.ivybridge) {
 		display->funcs.cdclk = &fixed_400mhz_cdclk_funcs;
-	} else if (IS_IRONLAKE(dev_priv)) {
+	} else if (display->platform.ironlake) {
 		display->funcs.cdclk = &ilk_cdclk_funcs;
-	} else if (IS_GM45(dev_priv)) {
+	} else if (display->platform.gm45) {
 		display->funcs.cdclk = &gm45_cdclk_funcs;
-	} else if (IS_G45(dev_priv)) {
+	} else if (display->platform.g45) {
 		display->funcs.cdclk = &g33_cdclk_funcs;
-	} else if (IS_I965GM(dev_priv)) {
+	} else if (display->platform.i965gm) {
 		display->funcs.cdclk = &i965gm_cdclk_funcs;
-	} else if (IS_I965G(dev_priv)) {
+	} else if (display->platform.i965g) {
 		display->funcs.cdclk = &fixed_400mhz_cdclk_funcs;
-	} else if (IS_PINEVIEW(dev_priv)) {
+	} else if (display->platform.pineview) {
 		display->funcs.cdclk = &pnv_cdclk_funcs;
-	} else if (IS_G33(dev_priv)) {
+	} else if (display->platform.g33) {
 		display->funcs.cdclk = &g33_cdclk_funcs;
-	} else if (IS_I945GM(dev_priv)) {
+	} else if (display->platform.i945gm) {
 		display->funcs.cdclk = &i945gm_cdclk_funcs;
-	} else if (IS_I945G(dev_priv)) {
+	} else if (display->platform.i945g) {
 		display->funcs.cdclk = &fixed_400mhz_cdclk_funcs;
-	} else if (IS_I915GM(dev_priv)) {
+	} else if (display->platform.i915gm) {
 		display->funcs.cdclk = &i915gm_cdclk_funcs;
-	} else if (IS_I915G(dev_priv)) {
+	} else if (display->platform.i915g) {
 		display->funcs.cdclk = &i915g_cdclk_funcs;
-	} else if (IS_I865G(dev_priv)) {
+	} else if (display->platform.i865g) {
 		display->funcs.cdclk = &i865g_cdclk_funcs;
-	} else if (IS_I85X(dev_priv)) {
+	} else if (display->platform.i85x) {
 		display->funcs.cdclk = &i85x_cdclk_funcs;
-	} else if (IS_I845G(dev_priv)) {
+	} else if (display->platform.i845g) {
 		display->funcs.cdclk = &i845g_cdclk_funcs;
-	} else if (IS_I830(dev_priv)) {
+	} else if (display->platform.i830) {
 		display->funcs.cdclk = &i830_cdclk_funcs;
 	}
 
-- 
2.39.5

