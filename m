Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD68AAB3B78
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 16:57:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6155E10E42F;
	Mon, 12 May 2025 14:57:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T4hfMosO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 456D710E42F;
 Mon, 12 May 2025 14:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747061855; x=1778597855;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vQqJFn4OOaB+6h9xUd7rZEzukEpcmqy2pKKuNL/905w=;
 b=T4hfMosOsilco5rCQKoerbJRey5fFul/anyrot8qhzMj+B6TN1lJ3+xE
 YipzRia9qZD8X5TkWmI0R1AbFmqnXlB1C6pfyu34cm3dXeT10f+Gmu3Dx
 C4fGeFl4Q1Hve0kSPzA2vDmbrfi8EfZqute/Ew1iFgGCD1UU59dwLoldh
 HqQFm0IilGEGxAqrheS7FHmAXi2HdqVGWptfzBbPQhr9HTSiqHXPca5xa
 sYLf5ZF9kIRncBKHdP8018bMRroRzgrZrsDcXZ4akuIMAJAab5nX9PV69
 pDu7rFgloYu6CiAW9AmvCwIWzT35SDVGsySnxMnpDJbAYFc7Qxs7F3gzB g==;
X-CSE-ConnectionGUID: fwaSThopQyK8BNPBnvorWQ==
X-CSE-MsgGUID: 6WTzpYEGSTaq1gtYoZz8Sw==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="60264695"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="60264695"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:57:35 -0700
X-CSE-ConnectionGUID: jl3MGYCMRkqggEU3zrjlYQ==
X-CSE-MsgGUID: ERH55LBnRI+23VmfBLWdcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="137857539"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.186])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:57:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 6/8] drm/i915: convert VLV IOSF SB interface to struct
 drm_device
Date: Mon, 12 May 2025 17:56:57 +0300
Message-Id: <c1d013ed88ce2e3e5bdc15ce3bf01a3960b1e817.1747061743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747061743.git.jani.nikula@intel.com>
References: <cover.1747061743.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

With users both in i915 core and display, struct drm_device is the
common denominator for the VLV IOSF SB users. Also use drm_device for
the helpers on the display side to keep the static inlines as simple as
possible.

We can drop a number of dependencies on i915_drv.h with this.

