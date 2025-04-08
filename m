Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6255EA80C94
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 15:39:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E241810E6A5;
	Tue,  8 Apr 2025 13:39:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZXztNoGF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C886710E6A5;
 Tue,  8 Apr 2025 13:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744119561; x=1775655561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ib78om5YgPp2+l+HN2cyWclbs9FHzagvioILFgrd3do=;
 b=ZXztNoGFL7uhGhNxEDN3gZZIC8jfW33hqTAFcKKwaxI/Sdsj8/KKKdMM
 fpL7KI/5GpUzVVLBncle9zJqIDHV1LGynZyfZ23pbStoeDFy1bFBy2Hvw
 9bwFu8z+ze2fdGF9pgOwQ+2bMB1V2uZqyE3PB8rPXOYsLO+ZPFCzvrp3N
 /jYu7m/t8B/jeXzrDX2u2iwyI88h0axuDGlSkYRFczqRrIeZIn3q8vZT+
 o5kLAbviT9CVro2dHtbtthVdhnmb/R1fJUuItzGHcKUR5JiepThki8tKZ
 QUkF+xh1HT6rpOCvezIPz7b3GZBxHb3bSllHNMXlt82yWKUYRH3RoWk77 w==;
X-CSE-ConnectionGUID: 2qUGWgUTTvKxw9r7LmGYAA==
X-CSE-MsgGUID: RENr5lIqTna8YInI3jlr3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45438420"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="45438420"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 06:39:20 -0700
X-CSE-ConnectionGUID: 9Lt9qgYcR5iX0xFypXfycg==
X-CSE-MsgGUID: AvRSF9vITmGcQhECQHes8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="133483669"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.137])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 06:39:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 7/7] drm/i915/wm: convert i9xx_wm.c internally to struct
 intel_display
Date: Tue,  8 Apr 2025 16:38:41 +0300
Message-Id: <bbee93f837fe7fedfd1627ff6fa295da8881df8d.1744119460.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744119460.git.jani.nikula@intel.com>
References: <cover.1744119460.git.jani.nikula@intel.com>
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
pointer. Convert as much as possible of i9xx_wm.c to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 822 ++++++++++++-------------
 1 file changed, 397 insertions(+), 425 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 49ded623c084..40751f1547b7 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -82,13 +82,14 @@ static const struct cxsr_latency cxsr_latency_table[] = {
 	{0, 1, 400, 800, 6042, 36042, 6584, 36584},    /* DDR3-800 SC */
 };
 
-static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *i915)
+static const struct cxsr_latency *pnv_get_cxsr_latency(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(cxsr_latency_table); i++) {
 		const struct cxsr_latency *latency = &cxsr_latency_table[i];
-		bool is_desktop = !IS_MOBILE(i915);
+		bool is_desktop = !display->platform.mobile;
 
 		if (is_desktop == latency->is_desktop &&
 		    i915->is_ddr3 == latency->is_ddr3 &&
@@ -97,15 +98,16 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *
 			return latency;
 	}
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "Could not find CxSR latency for DDR%s, FSB %u kHz, MEM %u kHz\n",
 		    i915->is_ddr3 ? "3" : "2", i915->fsb_freq, i915->mem_freq);
 
 	return NULL;
 }
 
-static void chv_set_memory_dvfs(struct drm_i915_private *dev_priv, bool enable)
+static void chv_set_memory_dvfs(struct intel_display *display, bool enable)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 val;
 
 	vlv_punit_get(dev_priv);
@@ -121,14 +123,15 @@ static void chv_set_memory_dvfs(struct drm_i915_private *dev_priv, bool enable)
 
 	if (wait_for((vlv_punit_read(dev_priv, PUNIT_REG_DDR_SETUP2) &
 		      FORCE_DDR_FREQ_REQ_ACK) == 0, 3))
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"timed out waiting for Punit DDR DVFS request\n");
 
 	vlv_punit_put(dev_priv);
 }
 
-static void chv_set_memory_pm5(struct drm_i915_private *dev_priv, bool enable)
+static void chv_set_memory_pm5(struct intel_display *display, bool enable)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 val;
 
 	vlv_punit_get(dev_priv);