v2,v3: Rebase

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        |  35 ++-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  47 ++---
 drivers/gpu/drm/i915/display/intel_display.c  |  23 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   7 +-
 .../drm/i915/display/intel_display_power.c    |   7 +-
 .../i915/display/intel_display_power_well.c   |  69 +++---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 199 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll.c     | 135 ++++++------
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  26 ++-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |  46 ++--
 drivers/gpu/drm/i915/display/vlv_sideband.c   |  25 ++-
 drivers/gpu/drm/i915/display/vlv_sideband.h   | 110 +++++-----
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   6 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |  56 ++---
 drivers/gpu/drm/i915/soc/intel_dram.c         |  12 +-
 drivers/gpu/drm/i915/vlv_iosf_sb.c            |  14 +-
 drivers/gpu/drm/i915/vlv_iosf_sb.h            |   9 +-
 .../drm/xe/compat-i915-headers/vlv_iosf_sb.h  |  10 +-
 18 files changed, 410 insertions(+), 426 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 77876ef735b7..8e4e938f1ee5 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -107,43 +107,41 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct intel_display *dis
 
 static void chv_set_memory_dvfs(struct intel_display *display, bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 val;
 
-	vlv_punit_get(dev_priv);
+	vlv_punit_get(display->drm);
 
-	val = vlv_punit_read(dev_priv, PUNIT_REG_DDR_SETUP2);
+	val = vlv_punit_read(display->drm, PUNIT_REG_DDR_SETUP2);
 	if (enable)
 		val &= ~FORCE_DDR_HIGH_FREQ;
 	else
 		val |= FORCE_DDR_HIGH_FREQ;
 	val &= ~FORCE_DDR_LOW_FREQ;
 	val |= FORCE_DDR_FREQ_REQ_ACK;
-	vlv_punit_write(dev_priv, PUNIT_REG_DDR_SETUP2, val);
+	vlv_punit_write(display->drm, PUNIT_REG_DDR_SETUP2, val);
 
-	if (wait_for((vlv_punit_read(dev_priv, PUNIT_REG_DDR_SETUP2) &
+	if (wait_for((vlv_punit_read(display->drm, PUNIT_REG_DDR_SETUP2) &
 		      FORCE_DDR_FREQ_REQ_ACK) == 0, 3))
 		drm_err(display->drm,
 			"timed out waiting for Punit DDR DVFS request\n");
 
-	vlv_punit_put(dev_priv);
+	vlv_punit_put(display->drm);
 }
 
 static void chv_set_memory_pm5(struct intel_display *display, bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 val;
 
-	vlv_punit_get(dev_priv);
+	vlv_punit_get(display->drm);
 
-	val = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM);
+	val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
 	if (enable)
 		val |= DSP_MAXFIFO_PM5_ENABLE;
 	else
 		val &= ~DSP_MAXFIFO_PM5_ENABLE;
-	vlv_punit_write(dev_priv, PUNIT_REG_DSPSSPM, val);
+	vlv_punit_write(display->drm, PUNIT_REG_DSPSSPM, val);
 
-	vlv_punit_put(dev_priv);
+	vlv_punit_put(display->drm);
 }
 
 #define FW_WM(value, plane) \
@@ -3900,7 +3898,6 @@ static void g4x_wm_sanitize(struct intel_display *display)
 
 static void vlv_wm_get_hw_state(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct vlv_wm_values *wm = &display->wm.vlv;
 	struct intel_crtc *crtc;
 	u32 val;
@@ -3911,9 +3908,9 @@ static void vlv_wm_get_hw_state(struct intel_display *display)
 	wm->level = VLV_WM_LEVEL_PM2;
 
 	if (display->platform.cherryview) {
-		vlv_punit_get(dev_priv);
+		vlv_punit_get(display->drm);
 
-		val = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM);
+		val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
 		if (val & DSP_MAXFIFO_PM5_ENABLE)
 			wm->level = VLV_WM_LEVEL_PM5;
 
@@ -3926,23 +3923,23 @@ static void vlv_wm_get_hw_state(struct intel_display *display)
 		 * HIGH/LOW bits so that we don't actually change
 		 * the current state.
 		 */
-		val = vlv_punit_read(dev_priv, PUNIT_REG_DDR_SETUP2);
+		val = vlv_punit_read(display->drm, PUNIT_REG_DDR_SETUP2);
 		val |= FORCE_DDR_FREQ_REQ_ACK;
-		vlv_punit_write(dev_priv, PUNIT_REG_DDR_SETUP2, val);
+		vlv_punit_write(display->drm, PUNIT_REG_DDR_SETUP2, val);
 
-		if (wait_for((vlv_punit_read(dev_priv, PUNIT_REG_DDR_SETUP2) &
+		if (wait_for((vlv_punit_read(display->drm, PUNIT_REG_DDR_SETUP2) &
 			      FORCE_DDR_FREQ_REQ_ACK) == 0, 3)) {
 			drm_dbg_kms(display->drm,
 				    "Punit not acking DDR DVFS request, "
 				    "assuming DDR DVFS is disabled\n");
 			display->wm.num_levels = VLV_WM_LEVEL_PM5 + 1;
 		} else {
-			val = vlv_punit_read(dev_priv, PUNIT_REG_DDR_SETUP2);
+			val = vlv_punit_read(display->drm, PUNIT_REG_DDR_SETUP2);
 			if ((val & FORCE_DDR_HIGH_FREQ) == 0)
 				wm->level = VLV_WM_LEVEL_DDR_DVFS;
 		}
 
-		vlv_punit_put(dev_priv);
+		vlv_punit_put(display->drm);
 	}
 
 	for_each_intel_crtc(display->drm, crtc) {
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b1718b491ffd..f0c673e40ce5 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -567,20 +567,18 @@ static u8 vlv_calc_voltage_level(struct intel_display *display, int cdclk)
 static void vlv_get_cdclk(struct intel_display *display,
 			  struct intel_cdclk_config *cdclk_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 val;
 
-	vlv_iosf_sb_get(dev_priv,
-			BIT(VLV_IOSF_SB_CCK) | BIT(VLV_IOSF_SB_PUNIT));
+	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_CCK) | BIT(VLV_IOSF_SB_PUNIT));
 
-	cdclk_config->vco = vlv_get_hpll_vco(dev_priv);
-	cdclk_config->cdclk = vlv_get_cck_clock(dev_priv, "cdclk",
+	cdclk_config->vco = vlv_get_hpll_vco(display->drm);
+	cdclk_config->cdclk = vlv_get_cck_clock(display->drm, "cdclk",
 						CCK_DISPLAY_CLOCK_CONTROL,
 						cdclk_config->vco);
 
-	val = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM);
+	val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
 
-	vlv_iosf_sb_put(dev_priv,
+	vlv_iosf_sb_put(display->drm,
 			BIT(VLV_IOSF_SB_CCK) | BIT(VLV_IOSF_SB_PUNIT));
 
 	if (display->platform.valleyview)
@@ -658,16 +656,16 @@ static void vlv_set_cdclk(struct intel_display *display,
 	 */
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_DISPLAY_CORE);
 
-	vlv_iosf_sb_get(dev_priv,
+	vlv_iosf_sb_get(display->drm,
 			BIT(VLV_IOSF_SB_CCK) |
 			BIT(VLV_IOSF_SB_BUNIT) |
 			BIT(VLV_IOSF_SB_PUNIT));
 
-	val = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM);
+	val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
 	val &= ~DSPFREQGUAR_MASK;
 	val |= (cmd << DSPFREQGUAR_SHIFT);
-	vlv_punit_write(dev_priv, PUNIT_REG_DSPSSPM, val);
-	if (wait_for((vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) &
+	vlv_punit_write(display->drm, PUNIT_REG_DSPSSPM, val);
+	if (wait_for((vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM) &
 		      DSPFREQSTAT_MASK) == (cmd << DSPFREQSTAT_SHIFT),
 		     50)) {
 		drm_err(display->drm,
@@ -681,12 +679,12 @@ static void vlv_set_cdclk(struct intel_display *display,
 					    cdclk) - 1;
 
 		/* adjust cdclk divider */
-		val = vlv_cck_read(dev_priv, CCK_DISPLAY_CLOCK_CONTROL);
+		val = vlv_cck_read(display->drm, CCK_DISPLAY_CLOCK_CONTROL);
 		val &= ~CCK_FREQUENCY_VALUES;
 		val |= divider;
-		vlv_cck_write(dev_priv, CCK_DISPLAY_CLOCK_CONTROL, val);
+		vlv_cck_write(display->drm, CCK_DISPLAY_CLOCK_CONTROL, val);
 
-		if (wait_for((vlv_cck_read(dev_priv, CCK_DISPLAY_CLOCK_CONTROL) &
+		if (wait_for((vlv_cck_read(display->drm, CCK_DISPLAY_CLOCK_CONTROL) &
 			      CCK_FREQUENCY_STATUS) == (divider << CCK_FREQUENCY_STATUS_SHIFT),
 			     50))
 			drm_err(display->drm,
@@ -694,7 +692,7 @@ static void vlv_set_cdclk(struct intel_display *display,
 	}
 
 	/* adjust self-refresh exit latency value */
-	val = vlv_bunit_read(dev_priv, BUNIT_REG_BISOC);
+	val = vlv_bunit_read(display->drm, BUNIT_REG_BISOC);
 	val &= ~0x7f;
 
 	/*
@@ -705,9 +703,9 @@ static void vlv_set_cdclk(struct intel_display *display,
 		val |= 4500 / 250; /* 4.5 usec */
 	else
 		val |= 3000 / 250; /* 3.0 usec */
-	vlv_bunit_write(dev_priv, BUNIT_REG_BISOC, val);
+	vlv_bunit_write(display->drm, BUNIT_REG_BISOC, val);
 
-	vlv_iosf_sb_put(dev_priv,
+	vlv_iosf_sb_put(display->drm,
 			BIT(VLV_IOSF_SB_CCK) |
 			BIT(VLV_IOSF_SB_BUNIT) |
 			BIT(VLV_IOSF_SB_PUNIT));
@@ -723,7 +721,6 @@ static void chv_set_cdclk(struct intel_display *display,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int cdclk = cdclk_config->cdclk;
 	u32 val, cmd = cdclk_config->voltage_level;
 	intel_wakeref_t wakeref;
@@ -747,19 +744,19 @@ static void chv_set_cdclk(struct intel_display *display,
 	 */
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_DISPLAY_CORE);
 
-	vlv_punit_get(dev_priv);
-	val = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM);
+	vlv_punit_get(display->drm);
+	val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
 	val &= ~DSPFREQGUAR_MASK_CHV;
 	val |= (cmd << DSPFREQGUAR_SHIFT_CHV);
-	vlv_punit_write(dev_priv, PUNIT_REG_DSPSSPM, val);
-	if (wait_for((vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) &
+	vlv_punit_write(display->drm, PUNIT_REG_DSPSSPM, val);
+	if (wait_for((vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM) &
 		      DSPFREQSTAT_MASK_CHV) == (cmd << DSPFREQSTAT_SHIFT_CHV),
 		     50)) {
 		drm_err(display->drm,
 			"timed out waiting for CDclk change\n");
 	}
 
-	vlv_punit_put(dev_priv);
+	vlv_punit_put(display->drm);
 
 	intel_update_cdclk(display);
 
@@ -3528,10 +3525,8 @@ static int pch_rawclk(struct intel_display *display)
 
 static int vlv_hrawclk(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	/* RAWCLK_FREQ_VLV register updated from power well code */
-	return vlv_get_cck_clock_hpll(dev_priv, "hrawclk",
+	return vlv_get_cck_clock_hpll(display->drm, "hrawclk",
 				      CCK_DISPLAY_REF_CLOCK_CONTROL);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index abf1db22fafe..402f7204707a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -140,46 +140,47 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb,
 			      const struct intel_crtc_state *crtc_state);
 
 /* returns HPLL frequency in kHz */
-int vlv_get_hpll_vco(struct drm_i915_private *dev_priv)
+int vlv_get_hpll_vco(struct drm_device *drm)
 {
 	int hpll_freq, vco_freq[] = { 800, 1600, 2000, 2400 };
 
 	/* Obtain SKU information */
-	hpll_freq = vlv_cck_read(dev_priv, CCK_FUSE_REG) &
+	hpll_freq = vlv_cck_read(drm, CCK_FUSE_REG) &
 		CCK_FUSE_HPLL_FREQ_MASK;
 
 	return vco_freq[hpll_freq] * 1000;
 }
 
-int vlv_get_cck_clock(struct drm_i915_private *dev_priv,
+int vlv_get_cck_clock(struct drm_device *drm,
 		      const char *name, u32 reg, int ref_freq)
 {
 	u32 val;
 	int divider;
 
-	val = vlv_cck_read(dev_priv, reg);
+	val = vlv_cck_read(drm, reg);
 	divider = val & CCK_FREQUENCY_VALUES;
 
-	drm_WARN(&dev_priv->drm, (val & CCK_FREQUENCY_STATUS) !=
+	drm_WARN(drm, (val & CCK_FREQUENCY_STATUS) !=
 		 (divider << CCK_FREQUENCY_STATUS_SHIFT),
 		 "%s change in progress\n", name);
 
 	return DIV_ROUND_CLOSEST(ref_freq << 1, divider + 1);
 }
 
-int vlv_get_cck_clock_hpll(struct drm_i915_private *dev_priv,
+int vlv_get_cck_clock_hpll(struct drm_device *drm,
 			   const char *name, u32 reg)
 {
+	struct drm_i915_private *dev_priv = to_i915(drm);
 	int hpll;
 
-	vlv_cck_get(dev_priv);
+	vlv_cck_get(drm);
 
 	if (dev_priv->hpll_freq == 0)
-		dev_priv->hpll_freq = vlv_get_hpll_vco(dev_priv);
+		dev_priv->hpll_freq = vlv_get_hpll_vco(drm);
 
-	hpll = vlv_get_cck_clock(dev_priv, name, reg, dev_priv->hpll_freq);
+	hpll = vlv_get_cck_clock(drm, name, reg, dev_priv->hpll_freq);
 
-	vlv_cck_put(dev_priv);
+	vlv_cck_put(drm);
 
 	return hpll;
 }
@@ -191,7 +192,7 @@ void intel_update_czclk(struct intel_display *display)
 	if (!display->platform.valleyview && !display->platform.cherryview)
 		return;
 
-	dev_priv->czclk_freq = vlv_get_cck_clock_hpll(dev_priv, "czclk",
+	dev_priv->czclk_freq = vlv_get_cck_clock_hpll(display->drm, "czclk",
 						      CCK_CZ_CLOCK_CONTROL);
 
 	drm_dbg_kms(display->drm, "CZ clock rate: %d kHz\n", dev_priv->czclk_freq);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b6610e9175a7..fa857c0e03c7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -40,7 +40,6 @@ struct drm_encoder;
 struct drm_file;
 struct drm_format_info;
 struct drm_framebuffer;
-struct drm_i915_private;
 struct drm_mode_fb_cmd2;
 struct drm_modeset_acquire_ctx;
 struct drm_plane;
@@ -452,10 +451,10 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
 void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
 void i830_enable_pipe(struct intel_display *display, enum pipe pipe);
 void i830_disable_pipe(struct intel_display *display, enum pipe pipe);
-int vlv_get_hpll_vco(struct drm_i915_private *dev_priv);
-int vlv_get_cck_clock(struct drm_i915_private *dev_priv,
+int vlv_get_hpll_vco(struct drm_device *drm);
+int vlv_get_cck_clock(struct drm_device *drm,
 		      const char *name, u32 reg, int ref_freq);
-int vlv_get_cck_clock_hpll(struct drm_i915_private *dev_priv,
+int vlv_get_cck_clock_hpll(struct drm_device *drm,
 			   const char *name, u32 reg);
 bool intel_has_pending_fb_unpin(struct intel_display *display);
 void intel_encoder_destroy(struct drm_encoder *encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 16356523816f..d7f5d3dbb8a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1883,12 +1883,11 @@ static void vlv_cmnlane_wa(struct intel_display *display)
 
 static bool vlv_punit_is_power_gated(struct intel_display *display, u32 reg0)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	bool ret;
 
-	vlv_punit_get(dev_priv);
-	ret = (vlv_punit_read(dev_priv, reg0) & SSPM0_SSC_MASK) == SSPM0_SSC_PWR_GATE;
-	vlv_punit_put(dev_priv);
+	vlv_punit_get(display->drm);
+	ret = (vlv_punit_read(display->drm, reg0) & SSPM0_SSC_MASK) == SSPM0_SSC_PWR_GATE;
+	vlv_punit_put(display->drm);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 0a3d302f9d1b..02e3c22be21e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -809,7 +809,6 @@ static void tgl_disable_dc3co(struct intel_display *display)
 
 static void assert_can_enable_dc5(struct intel_display *display)
 {
-	struct drm_i915_private __maybe_unused *dev_priv = to_i915(display->drm);
 	enum i915_power_well_id high_pg;
 
 	/* Power wells at this level and above must be disabled for DC5 entry */
@@ -1102,7 +1101,6 @@ static void i830_pipes_power_well_sync_hw(struct intel_display *display,
 static void vlv_set_power_well(struct intel_display *display,
 			       struct i915_power_well *power_well, bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int pw_idx = i915_power_well_instance(power_well)->vlv.idx;
 	u32 mask;
 	u32 state;
@@ -1112,29 +1110,29 @@ static void vlv_set_power_well(struct intel_display *display,
 	state = enable ? PUNIT_PWRGT_PWR_ON(pw_idx) :
 			 PUNIT_PWRGT_PWR_GATE(pw_idx);
 
-	vlv_punit_get(dev_priv);
+	vlv_punit_get(display->drm);
 
 #define COND \
-	((vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_STATUS) & mask) == state)
+	((vlv_punit_read(display->drm, PUNIT_REG_PWRGT_STATUS) & mask) == state)
 
 	if (COND)
 		goto out;
 
-	ctrl = vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_CTRL);
+	ctrl = vlv_punit_read(display->drm, PUNIT_REG_PWRGT_CTRL);
 	ctrl &= ~mask;
 	ctrl |= state;
-	vlv_punit_write(dev_priv, PUNIT_REG_PWRGT_CTRL, ctrl);
+	vlv_punit_write(display->drm, PUNIT_REG_PWRGT_CTRL, ctrl);
 
 	if (wait_for(COND, 100))
 		drm_err(display->drm,
 			"timeout setting power well state %08x (%08x)\n",
 			state,
-			vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_CTRL));
+			vlv_punit_read(display->drm, PUNIT_REG_PWRGT_CTRL));
 
 #undef COND
 
 out:
-	vlv_punit_put(dev_priv);
+	vlv_punit_put(display->drm);
 }
 
 static void vlv_power_well_enable(struct intel_display *display,
@@ -1152,7 +1150,6 @@ static void vlv_power_well_disable(struct intel_display *display,
 static bool vlv_power_well_enabled(struct intel_display *display,
 				   struct i915_power_well *power_well)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int pw_idx = i915_power_well_instance(power_well)->vlv.idx;
 	bool enabled = false;
 	u32 mask;
@@ -1162,9 +1159,9 @@ static bool vlv_power_well_enabled(struct intel_display *display,
 	mask = PUNIT_PWRGT_MASK(pw_idx);
 	ctrl = PUNIT_PWRGT_PWR_ON(pw_idx);
 
-	vlv_punit_get(dev_priv);
+	vlv_punit_get(display->drm);
 
-	state = vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_STATUS) & mask;
+	state = vlv_punit_read(display->drm, PUNIT_REG_PWRGT_STATUS) & mask;
 	/*
 	 * We only ever set the power-on and power-gate states, anything
 	 * else is unexpected.
@@ -1178,10 +1175,10 @@ static bool vlv_power_well_enabled(struct intel_display *display,
 	 * A transient state at this point would mean some unexpected party
 	 * is poking at the power controls too.
 	 */
-	ctrl = vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_CTRL) & mask;
+	ctrl = vlv_punit_read(display->drm, PUNIT_REG_PWRGT_CTRL) & mask;
 	drm_WARN_ON(display->drm, ctrl != state);
 
-	vlv_punit_put(dev_priv);
+	vlv_punit_put(display->drm);
 
 	return enabled;
 }
@@ -1437,7 +1434,6 @@ static void assert_chv_phy_status(struct intel_display *display)
 static void chv_dpio_cmn_power_well_enable(struct intel_display *display,
 					   struct i915_power_well *power_well)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum i915_power_well_id id = i915_power_well_instance(power_well)->id;
 	enum dpio_phy phy;
 	u32 tmp;
@@ -1461,30 +1457,30 @@ static void chv_dpio_cmn_power_well_enable(struct intel_display *display,
 		drm_err(display->drm, "Display PHY %d is not power up\n",
 			phy);
 
-	vlv_dpio_get(dev_priv);
+	vlv_dpio_get(display->drm);
 
 	/* Enable dynamic power down */
-	tmp = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW28);
+	tmp = vlv_dpio_read(display->drm, phy, CHV_CMN_DW28);
 	tmp |= DPIO_DYNPWRDOWNEN_CH0 | DPIO_CL1POWERDOWNEN |
 		DPIO_SUS_CLK_CONFIG_GATE_CLKREQ;
-	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW28, tmp);
+	vlv_dpio_write(display->drm, phy, CHV_CMN_DW28, tmp);
 
 	if (id == VLV_DISP_PW_DPIO_CMN_BC) {
-		tmp = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW6_CH1);
+		tmp = vlv_dpio_read(display->drm, phy, CHV_CMN_DW6_CH1);
 		tmp |= DPIO_DYNPWRDOWNEN_CH1;
-		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW6_CH1, tmp);
+		vlv_dpio_write(display->drm, phy, CHV_CMN_DW6_CH1, tmp);
 	} else {
 		/*
 		 * Force the non-existing CL2 off. BXT does this
 		 * too, so maybe it saves some power even though
 		 * CL2 doesn't exist?
 		 */
-		tmp = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW30);
+		tmp = vlv_dpio_read(display->drm, phy, CHV_CMN_DW30);
 		tmp |= DPIO_CL2_LDOFUSE_PWRENB;
-		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW30, tmp);
+		vlv_dpio_write(display->drm, phy, CHV_CMN_DW30, tmp);
 	}
 
-	vlv_dpio_put(dev_priv);
+	vlv_dpio_put(display->drm);
 
 	display->power.chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(phy);
 	intel_de_write(display, DISPLAY_PHY_CONTROL,
@@ -1535,7 +1531,6 @@ static void chv_dpio_cmn_power_well_disable(struct intel_display *display,
 static void assert_chv_phy_powergate(struct intel_display *display, enum dpio_phy phy,
 				     enum dpio_channel ch, bool override, unsigned int mask)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 reg, val, expected, actual;
 
 	/*
@@ -1553,9 +1548,9 @@ static void assert_chv_phy_powergate(struct intel_display *display, enum dpio_ph
 	else
 		reg = CHV_CMN_DW6_CH1;
 
-	vlv_dpio_get(dev_priv);
-	val = vlv_dpio_read(dev_priv, phy, reg);
-	vlv_dpio_put(dev_priv);
+	vlv_dpio_get(display->drm);
+	val = vlv_dpio_read(display->drm, phy, reg);
+	vlv_dpio_put(display->drm);
 
 	/*
 	 * This assumes !override is only used when the port is disabled.
@@ -1665,14 +1660,13 @@ void chv_phy_powergate_lanes(struct intel_encoder *encoder,
 static bool chv_pipe_power_well_enabled(struct intel_display *display,
 					struct i915_power_well *power_well)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe = PIPE_A;
 	bool enabled;
 	u32 state, ctrl;
 
-	vlv_punit_get(dev_priv);
+	vlv_punit_get(display->drm);
 
-	state = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) & DP_SSS_MASK(pipe);
+	state = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM) & DP_SSS_MASK(pipe);
 	/*
 	 * We only ever set the power-on and power-gate states, anything
 	 * else is unexpected.
@@ -1685,10 +1679,10 @@ static bool chv_pipe_power_well_enabled(struct intel_display *display,
 	 * A transient state at this point would mean some unexpected party
 	 * is poking at the power controls too.
 	 */
-	ctrl = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) & DP_SSC_MASK(pipe);
+	ctrl = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM) & DP_SSC_MASK(pipe);
 	drm_WARN_ON(display->drm, ctrl << 16 != state);
 
-	vlv_punit_put(dev_priv);
+	vlv_punit_put(display->drm);
 
 	return enabled;
 }
@@ -1697,36 +1691,35 @@ static void chv_set_pipe_power_well(struct intel_display *display,
 				    struct i915_power_well *power_well,
 				    bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe = PIPE_A;
 	u32 state;
 	u32 ctrl;
 
 	state = enable ? DP_SSS_PWR_ON(pipe) : DP_SSS_PWR_GATE(pipe);
 
-	vlv_punit_get(dev_priv);
+	vlv_punit_get(display->drm);
 
 #define COND \
-	((vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) & DP_SSS_MASK(pipe)) == state)
+	((vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM) & DP_SSS_MASK(pipe)) == state)
 
 	if (COND)
 		goto out;
 
-	ctrl = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM);
+	ctrl = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
 	ctrl &= ~DP_SSC_MASK(pipe);
 	ctrl |= enable ? DP_SSC_PWR_ON(pipe) : DP_SSC_PWR_GATE(pipe);
-	vlv_punit_write(dev_priv, PUNIT_REG_DSPSSPM, ctrl);
+	vlv_punit_write(display->drm, PUNIT_REG_DSPSSPM, ctrl);
 
 	if (wait_for(COND, 100))
 		drm_err(display->drm,
 			"timeout setting power well state %08x (%08x)\n",
 			state,
-			vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM));
+			vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM));
 
 #undef COND
 
 out:
-	vlv_punit_put(dev_priv);
+	vlv_punit_put(display->drm);
 }
 
 static void chv_pipe_power_well_sync_hw(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 69f242139420..552dd984ade9 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -21,9 +21,11 @@
  * DEALINGS IN THE SOFTWARE.
  */
 
+#include <drm/drm_print.h>
+
 #include "bxt_dpio_phy_regs.h"
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
@@ -715,53 +717,53 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
 			      u32 deemph_reg_value, u32 margin_reg_value,
 			      bool uniq_trans_scale)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 	u32 val;
 	int i;
 
-	vlv_dpio_get(dev_priv);
+	vlv_dpio_get(display->drm);
 
 	/* Clear calc init */
-	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW10(ch));
+	val = vlv_dpio_read(display->drm, phy, VLV_PCS01_DW10(ch));
 	val &= ~(DPIO_PCS_SWING_CALC_TX0_TX2 | DPIO_PCS_SWING_CALC_TX1_TX3);
 	val &= ~(DPIO_PCS_TX1DEEMP_MASK | DPIO_PCS_TX2DEEMP_MASK);
 	val |= DPIO_PCS_TX1DEEMP_9P5 | DPIO_PCS_TX2DEEMP_9P5;
-	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW10(ch), val);
+	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW10(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW10(ch));
+		val = vlv_dpio_read(display->drm, phy, VLV_PCS23_DW10(ch));
 		val &= ~(DPIO_PCS_SWING_CALC_TX0_TX2 | DPIO_PCS_SWING_CALC_TX1_TX3);
 		val &= ~(DPIO_PCS_TX1DEEMP_MASK | DPIO_PCS_TX2DEEMP_MASK);
 		val |= DPIO_PCS_TX1DEEMP_9P5 | DPIO_PCS_TX2DEEMP_9P5;
-		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW10(ch), val);
+		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW10(ch), val);
 	}
 
-	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW9(ch));
+	val = vlv_dpio_read(display->drm, phy, VLV_PCS01_DW9(ch));
 	val &= ~(DPIO_PCS_TX1MARGIN_MASK | DPIO_PCS_TX2MARGIN_MASK);
 	val |= DPIO_PCS_TX1MARGIN_000 | DPIO_PCS_TX2MARGIN_000;
-	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW9(ch), val);
+	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW9(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW9(ch));
+		val = vlv_dpio_read(display->drm, phy, VLV_PCS23_DW9(ch));
 		val &= ~(DPIO_PCS_TX1MARGIN_MASK | DPIO_PCS_TX2MARGIN_MASK);
 		val |= DPIO_PCS_TX1MARGIN_000 | DPIO_PCS_TX2MARGIN_000;
-		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW9(ch), val);
+		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW9(ch), val);
 	}
 
 	/* Program swing deemph */
 	for (i = 0; i < crtc_state->lane_count; i++) {
-		val = vlv_dpio_read(dev_priv, phy, CHV_TX_DW4(ch, i));
+		val = vlv_dpio_read(display->drm, phy, CHV_TX_DW4(ch, i));
 		val &= ~DPIO_SWING_DEEMPH9P5_MASK;
 		val |= DPIO_SWING_DEEMPH9P5(deemph_reg_value);
-		vlv_dpio_write(dev_priv, phy, CHV_TX_DW4(ch, i), val);
+		vlv_dpio_write(display->drm, phy, CHV_TX_DW4(ch, i), val);
 	}
 
 	/* Program swing margin */
 	for (i = 0; i < crtc_state->lane_count; i++) {
-		val = vlv_dpio_read(dev_priv, phy, CHV_TX_DW2(ch, i));
+		val = vlv_dpio_read(display->drm, phy, CHV_TX_DW2(ch, i));
 
 		val &= ~DPIO_SWING_MARGIN000_MASK;
 		val |= DPIO_SWING_MARGIN000(margin_reg_value);
@@ -774,7 +776,7 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
 		val &= ~DPIO_UNIQ_TRANS_SCALE_MASK;
 		val |= DPIO_UNIQ_TRANS_SCALE(0x9a);
 
-		vlv_dpio_write(dev_priv, phy, CHV_TX_DW2(ch, i), val);
+		vlv_dpio_write(display->drm, phy, CHV_TX_DW2(ch, i), val);
 	}
 
 	/*
@@ -784,70 +786,70 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
 	 * 27 for ch0 and ch1.
 	 */
 	for (i = 0; i < crtc_state->lane_count; i++) {
-		val = vlv_dpio_read(dev_priv, phy, CHV_TX_DW3(ch, i));
+		val = vlv_dpio_read(display->drm, phy, CHV_TX_DW3(ch, i));
 		if (uniq_trans_scale)
 			val |= DPIO_TX_UNIQ_TRANS_SCALE_EN;
 		else
 			val &= ~DPIO_TX_UNIQ_TRANS_SCALE_EN;
-		vlv_dpio_write(dev_priv, phy, CHV_TX_DW3(ch, i), val);
+		vlv_dpio_write(display->drm, phy, CHV_TX_DW3(ch, i), val);
 	}
 
 	/* Start swing calculation */