@@ -146,21 +149,20 @@ static void chv_set_memory_pm5(struct drm_i915_private *dev_priv, bool enable)
 #define FW_WM(value, plane) \
 	(((value) << DSPFW_ ## plane ## _SHIFT) & DSPFW_ ## plane ## _MASK)
 
-static bool _intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enable)
+static bool _intel_set_memory_cxsr(struct intel_display *display, bool enable)
 {
-	struct intel_display *display = &dev_priv->display;
 	bool was_enabled;
 	u32 val;
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.valleyview || display->platform.cherryview) {
 		was_enabled = intel_de_read(display, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
 		intel_de_write(display, FW_BLC_SELF_VLV, enable ? FW_CSPWRDWNEN : 0);
 		intel_de_posting_read(display, FW_BLC_SELF_VLV);
-	} else if (IS_G4X(dev_priv) || IS_I965GM(dev_priv)) {
+	} else if (display->platform.g4x || display->platform.i965gm) {
 		was_enabled = intel_de_read(display, FW_BLC_SELF) & FW_BLC_SELF_EN;
 		intel_de_write(display, FW_BLC_SELF, enable ? FW_BLC_SELF_EN : 0);
 		intel_de_posting_read(display, FW_BLC_SELF);
-	} else if (IS_PINEVIEW(dev_priv)) {
+	} else if (display->platform.pineview) {
 		val = intel_de_read(display, DSPFW3(display));
 		was_enabled = val & PINEVIEW_SELF_REFRESH_EN;
 		if (enable)
@@ -169,13 +171,13 @@ static bool _intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enabl
 			val &= ~PINEVIEW_SELF_REFRESH_EN;
 		intel_de_write(display, DSPFW3(display), val);
 		intel_de_posting_read(display, DSPFW3(display));
-	} else if (IS_I945G(dev_priv) || IS_I945GM(dev_priv)) {
+	} else if (display->platform.i945g || display->platform.i945gm) {
 		was_enabled = intel_de_read(display, FW_BLC_SELF) & FW_BLC_SELF_EN;
 		val = enable ? _MASKED_BIT_ENABLE(FW_BLC_SELF_EN) :
 			       _MASKED_BIT_DISABLE(FW_BLC_SELF_EN);
 		intel_de_write(display, FW_BLC_SELF, val);
 		intel_de_posting_read(display, FW_BLC_SELF);
-	} else if (IS_I915GM(dev_priv)) {
+	} else if (display->platform.i915gm) {
 		/*
 		 * FIXME can't find a bit like this for 915G, and
 		 * yet it does have the related watermark in
@@ -192,7 +194,7 @@ static bool _intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enabl
 
 	trace_intel_memory_cxsr(display, was_enabled, enable);
 
-	drm_dbg_kms(&dev_priv->drm, "memory self-refresh is %s (was %s)\n",
+	drm_dbg_kms(display->drm, "memory self-refresh is %s (was %s)\n",
 		    str_enabled_disabled(enable),
 		    str_enabled_disabled(was_enabled));
 
@@ -238,16 +240,15 @@ static bool _intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enabl
  */
 bool intel_set_memory_cxsr(struct intel_display *display, bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	bool ret;
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
-	ret = _intel_set_memory_cxsr(dev_priv, enable);
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		dev_priv->display.wm.vlv.cxsr = enable;
-	else if (IS_G4X(dev_priv))
-		dev_priv->display.wm.g4x.cxsr = enable;
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&display->wm.wm_mutex);
+	ret = _intel_set_memory_cxsr(display, enable);
+	if (display->platform.valleyview || display->platform.cherryview)
+		display->wm.vlv.cxsr = enable;
+	else if (display->platform.g4x)
+		display->wm.g4x.cxsr = enable;
+	mutex_unlock(&display->wm.wm_mutex);
 
 	return ret;
 }
@@ -310,10 +311,9 @@ static void vlv_get_fifo_size(struct intel_crtc_state *crtc_state)
 	fifo_state->plane[PLANE_CURSOR] = 63;
 }
 
-static int i9xx_get_fifo_size(struct drm_i915_private *dev_priv,
+static int i9xx_get_fifo_size(struct intel_display *display,
 			      enum i9xx_plane_id i9xx_plane)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 dsparb = intel_de_read(display, DSPARB(display));
 	int size;
 
@@ -321,16 +321,15 @@ static int i9xx_get_fifo_size(struct drm_i915_private *dev_priv,
 	if (i9xx_plane == PLANE_B)
 		size = ((dsparb >> DSPARB_CSTART_SHIFT) & 0x7f) - size;
 
-	drm_dbg_kms(&dev_priv->drm, "FIFO size - (0x%08x) %c: %d\n",
+	drm_dbg_kms(display->drm, "FIFO size - (0x%08x) %c: %d\n",
 		    dsparb, plane_name(i9xx_plane), size);
 
 	return size;
 }
 
-static int i830_get_fifo_size(struct drm_i915_private *dev_priv,
+static int i830_get_fifo_size(struct intel_display *display,
 			      enum i9xx_plane_id i9xx_plane)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 dsparb = intel_de_read(display, DSPARB(display));
 	int size;
 
@@ -339,23 +338,22 @@ static int i830_get_fifo_size(struct drm_i915_private *dev_priv,
 		size = ((dsparb >> DSPARB_BEND_SHIFT) & 0x1ff) - size;
 	size >>= 1; /* Convert to cachelines */
 
-	drm_dbg_kms(&dev_priv->drm, "FIFO size - (0x%08x) %c: %d\n",
+	drm_dbg_kms(display->drm, "FIFO size - (0x%08x) %c: %d\n",
 		    dsparb, plane_name(i9xx_plane), size);
 
 	return size;
 }
 
-static int i845_get_fifo_size(struct drm_i915_private *dev_priv,
+static int i845_get_fifo_size(struct intel_display *display,
 			      enum i9xx_plane_id i9xx_plane)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 dsparb = intel_de_read(display, DSPARB(display));
 	int size;
 
 	size = dsparb & 0x7f;
 	size >>= 2; /* Convert to cachelines */
 
-	drm_dbg_kms(&dev_priv->drm, "FIFO size - (0x%08x) %c: %d\n",
+	drm_dbg_kms(display->drm, "FIFO size - (0x%08x) %c: %d\n",
 		    dsparb, plane_name(i9xx_plane), size);
 
 	return size;
@@ -540,7 +538,7 @@ static unsigned int intel_wm_method2(unsigned int pixel_rate,
 
 /**
  * intel_calculate_wm - calculate watermark level
- * @i915: the device
+ * @display: display device
  * @pixel_rate: pixel clock
  * @wm: chip FIFO params
  * @fifo_size: size of the FIFO buffer
@@ -558,7 +556,7 @@ static unsigned int intel_wm_method2(unsigned int pixel_rate,
  * past the watermark point.  If the FIFO drains completely, a FIFO underrun
  * will occur, and a display engine hang could result.
  */
-static unsigned int intel_calculate_wm(struct drm_i915_private *i915,
+static unsigned int intel_calculate_wm(struct intel_display *display,
 				       int pixel_rate,
 				       const struct intel_watermark_params *wm,
 				       int fifo_size, int cpp,
@@ -576,10 +574,10 @@ static unsigned int intel_calculate_wm(struct drm_i915_private *i915,
 				   latency_ns / 100);
 	entries = DIV_ROUND_UP(entries, wm->cacheline_size) +
 		wm->guard_size;
-	drm_dbg_kms(&i915->drm, "FIFO entries required for mode: %d\n", entries);
+	drm_dbg_kms(display->drm, "FIFO entries required for mode: %d\n", entries);
 
 	wm_size = fifo_size - entries;
-	drm_dbg_kms(&i915->drm, "FIFO watermark level: %d\n", wm_size);
+	drm_dbg_kms(display->drm, "FIFO watermark level: %d\n", wm_size);
 
 	/* Don't promote wm_size to unsigned... */
 	if (wm_size > wm->max_wm)
@@ -629,11 +627,11 @@ static bool intel_crtc_active(struct intel_crtc *crtc)
 		crtc->config->hw.adjusted_mode.crtc_clock;
 }
 
-static struct intel_crtc *single_enabled_crtc(struct drm_i915_private *dev_priv)
+static struct intel_crtc *single_enabled_crtc(struct intel_display *display)
 {
 	struct intel_crtc *crtc, *enabled = NULL;
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		if (intel_crtc_active(crtc)) {
 			if (enabled)
 				return NULL;
@@ -646,20 +644,19 @@ static struct intel_crtc *single_enabled_crtc(struct drm_i915_private *dev_priv)
 
 static void pnv_update_wm(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc;
 	const struct cxsr_latency *latency;
 	u32 reg;
 	unsigned int wm;
 
-	latency = pnv_get_cxsr_latency(dev_priv);
+	latency = pnv_get_cxsr_latency(display);
 	if (!latency) {
-		drm_dbg_kms(&dev_priv->drm, "Unknown FSB/MEM, disabling CxSR\n");
+		drm_dbg_kms(display->drm, "Unknown FSB/MEM, disabling CxSR\n");
 		intel_set_memory_cxsr(display, false);
 		return;
 	}
 
-	crtc = single_enabled_crtc(dev_priv);
+	crtc = single_enabled_crtc(display);
 	if (crtc) {
 		const struct drm_framebuffer *fb =
 			crtc->base.primary->state->fb;
@@ -667,7 +664,7 @@ static void pnv_update_wm(struct intel_display *display)
 		int cpp = fb->format->cpp[0];
 
 		/* Display SR */
-		wm = intel_calculate_wm(dev_priv, pixel_rate,
+		wm = intel_calculate_wm(display, pixel_rate,
 					&pnv_display_wm,
 					pnv_display_wm.fifo_size,
 					cpp, latency->display_sr);
@@ -675,10 +672,10 @@ static void pnv_update_wm(struct intel_display *display)
 		reg &= ~DSPFW_SR_MASK;
 		reg |= FW_WM(wm, SR);
 		intel_de_write(display, DSPFW1(display), reg);
-		drm_dbg_kms(&dev_priv->drm, "DSPFW1 register is %x\n", reg);
+		drm_dbg_kms(display->drm, "DSPFW1 register is %x\n", reg);
 
 		/* cursor SR */
-		wm = intel_calculate_wm(dev_priv, pixel_rate,
+		wm = intel_calculate_wm(display, pixel_rate,
 					&pnv_cursor_wm,
 					pnv_display_wm.fifo_size,
 					4, latency->cursor_sr);
@@ -686,7 +683,7 @@ static void pnv_update_wm(struct intel_display *display)
 			     DSPFW_CURSOR_SR_MASK, FW_WM(wm, CURSOR_SR));
 
 		/* Display HPLL off SR */
-		wm = intel_calculate_wm(dev_priv, pixel_rate,
+		wm = intel_calculate_wm(display, pixel_rate,
 					&pnv_display_hplloff_wm,
 					pnv_display_hplloff_wm.fifo_size,
 					cpp, latency->display_hpll_disable);
@@ -694,7 +691,7 @@ static void pnv_update_wm(struct intel_display *display)
 			     DSPFW_HPLL_SR_MASK, FW_WM(wm, HPLL_SR));
 
 		/* cursor HPLL off SR */
-		wm = intel_calculate_wm(dev_priv, pixel_rate,
+		wm = intel_calculate_wm(display, pixel_rate,
 					&pnv_cursor_hplloff_wm,
 					pnv_display_hplloff_wm.fifo_size,
 					4, latency->cursor_hpll_disable);
@@ -702,7 +699,7 @@ static void pnv_update_wm(struct intel_display *display)
 		reg &= ~DSPFW_HPLL_CURSOR_MASK;
 		reg |= FW_WM(wm, HPLL_CURSOR);
 		intel_de_write(display, DSPFW3(display), reg);
-		drm_dbg_kms(&dev_priv->drm, "DSPFW3 register is %x\n", reg);
+		drm_dbg_kms(display->drm, "DSPFW3 register is %x\n", reg);
 
 		intel_set_memory_cxsr(display, true);
 	} else {
@@ -797,13 +794,12 @@ static unsigned int g4x_tlb_miss_wa(int fifo_size, int width, int cpp)
 	return max(0, tlb_miss);
 }
 
-static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
+static void g4x_write_wm_values(struct intel_display *display,
 				const struct g4x_wm_values *wm)
 {
-	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe;
 
-	for_each_pipe(dev_priv, pipe)
+	for_each_pipe(display, pipe)
 		trace_g4x_wm(intel_crtc_for_pipe(display, pipe), wm);
 
 	intel_de_write(display, DSPFW1(display),
@@ -830,13 +826,12 @@ static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
 #define FW_WM_VLV(value, plane) \
 	(((value) << DSPFW_ ## plane ## _SHIFT) & DSPFW_ ## plane ## _MASK_VLV)
 
-static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
+static void vlv_write_wm_values(struct intel_display *display,
 				const struct vlv_wm_values *wm)
 {
-	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe;
 
-	for_each_pipe(dev_priv, pipe) {
+	for_each_pipe(display, pipe) {
 		trace_vlv_wm(intel_crtc_for_pipe(display, pipe), wm);
 
 		intel_de_write(display, VLV_DDL(pipe),
@@ -869,7 +864,7 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 	intel_de_write(display, DSPFW3(display),
 		       FW_WM(wm->sr.cursor, CURSOR_SR));
 
-	if (IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.cherryview) {
 		intel_de_write(display, DSPFW7_CHV,
 			       FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE1], SPRITED) |
 			       FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEC));
@@ -909,14 +904,14 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 
 #undef FW_WM_VLV
 
-static void g4x_setup_wm_latency(struct drm_i915_private *dev_priv)
+static void g4x_setup_wm_latency(struct intel_display *display)
 {
 	/* all latencies in usec */
-	dev_priv->display.wm.pri_latency[G4X_WM_LEVEL_NORMAL] = 5;
-	dev_priv->display.wm.pri_latency[G4X_WM_LEVEL_SR] = 12;
-	dev_priv->display.wm.pri_latency[G4X_WM_LEVEL_HPLL] = 35;
+	display->wm.pri_latency[G4X_WM_LEVEL_NORMAL] = 5;
+	display->wm.pri_latency[G4X_WM_LEVEL_SR] = 12;
+	display->wm.pri_latency[G4X_WM_LEVEL_HPLL] = 35;
 
-	dev_priv->display.wm.num_levels = G4X_WM_LEVEL_HPLL + 1;
+	display->wm.num_levels = G4X_WM_LEVEL_HPLL + 1;
 }
 
 static int g4x_plane_fifo_size(enum plane_id plane_id, int level)
@@ -965,11 +960,11 @@ static u16 g4x_compute_wm(const struct intel_crtc_state *crtc_state,
 			  const struct intel_plane_state *plane_state,
 			  int level)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	const struct drm_display_mode *pipe_mode =
 		&crtc_state->hw.pipe_mode;
-	unsigned int latency = dev_priv->display.wm.pri_latency[level] * 10;
+	unsigned int latency = display->wm.pri_latency[level] * 10;
 	unsigned int pixel_rate, htotal, cpp, width, wm;
 
 	if (latency == 0)
@@ -1020,10 +1015,10 @@ static u16 g4x_compute_wm(const struct intel_crtc_state *crtc_state,
 static bool g4x_raw_plane_wm_set(struct intel_crtc_state *crtc_state,
 				 int level, enum plane_id plane_id, u16 value)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	bool dirty = false;
 
-	for (; level < dev_priv->display.wm.num_levels; level++) {
+	for (; level < display->wm.num_levels; level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];
 
 		dirty |= raw->plane[plane_id] != value;
@@ -1036,13 +1031,13 @@ static bool g4x_raw_plane_wm_set(struct intel_crtc_state *crtc_state,
 static bool g4x_raw_fbc_wm_set(struct intel_crtc_state *crtc_state,
 			       int level, u16 value)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	bool dirty = false;
 
 	/* NORMAL level doesn't have an FBC watermark */
 	level = max(level, G4X_WM_LEVEL_SR);
 
-	for (; level < dev_priv->display.wm.num_levels; level++) {
+	for (; level < display->wm.num_levels; level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];
 
 		dirty |= raw->fbc != value;
@@ -1059,8 +1054,8 @@ static u32 ilk_compute_fbc_wm(const struct intel_crtc_state *crtc_state,
 static bool g4x_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 				     const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum plane_id plane_id = plane->id;
 	bool dirty = false;
 	int level;
@@ -1072,7 +1067,7 @@ static bool g4x_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 		goto out;
 	}
 
-	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
+	for (level = 0; level < display->wm.num_levels; level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];
 		int wm, max_wm;
 
@@ -1112,7 +1107,7 @@ static bool g4x_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 
  out:
 	if (dirty) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "%s watermarks: normal=%d, SR=%d, HPLL=%d\n",
 			    plane->base.name,
 			    crtc_state->wm.g4x.raw[G4X_WM_LEVEL_NORMAL].plane[plane_id],
@@ -1120,7 +1115,7 @@ static bool g4x_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 			    crtc_state->wm.g4x.raw[G4X_WM_LEVEL_HPLL].plane[plane_id]);
 
 		if (plane_id == PLANE_PRIMARY)
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "FBC watermarks: SR=%d, HPLL=%d\n",
 				    crtc_state->wm.g4x.raw[G4X_WM_LEVEL_SR].fbc,
 				    crtc_state->wm.g4x.raw[G4X_WM_LEVEL_HPLL].fbc);
@@ -1140,9 +1135,9 @@ static bool g4x_raw_plane_wm_is_valid(const struct intel_crtc_state *crtc_state,
 static bool g4x_raw_crtc_wm_is_valid(const struct intel_crtc_state *crtc_state,
 				     int level)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (level >= dev_priv->display.wm.num_levels)
+	if (level >= display->wm.num_levels)
 		return false;
 
 	return g4x_raw_plane_wm_is_valid(crtc_state, PLANE_PRIMARY, level) &&
@@ -1284,7 +1279,7 @@ static int g4x_compute_pipe_wm(struct intel_atomic_state *state,
 static int g4x_compute_intermediate_wm(struct intel_atomic_state *state,
 				       struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_crtc_state *old_crtc_state =
@@ -1314,7 +1309,7 @@ static int g4x_compute_intermediate_wm(struct intel_atomic_state *state,
 			max(optimal->wm.plane[plane_id],
 			    active->wm.plane[plane_id]);
 
-		drm_WARN_ON(&dev_priv->drm, intermediate->wm.plane[plane_id] >
+		drm_WARN_ON(display->drm, intermediate->wm.plane[plane_id] >
 			    g4x_plane_fifo_size(plane_id, G4X_WM_LEVEL_NORMAL));
 	}
 
@@ -1332,23 +1327,23 @@ static int g4x_compute_intermediate_wm(struct intel_atomic_state *state,
 	intermediate->hpll.fbc = max(optimal->hpll.fbc,
 				     active->hpll.fbc);
 
-	drm_WARN_ON(&dev_priv->drm,
+	drm_WARN_ON(display->drm,
 		    (intermediate->sr.plane >
 		     g4x_plane_fifo_size(PLANE_PRIMARY, G4X_WM_LEVEL_SR) ||
 		     intermediate->sr.cursor >
 		     g4x_plane_fifo_size(PLANE_CURSOR, G4X_WM_LEVEL_SR)) &&
 		    intermediate->cxsr);
-	drm_WARN_ON(&dev_priv->drm,
+	drm_WARN_ON(display->drm,
 		    (intermediate->sr.plane >
 		     g4x_plane_fifo_size(PLANE_PRIMARY, G4X_WM_LEVEL_HPLL) ||
 		     intermediate->sr.cursor >
 		     g4x_plane_fifo_size(PLANE_CURSOR, G4X_WM_LEVEL_HPLL)) &&
 		    intermediate->hpll_en);
 
-	drm_WARN_ON(&dev_priv->drm,
+	drm_WARN_ON(display->drm,
 		    intermediate->sr.fbc > g4x_fbc_fifo_size(1) &&
 		    intermediate->fbc_en && intermediate->cxsr);
-	drm_WARN_ON(&dev_priv->drm,
+	drm_WARN_ON(display->drm,
 		    intermediate->hpll.fbc > g4x_fbc_fifo_size(2) &&
 		    intermediate->fbc_en && intermediate->hpll_en);
 
@@ -1379,7 +1374,7 @@ static int g4x_compute_watermarks(struct intel_atomic_state *state,
 	return 0;
 }
 
-static void g4x_merge_wm(struct drm_i915_private *dev_priv,
+static void g4x_merge_wm(struct intel_display *display,
 			 struct g4x_wm_values *wm)
 {
 	struct intel_crtc *crtc;
@@ -1389,7 +1384,7 @@ static void g4x_merge_wm(struct drm_i915_private *dev_priv,
 	wm->hpll_en = true;
 	wm->fbc_en = true;
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		const struct g4x_wm_state *wm_state = &crtc->wm.active.g4x;
 
 		if (!crtc->active)
@@ -1411,7 +1406,7 @@ static void g4x_merge_wm(struct drm_i915_private *dev_priv,
 		wm->fbc_en = false;
 	}
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		const struct g4x_wm_state *wm_state = &crtc->wm.active.g4x;
 		enum pipe pipe = crtc->pipe;
 
@@ -1423,23 +1418,23 @@ static void g4x_merge_wm(struct drm_i915_private *dev_priv,
 	}
 }
 
-static void g4x_program_watermarks(struct drm_i915_private *dev_priv)
+static void g4x_program_watermarks(struct intel_display *display)
 {
-	struct g4x_wm_values *old_wm = &dev_priv->display.wm.g4x;
+	struct g4x_wm_values *old_wm = &display->wm.g4x;
 	struct g4x_wm_values new_wm = {};
 
-	g4x_merge_wm(dev_priv, &new_wm);
+	g4x_merge_wm(display, &new_wm);
 
 	if (memcmp(old_wm, &new_wm, sizeof(new_wm)) == 0)
 		return;
 
 	if (is_disabling(old_wm->cxsr, new_wm.cxsr, true))
-		_intel_set_memory_cxsr(dev_priv, false);
+		_intel_set_memory_cxsr(display, false);
 
-	g4x_write_wm_values(dev_priv, &new_wm);
+	g4x_write_wm_values(display, &new_wm);
 
 	if (is_enabling(old_wm->cxsr, new_wm.cxsr, true))
-		_intel_set_memory_cxsr(dev_priv, true);
+		_intel_set_memory_cxsr(display, true);
 
 	*old_wm = new_wm;
 }
@@ -1447,30 +1442,30 @@ static void g4x_program_watermarks(struct drm_i915_private *dev_priv)
 static void g4x_initial_watermarks(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&display->wm.wm_mutex);
 	crtc->wm.active.g4x = crtc_state->wm.g4x.intermediate;
-	g4x_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	g4x_program_watermarks(display);
+	mutex_unlock(&display->wm.wm_mutex);
 }
 
 static void g4x_optimize_watermarks(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
 	if (!crtc_state->wm.need_postvbl_update)
 		return;
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&display->wm.wm_mutex);
 	crtc->wm.active.g4x = crtc_state->wm.g4x.optimal;
-	g4x_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	g4x_program_watermarks(display);
+	mutex_unlock(&display->wm.wm_mutex);
 }
 
 /* latency must be in 0.1us units. */
@@ -1489,18 +1484,18 @@ static unsigned int vlv_wm_method2(unsigned int pixel_rate,
 	return ret;
 }
 
-static void vlv_setup_wm_latency(struct drm_i915_private *dev_priv)
+static void vlv_setup_wm_latency(struct intel_display *display)
 {
 	/* all latencies in usec */
-	dev_priv->display.wm.pri_latency[VLV_WM_LEVEL_PM2] = 3;
+	display->wm.pri_latency[VLV_WM_LEVEL_PM2] = 3;
 
-	dev_priv->display.wm.num_levels = VLV_WM_LEVEL_PM2 + 1;
+	display->wm.num_levels = VLV_WM_LEVEL_PM2 + 1;
 
-	if (IS_CHERRYVIEW(dev_priv)) {
-		dev_priv->display.wm.pri_latency[VLV_WM_LEVEL_PM5] = 12;
-		dev_priv->display.wm.pri_latency[VLV_WM_LEVEL_DDR_DVFS] = 33;
+	if (display->platform.cherryview) {
+		display->wm.pri_latency[VLV_WM_LEVEL_PM5] = 12;
+		display->wm.pri_latency[VLV_WM_LEVEL_DDR_DVFS] = 33;
 
-		dev_priv->display.wm.num_levels = VLV_WM_LEVEL_DDR_DVFS + 1;
+		display->wm.num_levels = VLV_WM_LEVEL_DDR_DVFS + 1;
 	}
 }
 
@@ -1508,13 +1503,13 @@ static u16 vlv_compute_wm_level(const struct intel_crtc_state *crtc_state,
 				const struct intel_plane_state *plane_state,
 				int level)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	const struct drm_display_mode *pipe_mode =
 		&crtc_state->hw.pipe_mode;
 	unsigned int pixel_rate, htotal, cpp, width, wm;
 
-	if (dev_priv->display.wm.pri_latency[level] == 0)
+	if (display->wm.pri_latency[level] == 0)
 		return USHRT_MAX;
 
 	if (!intel_wm_plane_visible(crtc_state, plane_state))
@@ -1535,7 +1530,7 @@ static u16 vlv_compute_wm_level(const struct intel_crtc_state *crtc_state,
 		wm = 63;
 	} else {
 		wm = vlv_wm_method2(pixel_rate, htotal, width, cpp,
-				    dev_priv->display.wm.pri_latency[level] * 10);
+				    display->wm.pri_latency[level] * 10);
 	}
 
 	return min_t(unsigned int, wm, USHRT_MAX);
@@ -1549,8 +1544,8 @@ static bool vlv_need_sprite0_fifo_workaround(unsigned int active_planes)
 
 static int vlv_compute_fifo(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct g4x_pipe_wm *raw =
 		&crtc_state->wm.vlv.raw[VLV_WM_LEVEL_PM2];
 	struct vlv_fifo_state *fifo_state = &crtc_state->wm.vlv.fifo_state;
@@ -1619,11 +1614,11 @@ static int vlv_compute_fifo(struct intel_crtc_state *crtc_state)
 		fifo_left -= plane_extra;
 	}
 
-	drm_WARN_ON(&dev_priv->drm, active_planes != 0 && fifo_left != 0);
+	drm_WARN_ON(display->drm, active_planes != 0 && fifo_left != 0);
 
 	/* give it all to the first plane if none are active */
 	if (active_planes == 0) {
-		drm_WARN_ON(&dev_priv->drm, fifo_left != fifo_size);
+		drm_WARN_ON(display->drm, fifo_left != fifo_size);
 		fifo_state->plane[PLANE_PRIMARY] = fifo_left;
 	}
 
@@ -1634,9 +1629,9 @@ static int vlv_compute_fifo(struct intel_crtc_state *crtc_state)
 static void vlv_invalidate_wms(struct intel_crtc *crtc,
 			       struct vlv_wm_state *wm_state, int level)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
-	for (; level < dev_priv->display.wm.num_levels; level++) {
+	for (; level < display->wm.num_levels; level++) {
 		enum plane_id plane_id;
 
 		for_each_plane_id_on_crtc(crtc, plane_id)
@@ -1662,10 +1657,10 @@ static u16 vlv_invert_wm_value(u16 wm, u16 fifo_size)
 static bool vlv_raw_plane_wm_set(struct intel_crtc_state *crtc_state,
 				 int level, enum plane_id plane_id, u16 value)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	bool dirty = false;
 
-	for (; level < dev_priv->display.wm.num_levels; level++) {
+	for (; level < display->wm.num_levels; level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.vlv.raw[level];
 
 		dirty |= raw->plane[plane_id] != value;
@@ -1678,8 +1673,8 @@ static bool vlv_raw_plane_wm_set(struct intel_crtc_state *crtc_state,
 static bool vlv_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 				     const struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum plane_id plane_id = plane->id;
 	int level;
 	bool dirty = false;
@@ -1689,7 +1684,7 @@ static bool vlv_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 		goto out;
 	}
 
-	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
+	for (level = 0; level < display->wm.num_levels; level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.vlv.raw[level];
 		int wm = vlv_compute_wm_level(crtc_state, plane_state, level);
 		int max_wm = plane_id == PLANE_CURSOR ? 63 : 511;
@@ -1706,7 +1701,7 @@ static bool vlv_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 
 out:
 	if (dirty)
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "%s watermarks: PM2=%d, PM5=%d, DDR DVFS=%d\n",
 			    plane->base.name,
 			    crtc_state->wm.vlv.raw[VLV_WM_LEVEL_PM2].plane[plane_id],
@@ -1737,8 +1732,8 @@ static bool vlv_raw_crtc_wm_is_valid(const struct intel_crtc_state *crtc_state,
 
 static int _vlv_compute_pipe_wm(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct vlv_wm_state *wm_state = &crtc_state->wm.vlv.optimal;
 	const struct vlv_fifo_state *fifo_state =
 		&crtc_state->wm.vlv.fifo_state;
@@ -1748,7 +1743,7 @@ static int _vlv_compute_pipe_wm(struct intel_crtc_state *crtc_state)
 	int level;
 
 	/* initially allow all levels */
-	wm_state->num_levels = dev_priv->display.wm.num_levels;
+	wm_state->num_levels = display->wm.num_levels;
 	/*
 	 * Note that enabling cxsr with no primary/sprite planes
 	 * enabled can wedge the pipe. Hence we only allow cxsr
@@ -1758,7 +1753,7 @@ static int _vlv_compute_pipe_wm(struct intel_crtc_state *crtc_state)
 
 	for (level = 0; level < wm_state->num_levels; level++) {
 		const struct g4x_pipe_wm *raw = &crtc_state->wm.vlv.raw[level];
-		const int sr_fifo_size = INTEL_NUM_PIPES(dev_priv) * 512 - 1;
+		const int sr_fifo_size = INTEL_NUM_PIPES(display) * 512 - 1;
 
 		if (!vlv_raw_crtc_wm_is_valid(crtc_state, level))
 			break;
@@ -1875,8 +1870,8 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 	sprite1_start = fifo_state->plane[PLANE_SPRITE0] + sprite0_start;
 	fifo_size = fifo_state->plane[PLANE_SPRITE1] + sprite1_start;
 
-	drm_WARN_ON(&dev_priv->drm, fifo_state->plane[PLANE_CURSOR] != 63);
-	drm_WARN_ON(&dev_priv->drm, fifo_size != 511);
+	drm_WARN_ON(display->drm, fifo_state->plane[PLANE_CURSOR] != 63);
+	drm_WARN_ON(display->drm, fifo_size != 511);
 
 	trace_vlv_fifo_size(crtc, sprite0_start, sprite1_start, fifo_size);
 
@@ -2022,16 +2017,16 @@ static int vlv_compute_watermarks(struct intel_atomic_state *state,
 	return 0;
 }
 
-static void vlv_merge_wm(struct drm_i915_private *dev_priv,
+static void vlv_merge_wm(struct intel_display *display,
 			 struct vlv_wm_values *wm)
 {
 	struct intel_crtc *crtc;
 	int num_active_pipes = 0;
 
-	wm->level = dev_priv->display.wm.num_levels - 1;
+	wm->level = display->wm.num_levels - 1;
 	wm->cxsr = true;
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		const struct vlv_wm_state *wm_state = &crtc->wm.active.vlv;
 
 		if (!crtc->active)
@@ -2050,7 +2045,7 @@ static void vlv_merge_wm(struct drm_i915_private *dev_priv,
 	if (num_active_pipes > 1)
 		wm->level = VLV_WM_LEVEL_PM2;
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		const struct vlv_wm_state *wm_state = &crtc->wm.active.vlv;
 		enum pipe pipe = crtc->pipe;
 
@@ -2065,35 +2060,35 @@ static void vlv_merge_wm(struct drm_i915_private *dev_priv,
 	}
 }
 
-static void vlv_program_watermarks(struct drm_i915_private *dev_priv)
+static void vlv_program_watermarks(struct intel_display *display)
 {
-	struct vlv_wm_values *old_wm = &dev_priv->display.wm.vlv;
+	struct vlv_wm_values *old_wm = &display->wm.vlv;
 	struct vlv_wm_values new_wm = {};
 
-	vlv_merge_wm(dev_priv, &new_wm);
+	vlv_merge_wm(display, &new_wm);
 
 	if (memcmp(old_wm, &new_wm, sizeof(new_wm)) == 0)
 		return;
 
 	if (is_disabling(old_wm->level, new_wm.level, VLV_WM_LEVEL_DDR_DVFS))
-		chv_set_memory_dvfs(dev_priv, false);
+		chv_set_memory_dvfs(display, false);
 
 	if (is_disabling(old_wm->level, new_wm.level, VLV_WM_LEVEL_PM5))
-		chv_set_memory_pm5(dev_priv, false);
+		chv_set_memory_pm5(display, false);
 
 	if (is_disabling(old_wm->cxsr, new_wm.cxsr, true))
-		_intel_set_memory_cxsr(dev_priv, false);
+		_intel_set_memory_cxsr(display, false);
 
-	vlv_write_wm_values(dev_priv, &new_wm);
+	vlv_write_wm_values(display, &new_wm);
 
 	if (is_enabling(old_wm->cxsr, new_wm.cxsr, true))
-		_intel_set_memory_cxsr(dev_priv, true);
+		_intel_set_memory_cxsr(display, true);
 
 	if (is_enabling(old_wm->level, new_wm.level, VLV_WM_LEVEL_PM5))
-		chv_set_memory_pm5(dev_priv, true);
+		chv_set_memory_pm5(display, true);
 
 	if (is_enabling(old_wm->level, new_wm.level, VLV_WM_LEVEL_DDR_DVFS))
-		chv_set_memory_dvfs(dev_priv, true);
+		chv_set_memory_dvfs(display, true);
 
 	*old_wm = new_wm;
 }
@@ -2101,42 +2096,41 @@ static void vlv_program_watermarks(struct drm_i915_private *dev_priv)
 static void vlv_initial_watermarks(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&display->wm.wm_mutex);
 	crtc->wm.active.vlv = crtc_state->wm.vlv.intermediate;
-	vlv_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	vlv_program_watermarks(display);
+	mutex_unlock(&display->wm.wm_mutex);
 }
 
 static void vlv_optimize_watermarks(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
 	if (!crtc_state->wm.need_postvbl_update)
 		return;
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&display->wm.wm_mutex);
 	crtc->wm.active.vlv = crtc_state->wm.vlv.optimal;
-	vlv_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	vlv_program_watermarks(display);
+	mutex_unlock(&display->wm.wm_mutex);
 }
 
 static void i965_update_wm(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc;
 	int srwm = 1;
 	int cursor_sr = 16;
 	bool cxsr_enabled;
 
 	/* Calc sr entries for one plane configs */
-	crtc = single_enabled_crtc(dev_priv);
+	crtc = single_enabled_crtc(display);
 	if (crtc) {
 		/* self-refresh has much higher latency */
 		static const int sr_latency_ns = 12000;
@@ -2157,7 +2151,7 @@ static void i965_update_wm(struct intel_display *display)
 		if (srwm < 0)
 			srwm = 1;
 		srwm &= 0x1ff;
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "self-refresh entries: %d, wm: %d\n",
 			    entries, srwm);
 
@@ -2172,7 +2166,7 @@ static void i965_update_wm(struct intel_display *display)
 		if (cursor_sr > i965_cursor_wm_info.max_wm)
 			cursor_sr = i965_cursor_wm_info.max_wm;
 
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "self-refresh watermark: display plane %d "
 			    "cursor %d\n", srwm, cursor_sr);
 
@@ -2183,7 +2177,7 @@ static void i965_update_wm(struct intel_display *display)
 		intel_set_memory_cxsr(display, false);
 	}
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "Setting FIFO watermarks - A: 8, B: 8, C: 8, SR %d\n",
 		    srwm);
 
@@ -2206,13 +2200,12 @@ static void i965_update_wm(struct intel_display *display)
 
 #undef FW_WM
 
-static struct intel_crtc *intel_crtc_for_plane(struct drm_i915_private *i915,
+static struct intel_crtc *intel_crtc_for_plane(struct intel_display *display,
 					       enum i9xx_plane_id i9xx_plane)
 {
-	struct intel_display *display = &i915->display;
 	struct intel_plane *plane;
 
-	for_each_intel_plane(&i915->drm, plane) {
+	for_each_intel_plane(display->drm, plane) {
 		if (plane->id == PLANE_PRIMARY &&
 		    plane->i9xx_plane == i9xx_plane)
 			return intel_crtc_for_pipe(display, plane->pipe);
@@ -2223,7 +2216,6 @@ static struct intel_crtc *intel_crtc_for_plane(struct drm_i915_private *i915,
 
 static void i9xx_update_wm(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	const struct intel_watermark_params *wm_info;
 	u32 fwater_lo;
 	u32 fwater_hi;
@@ -2232,29 +2224,29 @@ static void i9xx_update_wm(struct intel_display *display)
 	int planea_wm, planeb_wm;
 	struct intel_crtc *crtc;
 
-	if (IS_I945GM(dev_priv))
+	if (display->platform.i945gm)
 		wm_info = &i945_wm_info;
-	else if (DISPLAY_VER(dev_priv) != 2)
+	else if (DISPLAY_VER(display) != 2)
 		wm_info = &i915_wm_info;
 	else
 		wm_info = &i830_a_wm_info;
 
-	if (DISPLAY_VER(dev_priv) == 2)
-		fifo_size = i830_get_fifo_size(dev_priv, PLANE_A);
+	if (DISPLAY_VER(display) == 2)
+		fifo_size = i830_get_fifo_size(display, PLANE_A);
 	else
-		fifo_size = i9xx_get_fifo_size(dev_priv, PLANE_A);
-	crtc = intel_crtc_for_plane(dev_priv, PLANE_A);
+		fifo_size = i9xx_get_fifo_size(display, PLANE_A);
+	crtc = intel_crtc_for_plane(display, PLANE_A);
 	if (intel_crtc_active(crtc)) {
 		const struct drm_framebuffer *fb =
 			crtc->base.primary->state->fb;
 		int cpp;
 
-		if (DISPLAY_VER(dev_priv) == 2)
+		if (DISPLAY_VER(display) == 2)
 			cpp = 4;
 		else
 			cpp = fb->format->cpp[0];
 
-		planea_wm = intel_calculate_wm(dev_priv, crtc->config->pixel_rate,
+		planea_wm = intel_calculate_wm(display, crtc->config->pixel_rate,
 					       wm_info, fifo_size, cpp,
 					       pessimal_latency_ns);
 	} else {
@@ -2263,25 +2255,25 @@ static void i9xx_update_wm(struct intel_display *display)
 			planea_wm = wm_info->max_wm;
 	}
 
-	if (DISPLAY_VER(dev_priv) == 2)
+	if (DISPLAY_VER(display) == 2)
 		wm_info = &i830_bc_wm_info;
 
-	if (DISPLAY_VER(dev_priv) == 2)
-		fifo_size = i830_get_fifo_size(dev_priv, PLANE_B);
+	if (DISPLAY_VER(display) == 2)
+		fifo_size = i830_get_fifo_size(display, PLANE_B);
 	else
-		fifo_size = i9xx_get_fifo_size(dev_priv, PLANE_B);
-	crtc = intel_crtc_for_plane(dev_priv, PLANE_B);
+		fifo_size = i9xx_get_fifo_size(display, PLANE_B);
+	crtc = intel_crtc_for_plane(display, PLANE_B);
 	if (intel_crtc_active(crtc)) {
 		const struct drm_framebuffer *fb =
 			crtc->base.primary->state->fb;
 		int cpp;
 
-		if (DISPLAY_VER(dev_priv) == 2)
+		if (DISPLAY_VER(display) == 2)
 			cpp = 4;
 		else
 			cpp = fb->format->cpp[0];
 
-		planeb_wm = intel_calculate_wm(dev_priv, crtc->config->pixel_rate,
+		planeb_wm = intel_calculate_wm(display, crtc->config->pixel_rate,
 					       wm_info, fifo_size, cpp,
 					       pessimal_latency_ns);
 	} else {
@@ -2290,11 +2282,11 @@ static void i9xx_update_wm(struct intel_display *display)
 			planeb_wm = wm_info->max_wm;
 	}
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "FIFO watermarks - A: %d, B: %d\n", planea_wm, planeb_wm);
 
-	crtc = single_enabled_crtc(dev_priv);
-	if (IS_I915GM(dev_priv) && crtc) {
+	crtc = single_enabled_crtc(display);
+	if (display->platform.i915gm && crtc) {
 		struct drm_gem_object *obj;
 
 		obj = intel_fb_bo(crtc->base.primary->state->fb);
@@ -2313,7 +2305,7 @@ static void i9xx_update_wm(struct intel_display *display)
 	intel_set_memory_cxsr(display, false);
 
 	/* Calc sr entries for one plane configs */
-	if (HAS_FW_BLC(dev_priv) && crtc) {
+	if (HAS_FW_BLC(display) && crtc) {
 		/* self-refresh has much higher latency */
 		static const int sr_latency_ns = 6000;
 		const struct drm_display_mode *pipe_mode =
@@ -2326,7 +2318,7 @@ static void i9xx_update_wm(struct intel_display *display)
 		int cpp;
 		int entries;
 
-		if (IS_I915GM(dev_priv) || IS_I945GM(dev_priv))
+		if (display->platform.i915gm || display->platform.i945gm)
 			cpp = 4;
 		else
 			cpp = fb->format->cpp[0];
@@ -2334,20 +2326,20 @@ static void i9xx_update_wm(struct intel_display *display)
 		entries = intel_wm_method2(pixel_rate, htotal, width, cpp,
 					   sr_latency_ns / 100);
 		entries = DIV_ROUND_UP(entries, wm_info->cacheline_size);
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "self-refresh entries: %d\n", entries);
 		srwm = wm_info->fifo_size - entries;
 		if (srwm < 0)
 			srwm = 1;
 
-		if (IS_I945G(dev_priv) || IS_I945GM(dev_priv))
+		if (display->platform.i945g || display->platform.i945gm)
 			intel_de_write(display, FW_BLC_SELF,
 				       FW_BLC_SELF_FIFO_MASK | (srwm & 0xff));
 		else
 			intel_de_write(display, FW_BLC_SELF, srwm & 0x3f);
 	}
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "Setting FIFO watermarks - A: %d, B: %d, C: %d, SR %d\n",
 		     planea_wm, planeb_wm, cwm, srwm);
 
@@ -2367,23 +2359,22 @@ static void i9xx_update_wm(struct intel_display *display)
 
 static void i845_update_wm(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc;
 	u32 fwater_lo;
 	int planea_wm;
 
-	crtc = single_enabled_crtc(dev_priv);
+	crtc = single_enabled_crtc(display);
 	if (crtc == NULL)
 		return;
 
-	planea_wm = intel_calculate_wm(dev_priv, crtc->config->pixel_rate,
+	planea_wm = intel_calculate_wm(display, crtc->config->pixel_rate,
 				       &i845_wm_info,
-				       i845_get_fifo_size(dev_priv, PLANE_A),
+				       i845_get_fifo_size(display, PLANE_A),
 				       4, pessimal_latency_ns);
 	fwater_lo = intel_de_read(display, FW_BLC) & ~0xfff;
 	fwater_lo |= (3<<8) | planea_wm;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "Setting FIFO watermarks - A: %d\n", planea_wm);
 
 	intel_de_write(display, FW_BLC, fwater_lo);
@@ -2541,24 +2532,24 @@ static u32 ilk_compute_fbc_wm(const struct intel_crtc_state *crtc_state,
 }
 
 static unsigned int
-ilk_display_fifo_size(const struct drm_i915_private *dev_priv)
+ilk_display_fifo_size(struct intel_display *display)
 {
-	if (DISPLAY_VER(dev_priv) >= 8)
+	if (DISPLAY_VER(display) >= 8)
 		return 3072;
-	else if (DISPLAY_VER(dev_priv) >= 7)
+	else if (DISPLAY_VER(display) >= 7)
 		return 768;
 	else
 		return 512;
 }
 
 static unsigned int
-ilk_plane_wm_reg_max(const struct drm_i915_private *dev_priv,
+ilk_plane_wm_reg_max(struct intel_display *display,
 		     int level, bool is_sprite)
 {
-	if (DISPLAY_VER(dev_priv) >= 8)
+	if (DISPLAY_VER(display) >= 8)
 		/* BDW primary/sprite plane watermarks */
 		return level == 0 ? 255 : 2047;
-	else if (DISPLAY_VER(dev_priv) >= 7)
+	else if (DISPLAY_VER(display) >= 7)
 		/* IVB/HSW primary/sprite plane watermarks */
 		return level == 0 ? 127 : 1023;
 	else if (!is_sprite)
@@ -2570,30 +2561,30 @@ ilk_plane_wm_reg_max(const struct drm_i915_private *dev_priv,
 }
 
 static unsigned int
-ilk_cursor_wm_reg_max(const struct drm_i915_private *dev_priv, int level)
+ilk_cursor_wm_reg_max(struct intel_display *display, int level)
 {
-	if (DISPLAY_VER(dev_priv) >= 7)
+	if (DISPLAY_VER(display) >= 7)
 		return level == 0 ? 63 : 255;
 	else
 		return level == 0 ? 31 : 63;
 }
 
-static unsigned int ilk_fbc_wm_reg_max(const struct drm_i915_private *dev_priv)
+static unsigned int ilk_fbc_wm_reg_max(struct intel_display *display)
 {
-	if (DISPLAY_VER(dev_priv) >= 8)
+	if (DISPLAY_VER(display) >= 8)
 		return 31;
 	else
 		return 15;
 }
 
 /* Calculate the maximum primary/sprite plane watermark */
-static unsigned int ilk_plane_wm_max(const struct drm_i915_private *dev_priv,
+static unsigned int ilk_plane_wm_max(struct intel_display *display,
 				     int level,
 				     const struct intel_wm_config *config,
 				     enum intel_ddb_partitioning ddb_partitioning,
 				     bool is_sprite)
 {
-	unsigned int fifo_size = ilk_display_fifo_size(dev_priv);
+	unsigned int fifo_size = ilk_display_fifo_size(display);
 
 	/* if sprites aren't enabled, sprites get nothing */
 	if (is_sprite && !config->sprites_enabled)
@@ -2601,14 +2592,14 @@ static unsigned int ilk_plane_wm_max(const struct drm_i915_private *dev_priv,
 
 	/* HSW allows LP1+ watermarks even with multiple pipes */
 	if (level == 0 || config->num_pipes_active > 1) {
-		fifo_size /= INTEL_NUM_PIPES(dev_priv);
+		fifo_size /= INTEL_NUM_PIPES(display);
 
 		/*
 		 * For some reason the non self refresh
 		 * FIFO size is only half of the self
 		 * refresh FIFO size on ILK/SNB.
 		 */
-		if (DISPLAY_VER(dev_priv) < 7)
+		if (DISPLAY_VER(display) < 7)
 			fifo_size /= 2;
 	}
 
@@ -2624,11 +2615,11 @@ static unsigned int ilk_plane_wm_max(const struct drm_i915_private *dev_priv,
 	}
 
 	/* clamp to max that the registers can hold */
-	return min(fifo_size, ilk_plane_wm_reg_max(dev_priv, level, is_sprite));
+	return min(fifo_size, ilk_plane_wm_reg_max(display, level, is_sprite));
 }
 
 /* Calculate the maximum cursor plane watermark */
-static unsigned int ilk_cursor_wm_max(const struct drm_i915_private *dev_priv,
+static unsigned int ilk_cursor_wm_max(struct intel_display *display,
 				      int level,
 				      const struct intel_wm_config *config)
 {
@@ -2637,32 +2628,32 @@ static unsigned int ilk_cursor_wm_max(const struct drm_i915_private *dev_priv,
 		return 64;
 
 	/* otherwise just report max that registers can hold */
-	return ilk_cursor_wm_reg_max(dev_priv, level);
+	return ilk_cursor_wm_reg_max(display, level);
 }
 
-static void ilk_compute_wm_maximums(const struct drm_i915_private *dev_priv,
+static void ilk_compute_wm_maximums(struct intel_display *display,
 				    int level,
 				    const struct intel_wm_config *config,
 				    enum intel_ddb_partitioning ddb_partitioning,
 				    struct ilk_wm_maximums *max)
 {
-	max->pri = ilk_plane_wm_max(dev_priv, level, config, ddb_partitioning, false);
-	max->spr = ilk_plane_wm_max(dev_priv, level, config, ddb_partitioning, true);
-	max->cur = ilk_cursor_wm_max(dev_priv, level, config);
-	max->fbc = ilk_fbc_wm_reg_max(dev_priv);
+	max->pri = ilk_plane_wm_max(display, level, config, ddb_partitioning, false);
+	max->spr = ilk_plane_wm_max(display, level, config, ddb_partitioning, true);
+	max->cur = ilk_cursor_wm_max(display, level, config);
+	max->fbc = ilk_fbc_wm_reg_max(display);
 }
 
-static void ilk_compute_wm_reg_maximums(const struct drm_i915_private *dev_priv,
+static void ilk_compute_wm_reg_maximums(struct intel_display *display,
 					int level,
 					struct ilk_wm_maximums *max)
 {
-	max->pri = ilk_plane_wm_reg_max(dev_priv, level, false);
-	max->spr = ilk_plane_wm_reg_max(dev_priv, level, true);
-	max->cur = ilk_cursor_wm_reg_max(dev_priv, level);
-	max->fbc = ilk_fbc_wm_reg_max(dev_priv);
+	max->pri = ilk_plane_wm_reg_max(display, level, false);
+	max->spr = ilk_plane_wm_reg_max(display, level, true);
+	max->cur = ilk_cursor_wm_reg_max(display, level);
+	max->fbc = ilk_fbc_wm_reg_max(display);
 }
 
-static bool ilk_validate_wm_level(struct drm_i915_private *i915,
+static bool ilk_validate_wm_level(struct intel_display *display,
 				  int level,
 				  const struct ilk_wm_maximums *max,
 				  struct intel_wm_level *result)
@@ -2686,15 +2677,15 @@ static bool ilk_validate_wm_level(struct drm_i915_private *i915,
 	 */
 	if (level == 0 && !result->enable) {
 		if (result->pri_val > max->pri)
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "Primary WM%d too large %u (max %u)\n",
 				    level, result->pri_val, max->pri);
 		if (result->spr_val > max->spr)
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "Sprite WM%d too large %u (max %u)\n",
 				    level, result->spr_val, max->spr);
 		if (result->cur_val > max->cur)
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "Cursor WM%d too large %u (max %u)\n",
 				    level, result->cur_val, max->cur);
 
@@ -2707,7 +2698,7 @@ static bool ilk_validate_wm_level(struct drm_i915_private *i915,
 	return ret;
 }
 
-static void ilk_compute_wm_level(const struct drm_i915_private *dev_priv,
+static void ilk_compute_wm_level(struct intel_display *display,
 				 const struct intel_crtc *crtc,
 				 int level,
 				 struct intel_crtc_state *crtc_state,
@@ -2716,9 +2707,9 @@ static void ilk_compute_wm_level(const struct drm_i915_private *dev_priv,
 				 const struct intel_plane_state *curstate,
 				 struct intel_wm_level *result)
 {
-	u16 pri_latency = dev_priv->display.wm.pri_latency[level];
-	u16 spr_latency = dev_priv->display.wm.spr_latency[level];
-	u16 cur_latency = dev_priv->display.wm.cur_latency[level];
+	u16 pri_latency = display->wm.pri_latency[level];
+	u16 spr_latency = display->wm.spr_latency[level];
+	u16 cur_latency = display->wm.cur_latency[level];
 
 	/* WM1+ latency values stored in 0.5us units */
 	if (level > 0) {
@@ -2742,11 +2733,12 @@ static void ilk_compute_wm_level(const struct drm_i915_private *dev_priv,
 	result->enable = true;
 }
 
-static void hsw_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
+static void hsw_read_wm_latency(struct intel_display *display, u16 wm[])
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u64 sskpd;
 
-	i915->display.wm.num_levels = 5;
+	display->wm.num_levels = 5;
 
 	sskpd = intel_uncore_read64(&i915->uncore, MCH_SSKPD);
 
@@ -2759,11 +2751,12 @@ static void hsw_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 	wm[4] = REG_FIELD_GET64(SSKPD_WM4_MASK_HSW, sskpd);
 }
 
-static void snb_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
+static void snb_read_wm_latency(struct intel_display *display, u16 wm[])
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 sskpd;
 
-	i915->display.wm.num_levels = 4;
+	display->wm.num_levels = 4;
 
 	sskpd = intel_uncore_read(&i915->uncore, MCH_SSKPD);
 
@@ -2773,11 +2766,12 @@ static void snb_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 	wm[3] = REG_FIELD_GET(SSKPD_WM3_MASK_SNB, sskpd);
 }
 
-static void ilk_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
+static void ilk_read_wm_latency(struct intel_display *display, u16 wm[])
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 mltr;
 
-	i915->display.wm.num_levels = 3;
+	display->wm.num_levels = 3;
 
 	mltr = intel_uncore_read(&i915->uncore, MLTR_ILK);
 
@@ -2787,24 +2781,21 @@ static void ilk_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 	wm[2] = REG_FIELD_GET(MLTR_WM2_MASK, mltr);
 }
 
-static void intel_fixup_spr_wm_latency(struct drm_i915_private *dev_priv,
-				       u16 wm[5])
+static void intel_fixup_spr_wm_latency(struct intel_display *display, u16 wm[5])
 {
 	/* ILK sprite LP0 latency is 1300 ns */
-	if (DISPLAY_VER(dev_priv) == 5)
+	if (DISPLAY_VER(display) == 5)
 		wm[0] = 13;
 }
 
-static void intel_fixup_cur_wm_latency(struct drm_i915_private *dev_priv,
-				       u16 wm[5])
+static void intel_fixup_cur_wm_latency(struct intel_display *display, u16 wm[5])
 {
 	/* ILK cursor LP0 latency is 1300 ns */
-	if (DISPLAY_VER(dev_priv) == 5)
+	if (DISPLAY_VER(display) == 5)
 		wm[0] = 13;
 }
 
-static bool ilk_increase_wm_latency(struct drm_i915_private *dev_priv,
-				    u16 wm[5], u16 min)
+static bool ilk_increase_wm_latency(struct intel_display *display, u16 wm[5], u16 min)
 {
 	int level;
 
@@ -2812,38 +2803,36 @@ static bool ilk_increase_wm_latency(struct drm_i915_private *dev_priv,
 		return false;
 
 	wm[0] = max(wm[0], min);
-	for (level = 1; level < dev_priv->display.wm.num_levels; level++)
+	for (level = 1; level < display->wm.num_levels; level++)
 		wm[level] = max_t(u16, wm[level], DIV_ROUND_UP(min, 5));
 
 	return true;
 }
 
-static void snb_wm_latency_quirk(struct drm_i915_private *dev_priv)
+static void snb_wm_latency_quirk(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	bool changed;
 
 	/*
 	 * The BIOS provided WM memory latency values are often
 	 * inadequate for high resolution displays. Adjust them.
 	 */
-	changed = ilk_increase_wm_latency(dev_priv, dev_priv->display.wm.pri_latency, 12);
-	changed |= ilk_increase_wm_latency(dev_priv, dev_priv->display.wm.spr_latency, 12);
-	changed |= ilk_increase_wm_latency(dev_priv, dev_priv->display.wm.cur_latency, 12);
+	changed = ilk_increase_wm_latency(display, display->wm.pri_latency, 12);
+	changed |= ilk_increase_wm_latency(display, display->wm.spr_latency, 12);
+	changed |= ilk_increase_wm_latency(display, display->wm.cur_latency, 12);
 
 	if (!changed)
 		return;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "WM latency values increased to avoid potential underruns\n");
-	intel_print_wm_latency(display, "Primary", dev_priv->display.wm.pri_latency);
-	intel_print_wm_latency(display, "Sprite", dev_priv->display.wm.spr_latency);
-	intel_print_wm_latency(display, "Cursor", dev_priv->display.wm.cur_latency);
+	intel_print_wm_latency(display, "Primary", display->wm.pri_latency);
+	intel_print_wm_latency(display, "Sprite", display->wm.spr_latency);
+	intel_print_wm_latency(display, "Cursor", display->wm.cur_latency);
 }
 
-static void snb_wm_lp3_irq_quirk(struct drm_i915_private *dev_priv)
+static void snb_wm_lp3_irq_quirk(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	/*
 	 * On some SNB machines (Thinkpad X220 Tablet at least)
 	 * LP3 usage can cause vblank interrupts to be lost.
@@ -2855,52 +2844,50 @@ static void snb_wm_lp3_irq_quirk(struct drm_i915_private *dev_priv)
 	 * interrupts only. To play it safe we disable LP3
 	 * watermarks entirely.
 	 */
-	if (dev_priv->display.wm.pri_latency[3] == 0 &&
-	    dev_priv->display.wm.spr_latency[3] == 0 &&
-	    dev_priv->display.wm.cur_latency[3] == 0)
+	if (display->wm.pri_latency[3] == 0 &&
+	    display->wm.spr_latency[3] == 0 &&
+	    display->wm.cur_latency[3] == 0)
 		return;
 
-	dev_priv->display.wm.pri_latency[3] = 0;
-	dev_priv->display.wm.spr_latency[3] = 0;
-	dev_priv->display.wm.cur_latency[3] = 0;
+	display->wm.pri_latency[3] = 0;
+	display->wm.spr_latency[3] = 0;
+	display->wm.cur_latency[3] = 0;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "LP3 watermarks disabled due to potential for lost interrupts\n");
-	intel_print_wm_latency(display, "Primary", dev_priv->display.wm.pri_latency);
-	intel_print_wm_latency(display, "Sprite", dev_priv->display.wm.spr_latency);
-	intel_print_wm_latency(display, "Cursor", dev_priv->display.wm.cur_latency);
+	intel_print_wm_latency(display, "Primary", display->wm.pri_latency);
+	intel_print_wm_latency(display, "Sprite", display->wm.spr_latency);
+	intel_print_wm_latency(display, "Cursor", display->wm.cur_latency);
 }
 
-static void ilk_setup_wm_latency(struct drm_i915_private *dev_priv)
+static void ilk_setup_wm_latency(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
-
-	if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
-		hsw_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
-	else if (DISPLAY_VER(dev_priv) >= 6)
-		snb_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
+	if (display->platform.broadwell || display->platform.haswell)
+		hsw_read_wm_latency(display, display->wm.pri_latency);
+	else if (DISPLAY_VER(display) >= 6)
+		snb_read_wm_latency(display, display->wm.pri_latency);
 	else
-		ilk_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
+		ilk_read_wm_latency(display, display->wm.pri_latency);
 
-	memcpy(dev_priv->display.wm.spr_latency, dev_priv->display.wm.pri_latency,
-	       sizeof(dev_priv->display.wm.pri_latency));
-	memcpy(dev_priv->display.wm.cur_latency, dev_priv->display.wm.pri_latency,
-	       sizeof(dev_priv->display.wm.pri_latency));
+	memcpy(display->wm.spr_latency, display->wm.pri_latency,
+	       sizeof(display->wm.pri_latency));
+	memcpy(display->wm.cur_latency, display->wm.pri_latency,
+	       sizeof(display->wm.pri_latency));
 
-	intel_fixup_spr_wm_latency(dev_priv, dev_priv->display.wm.spr_latency);
-	intel_fixup_cur_wm_latency(dev_priv, dev_priv->display.wm.cur_latency);
+	intel_fixup_spr_wm_latency(display, display->wm.spr_latency);
+	intel_fixup_cur_wm_latency(display, display->wm.cur_latency);
 
-	intel_print_wm_latency(display, "Primary", dev_priv->display.wm.pri_latency);
-	intel_print_wm_latency(display, "Sprite", dev_priv->display.wm.spr_latency);
-	intel_print_wm_latency(display, "Cursor", dev_priv->display.wm.cur_latency);
+	intel_print_wm_latency(display, "Primary", display->wm.pri_latency);
+	intel_print_wm_latency(display, "Sprite", display->wm.spr_latency);
+	intel_print_wm_latency(display, "Cursor", display->wm.cur_latency);
 
-	if (DISPLAY_VER(dev_priv) == 6) {
-		snb_wm_latency_quirk(dev_priv);
-		snb_wm_lp3_irq_quirk(dev_priv);
+	if (DISPLAY_VER(display) == 6) {
+		snb_wm_latency_quirk(display);
+		snb_wm_lp3_irq_quirk(display);
 	}
 }
 
-static bool ilk_validate_pipe_wm(struct drm_i915_private *dev_priv,
+static bool ilk_validate_pipe_wm(struct intel_display *display,
 				 struct intel_pipe_wm *pipe_wm)
 {
 	/* LP0 watermark maximums depend on this pipe alone */
@@ -2912,11 +2899,11 @@ static bool ilk_validate_pipe_wm(struct drm_i915_private *dev_priv,
 	struct ilk_wm_maximums max;
 
 	/* LP0 watermarks always use 1/2 DDB partitioning */
-	ilk_compute_wm_maximums(dev_priv, 0, &config, INTEL_DDB_PART_1_2, &max);
+	ilk_compute_wm_maximums(display, 0, &config, INTEL_DDB_PART_1_2, &max);
 
 	/* At least LP0 must be valid */
-	if (!ilk_validate_wm_level(dev_priv, 0, &max, &pipe_wm->wm[0])) {
-		drm_dbg_kms(&dev_priv->drm, "LP0 watermark invalid\n");
+	if (!ilk_validate_wm_level(display, 0, &max, &pipe_wm->wm[0])) {
+		drm_dbg_kms(display->drm, "LP0 watermark invalid\n");
 		return false;
 	}
 
@@ -2927,7 +2914,7 @@ static bool ilk_validate_pipe_wm(struct drm_i915_private *dev_priv,
 static int ilk_compute_pipe_wm(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_pipe_wm *pipe_wm;
@@ -2954,10 +2941,10 @@ static int ilk_compute_pipe_wm(struct intel_atomic_state *state,
 	pipe_wm->sprites_enabled = crtc_state->active_planes & BIT(PLANE_SPRITE0);
 	pipe_wm->sprites_scaled = crtc_state->scaled_planes & BIT(PLANE_SPRITE0);
 
-	usable_level = dev_priv->display.wm.num_levels - 1;
+	usable_level = display->wm.num_levels - 1;
 
 	/* ILK/SNB: LP2+ watermarks only w/o sprites */
-	if (DISPLAY_VER(dev_priv) < 7 && pipe_wm->sprites_enabled)
+	if (DISPLAY_VER(display) < 7 && pipe_wm->sprites_enabled)
 		usable_level = 1;
 
 	/* ILK/SNB/IVB: LP1+ watermarks only w/o scaling */
@@ -2965,18 +2952,18 @@ static int ilk_compute_pipe_wm(struct intel_atomic_state *state,
 		usable_level = 0;
 
 	memset(&pipe_wm->wm, 0, sizeof(pipe_wm->wm));
-	ilk_compute_wm_level(dev_priv, crtc, 0, crtc_state,
+	ilk_compute_wm_level(display, crtc, 0, crtc_state,
 			     pristate, sprstate, curstate, &pipe_wm->wm[0]);
 
-	if (!ilk_validate_pipe_wm(dev_priv, pipe_wm))
+	if (!ilk_validate_pipe_wm(display, pipe_wm))
 		return -EINVAL;
 
-	ilk_compute_wm_reg_maximums(dev_priv, 1, &max);
+	ilk_compute_wm_reg_maximums(display, 1, &max);
 
 	for (level = 1; level <= usable_level; level++) {
 		struct intel_wm_level *wm = &pipe_wm->wm[level];
 
-		ilk_compute_wm_level(dev_priv, crtc, level, crtc_state,
+		ilk_compute_wm_level(display, crtc, level, crtc_state,
 				     pristate, sprstate, curstate, wm);
 
 		/*
@@ -2984,7 +2971,7 @@ static int ilk_compute_pipe_wm(struct intel_atomic_state *state,
 		 * register maximums since such watermarks are
 		 * always invalid.
 		 */
-		if (!ilk_validate_wm_level(dev_priv, level, &max, wm)) {
+		if (!ilk_validate_wm_level(display, level, &max, wm)) {
 			memset(wm, 0, sizeof(*wm));
 			break;
 		}
@@ -3001,7 +2988,7 @@ static int ilk_compute_pipe_wm(struct intel_atomic_state *state,
 static int ilk_compute_intermediate_wm(struct intel_atomic_state *state,
 				       struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_crtc_state *old_crtc_state =
@@ -3026,7 +3013,7 @@ static int ilk_compute_intermediate_wm(struct intel_atomic_state *state,
 	intermediate->sprites_enabled |= active->sprites_enabled;
 	intermediate->sprites_scaled |= active->sprites_scaled;
 
-	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
+	for (level = 0; level < display->wm.num_levels; level++) {
 		struct intel_wm_level *intermediate_wm = &intermediate->wm[level];
 		const struct intel_wm_level *active_wm = &active->wm[level];
 
@@ -3047,7 +3034,7 @@ static int ilk_compute_intermediate_wm(struct intel_atomic_state *state,
 	 * there's no safe way to transition from the old state to
 	 * the new state, so we need to fail the atomic transaction.
 	 */
-	if (!ilk_validate_pipe_wm(dev_priv, intermediate))
+	if (!ilk_validate_pipe_wm(display, intermediate))
 		return -EINVAL;
 
 	/*
@@ -3079,7 +3066,7 @@ static int ilk_compute_watermarks(struct intel_atomic_state *state,
 /*
  * Merge the watermarks from all active pipes for a specific level.
  */
-static void ilk_merge_wm_level(struct drm_i915_private *dev_priv,
+static void ilk_merge_wm_level(struct intel_display *display,
 			       int level,
 			       struct intel_wm_level *ret_wm)
 {
@@ -3087,7 +3074,7 @@ static void ilk_merge_wm_level(struct drm_i915_private *dev_priv,
 
 	ret_wm->enable = true;
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		const struct intel_pipe_wm *active = &crtc->wm.active.ilk;
 		const struct intel_wm_level *wm = &active->wm[level];
 
@@ -3112,31 +3099,31 @@ static void ilk_merge_wm_level(struct drm_i915_private *dev_priv,
 /*
  * Merge all low power watermarks for all active pipes.
  */
-static void ilk_wm_merge(struct drm_i915_private *dev_priv,
+static void ilk_wm_merge(struct intel_display *display,
 			 const struct intel_wm_config *config,
 			 const struct ilk_wm_maximums *max,
 			 struct intel_pipe_wm *merged)
 {
-	int level, num_levels = dev_priv->display.wm.num_levels;
+	int level, num_levels = display->wm.num_levels;
 	int last_enabled_level = num_levels - 1;
 
 	/* ILK/SNB/IVB: LP1+ watermarks only w/ single pipe */
-	if ((DISPLAY_VER(dev_priv) < 7 || IS_IVYBRIDGE(dev_priv)) &&
+	if ((DISPLAY_VER(display) < 7 || display->platform.ivybridge) &&
 	    config->num_pipes_active > 1)
 		last_enabled_level = 0;
 
 	/* ILK: FBC WM must be disabled always */
-	merged->fbc_wm_enabled = DISPLAY_VER(dev_priv) >= 6;
+	merged->fbc_wm_enabled = DISPLAY_VER(display) >= 6;
 
 	/* merge each WM1+ level */
 	for (level = 1; level < num_levels; level++) {
 		struct intel_wm_level *wm = &merged->wm[level];
 
-		ilk_merge_wm_level(dev_priv, level, wm);
+		ilk_merge_wm_level(display, level, wm);
 
 		if (level > last_enabled_level)
 			wm->enable = false;
-		else if (!ilk_validate_wm_level(dev_priv, level, max, wm))
+		else if (!ilk_validate_wm_level(display, level, max, wm))
 			/* make sure all following levels get disabled */
 			last_enabled_level = level - 1;
 
@@ -3152,8 +3139,8 @@ static void ilk_wm_merge(struct drm_i915_private *dev_priv,
 	}
 
 	/* ILK: LP2+ must be disabled when FBC WM is disabled but FBC enabled */
-	if (DISPLAY_VER(dev_priv) == 5 && HAS_FBC(dev_priv) &&
-	    dev_priv->display.params.enable_fbc && !merged->fbc_wm_enabled) {
+	if (DISPLAY_VER(display) == 5 && HAS_FBC(display) &&
+	    display->params.enable_fbc && !merged->fbc_wm_enabled) {
 		for (level = 2; level < num_levels; level++) {
 			struct intel_wm_level *wm = &merged->wm[level];
 
@@ -3169,16 +3156,16 @@ static int ilk_wm_lp_to_level(int wm_lp, const struct intel_pipe_wm *pipe_wm)
 }
 
 /* The value we need to program into the WM_LPx latency field */
-static unsigned int ilk_wm_lp_latency(struct drm_i915_private *dev_priv,
+static unsigned int ilk_wm_lp_latency(struct intel_display *display,
 				      int level)
 {
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
+	if (display->platform.haswell || display->platform.broadwell)
 		return 2 * level;
 	else
-		return dev_priv->display.wm.pri_latency[level];
+		return display->wm.pri_latency[level];
 }
 
-static void ilk_compute_wm_results(struct drm_i915_private *dev_priv,
+static void ilk_compute_wm_results(struct intel_display *display,
 				   const struct intel_pipe_wm *merged,
 				   enum intel_ddb_partitioning partitioning,
 				   struct ilk_wm_values *results)
@@ -3202,14 +3189,14 @@ static void ilk_compute_wm_results(struct drm_i915_private *dev_priv,
 		 * disabled. Doing otherwise could cause underruns.
 		 */
 		results->wm_lp[wm_lp - 1] =
-			WM_LP_LATENCY(ilk_wm_lp_latency(dev_priv, level)) |
+			WM_LP_LATENCY(ilk_wm_lp_latency(display, level)) |
 			WM_LP_PRIMARY(r->pri_val) |
 			WM_LP_CURSOR(r->cur_val);
 
 		if (r->enable)
 			results->wm_lp[wm_lp - 1] |= WM_LP_ENABLE;
 
-		if (DISPLAY_VER(dev_priv) >= 8)
+		if (DISPLAY_VER(display) >= 8)
 			results->wm_lp[wm_lp - 1] |= WM_LP_FBC_BDW(r->fbc_val);
 		else
 			results->wm_lp[wm_lp - 1] |= WM_LP_FBC_ILK(r->fbc_val);
@@ -3220,19 +3207,19 @@ static void ilk_compute_wm_results(struct drm_i915_private *dev_priv,
 		 * Always set WM_LP_SPRITE_EN when spr_val != 0, even if the
 		 * level is disabled. Doing otherwise could cause underruns.
 		 */
-		if (DISPLAY_VER(dev_priv) < 7 && r->spr_val) {
-			drm_WARN_ON(&dev_priv->drm, wm_lp != 1);
+		if (DISPLAY_VER(display) < 7 && r->spr_val) {
+			drm_WARN_ON(display->drm, wm_lp != 1);
 			results->wm_lp_spr[wm_lp - 1] |= WM_LP_SPRITE_ENABLE;
 		}
 	}
 
 	/* LP0 register values */
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		enum pipe pipe = crtc->pipe;
 		const struct intel_pipe_wm *pipe_wm = &crtc->wm.active.ilk;
 		const struct intel_wm_level *r = &pipe_wm->wm[0];
 
-		if (drm_WARN_ON(&dev_priv->drm, !r->enable))
+		if (drm_WARN_ON(display->drm, !r->enable))
 			continue;
 
 		results->wm_pipe[pipe] =
@@ -3247,13 +3234,13 @@ static void ilk_compute_wm_results(struct drm_i915_private *dev_priv,
  * case both are at the same level. Prefer r1 in case they're the same.
  */
 static struct intel_pipe_wm *
-ilk_find_best_result(struct drm_i915_private *dev_priv,
+ilk_find_best_result(struct intel_display *display,
 		     struct intel_pipe_wm *r1,
 		     struct intel_pipe_wm *r2)
 {
 	int level, level1 = 0, level2 = 0;
 
-	for (level = 1; level < dev_priv->display.wm.num_levels; level++) {
+	for (level = 1; level < display->wm.num_levels; level++) {
 		if (r1->wm[level].enable)
 			level1 = level;
 		if (r2->wm[level].enable)
@@ -3279,7 +3266,7 @@ ilk_find_best_result(struct drm_i915_private *dev_priv,
 #define WM_DIRTY_FBC (1 << 24)
 #define WM_DIRTY_DDB (1 << 25)
 
-static unsigned int ilk_compute_wm_dirty(struct drm_i915_private *dev_priv,
+static unsigned int ilk_compute_wm_dirty(struct intel_display *display,
 					 const struct ilk_wm_values *old,
 					 const struct ilk_wm_values *new)
 {
@@ -3287,7 +3274,7 @@ static unsigned int ilk_compute_wm_dirty(struct drm_i915_private *dev_priv,
 	enum pipe pipe;
 	int wm_lp;
 
-	for_each_pipe(dev_priv, pipe) {
+	for_each_pipe(display, pipe) {
 		if (old->wm_pipe[pipe] != new->wm_pipe[pipe]) {
 			dirty |= WM_DIRTY_PIPE(pipe);
 			/* Must disable LP1+ watermarks too */
@@ -3325,11 +3312,10 @@ static unsigned int ilk_compute_wm_dirty(struct drm_i915_private *dev_priv,
 	return dirty;
 }
 
-static bool _ilk_disable_lp_wm(struct drm_i915_private *dev_priv,
+static bool _ilk_disable_lp_wm(struct intel_display *display,
 			       unsigned int dirty)
 {
-	struct intel_display *display = &dev_priv->display;
-	struct ilk_wm_values *previous = &dev_priv->display.wm.hw;
+	struct ilk_wm_values *previous = &display->wm.hw;
 	bool changed = false;
 
 	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] & WM_LP_ENABLE) {
@@ -3360,18 +3346,17 @@ static bool _ilk_disable_lp_wm(struct drm_i915_private *dev_priv,
  * The spec says we shouldn't write when we don't need, because every write
  * causes WMs to be re-evaluated, expending some power.
  */
-static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
+static void ilk_write_wm_values(struct intel_display *display,
 				struct ilk_wm_values *results)
 {
-	struct intel_display *display = &dev_priv->display;
-	struct ilk_wm_values *previous = &dev_priv->display.wm.hw;
+	struct ilk_wm_values *previous = &display->wm.hw;
 	unsigned int dirty;
 
-	dirty = ilk_compute_wm_dirty(dev_priv, previous, results);
+	dirty = ilk_compute_wm_dirty(display, previous, results);
 	if (!dirty)
 		return;
 
-	_ilk_disable_lp_wm(dev_priv, dirty);
+	_ilk_disable_lp_wm(display, dirty);
 
 	if (dirty & WM_DIRTY_PIPE(PIPE_A))
 		intel_de_write(display, WM0_PIPE_ILK(PIPE_A), results->wm_pipe[0]);
@@ -3381,7 +3366,7 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
 		intel_de_write(display, WM0_PIPE_ILK(PIPE_C), results->wm_pipe[2]);
 
 	if (dirty & WM_DIRTY_DDB) {
-		if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
+		if (display->platform.haswell || display->platform.broadwell)
 			intel_de_rmw(display, WM_MISC, WM_MISC_DATA_PARTITION_5_6,
 				     results->partitioning == INTEL_DDB_PART_1_2 ? 0 :
 				     WM_MISC_DATA_PARTITION_5_6);
@@ -3399,7 +3384,7 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
 	    previous->wm_lp_spr[0] != results->wm_lp_spr[0])
 		intel_de_write(display, WM1S_LP_ILK, results->wm_lp_spr[0]);
 
-	if (DISPLAY_VER(dev_priv) >= 7) {
+	if (DISPLAY_VER(display) >= 7) {
 		if (dirty & WM_DIRTY_LP(2) && previous->wm_lp_spr[1] != results->wm_lp_spr[1])
 			intel_de_write(display, WM2S_LP_IVB, results->wm_lp_spr[1]);
 		if (dirty & WM_DIRTY_LP(3) && previous->wm_lp_spr[2] != results->wm_lp_spr[2])
@@ -3413,23 +3398,21 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
 	if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] != results->wm_lp[2])
 		intel_de_write(display, WM3_LP_ILK, results->wm_lp[2]);
 
-	dev_priv->display.wm.hw = *results;
+	display->wm.hw = *results;
 }
 
 bool ilk_disable_cxsr(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
-	return _ilk_disable_lp_wm(dev_priv, WM_DIRTY_LP_ALL);
+	return _ilk_disable_lp_wm(display, WM_DIRTY_LP_ALL);
 }
 
-static void ilk_compute_wm_config(struct drm_i915_private *dev_priv,
+static void ilk_compute_wm_config(struct intel_display *display,
 				  struct intel_wm_config *config)
 {
 	struct intel_crtc *crtc;
 
 	/* Compute the currently _active_ config */
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		const struct intel_pipe_wm *wm = &crtc->wm.active.ilk;
 
 		if (!wm->pipe_enabled)
@@ -3441,7 +3424,7 @@ static void ilk_compute_wm_config(struct drm_i915_private *dev_priv,
 	}
 }
 
-static void ilk_program_watermarks(struct drm_i915_private *dev_priv)
+static void ilk_program_watermarks(struct intel_display *display)
 {
 	struct intel_pipe_wm lp_wm_1_2 = {}, lp_wm_5_6 = {}, *best_lp_wm;
 	struct ilk_wm_maximums max;
@@ -3449,18 +3432,18 @@ static void ilk_program_watermarks(struct drm_i915_private *dev_priv)
 	struct ilk_wm_values results = {};
 	enum intel_ddb_partitioning partitioning;
 
-	ilk_compute_wm_config(dev_priv, &config);
+	ilk_compute_wm_config(display, &config);
 
-	ilk_compute_wm_maximums(dev_priv, 1, &config, INTEL_DDB_PART_1_2, &max);
-	ilk_wm_merge(dev_priv, &config, &max, &lp_wm_1_2);
+	ilk_compute_wm_maximums(display, 1, &config, INTEL_DDB_PART_1_2, &max);
+	ilk_wm_merge(display, &config, &max, &lp_wm_1_2);
 
 	/* 5/6 split only in single pipe config on IVB+ */
-	if (DISPLAY_VER(dev_priv) >= 7 &&
+	if (DISPLAY_VER(display) >= 7 &&
 	    config.num_pipes_active == 1 && config.sprites_enabled) {
-		ilk_compute_wm_maximums(dev_priv, 1, &config, INTEL_DDB_PART_5_6, &max);
-		ilk_wm_merge(dev_priv, &config, &max, &lp_wm_5_6);
+		ilk_compute_wm_maximums(display, 1, &config, INTEL_DDB_PART_5_6, &max);
+		ilk_wm_merge(display, &config, &max, &lp_wm_5_6);
 
-		best_lp_wm = ilk_find_best_result(dev_priv, &lp_wm_1_2, &lp_wm_5_6);
+		best_lp_wm = ilk_find_best_result(display, &lp_wm_1_2, &lp_wm_5_6);
 	} else {
 		best_lp_wm = &lp_wm_1_2;
 	}
@@ -3468,46 +3451,44 @@ static void ilk_program_watermarks(struct drm_i915_private *dev_priv)
 	partitioning = (best_lp_wm == &lp_wm_1_2) ?
 		       INTEL_DDB_PART_1_2 : INTEL_DDB_PART_5_6;
 
-	ilk_compute_wm_results(dev_priv, best_lp_wm, partitioning, &results);
+	ilk_compute_wm_results(display, best_lp_wm, partitioning, &results);
 
-	ilk_write_wm_values(dev_priv, &results);
+	ilk_write_wm_values(display, &results);
 }
 
 static void ilk_initial_watermarks(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&display->wm.wm_mutex);
 	crtc->wm.active.ilk = crtc_state->wm.ilk.intermediate;
-	ilk_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	ilk_program_watermarks(display);
+	mutex_unlock(&display->wm.wm_mutex);
 }
 
 static void ilk_optimize_watermarks(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
 	if (!crtc_state->wm.need_postvbl_update)
 		return;
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&display->wm.wm_mutex);
 	crtc->wm.active.ilk = crtc_state->wm.ilk.optimal;
-	ilk_program_watermarks(dev_priv);
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	ilk_program_watermarks(display);
+	mutex_unlock(&display->wm.wm_mutex);
 }
 
 static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct ilk_wm_values *hw = &dev_priv->display.wm.hw;
+	struct ilk_wm_values *hw = &display->wm.hw;
 	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
 	struct intel_pipe_wm *active = &crtc_state->wm.ilk.optimal;
 	enum pipe pipe = crtc->pipe;
@@ -3539,7 +3520,7 @@ static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
 		 * should be marked as enabled but zeroed,
 		 * which is what we'd compute them to.
 		 */
-		for (level = 0; level < dev_priv->display.wm.num_levels; level++)
+		for (level = 0; level < display->wm.num_levels; level++)
 			active->wm[level].enable = true;
 	}
 
@@ -3590,7 +3571,6 @@ static int ilk_sanitize_watermarks_add_affected(struct drm_atomic_state *state)
  */
 void ilk_wm_sanitize(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct drm_atomic_state *state;
 	struct intel_atomic_state *intel_state;
 	struct intel_crtc *crtc;
@@ -3600,14 +3580,14 @@ void ilk_wm_sanitize(struct intel_display *display)
 	int i;
 
 	/* Only supported on platforms that use atomic watermark design */
-	if (!dev_priv->display.funcs.wm->optimize_watermarks)
+	if (!display->funcs.wm->optimize_watermarks)
 		return;
 
-	if (drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) >= 9))
+	if (drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 9))
 		return;
 
-	state = drm_atomic_state_alloc(&dev_priv->drm);
-	if (drm_WARN_ON(&dev_priv->drm, !state))
+	state = drm_atomic_state_alloc(display->drm);
+	if (drm_WARN_ON(display->drm, !state))
 		return;
 
 	intel_state = to_intel_atomic_state(state);
@@ -3623,14 +3603,14 @@ void ilk_wm_sanitize(struct intel_display *display)
 	 * intermediate watermarks (since we don't trust the current
 	 * watermarks).
 	 */
-	if (!HAS_GMCH(dev_priv))
+	if (!HAS_GMCH(display))
 		intel_state->skip_intermediate_wm = true;
 
 	ret = ilk_sanitize_watermarks_add_affected(state);
 	if (ret)
 		goto fail;
 
-	ret = intel_atomic_check(&dev_priv->drm, state);
+	ret = intel_atomic_check(display->drm, state);
 	if (ret)
 		goto fail;
 
@@ -3660,7 +3640,7 @@ void ilk_wm_sanitize(struct intel_display *display)
 	 * If this actually happens, we'll have to just leave the
 	 * BIOS-programmed watermarks untouched and hope for the best.
 	 */
-	drm_WARN(&dev_priv->drm, ret,
+	drm_WARN(display->drm, ret,
 		 "Could not determine valid watermarks for inherited state\n");
 
 	drm_atomic_state_put(state);
@@ -3674,10 +3654,9 @@ void ilk_wm_sanitize(struct intel_display *display)
 #define _FW_WM_VLV(value, plane) \
 	(((value) & DSPFW_ ## plane ## _MASK_VLV) >> DSPFW_ ## plane ## _SHIFT)
 
-static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
+static void g4x_read_wm_values(struct intel_display *display,
 			       struct g4x_wm_values *wm)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 tmp;
 
 	tmp = intel_de_read(display, DSPFW1(display));
@@ -3701,14 +3680,13 @@ static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
 	wm->hpll.plane = _FW_WM(tmp, HPLL_SR);
 }
 
-static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
+static void vlv_read_wm_values(struct intel_display *display,
 			       struct vlv_wm_values *wm)
 {
-	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe;
 	u32 tmp;
 
-	for_each_pipe(dev_priv, pipe) {
+	for_each_pipe(display, pipe) {
 		tmp = intel_de_read(display, VLV_DDL(pipe));
 
 		wm->ddl[pipe].plane[PLANE_PRIMARY] =
@@ -3735,7 +3713,7 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 	tmp = intel_de_read(display, DSPFW3(display));
 	wm->sr.cursor = _FW_WM(tmp, CURSOR_SR);
 
-	if (IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.cherryview) {
 		tmp = intel_de_read(display, DSPFW7_CHV);
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE1] = _FW_WM_VLV(tmp, SPRITED);
 		wm->pipe[PIPE_B].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEC);
@@ -3780,15 +3758,14 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
 
 static void g4x_wm_get_hw_state(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	struct g4x_wm_values *wm = &dev_priv->display.wm.g4x;
+	struct g4x_wm_values *wm = &display->wm.g4x;
 	struct intel_crtc *crtc;
 
-	g4x_read_wm_values(dev_priv, wm);
+	g4x_read_wm_values(display, wm);
 
 	wm->cxsr = intel_de_read(display, FW_BLC_SELF) & FW_BLC_SELF_EN;
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct g4x_wm_state *active = &crtc->wm.active.g4x;
@@ -3853,7 +3830,7 @@ static void g4x_wm_get_hw_state(struct intel_display *display)
 		crtc_state->wm.g4x.optimal = *active;
 		crtc_state->wm.g4x.intermediate = *active;
 
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Initial watermarks: pipe %c, plane=%d, cursor=%d, sprite=%d\n",
 			    pipe_name(pipe),
 			    wm->pipe[pipe].plane[PLANE_PRIMARY],
@@ -3861,26 +3838,25 @@ static void g4x_wm_get_hw_state(struct intel_display *display)
 			    wm->pipe[pipe].plane[PLANE_SPRITE0]);
 	}
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "Initial SR watermarks: plane=%d, cursor=%d fbc=%d\n",
 		    wm->sr.plane, wm->sr.cursor, wm->sr.fbc);
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "Initial HPLL watermarks: plane=%d, SR cursor=%d fbc=%d\n",
 		    wm->hpll.plane, wm->hpll.cursor, wm->hpll.fbc);
-	drm_dbg_kms(&dev_priv->drm, "Initial SR=%s HPLL=%s FBC=%s\n",
+	drm_dbg_kms(display->drm, "Initial SR=%s HPLL=%s FBC=%s\n",
 		    str_yes_no(wm->cxsr), str_yes_no(wm->hpll_en),
 		    str_yes_no(wm->fbc_en));
 }
 
 static void g4x_wm_sanitize(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&display->wm.wm_mutex);
 
-	for_each_intel_plane(&dev_priv->drm, plane) {
+	for_each_intel_plane(display->drm, plane) {
 		struct intel_crtc *crtc =
 			intel_crtc_for_pipe(display, plane->pipe);
 		struct intel_crtc_state *crtc_state =
@@ -3893,7 +3869,7 @@ static void g4x_wm_sanitize(struct intel_display *display)
 		if (plane_state->uapi.visible)
 			continue;
 
-		for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
+		for (level = 0; level < display->wm.num_levels; level++) {
 			struct g4x_pipe_wm *raw =
 				&crtc_state->wm.g4x.raw[level];
 
@@ -3904,37 +3880,37 @@ static void g4x_wm_sanitize(struct intel_display *display)
 		}
 	}
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		int ret;
 
 		ret = _g4x_compute_pipe_wm(crtc_state);
-		drm_WARN_ON(&dev_priv->drm, ret);
+		drm_WARN_ON(display->drm, ret);
 
 		crtc_state->wm.g4x.intermediate =
 			crtc_state->wm.g4x.optimal;
 		crtc->wm.active.g4x = crtc_state->wm.g4x.optimal;
 	}
 
-	g4x_program_watermarks(dev_priv);
+	g4x_program_watermarks(display);
 
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	mutex_unlock(&display->wm.wm_mutex);
 }
 
 static void vlv_wm_get_hw_state(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	struct vlv_wm_values *wm = &dev_priv->display.wm.vlv;
+	struct vlv_wm_values *wm = &display->wm.vlv;
 	struct intel_crtc *crtc;
 	u32 val;
 
-	vlv_read_wm_values(dev_priv, wm);
+	vlv_read_wm_values(display, wm);
 
 	wm->cxsr = intel_de_read(display, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
 	wm->level = VLV_WM_LEVEL_PM2;
 
-	if (IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.cherryview) {
 		vlv_punit_get(dev_priv);
 
 		val = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM);
@@ -3956,10 +3932,10 @@ static void vlv_wm_get_hw_state(struct intel_display *display)
 
 		if (wait_for((vlv_punit_read(dev_priv, PUNIT_REG_DDR_SETUP2) &
 			      FORCE_DDR_FREQ_REQ_ACK) == 0, 3)) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "Punit not acking DDR DVFS request, "
 				    "assuming DDR DVFS is disabled\n");
-			dev_priv->display.wm.num_levels = VLV_WM_LEVEL_PM5 + 1;
+			display->wm.num_levels = VLV_WM_LEVEL_PM5 + 1;
 		} else {
 			val = vlv_punit_read(dev_priv, PUNIT_REG_DDR_SETUP2);
 			if ((val & FORCE_DDR_HIGH_FREQ) == 0)
@@ -3969,7 +3945,7 @@ static void vlv_wm_get_hw_state(struct intel_display *display)
 		vlv_punit_put(dev_priv);
 	}
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct vlv_wm_state *active = &crtc->wm.active.vlv;
@@ -4009,7 +3985,7 @@ static void vlv_wm_get_hw_state(struct intel_display *display)
 		crtc_state->wm.vlv.optimal = *active;
 		crtc_state->wm.vlv.intermediate = *active;
 
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Initial watermarks: pipe %c, plane=%d, cursor=%d, sprite0=%d, sprite1=%d\n",
 			    pipe_name(pipe),
 			    wm->pipe[pipe].plane[PLANE_PRIMARY],
@@ -4018,20 +3994,19 @@ static void vlv_wm_get_hw_state(struct intel_display *display)
 			    wm->pipe[pipe].plane[PLANE_SPRITE1]);
 	}
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "Initial watermarks: SR plane=%d, SR cursor=%d level=%d cxsr=%d\n",
 		    wm->sr.plane, wm->sr.cursor, wm->level, wm->cxsr);
 }
 
 static void vlv_wm_sanitize(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
 
-	mutex_lock(&dev_priv->display.wm.wm_mutex);
+	mutex_lock(&display->wm.wm_mutex);
 
-	for_each_intel_plane(&dev_priv->drm, plane) {
+	for_each_intel_plane(display->drm, plane) {
 		struct intel_crtc *crtc =
 			intel_crtc_for_pipe(display, plane->pipe);
 		struct intel_crtc_state *crtc_state =
@@ -4044,7 +4019,7 @@ static void vlv_wm_sanitize(struct intel_display *display)
 		if (plane_state->uapi.visible)
 			continue;
 
-		for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
+		for (level = 0; level < display->wm.num_levels; level++) {
 			struct g4x_pipe_wm *raw =
 				&crtc_state->wm.vlv.raw[level];
 
@@ -4052,32 +4027,30 @@ static void vlv_wm_sanitize(struct intel_display *display)
 		}
 	}
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		int ret;
 
 		ret = _vlv_compute_pipe_wm(crtc_state);
-		drm_WARN_ON(&dev_priv->drm, ret);
+		drm_WARN_ON(display->drm, ret);
 
 		crtc_state->wm.vlv.intermediate =
 			crtc_state->wm.vlv.optimal;
 		crtc->wm.active.vlv = crtc_state->wm.vlv.optimal;
 	}
 
-	vlv_program_watermarks(dev_priv);
+	vlv_program_watermarks(display);
 
-	mutex_unlock(&dev_priv->display.wm.wm_mutex);
+	mutex_unlock(&display->wm.wm_mutex);
 }
 
 /*
  * FIXME should probably kill this and improve
  * the real watermark readout/sanitation instead
  */
-static void ilk_init_lp_watermarks(struct drm_i915_private *dev_priv)
+static void ilk_init_lp_watermarks(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	intel_de_rmw(display, WM3_LP_ILK, WM_LP_ENABLE, 0);
 	intel_de_rmw(display, WM2_LP_ILK, WM_LP_ENABLE, 0);
 	intel_de_rmw(display, WM1_LP_ILK, WM_LP_ENABLE, 0);
@@ -4090,13 +4063,12 @@ static void ilk_init_lp_watermarks(struct drm_i915_private *dev_priv)
 
 static void ilk_wm_get_hw_state(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	struct ilk_wm_values *hw = &dev_priv->display.wm.hw;
+	struct ilk_wm_values *hw = &display->wm.hw;
 	struct intel_crtc *crtc;
 
-	ilk_init_lp_watermarks(dev_priv);
+	ilk_init_lp_watermarks(display);
 
-	for_each_intel_crtc(&dev_priv->drm, crtc)
+	for_each_intel_crtc(display->drm, crtc)
 		ilk_pipe_wm_get_hw_state(crtc);
 
 	hw->wm_lp[0] = intel_de_read(display, WM1_LP_ILK);
@@ -4104,16 +4076,16 @@ static void ilk_wm_get_hw_state(struct intel_display *display)
 	hw->wm_lp[2] = intel_de_read(display, WM3_LP_ILK);
 
 	hw->wm_lp_spr[0] = intel_de_read(display, WM1S_LP_ILK);
-	if (DISPLAY_VER(dev_priv) >= 7) {
+	if (DISPLAY_VER(display) >= 7) {
 		hw->wm_lp_spr[1] = intel_de_read(display, WM2S_LP_IVB);
 		hw->wm_lp_spr[2] = intel_de_read(display, WM3S_LP_IVB);
 	}
 
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
+	if (display->platform.haswell || display->platform.broadwell)
 		hw->partitioning = (intel_de_read(display, WM_MISC) &
 				    WM_MISC_DATA_PARTITION_5_6) ?
 			INTEL_DDB_PART_5_6 : INTEL_DDB_PART_1_2;
-	else if (IS_IVYBRIDGE(dev_priv))
+	else if (display->platform.ivybridge)
 		hw->partitioning = (intel_de_read(display, DISP_ARB_CTL2) &
 				    DISP_DATA_PARTITION_5_6) ?
 			INTEL_DDB_PART_5_6 : INTEL_DDB_PART_1_2;
@@ -4175,35 +4147,35 @@ void i9xx_wm_init(struct intel_display *display)
 
 	/* For FIFO watermark updates */
 	if (HAS_PCH_SPLIT(dev_priv)) {
-		ilk_setup_wm_latency(dev_priv);
-		dev_priv->display.funcs.wm = &ilk_wm_funcs;
-	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		vlv_setup_wm_latency(dev_priv);
-		dev_priv->display.funcs.wm = &vlv_wm_funcs;
-	} else if (IS_G4X(dev_priv)) {
-		g4x_setup_wm_latency(dev_priv);
-		dev_priv->display.funcs.wm = &g4x_wm_funcs;
-	} else if (IS_PINEVIEW(dev_priv)) {
-		if (!pnv_get_cxsr_latency(dev_priv)) {
-			drm_info(&dev_priv->drm, "Unknown FSB/MEM, disabling CxSR\n");
+		ilk_setup_wm_latency(display);
+		display->funcs.wm = &ilk_wm_funcs;
+	} else if (display->platform.valleyview || display->platform.cherryview) {
+		vlv_setup_wm_latency(display);
+		display->funcs.wm = &vlv_wm_funcs;
+	} else if (display->platform.g4x) {
+		g4x_setup_wm_latency(display);
+		display->funcs.wm = &g4x_wm_funcs;
+	} else if (display->platform.pineview) {
+		if (!pnv_get_cxsr_latency(display)) {
+			drm_info(display->drm, "Unknown FSB/MEM, disabling CxSR\n");
 			/* Disable CxSR and never update its watermark again */
 			intel_set_memory_cxsr(display, false);
-			dev_priv->display.funcs.wm = &nop_funcs;
+			display->funcs.wm = &nop_funcs;
 		} else {
-			dev_priv->display.funcs.wm = &pnv_wm_funcs;
+			display->funcs.wm = &pnv_wm_funcs;
 		}
-	} else if (DISPLAY_VER(dev_priv) == 4) {
-		dev_priv->display.funcs.wm = &i965_wm_funcs;
-	} else if (DISPLAY_VER(dev_priv) == 3) {
-		dev_priv->display.funcs.wm = &i9xx_wm_funcs;
-	} else if (DISPLAY_VER(dev_priv) == 2) {
-		if (INTEL_NUM_PIPES(dev_priv) == 1)
-			dev_priv->display.funcs.wm = &i845_wm_funcs;
+	} else if (DISPLAY_VER(display) == 4) {
+		display->funcs.wm = &i965_wm_funcs;
+	} else if (DISPLAY_VER(display) == 3) {
+		display->funcs.wm = &i9xx_wm_funcs;
+	} else if (DISPLAY_VER(display) == 2) {
+		if (INTEL_NUM_PIPES(display) == 1)
+			display->funcs.wm = &i845_wm_funcs;
 		else
-			dev_priv->display.funcs.wm = &i9xx_wm_funcs;
+			display->funcs.wm = &i9xx_wm_funcs;
 	} else {
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"unexpected fall-through in %s\n", __func__);
-		dev_priv->display.funcs.wm = &nop_funcs;
+		display->funcs.wm = &nop_funcs;
 	}
 }
-- 
2.39.5