-	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW10(ch));
+	val = vlv_dpio_read(display->drm, phy, VLV_PCS01_DW10(ch));
 	val |= DPIO_PCS_SWING_CALC_TX0_TX2 | DPIO_PCS_SWING_CALC_TX1_TX3;
-	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW10(ch), val);
+	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW10(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW10(ch));
+		val = vlv_dpio_read(display->drm, phy, VLV_PCS23_DW10(ch));
 		val |= DPIO_PCS_SWING_CALC_TX0_TX2 | DPIO_PCS_SWING_CALC_TX1_TX3;
-		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW10(ch), val);
+		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW10(ch), val);
 	}
 
-	vlv_dpio_put(dev_priv);
+	vlv_dpio_put(display->drm);
 }
 
 static void __chv_data_lane_soft_reset(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state,
 				       bool reset)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 	u32 val;
 
-	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW0(ch));
+	val = vlv_dpio_read(display->drm, phy, VLV_PCS01_DW0(ch));
 	if (reset)
 		val &= ~(DPIO_PCS_TX_LANE2_RESET | DPIO_PCS_TX_LANE1_RESET);
 	else
 		val |= DPIO_PCS_TX_LANE2_RESET | DPIO_PCS_TX_LANE1_RESET;
-	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW0(ch), val);
+	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW0(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW0(ch));
+		val = vlv_dpio_read(display->drm, phy, VLV_PCS23_DW0(ch));
 		if (reset)
 			val &= ~(DPIO_PCS_TX_LANE2_RESET | DPIO_PCS_TX_LANE1_RESET);
 		else
 			val |= DPIO_PCS_TX_LANE2_RESET | DPIO_PCS_TX_LANE1_RESET;
-		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW0(ch), val);
+		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW0(ch), val);
 	}
 
-	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW1(ch));
+	val = vlv_dpio_read(display->drm, phy, VLV_PCS01_DW1(ch));
 	val |= CHV_PCS_REQ_SOFTRESET_EN;
 	if (reset)
 		val &= ~DPIO_PCS_CLK_SOFT_RESET;
 	else
 		val |= DPIO_PCS_CLK_SOFT_RESET;
-	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW1(ch), val);
+	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW1(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW1(ch));
+		val = vlv_dpio_read(display->drm, phy, VLV_PCS23_DW1(ch));
 		val |= CHV_PCS_REQ_SOFTRESET_EN;
 		if (reset)
 			val &= ~DPIO_PCS_CLK_SOFT_RESET;
 		else
 			val |= DPIO_PCS_CLK_SOFT_RESET;
-		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW1(ch), val);
+		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW1(ch), val);
 	}
 }
 
@@ -855,11 +857,11 @@ void chv_data_lane_soft_reset(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state,
 			      bool reset)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	vlv_dpio_get(i915);
+	vlv_dpio_get(display->drm);
 	__chv_data_lane_soft_reset(encoder, crtc_state, reset);
-	vlv_dpio_put(i915);
+	vlv_dpio_put(display->drm);
 }
 
 void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
@@ -867,7 +869,6 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
@@ -886,47 +887,47 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 
 	chv_phy_powergate_lanes(encoder, true, lane_mask);
 
-	vlv_dpio_get(dev_priv);
+	vlv_dpio_get(display->drm);
 
 	/* Assert data lane reset */
 	__chv_data_lane_soft_reset(encoder, crtc_state, true);
 
 	/* program left/right clock distribution */
 	if (pipe != PIPE_B) {
-		val = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW5_CH0);
+		val = vlv_dpio_read(display->drm, phy, CHV_CMN_DW5_CH0);
 		val &= ~(CHV_BUFLEFTENA1_MASK | CHV_BUFRIGHTENA1_MASK);
 		if (ch == DPIO_CH0)
 			val |= CHV_BUFLEFTENA1_FORCE;
 		if (ch == DPIO_CH1)
 			val |= CHV_BUFRIGHTENA1_FORCE;
-		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW5_CH0, val);
+		vlv_dpio_write(display->drm, phy, CHV_CMN_DW5_CH0, val);
 	} else {
-		val = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW1_CH1);
+		val = vlv_dpio_read(display->drm, phy, CHV_CMN_DW1_CH1);
 		val &= ~(CHV_BUFLEFTENA2_MASK | CHV_BUFRIGHTENA2_MASK);
 		if (ch == DPIO_CH0)
 			val |= CHV_BUFLEFTENA2_FORCE;
 		if (ch == DPIO_CH1)
 			val |= CHV_BUFRIGHTENA2_FORCE;
-		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW1_CH1, val);
+		vlv_dpio_write(display->drm, phy, CHV_CMN_DW1_CH1, val);
 	}
 
 	/* program clock channel usage */
-	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW8(ch));
+	val = vlv_dpio_read(display->drm, phy, VLV_PCS01_DW8(ch));
 	val |= DPIO_PCS_USEDCLKCHANNEL_OVRRIDE;
 	if (pipe == PIPE_B)
 		val |= DPIO_PCS_USEDCLKCHANNEL;
 	else
 		val &= ~DPIO_PCS_USEDCLKCHANNEL;
-	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW8(ch), val);
+	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW8(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW8(ch));
+		val = vlv_dpio_read(display->drm, phy, VLV_PCS23_DW8(ch));
 		val |= DPIO_PCS_USEDCLKCHANNEL_OVRRIDE;
 		if (pipe == PIPE_B)
 			val |= DPIO_PCS_USEDCLKCHANNEL;
 		else
 			val &= ~DPIO_PCS_USEDCLKCHANNEL;
-		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW8(ch), val);
+		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW8(ch), val);
 	}
 
 	/*
@@ -934,38 +935,38 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 	 * matches the pipe, but here we need to
 	 * pick the CL based on the port.
 	 */
-	val = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW19(ch));
+	val = vlv_dpio_read(display->drm, phy, CHV_CMN_DW19(ch));
 	if (pipe == PIPE_B)
 		val |= CHV_CMN_USEDCLKCHANNEL;
 	else
 		val &= ~CHV_CMN_USEDCLKCHANNEL;
-	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW19(ch), val);
+	vlv_dpio_write(display->drm, phy, CHV_CMN_DW19(ch), val);
 
-	vlv_dpio_put(dev_priv);
+	vlv_dpio_put(display->drm);
 }
 
 void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 	int data, i, stagger;
 	u32 val;
 
-	vlv_dpio_get(dev_priv);
+	vlv_dpio_get(display->drm);
 
 	/* allow hardware to manage TX FIFO reset source */
-	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW11(ch));
+	val = vlv_dpio_read(display->drm, phy, VLV_PCS01_DW11(ch));
 	val &= ~DPIO_LANEDESKEW_STRAP_OVRD;
-	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW11(ch), val);
+	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW11(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW11(ch));
+		val = vlv_dpio_read(display->drm, phy, VLV_PCS23_DW11(ch));
 		val &= ~DPIO_LANEDESKEW_STRAP_OVRD;
-		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW11(ch), val);
+		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW11(ch), val);
 	}
 
 	/* Program Tx lane latency optimal setting*/
@@ -975,7 +976,7 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 			data = 0;
 		else
 			data = (i == 1) ? 0 : DPIO_UPAR;
-		vlv_dpio_write(dev_priv, phy, CHV_TX_DW14(ch, i), data);
+		vlv_dpio_write(display->drm, phy, CHV_TX_DW14(ch, i), data);
 	}
 
 	/* Data lane stagger programming */
@@ -990,17 +991,17 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	else
 		stagger = 0x2;
 
-	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW11(ch));
+	val = vlv_dpio_read(display->drm, phy, VLV_PCS01_DW11(ch));
 	val |= DPIO_TX2_STAGGER_MASK(0x1f);
-	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW11(ch), val);
+	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW11(ch), val);
 
 	if (crtc_state->lane_count > 2) {
-		val = vlv_dpio_read(dev_priv, phy, VLV_PCS23_DW11(ch));
+		val = vlv_dpio_read(display->drm, phy, VLV_PCS23_DW11(ch));
 		val |= DPIO_TX2_STAGGER_MASK(0x1f);
-		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW11(ch), val);
+		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW11(ch), val);
 	}
 
-	vlv_dpio_write(dev_priv, phy, VLV_PCS01_DW12(ch),
+	vlv_dpio_write(display->drm, phy, VLV_PCS01_DW12(ch),
 		       DPIO_LANESTAGGER_STRAP(stagger) |
 		       DPIO_LANESTAGGER_STRAP_OVRD |
 		       DPIO_TX1_STAGGER_MASK(0x1f) |
@@ -1008,7 +1009,7 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 		       DPIO_TX2_STAGGER_MULT(0));
 
 	if (crtc_state->lane_count > 2) {
-		vlv_dpio_write(dev_priv, phy, VLV_PCS23_DW12(ch),
+		vlv_dpio_write(display->drm, phy, VLV_PCS23_DW12(ch),
 			       DPIO_LANESTAGGER_STRAP(stagger) |
 			       DPIO_LANESTAGGER_STRAP_OVRD |
 			       DPIO_TX1_STAGGER_MASK(0x1f) |
@@ -1019,7 +1020,7 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	/* Deassert data lane reset */
 	__chv_data_lane_soft_reset(encoder, crtc_state, false);
 
-	vlv_dpio_put(dev_priv);
+	vlv_dpio_put(display->drm);
 }
 
 void chv_phy_release_cl2_override(struct intel_encoder *encoder)
@@ -1036,25 +1037,25 @@ void chv_phy_release_cl2_override(struct intel_encoder *encoder)
 void chv_phy_post_pll_disable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *old_crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum dpio_phy phy = vlv_dig_port_to_phy(enc_to_dig_port(encoder));
 	enum pipe pipe = to_intel_crtc(old_crtc_state->uapi.crtc)->pipe;
 	u32 val;
 
-	vlv_dpio_get(dev_priv);
+	vlv_dpio_get(display->drm);
 
 	/* disable left/right clock distribution */
 	if (pipe != PIPE_B) {
-		val = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW5_CH0);
+		val = vlv_dpio_read(display->drm, phy, CHV_CMN_DW5_CH0);
 		val &= ~(CHV_BUFLEFTENA1_MASK | CHV_BUFRIGHTENA1_MASK);
-		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW5_CH0, val);
+		vlv_dpio_write(display->drm, phy, CHV_CMN_DW5_CH0, val);
 	} else {
-		val = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW1_CH1);
+		val = vlv_dpio_read(display->drm, phy, CHV_CMN_DW1_CH1);
 		val &= ~(CHV_BUFLEFTENA2_MASK | CHV_BUFRIGHTENA2_MASK);
-		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW1_CH1, val);
+		vlv_dpio_write(display->drm, phy, CHV_CMN_DW1_CH1, val);
 	}
 
-	vlv_dpio_put(dev_priv);
+	vlv_dpio_put(display->drm);
 
 	/*
 	 * Leave the power down bit cleared for at least one
@@ -1073,97 +1074,97 @@ void vlv_set_phy_signal_level(struct intel_encoder *encoder,
 			      u32 demph_reg_value, u32 preemph_reg_value,
 			      u32 uniqtranscale_reg_value, u32 tx3_demph)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 
-	vlv_dpio_get(dev_priv);
+	vlv_dpio_get(display->drm);
 
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW5_GRP(ch), 0x00000000);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW4_GRP(ch), demph_reg_value);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW2_GRP(ch),
-			 uniqtranscale_reg_value);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW3_GRP(ch), 0x0C782040);
+	vlv_dpio_write(display->drm, phy, VLV_TX_DW5_GRP(ch), 0x00000000);
+	vlv_dpio_write(display->drm, phy, VLV_TX_DW4_GRP(ch), demph_reg_value);
+	vlv_dpio_write(display->drm, phy, VLV_TX_DW2_GRP(ch),
+		       uniqtranscale_reg_value);
+	vlv_dpio_write(display->drm, phy, VLV_TX_DW3_GRP(ch), 0x0C782040);
 
 	if (tx3_demph)
-		vlv_dpio_write(dev_priv, phy, VLV_TX_DW4(ch, 3), tx3_demph);
+		vlv_dpio_write(display->drm, phy, VLV_TX_DW4(ch, 3), tx3_demph);
 
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW11_GRP(ch), 0x00030000);
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW9_GRP(ch), preemph_reg_value);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW5_GRP(ch), DPIO_TX_OCALINIT_EN);
+	vlv_dpio_write(display->drm, phy, VLV_PCS_DW11_GRP(ch), 0x00030000);
+	vlv_dpio_write(display->drm, phy, VLV_PCS_DW9_GRP(ch), preemph_reg_value);
+	vlv_dpio_write(display->drm, phy, VLV_TX_DW5_GRP(ch), DPIO_TX_OCALINIT_EN);
 
-	vlv_dpio_put(dev_priv);
+	vlv_dpio_put(display->drm);
 }
 
 void vlv_phy_pre_pll_enable(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 
 	/* Program Tx lane resets to default */
-	vlv_dpio_get(dev_priv);
+	vlv_dpio_get(display->drm);
 
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0_GRP(ch),
+	vlv_dpio_write(display->drm, phy, VLV_PCS_DW0_GRP(ch),
 		       DPIO_PCS_TX_LANE2_RESET |
 		       DPIO_PCS_TX_LANE1_RESET);
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1_GRP(ch),
+	vlv_dpio_write(display->drm, phy, VLV_PCS_DW1_GRP(ch),
 		       DPIO_PCS_CLK_CRI_RXEB_EIOS_EN |
 		       DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN |
 		       DPIO_PCS_CLK_DATAWIDTH_8_10 |
 		       DPIO_PCS_CLK_SOFT_RESET);
 
 	/* Fix up inter-pair skew failure */
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW12_GRP(ch), 0x00750f00);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW11_GRP(ch), 0x00001500);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW14_GRP(ch), 0x40400000);
+	vlv_dpio_write(display->drm, phy, VLV_PCS_DW12_GRP(ch), 0x00750f00);
+	vlv_dpio_write(display->drm, phy, VLV_TX_DW11_GRP(ch), 0x00001500);
+	vlv_dpio_write(display->drm, phy, VLV_TX_DW14_GRP(ch), 0x40400000);
 
-	vlv_dpio_put(dev_priv);
+	vlv_dpio_put(display->drm);
 }
 
 void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 	enum pipe pipe = crtc->pipe;
 	u32 val;
 
-	vlv_dpio_get(dev_priv);
+	vlv_dpio_get(display->drm);
 
 	/* Enable clock channels for this port */
 	val = DPIO_PCS_USEDCLKCHANNEL_OVRRIDE;
 	if (pipe == PIPE_B)
 		val |= DPIO_PCS_USEDCLKCHANNEL;
 	val |= 0xc4;
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW8_GRP(ch), val);
+	vlv_dpio_write(display->drm, phy, VLV_PCS_DW8_GRP(ch), val);
 
 	/* Program lane clock */
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW14_GRP(ch), 0x00760018);
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW23_GRP(ch), 0x00400888);
+	vlv_dpio_write(display->drm, phy, VLV_PCS_DW14_GRP(ch), 0x00760018);
+	vlv_dpio_write(display->drm, phy, VLV_PCS_DW23_GRP(ch), 0x00400888);
 
-	vlv_dpio_put(dev_priv);
+	vlv_dpio_put(display->drm);
 }
 
 void vlv_phy_reset_lanes(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *old_crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum dpio_channel ch = vlv_dig_port_to_channel(dig_port);
 	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 
-	vlv_dpio_get(dev_priv);
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0_GRP(ch), 0x00000000);
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1_GRP(ch), 0x00e00060);
-	vlv_dpio_put(dev_priv);
+	vlv_dpio_get(display->drm);
+	vlv_dpio_write(display->drm, phy, VLV_PCS_DW0_GRP(ch), 0x00000000);
+	vlv_dpio_write(display->drm, phy, VLV_PCS_DW1_GRP(ch), 0x00e00060);
+	vlv_dpio_put(display->drm);
 }
 
 void vlv_wait_port_ready(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index a9e9b98d0bf9..dd7a29c10b5d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -6,7 +6,8 @@
 #include <linux/kernel.h>
 #include <linux/string_helpers.h>
 
-#include "i915_drv.h"
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
@@ -513,8 +514,8 @@ void i9xx_crtc_clock_get(struct intel_crtc_state *crtc_state)
 
 void vlv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum dpio_channel ch = vlv_pipe_to_channel(crtc->pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
@@ -526,9 +527,9 @@ void vlv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 	if ((hw_state->dpll & DPLL_VCO_ENABLE) == 0)
 		return;
 
-	vlv_dpio_get(dev_priv);
-	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW3(ch));
-	vlv_dpio_put(dev_priv);
+	vlv_dpio_get(display->drm);
+	tmp = vlv_dpio_read(display->drm, phy, VLV_PLL_DW3(ch));
+	vlv_dpio_put(display->drm);
 
 	clock.m1 = REG_FIELD_GET(DPIO_M1_DIV_MASK, tmp);
 	clock.m2 = REG_FIELD_GET(DPIO_M2_DIV_MASK, tmp);
@@ -541,8 +542,8 @@ void vlv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 
 void chv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum dpio_channel ch = vlv_pipe_to_channel(crtc->pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
@@ -554,13 +555,13 @@ void chv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 	if ((hw_state->dpll & DPLL_VCO_ENABLE) == 0)
 		return;
 
-	vlv_dpio_get(dev_priv);
-	cmn_dw13 = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW13(ch));
-	pll_dw0 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW0(ch));
-	pll_dw1 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW1(ch));
-	pll_dw2 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW2(ch));
-	pll_dw3 = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(ch));
-	vlv_dpio_put(dev_priv);
+	vlv_dpio_get(display->drm);
+	cmn_dw13 = vlv_dpio_read(display->drm, phy, CHV_CMN_DW13(ch));
+	pll_dw0 = vlv_dpio_read(display->drm, phy, CHV_PLL_DW0(ch));
+	pll_dw1 = vlv_dpio_read(display->drm, phy, CHV_PLL_DW1(ch));
+	pll_dw2 = vlv_dpio_read(display->drm, phy, CHV_PLL_DW2(ch));
+	pll_dw3 = vlv_dpio_read(display->drm, phy, CHV_PLL_DW3(ch));
+	vlv_dpio_put(display->drm);
 
 	clock.m1 = REG_FIELD_GET(DPIO_CHV_M1_DIV_MASK, pll_dw1) == DPIO_CHV_M1_DIV_BY_2 ? 2 : 0;
 	clock.m2 = REG_FIELD_GET(DPIO_CHV_M2_DIV_MASK, pll_dw0) << 22;
@@ -1871,45 +1872,43 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 static void vlv_pllb_recal_opamp(struct intel_display *display,
 				 enum dpio_phy phy, enum dpio_channel ch)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 tmp;
 
 	/*
 	 * PLLB opamp always calibrates to max value of 0x3f, force enable it
 	 * and set it to a reasonable value instead.
 	 */
-	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(ch));
+	tmp = vlv_dpio_read(display->drm, phy, VLV_PLL_DW17(ch));
 	tmp &= 0xffffff00;
 	tmp |= 0x00000030;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(ch), tmp);
+	vlv_dpio_write(display->drm, phy, VLV_PLL_DW17(ch), tmp);
 
-	tmp = vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
+	tmp = vlv_dpio_read(display->drm, phy, VLV_REF_DW11);
 	tmp &= 0x00ffffff;
 	tmp |= 0x8c000000;
-	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, tmp);
+	vlv_dpio_write(display->drm, phy, VLV_REF_DW11, tmp);
 
-	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(ch));
+	tmp = vlv_dpio_read(display->drm, phy, VLV_PLL_DW17(ch));
 	tmp &= 0xffffff00;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(ch), tmp);
+	vlv_dpio_write(display->drm, phy, VLV_PLL_DW17(ch), tmp);
 
-	tmp = vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
+	tmp = vlv_dpio_read(display->drm, phy, VLV_REF_DW11);
 	tmp &= 0x00ffffff;
 	tmp |= 0xb0000000;
-	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, tmp);
+	vlv_dpio_write(display->drm, phy, VLV_REF_DW11, tmp);
 }
 
 static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct dpll *clock = &crtc_state->dpll;
 	enum dpio_channel ch = vlv_pipe_to_channel(crtc->pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	enum pipe pipe = crtc->pipe;
 	u32 tmp, coreclk;
 
-	vlv_dpio_get(dev_priv);
+	vlv_dpio_get(display->drm);
 
 	/* See eDP HDMI DPIO driver vbios notes doc */
 
@@ -1918,15 +1917,15 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 		vlv_pllb_recal_opamp(display, phy, ch);
 
 	/* Set up Tx target for periodic Rcomp update */
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW17_BCAST, 0x0100000f);
+	vlv_dpio_write(display->drm, phy, VLV_PCS_DW17_BCAST, 0x0100000f);
 
 	/* Disable target IRef on PLL */
-	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW16(ch));
+	tmp = vlv_dpio_read(display->drm, phy, VLV_PLL_DW16(ch));
 	tmp &= 0x00ffffff;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW16(ch), tmp);
+	vlv_dpio_write(display->drm, phy, VLV_PLL_DW16(ch), tmp);
 
 	/* Disable fast lock */
-	vlv_dpio_write(dev_priv, phy, VLV_CMN_DW0, 0x610);
+	vlv_dpio_write(display->drm, phy, VLV_CMN_DW0, 0x610);
 
 	/* Set idtafcrecal before PLL is enabled */
 	tmp = DPIO_M1_DIV(clock->m1) |
@@ -1942,48 +1941,42 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	 * Note: don't use the DAC post divider as it seems unstable.
 	 */
 	tmp |= DPIO_S1_DIV(DPIO_S1_DIV_HDMIDP);
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(ch), tmp);
+	vlv_dpio_write(display->drm, phy, VLV_PLL_DW3(ch), tmp);
 
 	tmp |= DPIO_ENABLE_CALIBRATION;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(ch), tmp);
+	vlv_dpio_write(display->drm, phy, VLV_PLL_DW3(ch), tmp);
 
 	/* Set HBR and RBR LPF coefficients */
 	if (crtc_state->port_clock == 162000 ||
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG) ||
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(ch),
-				 0x009f0003);
+		vlv_dpio_write(display->drm, phy, VLV_PLL_DW18(ch), 0x009f0003);
 	else
-		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(ch),
-				 0x00d0000f);
+		vlv_dpio_write(display->drm, phy, VLV_PLL_DW18(ch), 0x00d0000f);
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		/* Use SSC source */
 		if (pipe == PIPE_A)
-			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
-					 0x0df40000);
+			vlv_dpio_write(display->drm, phy, VLV_PLL_DW5(ch), 0x0df40000);
 		else
-			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
-					 0x0df70000);
+			vlv_dpio_write(display->drm, phy, VLV_PLL_DW5(ch), 0x0df70000);
 	} else { /* HDMI or VGA */
 		/* Use bend source */
 		if (pipe == PIPE_A)
-			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
-					 0x0df70000);
+			vlv_dpio_write(display->drm, phy, VLV_PLL_DW5(ch), 0x0df70000);
 		else
-			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
-					 0x0df40000);
+			vlv_dpio_write(display->drm, phy, VLV_PLL_DW5(ch), 0x0df40000);
 	}
 
-	coreclk = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW7(ch));
+	coreclk = vlv_dpio_read(display->drm, phy, VLV_PLL_DW7(ch));
 	coreclk = (coreclk & 0x0000ff00) | 0x01c00000;
 	if (intel_crtc_has_dp_encoder(crtc_state))
 		coreclk |= 0x01000000;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW7(ch), coreclk);
+	vlv_dpio_write(display->drm, phy, VLV_PLL_DW7(ch), coreclk);
 
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW19(ch), 0x87871000);
+	vlv_dpio_write(display->drm, phy, VLV_PLL_DW19(ch), 0x87871000);
 
-	vlv_dpio_put(dev_priv);
+	vlv_dpio_put(display->drm);
 }
 
 static void _vlv_enable_pll(const struct intel_crtc_state *crtc_state)
@@ -2028,8 +2021,8 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 
 static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct dpll *clock = &crtc_state->dpll;
 	enum dpio_channel ch = vlv_pipe_to_channel(crtc->pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
@@ -2038,44 +2031,44 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 
 	m2_frac = clock->m2 & 0x3fffff;
 
-	vlv_dpio_get(dev_priv);
+	vlv_dpio_get(display->drm);
 
 	/* p1 and p2 divider */
-	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW13(ch),
+	vlv_dpio_write(display->drm, phy, CHV_CMN_DW13(ch),
 		       DPIO_CHV_S1_DIV(5) |
 		       DPIO_CHV_P1_DIV(clock->p1) |
 		       DPIO_CHV_P2_DIV(clock->p2) |
 		       DPIO_CHV_K_DIV(1));
 
 	/* Feedback post-divider - m2 */
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW0(ch),
+	vlv_dpio_write(display->drm, phy, CHV_PLL_DW0(ch),
 		       DPIO_CHV_M2_DIV(clock->m2 >> 22));
 
 	/* Feedback refclk divider - n and m1 */
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW1(ch),
+	vlv_dpio_write(display->drm, phy, CHV_PLL_DW1(ch),
 		       DPIO_CHV_M1_DIV(DPIO_CHV_M1_DIV_BY_2) |
 		       DPIO_CHV_N_DIV(1));
 
 	/* M2 fraction division */
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW2(ch),
+	vlv_dpio_write(display->drm, phy, CHV_PLL_DW2(ch),
 		       DPIO_CHV_M2_FRAC_DIV(m2_frac));
 
 	/* M2 fraction division enable */
-	tmp = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(ch));
+	tmp = vlv_dpio_read(display->drm, phy, CHV_PLL_DW3(ch));
 	tmp &= ~(DPIO_CHV_FEEDFWD_GAIN_MASK | DPIO_CHV_FRAC_DIV_EN);
 	tmp |= DPIO_CHV_FEEDFWD_GAIN(2);
 	if (m2_frac)
 		tmp |= DPIO_CHV_FRAC_DIV_EN;
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW3(ch), tmp);
+	vlv_dpio_write(display->drm, phy, CHV_PLL_DW3(ch), tmp);
 
 	/* Program digital lock detect threshold */
-	tmp = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW9(ch));
+	tmp = vlv_dpio_read(display->drm, phy, CHV_PLL_DW9(ch));
 	tmp &= ~(DPIO_CHV_INT_LOCK_THRESHOLD_MASK |
 		      DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE);
 	tmp |= DPIO_CHV_INT_LOCK_THRESHOLD(0x5);
 	if (!m2_frac)
 		tmp |= DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE;
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW9(ch), tmp);
+	vlv_dpio_write(display->drm, phy, CHV_PLL_DW9(ch), tmp);
 
 	/* Loop filter */
 	if (clock->vco == 5400000) {
@@ -2100,40 +2093,39 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 			DPIO_CHV_GAIN_CTRL(0x3);
 		tribuf_calcntr = 0;
 	}
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW6(ch), loopfilter);
+	vlv_dpio_write(display->drm, phy, CHV_PLL_DW6(ch), loopfilter);
 
-	tmp = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW8(ch));
+	tmp = vlv_dpio_read(display->drm, phy, CHV_PLL_DW8(ch));
 	tmp &= ~DPIO_CHV_TDC_TARGET_CNT_MASK;
 	tmp |= DPIO_CHV_TDC_TARGET_CNT(tribuf_calcntr);
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW8(ch), tmp);
+	vlv_dpio_write(display->drm, phy, CHV_PLL_DW8(ch), tmp);
 
 	/* AFC Recal */
-	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(ch),
-		       vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(ch)) |
+	vlv_dpio_write(display->drm, phy, CHV_CMN_DW14(ch),
+		       vlv_dpio_read(display->drm, phy, CHV_CMN_DW14(ch)) |
 		       DPIO_AFC_RECAL);
 
-	vlv_dpio_put(dev_priv);
+	vlv_dpio_put(display->drm);
 }
 
 static void _chv_enable_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	enum dpio_channel ch = vlv_pipe_to_channel(crtc->pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	enum pipe pipe = crtc->pipe;
 	u32 tmp;
 
-	vlv_dpio_get(dev_priv);
+	vlv_dpio_get(display->drm);
 
 	/* Enable back the 10bit clock to display controller */
-	tmp = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(ch));
+	tmp = vlv_dpio_read(display->drm, phy, CHV_CMN_DW14(ch));
 	tmp |= DPIO_DCLKP_EN;
-	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(ch), tmp);
+	vlv_dpio_write(display->drm, phy, CHV_CMN_DW14(ch), tmp);
 
-	vlv_dpio_put(dev_priv);
+	vlv_dpio_put(display->drm);
 
 	/*
 	 * Need to wait > 100ns between dclkp clock enable bit and PLL enable.
@@ -2252,7 +2244,6 @@ void vlv_disable_pll(struct intel_display *display, enum pipe pipe)
 
 void chv_disable_pll(struct intel_display *display, enum pipe pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum dpio_channel ch = vlv_pipe_to_channel(pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
 	u32 val;
@@ -2268,14 +2259,14 @@ void chv_disable_pll(struct intel_display *display, enum pipe pipe)
 	intel_de_write(display, DPLL(display, pipe), val);
 	intel_de_posting_read(display, DPLL(display, pipe));
 
-	vlv_dpio_get(dev_priv);
+	vlv_dpio_get(display->drm);
 
 	/* Disable 10bit clock to display controller */
-	val = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW14(ch));
+	val = vlv_dpio_read(display->drm, phy, CHV_CMN_DW14(ch));
 	val &= ~DPIO_DCLKP_EN;
-	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(ch), val);
+	vlv_dpio_write(display->drm, phy, CHV_CMN_DW14(ch), val);
 
-	vlv_dpio_put(dev_priv);
+	vlv_dpio_put(display->drm);
 }
 
 void i9xx_disable_pll(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 346737f15fa9..5eb81f1d2f97 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -30,10 +30,11 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_mipi_dsi.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
@@ -253,18 +254,16 @@ static int dpi_send_cmd(struct intel_dsi *intel_dsi, u32 cmd, bool hs,
 
 static void band_gap_reset(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	vlv_flisdsi_get(display->drm);
 
-	vlv_flisdsi_get(dev_priv);
-
-	vlv_flisdsi_write(dev_priv, 0x08, 0x0001);
-	vlv_flisdsi_write(dev_priv, 0x0F, 0x0005);
-	vlv_flisdsi_write(dev_priv, 0x0F, 0x0025);
+	vlv_flisdsi_write(display->drm, 0x08, 0x0001);
+	vlv_flisdsi_write(display->drm, 0x0F, 0x0005);
+	vlv_flisdsi_write(display->drm, 0x0F, 0x0025);
 	udelay(150);
-	vlv_flisdsi_write(dev_priv, 0x0F, 0x0000);
-	vlv_flisdsi_write(dev_priv, 0x08, 0x0000);
+	vlv_flisdsi_write(display->drm, 0x0F, 0x0000);
+	vlv_flisdsi_write(display->drm, 0x08, 0x0000);
 
-	vlv_flisdsi_put(dev_priv);
+	vlv_flisdsi_put(display->drm);
 }
 
 static int intel_dsi_compute_config(struct intel_encoder *encoder,
@@ -457,17 +456,16 @@ static void bxt_dsi_device_ready(struct intel_encoder *encoder)
 static void vlv_dsi_device_ready(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 
 	drm_dbg_kms(display->drm, "\n");
 
-	vlv_flisdsi_get(dev_priv);
+	vlv_flisdsi_get(display->drm);
 	/* program rcomp for compliance, reduce from 50 ohms to 45 ohms
 	 * needed everytime after power gate */
-	vlv_flisdsi_write(dev_priv, 0x04, 0x0004);
-	vlv_flisdsi_put(dev_priv);
+	vlv_flisdsi_write(display->drm, 0x04, 0x0004);
+	vlv_flisdsi_put(display->drm);
 
 	/* bandgap reset is needed after everytime we do power gate */
 	band_gap_reset(display);
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index 7ce924a5ef90..d42b61e6f076 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -28,7 +28,9 @@
 #include <linux/kernel.h>
 #include <linux/string_helpers.h>
 
-#include "i915_drv.h"
+#include <drm/drm_print.h>
+
+#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dsi.h"
@@ -214,15 +216,14 @@ void vlv_dsi_pll_enable(struct intel_encoder *encoder,
 			const struct intel_crtc_state *config)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	drm_dbg_kms(display->drm, "\n");
 
-	vlv_cck_get(dev_priv);
+	vlv_cck_get(display->drm);
 
-	vlv_cck_write(dev_priv, CCK_REG_DSI_PLL_CONTROL, 0);
-	vlv_cck_write(dev_priv, CCK_REG_DSI_PLL_DIVIDER, config->dsi_pll.div);
-	vlv_cck_write(dev_priv, CCK_REG_DSI_PLL_CONTROL,
+	vlv_cck_write(display->drm, CCK_REG_DSI_PLL_CONTROL, 0);
+	vlv_cck_write(display->drm, CCK_REG_DSI_PLL_DIVIDER, config->dsi_pll.div);
+	vlv_cck_write(display->drm, CCK_REG_DSI_PLL_CONTROL,
 		      config->dsi_pll.ctrl & ~DSI_PLL_VCO_EN);
 
 	/* wait at least 0.5 us after ungating before enabling VCO,
@@ -230,16 +231,16 @@ void vlv_dsi_pll_enable(struct intel_encoder *encoder,
 	 */
 	usleep_range(10, 50);
 
-	vlv_cck_write(dev_priv, CCK_REG_DSI_PLL_CONTROL, config->dsi_pll.ctrl);
+	vlv_cck_write(display->drm, CCK_REG_DSI_PLL_CONTROL, config->dsi_pll.ctrl);
 
-	if (wait_for(vlv_cck_read(dev_priv, CCK_REG_DSI_PLL_CONTROL) &
+	if (wait_for(vlv_cck_read(display->drm, CCK_REG_DSI_PLL_CONTROL) &
 						DSI_PLL_LOCK, 20)) {
 
-		vlv_cck_put(dev_priv);
+		vlv_cck_put(display->drm);
 		drm_err(display->drm, "DSI PLL lock failed\n");
 		return;
 	}
-	vlv_cck_put(dev_priv);
+	vlv_cck_put(display->drm);
 
 	drm_dbg_kms(display->drm, "DSI PLL locked\n");
 }
@@ -247,19 +248,18 @@ void vlv_dsi_pll_enable(struct intel_encoder *encoder,
 void vlv_dsi_pll_disable(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u32 tmp;
 
 	drm_dbg_kms(display->drm, "\n");
 
-	vlv_cck_get(dev_priv);
+	vlv_cck_get(display->drm);
 
-	tmp = vlv_cck_read(dev_priv, CCK_REG_DSI_PLL_CONTROL);
+	tmp = vlv_cck_read(display->drm, CCK_REG_DSI_PLL_CONTROL);
 	tmp &= ~DSI_PLL_VCO_EN;
 	tmp |= DSI_PLL_LDO_GATE;
-	vlv_cck_write(dev_priv, CCK_REG_DSI_PLL_CONTROL, tmp);
+	vlv_cck_write(display->drm, CCK_REG_DSI_PLL_CONTROL, tmp);
 
-	vlv_cck_put(dev_priv);
+	vlv_cck_put(display->drm);
 }
 
 bool bxt_dsi_pll_is_enabled(struct intel_display *display)
@@ -323,15 +323,14 @@ u32 vlv_dsi_get_pclk(struct intel_encoder *encoder,
 		     struct intel_crtc_state *config)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u32 pll_ctl, pll_div;
 
 	drm_dbg_kms(display->drm, "\n");
 
-	vlv_cck_get(dev_priv);
-	pll_ctl = vlv_cck_read(dev_priv, CCK_REG_DSI_PLL_CONTROL);
-	pll_div = vlv_cck_read(dev_priv, CCK_REG_DSI_PLL_DIVIDER);
-	vlv_cck_put(dev_priv);
+	vlv_cck_get(display->drm);
+	pll_ctl = vlv_cck_read(display->drm, CCK_REG_DSI_PLL_CONTROL);
+	pll_div = vlv_cck_read(display->drm, CCK_REG_DSI_PLL_DIVIDER);
+	vlv_cck_put(display->drm);
 
 	config->dsi_pll.ctrl = pll_ctl & ~DSI_PLL_LOCK;
 	config->dsi_pll.div = pll_div;
@@ -592,12 +591,11 @@ void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port)
 
 static void assert_dsi_pll(struct intel_display *display, bool state)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	bool cur_state;
 
-	vlv_cck_get(i915);
-	cur_state = vlv_cck_read(i915, CCK_REG_DSI_PLL_CONTROL) & DSI_PLL_VCO_EN;
-	vlv_cck_put(i915);
+	vlv_cck_get(display->drm);
+	cur_state = vlv_cck_read(display->drm, CCK_REG_DSI_PLL_CONTROL) & DSI_PLL_VCO_EN;
+	vlv_cck_put(display->drm);
 
 	INTEL_DISPLAY_STATE_WARN(display, cur_state != state,
 				 "DSI PLL state assertion failure (expected %s, current %s)\n",
diff --git a/drivers/gpu/drm/i915/display/vlv_sideband.c b/drivers/gpu/drm/i915/display/vlv_sideband.c
index f1caee32f623..e18045f2b89d 100644
--- a/drivers/gpu/drm/i915/display/vlv_sideband.c
+++ b/drivers/gpu/drm/i915/display/vlv_sideband.c
@@ -1,45 +1,50 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2025 Intel Corporation */
 
-#include "i915_drv.h"
+#include <drm/drm_print.h>
+
+#include "intel_display_core.h"
+#include "intel_display_types.h"
 #include "intel_dpio_phy.h"
 #include "vlv_sideband.h"
 
-static enum vlv_iosf_sb_unit vlv_dpio_phy_to_unit(struct drm_i915_private *i915,
+static enum vlv_iosf_sb_unit vlv_dpio_phy_to_unit(struct intel_display *display,
 						  enum dpio_phy phy)
 {
 	/*
 	 * IOSF_PORT_DPIO: VLV x2 PHY (DP/HDMI B and C), CHV x1 PHY (DP/HDMI D)
 	 * IOSF_PORT_DPIO_2: CHV x2 PHY (DP/HDMI B and C)
 	 */
-	if (IS_CHERRYVIEW(i915))
+	if (display->platform.cherryview)
 		return phy == DPIO_PHY0 ? VLV_IOSF_SB_DPIO_2 : VLV_IOSF_SB_DPIO;
 	else
 		return VLV_IOSF_SB_DPIO;
 }
 
-u32 vlv_dpio_read(struct drm_i915_private *i915, enum dpio_phy phy, int reg)
+u32 vlv_dpio_read(struct drm_device *drm, enum dpio_phy phy, int reg)
 {
-	enum vlv_iosf_sb_unit unit = vlv_dpio_phy_to_unit(i915, phy);
+	struct intel_display *display = to_intel_display(drm);
+	enum vlv_iosf_sb_unit unit = vlv_dpio_phy_to_unit(display, phy);
 	u32 val;
 
-	val = vlv_iosf_sb_read(i915, unit, reg);
+	val = vlv_iosf_sb_read(drm, unit, reg);
 
 	/*
 	 * FIXME: There might be some registers where all 1's is a valid value,
 	 * so ideally we should check the register offset instead...
 	 */
-	drm_WARN(&i915->drm, val == 0xffffffff,
+	drm_WARN(display->drm, val == 0xffffffff,
 		 "DPIO PHY%d read reg 0x%x == 0x%x\n",
 		 phy, reg, val);
 
 	return val;
 }
 
-void vlv_dpio_write(struct drm_i915_private *i915,
+void vlv_dpio_write(struct drm_device *drm,
 		    enum dpio_phy phy, int reg, u32 val)
 {
-	enum vlv_iosf_sb_unit unit = vlv_dpio_phy_to_unit(i915, phy);
+	struct intel_display *display = to_intel_display(drm);
+	enum vlv_iosf_sb_unit unit = vlv_dpio_phy_to_unit(display, phy);
 
-	vlv_iosf_sb_write(i915, unit, reg, val);
+	vlv_iosf_sb_write(drm, unit, reg, val);
 }
diff --git a/drivers/gpu/drm/i915/display/vlv_sideband.h b/drivers/gpu/drm/i915/display/vlv_sideband.h
index beac69157d24..2c240d81fead 100644
--- a/drivers/gpu/drm/i915/display/vlv_sideband.h
+++ b/drivers/gpu/drm/i915/display/vlv_sideband.h
@@ -11,146 +11,146 @@
 #include "vlv_iosf_sb_reg.h"
 
 enum dpio_phy;
-struct drm_i915_private;
+struct drm_device;
 
-static inline void vlv_bunit_get(struct drm_i915_private *i915)
+static inline void vlv_bunit_get(struct drm_device *drm)
 {
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_BUNIT));
+	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_BUNIT));
 }
 
-static inline u32 vlv_bunit_read(struct drm_i915_private *i915, u32 reg)
+static inline u32 vlv_bunit_read(struct drm_device *drm, u32 reg)
 {
-	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_BUNIT, reg);
+	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_BUNIT, reg);
 }
 
-static inline void vlv_bunit_write(struct drm_i915_private *i915, u32 reg, u32 val)
+static inline void vlv_bunit_write(struct drm_device *drm, u32 reg, u32 val)
 {
-	vlv_iosf_sb_write(i915, VLV_IOSF_SB_BUNIT, reg, val);
+	vlv_iosf_sb_write(drm, VLV_IOSF_SB_BUNIT, reg, val);
 }
 
-static inline void vlv_bunit_put(struct drm_i915_private *i915)
+static inline void vlv_bunit_put(struct drm_device *drm)
 {
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_BUNIT));
+	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_BUNIT));
 }
 
-static inline void vlv_cck_get(struct drm_i915_private *i915)
+static inline void vlv_cck_get(struct drm_device *drm)
 {
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_CCK));
+	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_CCK));
 }
 
-static inline u32 vlv_cck_read(struct drm_i915_private *i915, u32 reg)
+static inline u32 vlv_cck_read(struct drm_device *drm, u32 reg)
 {
-	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_CCK, reg);
+	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_CCK, reg);
 }
 
-static inline void vlv_cck_write(struct drm_i915_private *i915, u32 reg, u32 val)
+static inline void vlv_cck_write(struct drm_device *drm, u32 reg, u32 val)
 {
-	vlv_iosf_sb_write(i915, VLV_IOSF_SB_CCK, reg, val);
+	vlv_iosf_sb_write(drm, VLV_IOSF_SB_CCK, reg, val);
 }
 
-static inline void vlv_cck_put(struct drm_i915_private *i915)
+static inline void vlv_cck_put(struct drm_device *drm)
 {
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_CCK));
+	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_CCK));
 }
 
-static inline void vlv_ccu_get(struct drm_i915_private *i915)
+static inline void vlv_ccu_get(struct drm_device *drm)
 {
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_CCU));
+	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_CCU));
 }
 
-static inline u32 vlv_ccu_read(struct drm_i915_private *i915, u32 reg)
+static inline u32 vlv_ccu_read(struct drm_device *drm, u32 reg)
 {
-	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_CCU, reg);
+	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_CCU, reg);
 }
 
-static inline void vlv_ccu_write(struct drm_i915_private *i915, u32 reg, u32 val)
+static inline void vlv_ccu_write(struct drm_device *drm, u32 reg, u32 val)
 {
-	vlv_iosf_sb_write(i915, VLV_IOSF_SB_CCU, reg, val);
+	vlv_iosf_sb_write(drm, VLV_IOSF_SB_CCU, reg, val);
 }
 
-static inline void vlv_ccu_put(struct drm_i915_private *i915)
+static inline void vlv_ccu_put(struct drm_device *drm)
 {
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_CCU));
+	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_CCU));
 }
 
-static inline void vlv_dpio_get(struct drm_i915_private *i915)
+static inline void vlv_dpio_get(struct drm_device *drm)
 {
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
+	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
 }
 
 #ifdef I915
-u32 vlv_dpio_read(struct drm_i915_private *i915, enum dpio_phy phy, int reg);
-void vlv_dpio_write(struct drm_i915_private *i915,
+u32 vlv_dpio_read(struct drm_device *drm, enum dpio_phy phy, int reg);
+void vlv_dpio_write(struct drm_device *drm,
 		    enum dpio_phy phy, int reg, u32 val);
 #else
-static inline u32 vlv_dpio_read(struct drm_i915_private *i915, int phy, int reg)
+static inline u32 vlv_dpio_read(struct drm_device *drm, int phy, int reg)
 {
 	return 0;
 }
-static inline void vlv_dpio_write(struct drm_i915_private *i915,
+static inline void vlv_dpio_write(struct drm_device *drm,
 				  int phy, int reg, u32 val)
 {
 }
 #endif
 
-static inline void vlv_dpio_put(struct drm_i915_private *i915)
+static inline void vlv_dpio_put(struct drm_device *drm)
 {
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
+	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
 }
 
-static inline void vlv_flisdsi_get(struct drm_i915_private *i915)
+static inline void vlv_flisdsi_get(struct drm_device *drm)
 {
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_FLISDSI));
+	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_FLISDSI));
 }
 
-static inline u32 vlv_flisdsi_read(struct drm_i915_private *i915, u32 reg)
+static inline u32 vlv_flisdsi_read(struct drm_device *drm, u32 reg)
 {
-	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_FLISDSI, reg);
+	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_FLISDSI, reg);
 }
 
-static inline void vlv_flisdsi_write(struct drm_i915_private *i915, u32 reg, u32 val)
+static inline void vlv_flisdsi_write(struct drm_device *drm, u32 reg, u32 val)
 {
-	vlv_iosf_sb_write(i915, VLV_IOSF_SB_FLISDSI, reg, val);
+	vlv_iosf_sb_write(drm, VLV_IOSF_SB_FLISDSI, reg, val);
 }
 
-static inline void vlv_flisdsi_put(struct drm_i915_private *i915)
+static inline void vlv_flisdsi_put(struct drm_device *drm)
 {
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_FLISDSI));
+	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_FLISDSI));
 }
 
-static inline void vlv_nc_get(struct drm_i915_private *i915)
+static inline void vlv_nc_get(struct drm_device *drm)
 {
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_NC));
+	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_NC));
 }
 
-static inline u32 vlv_nc_read(struct drm_i915_private *i915, u8 addr)
+static inline u32 vlv_nc_read(struct drm_device *drm, u8 addr)
 {
-	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_NC, addr);
+	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_NC, addr);
 }
 
-static inline void vlv_nc_put(struct drm_i915_private *i915)
+static inline void vlv_nc_put(struct drm_device *drm)
 {
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_NC));
+	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_NC));
 }
 
-static inline void vlv_punit_get(struct drm_i915_private *i915)
+static inline void vlv_punit_get(struct drm_device *drm)
 {
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
+	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_PUNIT));
 }
 
-static inline u32 vlv_punit_read(struct drm_i915_private *i915, u32 addr)
+static inline u32 vlv_punit_read(struct drm_device *drm, u32 addr)
 {
-	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, addr);
+	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_PUNIT, addr);
 }
 
-static inline int vlv_punit_write(struct drm_i915_private *i915, u32 addr, u32 val)
+static inline int vlv_punit_write(struct drm_device *drm, u32 addr, u32 val)
 {
-	return vlv_iosf_sb_write(i915, VLV_IOSF_SB_PUNIT, addr, val);
+	return vlv_iosf_sb_write(drm, VLV_IOSF_SB_PUNIT, addr, val);
 }
 
-static inline void vlv_punit_put(struct drm_i915_private *i915)
+static inline void vlv_punit_put(struct drm_device *drm)
 {
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
+	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_PUNIT));
 }
 
 #endif /* _VLV_SIDEBAND_H_ */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index a059c6488b3d..87ef85483bae 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -366,9 +366,9 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
 		drm_printf(p, "SW control enabled: %s\n",
 			   str_yes_no((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) == GEN6_RP_MEDIA_SW_MODE));
 
-		vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
-		freq_sts = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
-		vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
+		vlv_iosf_sb_get(&i915->drm, BIT(VLV_IOSF_SB_PUNIT));
+		freq_sts = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
+		vlv_iosf_sb_put(&i915->drm, BIT(VLV_IOSF_SB_PUNIT));
 
 		drm_printf(p, "PUNIT_REG_GPU_FREQ_STS: 0x%08x\n", freq_sts);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index dc313bd73c94..c619c6e2a76f 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -820,9 +820,9 @@ static int vlv_rps_set(struct intel_rps *rps, u8 val)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	int err;
 
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
-	err = vlv_iosf_sb_write(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_REQ, val);
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
+	vlv_iosf_sb_get(&i915->drm, BIT(VLV_IOSF_SB_PUNIT));
+	err = vlv_iosf_sb_write(&i915->drm, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_REQ, val);
+	vlv_iosf_sb_put(&i915->drm, BIT(VLV_IOSF_SB_PUNIT));
 
 	GT_TRACE(rps_to_gt(rps), "set val:%x, freq:%d\n",
 		 val, intel_gpu_freq(rps, val));
@@ -1280,7 +1280,7 @@ static int chv_rps_max_freq(struct intel_rps *rps)
 	struct intel_gt *gt = rps_to_gt(rps);
 	u32 val;
 
-	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, FB_GFX_FMAX_AT_VMAX_FUSE);
+	val = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_PUNIT, FB_GFX_FMAX_AT_VMAX_FUSE);
 
 	switch (gt->info.sseu.eu_total) {
 	case 8:
@@ -1307,7 +1307,7 @@ static int chv_rps_rpe_freq(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 val;
 
-	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_GPU_DUTYCYCLE_REG);
+	val = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_PUNIT, PUNIT_GPU_DUTYCYCLE_REG);
 	val >>= PUNIT_GPU_DUTYCYCLE_RPE_FREQ_SHIFT;
 
 	return val & PUNIT_GPU_DUTYCYCLE_RPE_FREQ_MASK;
@@ -1318,7 +1318,7 @@ static int chv_rps_guar_freq(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 val;
 
-	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, FB_GFX_FMAX_AT_VMAX_FUSE);
+	val = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_PUNIT, FB_GFX_FMAX_AT_VMAX_FUSE);
 
 	return val & FB_GFX_FREQ_FUSE_MASK;
 }
@@ -1328,7 +1328,7 @@ static u32 chv_rps_min_freq(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 val;
 
-	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, FB_GFX_FMIN_AT_VMIN_FUSE);
+	val = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_PUNIT, FB_GFX_FMIN_AT_VMIN_FUSE);
 	val >>= FB_GFX_FMIN_AT_VMIN_FUSE_SHIFT;
 
 	return val & FB_GFX_FREQ_FUSE_MASK;
@@ -1362,14 +1362,14 @@ static bool chv_rps_enable(struct intel_rps *rps)
 			  GEN6_PM_RP_DOWN_TIMEOUT);
 
 	/* Setting Fixed Bias */
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
+	vlv_iosf_sb_get(&i915->drm, BIT(VLV_IOSF_SB_PUNIT));
 
 	val = VLV_OVERRIDE_EN | VLV_SOC_TDP_EN | CHV_BIAS_CPU_50_SOC_50;
-	vlv_iosf_sb_write(i915, VLV_IOSF_SB_PUNIT, VLV_TURBO_SOC_OVERRIDE, val);
+	vlv_iosf_sb_write(&i915->drm, VLV_IOSF_SB_PUNIT, VLV_TURBO_SOC_OVERRIDE, val);
 
-	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
+	val = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
 
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
+	vlv_iosf_sb_put(&i915->drm, BIT(VLV_IOSF_SB_PUNIT));
 
 	/* RPS code assumes GPLL is used */
 	drm_WARN_ONCE(&i915->drm, (val & GPLLENABLE) == 0,
@@ -1387,7 +1387,7 @@ static int vlv_rps_guar_freq(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 val, rp1;
 
-	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_NC, IOSF_NC_FB_GFX_FREQ_FUSE);
+	val = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_NC, IOSF_NC_FB_GFX_FREQ_FUSE);
 
 	rp1 = val & FB_GFX_FGUARANTEED_FREQ_FUSE_MASK;
 	rp1 >>= FB_GFX_FGUARANTEED_FREQ_FUSE_SHIFT;
@@ -1400,7 +1400,7 @@ static int vlv_rps_max_freq(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 val, rp0;
 
-	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_NC, IOSF_NC_FB_GFX_FREQ_FUSE);
+	val = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_NC, IOSF_NC_FB_GFX_FREQ_FUSE);
 
 	rp0 = (val & FB_GFX_MAX_FREQ_FUSE_MASK) >> FB_GFX_MAX_FREQ_FUSE_SHIFT;
 	/* Clamp to max */
@@ -1414,9 +1414,9 @@ static int vlv_rps_rpe_freq(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 val, rpe;
 
-	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_NC, IOSF_NC_FB_GFX_FMAX_FUSE_LO);
+	val = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_NC, IOSF_NC_FB_GFX_FMAX_FUSE_LO);
 	rpe = (val & FB_FMAX_VMIN_FREQ_LO_MASK) >> FB_FMAX_VMIN_FREQ_LO_SHIFT;
-	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_NC, IOSF_NC_FB_GFX_FMAX_FUSE_HI);
+	val = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_NC, IOSF_NC_FB_GFX_FMAX_FUSE_HI);
 	rpe |= (val & FB_FMAX_VMIN_FREQ_HI_MASK) << 5;
 
 	return rpe;
@@ -1427,7 +1427,7 @@ static int vlv_rps_min_freq(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 val;
 
-	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_LFM) & 0xff;
+	val = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_LFM) & 0xff;
 	/*
 	 * According to the BYT Punit GPU turbo HAS 1.1.6.3 the minimum value
 	 * for the minimum frequency in GPLL mode is 0xc1. Contrary to this on
@@ -1463,15 +1463,15 @@ static bool vlv_rps_enable(struct intel_rps *rps)
 	/* WaGsvRC0ResidencyMethod:vlv */
 	rps->pm_events = GEN6_PM_RP_UP_EI_EXPIRED;
 
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
+	vlv_iosf_sb_get(&i915->drm, BIT(VLV_IOSF_SB_PUNIT));
 
 	/* Setting Fixed Bias */
 	val = VLV_OVERRIDE_EN | VLV_SOC_TDP_EN | VLV_BIAS_CPU_125_SOC_875;
-	vlv_iosf_sb_write(i915, VLV_IOSF_SB_PUNIT, VLV_TURBO_SOC_OVERRIDE, val);
+	vlv_iosf_sb_write(&i915->drm, VLV_IOSF_SB_PUNIT, VLV_TURBO_SOC_OVERRIDE, val);
 
-	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
+	val = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
 
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
+	vlv_iosf_sb_put(&i915->drm, BIT(VLV_IOSF_SB_PUNIT));
 
 	/* RPS code assumes GPLL is used */
 	drm_WARN_ONCE(&i915->drm, (val & GPLLENABLE) == 0,
@@ -1684,7 +1684,7 @@ static void vlv_init_gpll_ref_freq(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 
 	rps->gpll_ref_freq =
-		vlv_get_cck_clock(i915, "GPLL ref",
+		vlv_get_cck_clock(&i915->drm, "GPLL ref",
 				  CCK_GPLL_CLOCK_CONTROL,
 				  i915->czclk_freq);
 
@@ -1696,7 +1696,7 @@ static void vlv_rps_init(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 
-	vlv_iosf_sb_get(i915,
+	vlv_iosf_sb_get(&i915->drm,
 			BIT(VLV_IOSF_SB_PUNIT) |
 			BIT(VLV_IOSF_SB_NC) |
 			BIT(VLV_IOSF_SB_CCK));
@@ -1720,7 +1720,7 @@ static void vlv_rps_init(struct intel_rps *rps)
 	drm_dbg(&i915->drm, "min GPU freq: %d MHz (%u)\n",
 		intel_gpu_freq(rps, rps->min_freq), rps->min_freq);
 
-	vlv_iosf_sb_put(i915,
+	vlv_iosf_sb_put(&i915->drm,
 			BIT(VLV_IOSF_SB_PUNIT) |
 			BIT(VLV_IOSF_SB_NC) |
 			BIT(VLV_IOSF_SB_CCK));
@@ -1730,7 +1730,7 @@ static void chv_rps_init(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 
-	vlv_iosf_sb_get(i915,
+	vlv_iosf_sb_get(&i915->drm,
 			BIT(VLV_IOSF_SB_PUNIT) |
 			BIT(VLV_IOSF_SB_NC) |
 			BIT(VLV_IOSF_SB_CCK));
@@ -1754,7 +1754,7 @@ static void chv_rps_init(struct intel_rps *rps)
 	drm_dbg(&i915->drm, "min GPU freq: %d MHz (%u)\n",
 		intel_gpu_freq(rps, rps->min_freq), rps->min_freq);
 
-	vlv_iosf_sb_put(i915,
+	vlv_iosf_sb_put(&i915->drm,
 			BIT(VLV_IOSF_SB_PUNIT) |
 			BIT(VLV_IOSF_SB_NC) |
 			BIT(VLV_IOSF_SB_CCK));
@@ -2119,9 +2119,9 @@ static u32 __read_cagf(struct intel_rps *rps, bool take_fw)
 	} else if (GRAPHICS_VER(i915) >= 12) {
 		r = GEN12_RPSTAT1;
 	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
-		vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
-		freq = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
-		vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
+		vlv_iosf_sb_get(&i915->drm, BIT(VLV_IOSF_SB_PUNIT));
+		freq = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
+		vlv_iosf_sb_put(&i915->drm, BIT(VLV_IOSF_SB_PUNIT));
 	} else if (GRAPHICS_VER(i915) >= 6) {
 		r = GEN6_RPSTAT1;
 	} else {
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index e8d6bd116b44..efee955ae8a3 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -97,9 +97,9 @@ static unsigned int chv_mem_freq(struct drm_i915_private *i915)
 {
 	u32 val;
 
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_CCK));
-	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_CCK, CCK_FUSE_REG);
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_CCK));
+	vlv_iosf_sb_get(&i915->drm, BIT(VLV_IOSF_SB_CCK));
+	val = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_CCK, CCK_FUSE_REG);
+	vlv_iosf_sb_put(&i915->drm, BIT(VLV_IOSF_SB_CCK));
 
 	switch ((val >> 2) & 0x7) {
 	case 3:
@@ -113,9 +113,9 @@ static unsigned int vlv_mem_freq(struct drm_i915_private *i915)
 {
 	u32 val;
 
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
-	val = vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
+	vlv_iosf_sb_get(&i915->drm, BIT(VLV_IOSF_SB_PUNIT));
+	val = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
+	vlv_iosf_sb_put(&i915->drm, BIT(VLV_IOSF_SB_PUNIT));
 
 	switch ((val >> 6) & 3) {
 	case 0:
diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.c b/drivers/gpu/drm/i915/vlv_iosf_sb.c
index c6418d54dae9..9101b5c97bf1 100644
--- a/drivers/gpu/drm/i915/vlv_iosf_sb.c
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.c
@@ -57,16 +57,20 @@ static void __vlv_punit_put(struct drm_i915_private *i915)
 	iosf_mbi_punit_release();
 }
 
-void vlv_iosf_sb_get(struct drm_i915_private *i915, unsigned long ports)
+void vlv_iosf_sb_get(struct drm_device *drm, unsigned long ports)
 {
+	struct drm_i915_private *i915 = to_i915(drm);
+
 	if (ports & BIT(VLV_IOSF_SB_PUNIT))
 		__vlv_punit_get(i915);
 
 	mutex_lock(&i915->vlv_iosf_sb.lock);
 }
 
-void vlv_iosf_sb_put(struct drm_i915_private *i915, unsigned long ports)
+void vlv_iosf_sb_put(struct drm_device *drm, unsigned long ports)
 {
+	struct drm_i915_private *i915 = to_i915(drm);
+
 	mutex_unlock(&i915->vlv_iosf_sb.lock);
 
 	if (ports & BIT(VLV_IOSF_SB_PUNIT))
@@ -166,8 +170,9 @@ static u32 unit_to_opcode(enum vlv_iosf_sb_unit unit, bool write)
 		return write ? SB_CRWRDA_NP : SB_CRRDDA_NP;
 }
 
-u32 vlv_iosf_sb_read(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr)
+u32 vlv_iosf_sb_read(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr)
 {
+	struct drm_i915_private *i915 = to_i915(drm);
 	u32 devfn, port, opcode, val = 0;
 
 	devfn = unit_to_devfn(unit);
@@ -182,8 +187,9 @@ u32 vlv_iosf_sb_read(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit,
 	return val;
 }
 
-int vlv_iosf_sb_write(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr, u32 val)
+int vlv_iosf_sb_write(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr, u32 val)
 {
+	struct drm_i915_private *i915 = to_i915(drm);
 	u32 devfn, port, opcode;
 
 	devfn = unit_to_devfn(unit);
diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.h b/drivers/gpu/drm/i915/vlv_iosf_sb.h
index f4fb7213fe37..6c9b94922de9 100644
--- a/drivers/gpu/drm/i915/vlv_iosf_sb.h
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.h
@@ -10,6 +10,7 @@
 
 #include "vlv_iosf_sb_reg.h"
 
+struct drm_device;
 struct drm_i915_private;
 
 enum vlv_iosf_sb_unit {
@@ -27,10 +28,10 @@ enum vlv_iosf_sb_unit {
 void vlv_iosf_sb_init(struct drm_i915_private *i915);
 void vlv_iosf_sb_fini(struct drm_i915_private *i915);
 
-void vlv_iosf_sb_get(struct drm_i915_private *i915, unsigned long ports);
-void vlv_iosf_sb_put(struct drm_i915_private *i915, unsigned long ports);
+void vlv_iosf_sb_get(struct drm_device *drm, unsigned long ports);
+void vlv_iosf_sb_put(struct drm_device *drm, unsigned long ports);
 
-u32 vlv_iosf_sb_read(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr);
-int vlv_iosf_sb_write(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr, u32 val);
+u32 vlv_iosf_sb_read(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr);
+int vlv_iosf_sb_write(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr, u32 val);
 
 #endif /* _VLV_IOSF_SB_H_ */
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h b/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
index e34d9c72a587..69e1935e9cdf 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
@@ -10,7 +10,7 @@
 
 #include "vlv_iosf_sb_reg.h"
 
-struct drm_i915_private;
+struct drm_device;
 
 enum vlv_iosf_sb_unit {
 	VLV_IOSF_SB_BUNIT,
@@ -24,18 +24,18 @@ enum vlv_iosf_sb_unit {
 	VLV_IOSF_SB_PUNIT,
 };
 
-static inline void vlv_iosf_sb_get(struct drm_i915_private *i915, unsigned long ports)
+static inline void vlv_iosf_sb_get(struct drm_device *drm, unsigned long ports)
 {
 }
-static inline u32 vlv_iosf_sb_read(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr)
+static inline u32 vlv_iosf_sb_read(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr)
 {
 	return 0;
 }
-static inline int vlv_iosf_sb_write(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr, u32 val)
+static inline int vlv_iosf_sb_write(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr, u32 val)
 {
 	return 0;
 }
-static inline void vlv_iosf_sb_put(struct drm_i915_private *i915, unsigned long ports)
+static inline void vlv_iosf_sb_put(struct drm_device *drm, unsigned long ports)
 {
 }
 
-- 
2.39.5

