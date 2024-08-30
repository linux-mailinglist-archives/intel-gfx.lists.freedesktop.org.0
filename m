Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BACFE965E68
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 12:16:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58AE510EA55;
	Fri, 30 Aug 2024 10:16:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h2KvHCTf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 489AA10EA51;
 Fri, 30 Aug 2024 10:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725012998; x=1756548998;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VRgx6SaXP8RfO1TIoh/eb9YyBl2A9iBflP0rGJP9wlk=;
 b=h2KvHCTfUi9Z0jSpchEG9bgTxggg2k8uUHalTQTA+i/J4/kITv5TnZ7d
 xpT/NGgFeDCaUoB8e+jAEFjZpoZ1y40S2sDVAUgJ5guxy7NJ2Dme4TIwn
 6+SX7PPWPwEN+31SRBIriI27FsW1H9jHvs5TNrrY8/kXJfDyTv3zUnJ6p
 /VZOWFle+7WXQSv0anou3OD0ymv06+rab24tZIroL4ru+1fqyOHZmGfb+
 ZHEjoLWE8KVMiMucrvCI8pd2eaSC7nLoNDiqPY9Og5t7pPwRo8ldNUTF0
 djb/MCmxG7BHvL77V+/RNJJBepWfjwbKMvfUhneelcnVxLewFxR7qYaTs g==;
X-CSE-ConnectionGUID: MYCRgTEoSJCc1gKOkwafEQ==
X-CSE-MsgGUID: xyD7W1XFQ72mvRnDbwNQ6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="13295706"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="13295706"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:38 -0700
X-CSE-ConnectionGUID: HkrfvjUSTcqvXCLIf5PGIg==
X-CSE-MsgGUID: XRDuF9jCQG6AQs3wUmvC1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68516189"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.88])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/11] drm/i915/pps: convert intel_pps.[ch] to struct
 intel_display
Date: Fri, 30 Aug 2024 13:15:45 +0300
Message-Id: <bea51b0d9e4546ba21d0d4eb01ca1097fda095ab.1725012870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725012870.git.jani.nikula@intel.com>
References: <cover.1725012870.git.jani.nikula@intel.com>
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

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_pps.[ch] to struct intel_display.

Some stragglers are left behind where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_driver.c   |   2 +-
 .../i915/display/intel_display_power_well.c   |  15 +-
 .../drm/i915/display/intel_display_reset.c    |   7 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   9 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   3 +-
 drivers/gpu/drm/i915/display/intel_pps.c      | 502 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_pps.h      |  10 +-
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 9 files changed, 299 insertions(+), 253 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 78ce402a5cd0..b4ef4d59da1a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7793,7 +7793,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	struct intel_encoder *encoder;
 	bool dpd_is_edp = false;
 
-	intel_pps_unlock_regs_wa(dev_priv);
+	intel_pps_unlock_regs_wa(display);
 
 	if (!HAS_DISPLAY(dev_priv))
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 98ad2eb8db72..069426d9260b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -428,7 +428,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 
 	intel_panel_sanitize_ssc(i915);
 
-	intel_pps_setup(i915);
+	intel_pps_setup(display);
 
 	intel_gmbus_setup(i915);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index adf5d1fbccb5..46e9eff12c23 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -861,6 +861,8 @@ void skl_enable_dc6(struct drm_i915_private *dev_priv)
 
 void bxt_enable_dc9(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	assert_can_enable_dc9(dev_priv);
 
 	drm_dbg_kms(&dev_priv->drm, "Enabling DC9\n");
@@ -870,19 +872,21 @@ void bxt_enable_dc9(struct drm_i915_private *dev_priv)
 	 * because PPS registers are always on.
 	 */
 	if (!HAS_PCH_SPLIT(dev_priv))
-		intel_pps_reset_all(dev_priv);
+		intel_pps_reset_all(display);
 	gen9_set_dc_state(dev_priv, DC_STATE_EN_DC9);
 }
 
 void bxt_disable_dc9(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	assert_can_disable_dc9(dev_priv);
 
 	drm_dbg_kms(&dev_priv->drm, "Disabling DC9\n");
 
 	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
 
-	intel_pps_unlock_regs_wa(dev_priv);
+	intel_pps_unlock_regs_wa(display);
 }
 
 static void hsw_power_well_sync_hw(struct drm_i915_private *dev_priv,
@@ -1184,6 +1188,7 @@ static void vlv_init_display_clock_gating(struct drm_i915_private *dev_priv)
 
 static void vlv_display_power_well_init(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_encoder *encoder;
 	enum pipe pipe;
 
@@ -1229,11 +1234,13 @@ static void vlv_display_power_well_init(struct drm_i915_private *dev_priv)
 
 	intel_vga_redisable_power_on(dev_priv);
 
-	intel_pps_unlock_regs_wa(dev_priv);
+	intel_pps_unlock_regs_wa(display);
 }
 
 static void vlv_display_power_well_deinit(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	spin_lock_irq(&dev_priv->irq_lock);
 	valleyview_disable_display_irqs(dev_priv);
 	spin_unlock_irq(&dev_priv->irq_lock);
@@ -1241,7 +1248,7 @@ static void vlv_display_power_well_deinit(struct drm_i915_private *dev_priv)
 	/* make sure we're done processing display irqs */
 	intel_synchronize_irq(dev_priv);
 
-	intel_pps_reset_all(dev_priv);
+	intel_pps_reset_all(display);
 
 	/* Prevent us from re-enabling polling on accident in late suspend */
 	if (!dev_priv->drm.dev->power.is_suspended)
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index c2c347b22448..49e2e650ebcd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -83,7 +83,8 @@ void intel_display_reset_prepare(struct drm_i915_private *dev_priv)
 
 void intel_display_reset_finish(struct drm_i915_private *i915)
 {
-	struct drm_modeset_acquire_ctx *ctx = &i915->display.restore.reset_ctx;
+	struct intel_display *display = &i915->display;
+	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
 	struct drm_atomic_state *state;
 	int ret;
 
@@ -94,7 +95,7 @@ void intel_display_reset_finish(struct drm_i915_private *i915)
 	if (!test_bit(I915_RESET_MODESET, &to_gt(i915)->reset.flags))
 		return;
 
-	state = fetch_and_zero(&i915->display.restore.modeset_state);
+	state = fetch_and_zero(&display->restore.modeset_state);
 	if (!state)
 		goto unlock;
 
@@ -112,7 +113,7 @@ void intel_display_reset_finish(struct drm_i915_private *i915)
 		 * The display has been reset as well,
 		 * so need a full re-initialization.
 		 */
-		intel_pps_unlock_regs_wa(i915);
+		intel_pps_unlock_regs_wa(display);
 		intel_display_driver_init_hw(i915);
 		intel_clock_gating_init(i915);
 		intel_hpd_init(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index d67d5e2fd570..340dfce480b8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1823,6 +1823,7 @@ static bool i9xx_has_pps(struct drm_i915_private *dev_priv)
 
 void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
@@ -1833,7 +1834,7 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 
 	/* PLL is protected by panel, make sure we can write it */
 	if (i9xx_has_pps(dev_priv))
-		assert_pps_unlocked(dev_priv, pipe);
+		assert_pps_unlocked(display, pipe);
 
 	intel_de_write(dev_priv, FP0(pipe), hw_state->fp0);
 	intel_de_write(dev_priv, FP1(pipe), hw_state->fp1);
@@ -2004,6 +2005,7 @@ static void _vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 
 void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
@@ -2012,7 +2014,7 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
 
 	/* PLL is protected by panel, make sure we can write it */
-	assert_pps_unlocked(dev_priv, pipe);
+	assert_pps_unlocked(display, pipe);
 
 	/* Enable Refclk */
 	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
@@ -2150,6 +2152,7 @@ static void _chv_enable_pll(const struct intel_crtc_state *crtc_state)
 
 void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
@@ -2158,7 +2161,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
 
 	/* PLL is protected by panel, make sure we can write it */
-	assert_pps_unlocked(dev_priv, pipe);
+	assert_pps_unlocked(display, pipe);
 
 	/* Enable Refclk and SSC */
 	intel_de_write(dev_priv, DPLL(dev_priv, pipe),
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 0d48b9bec29c..f13ab680c2cf 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -358,6 +358,7 @@ void ilk_pch_pre_enable(struct intel_atomic_state *state,
 void ilk_pch_enable(struct intel_atomic_state *state,
 		    struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -399,7 +400,7 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 	intel_enable_shared_dpll(crtc_state);
 
 	/* set transcoder timing, panel must allow it */
-	assert_pps_unlocked(dev_priv, pipe);
+	assert_pps_unlocked(display, pipe);
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		intel_pch_transcoder_set_m1_n1(crtc, &crtc_state->dp_m_n);
 		intel_pch_transcoder_set_m2_n2(crtc, &crtc_state->dp_m2_n2);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 1e87ce95c85d..feddc30e3375 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -18,7 +18,7 @@
 #include "intel_pps_regs.h"
 #include "intel_quirks.h"
 
-static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
+static void vlv_steal_power_sequencer(struct intel_display *display,
 				      enum pipe pipe);
 
 static void pps_init_delays(struct intel_dp *intel_dp);
@@ -63,14 +63,15 @@ static const char *pps_name(struct intel_dp *intel_dp)
 
 intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	intel_wakeref_t wakeref;
 
 	/*
 	 * See intel_pps_reset_all() why we need a power domain reference here.
 	 */
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DISPLAY_CORE);
-	mutex_lock(&dev_priv->display.pps.mutex);
+	mutex_lock(&display->pps.mutex);
 
 	return wakeref;
 }
@@ -78,9 +79,10 @@ intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp)
 intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp,
 				 intel_wakeref_t wakeref)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	mutex_unlock(&dev_priv->display.pps.mutex);
+	mutex_unlock(&display->pps.mutex);
 	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return 0;
@@ -89,7 +91,8 @@ intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp,
 static void
 vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum pipe pipe = intel_dp->pps.pps_pipe;
 	bool pll_enabled, release_cl_override = false;
@@ -97,14 +100,14 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	enum dpio_channel ch = vlv_pipe_to_channel(pipe);
 	u32 DP;
 
-	if (drm_WARN(&dev_priv->drm,
-		     intel_de_read(dev_priv, intel_dp->output_reg) & DP_PORT_EN,
+	if (drm_WARN(display->drm,
+		     intel_de_read(display, intel_dp->output_reg) & DP_PORT_EN,
 		     "skipping %s kick due to [ENCODER:%d:%s] being active\n",
 		     pps_name(intel_dp),
 		     dig_port->base.base.base.id, dig_port->base.base.name))
 		return;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "kicking %s for [ENCODER:%d:%s]\n",
 		    pps_name(intel_dp),
 		    dig_port->base.base.base.id, dig_port->base.base.name);
@@ -112,7 +115,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	/* Preserve the BIOS-computed detected bit. This is
 	 * supposed to be read-only.
 	 */
-	DP = intel_de_read(dev_priv, intel_dp->output_reg) & DP_DETECTED;
+	DP = intel_de_read(display, intel_dp->output_reg) & DP_DETECTED;
 	DP |= DP_VOLTAGE_0_4 | DP_PRE_EMPHASIS_0;
 	DP |= DP_PORT_WIDTH(1);
 	DP |= DP_LINK_TRAIN_PAT_1;
@@ -122,7 +125,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	else
 		DP |= DP_PIPE_SEL(pipe);
 
-	pll_enabled = intel_de_read(dev_priv, DPLL(dev_priv, pipe)) & DPLL_VCO_ENABLE;
+	pll_enabled = intel_de_read(display, DPLL(display, pipe)) & DPLL_VCO_ENABLE;
 
 	/*
 	 * The DPLL for the pipe must be enabled for this to work.
@@ -133,7 +136,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 			!chv_phy_powergate_ch(dev_priv, phy, ch, true);
 
 		if (vlv_force_pll_on(dev_priv, pipe, vlv_get_dpll(dev_priv))) {
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"Failed to force on PLL for pipe %c!\n",
 				pipe_name(pipe));
 			return;
@@ -146,14 +149,14 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	 * to make this power sequencer lock onto the port.
 	 * Otherwise even VDD force bit won't work.
 	 */
-	intel_de_write(dev_priv, intel_dp->output_reg, DP);
-	intel_de_posting_read(dev_priv, intel_dp->output_reg);
+	intel_de_write(display, intel_dp->output_reg, DP);
+	intel_de_posting_read(display, intel_dp->output_reg);
 
-	intel_de_write(dev_priv, intel_dp->output_reg, DP | DP_PORT_EN);
-	intel_de_posting_read(dev_priv, intel_dp->output_reg);
+	intel_de_write(display, intel_dp->output_reg, DP | DP_PORT_EN);
+	intel_de_posting_read(display, intel_dp->output_reg);
 
-	intel_de_write(dev_priv, intel_dp->output_reg, DP & ~DP_PORT_EN);
-	intel_de_posting_read(dev_priv, intel_dp->output_reg);
+	intel_de_write(display, intel_dp->output_reg, DP & ~DP_PORT_EN);
+	intel_de_posting_read(display, intel_dp->output_reg);
 
 	if (!pll_enabled) {
 		vlv_force_pll_off(dev_priv, pipe);
@@ -163,7 +166,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	}
 }
 
-static enum pipe vlv_find_free_pps(struct drm_i915_private *dev_priv)
+static enum pipe vlv_find_free_pps(struct intel_display *display)
 {
 	struct intel_encoder *encoder;
 	unsigned int pipes = (1 << PIPE_A) | (1 << PIPE_B);
@@ -172,11 +175,11 @@ static enum pipe vlv_find_free_pps(struct drm_i915_private *dev_priv)
 	 * We don't have power sequencer currently.
 	 * Pick one that's not used by other ports.
 	 */
-	for_each_intel_dp(&dev_priv->drm, encoder) {
+	for_each_intel_dp(display->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		if (encoder->type == INTEL_OUTPUT_EDP) {
-			drm_WARN_ON(&dev_priv->drm,
+			drm_WARN_ON(display->drm,
 				    intel_dp->pps.active_pipe != INVALID_PIPE &&
 				    intel_dp->pps.active_pipe !=
 				    intel_dp->pps.pps_pipe);
@@ -184,7 +187,7 @@ static enum pipe vlv_find_free_pps(struct drm_i915_private *dev_priv)
 			if (intel_dp->pps.pps_pipe != INVALID_PIPE)
 				pipes &= ~(1 << intel_dp->pps.pps_pipe);
 		} else {
-			drm_WARN_ON(&dev_priv->drm,
+			drm_WARN_ON(display->drm,
 				    intel_dp->pps.pps_pipe != INVALID_PIPE);
 
 			if (intel_dp->pps.active_pipe != INVALID_PIPE)
@@ -201,34 +204,34 @@ static enum pipe vlv_find_free_pps(struct drm_i915_private *dev_priv)
 static enum pipe
 vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum pipe pipe;
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
 	/* We should never land here with regular DP ports */
-	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
+	drm_WARN_ON(display->drm, !intel_dp_is_edp(intel_dp));
 
-	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.active_pipe != INVALID_PIPE &&
+	drm_WARN_ON(display->drm, intel_dp->pps.active_pipe != INVALID_PIPE &&
 		    intel_dp->pps.active_pipe != intel_dp->pps.pps_pipe);
 
 	if (intel_dp->pps.pps_pipe != INVALID_PIPE)
 		return intel_dp->pps.pps_pipe;
 
-	pipe = vlv_find_free_pps(dev_priv);
+	pipe = vlv_find_free_pps(display);
 
 	/*
 	 * Didn't find one. This should not happen since there
 	 * are two power sequencers and up to two eDP ports.
 	 */
-	if (drm_WARN_ON(&dev_priv->drm, pipe == INVALID_PIPE))
+	if (drm_WARN_ON(display->drm, pipe == INVALID_PIPE))
 		pipe = PIPE_A;
 
-	vlv_steal_power_sequencer(dev_priv, pipe);
+	vlv_steal_power_sequencer(display, pipe);
 	intel_dp->pps.pps_pipe = pipe;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "picked %s for [ENCODER:%d:%s]\n",
 		    pps_name(intel_dp),
 		    dig_port->base.base.base.id, dig_port->base.base.name);
@@ -249,13 +252,13 @@ vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
 static int
 bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	int pps_idx = intel_dp->pps.pps_idx;
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
 	/* We should never land here with regular DP ports */
-	drm_WARN_ON(&dev_priv->drm, !intel_dp_is_edp(intel_dp));
+	drm_WARN_ON(display->drm, !intel_dp_is_edp(intel_dp));
 
 	if (!intel_dp->pps.pps_reset)
 		return pps_idx;
@@ -271,37 +274,38 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
 	return pps_idx;
 }
 
-typedef bool (*pps_check)(struct drm_i915_private *dev_priv, int pps_idx);
+typedef bool (*pps_check)(struct intel_display *display, int pps_idx);
 
-static bool pps_has_pp_on(struct drm_i915_private *dev_priv, int pps_idx)
+static bool pps_has_pp_on(struct intel_display *display, int pps_idx)
 {
-	return intel_de_read(dev_priv, PP_STATUS(dev_priv, pps_idx)) & PP_ON;
+	return intel_de_read(display, PP_STATUS(display, pps_idx)) & PP_ON;
 }
 
-static bool pps_has_vdd_on(struct drm_i915_private *dev_priv, int pps_idx)
+static bool pps_has_vdd_on(struct intel_display *display, int pps_idx)
 {
-	return intel_de_read(dev_priv, PP_CONTROL(dev_priv, pps_idx)) & EDP_FORCE_VDD;
+	return intel_de_read(display, PP_CONTROL(display, pps_idx)) & EDP_FORCE_VDD;
 }
 
-static bool pps_any(struct drm_i915_private *dev_priv, int pps_idx)
+static bool pps_any(struct intel_display *display, int pps_idx)
 {
 	return true;
 }
 
 static enum pipe
-vlv_initial_pps_pipe(struct drm_i915_private *dev_priv,
+vlv_initial_pps_pipe(struct intel_display *display,
 		     enum port port, pps_check check)
 {
 	enum pipe pipe;
 
 	for (pipe = PIPE_A; pipe <= PIPE_B; pipe++) {
-		u32 port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(dev_priv, pipe)) &
+		u32 port_sel = intel_de_read(display,
+					     PP_ON_DELAYS(display, pipe)) &
 			PANEL_PORT_SELECT_MASK;
 
 		if (port_sel != PANEL_PORT_SELECT_VLV(port))
 			continue;
 
-		if (!check(dev_priv, pipe))
+		if (!check(display, pipe))
 			continue;
 
 		return pipe;
@@ -313,41 +317,43 @@ vlv_initial_pps_pipe(struct drm_i915_private *dev_priv,
 static void
 vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum port port = dig_port->base.port;
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
 	/* try to find a pipe with this port selected */
 	/* first pick one where the panel is on */
-	intel_dp->pps.pps_pipe = vlv_initial_pps_pipe(dev_priv, port,
+	intel_dp->pps.pps_pipe = vlv_initial_pps_pipe(display, port,
 						      pps_has_pp_on);
 	/* didn't find one? pick one where vdd is on */
 	if (intel_dp->pps.pps_pipe == INVALID_PIPE)
-		intel_dp->pps.pps_pipe = vlv_initial_pps_pipe(dev_priv, port,
+		intel_dp->pps.pps_pipe = vlv_initial_pps_pipe(display, port,
 							      pps_has_vdd_on);
 	/* didn't find one? pick one with just the correct port */
 	if (intel_dp->pps.pps_pipe == INVALID_PIPE)
-		intel_dp->pps.pps_pipe = vlv_initial_pps_pipe(dev_priv, port,
+		intel_dp->pps.pps_pipe = vlv_initial_pps_pipe(display, port,
 							      pps_any);
 
 	/* didn't find one? just let vlv_power_sequencer_pipe() pick one when needed */
 	if (intel_dp->pps.pps_pipe == INVALID_PIPE) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "[ENCODER:%d:%s] no initial power sequencer\n",
 			    dig_port->base.base.base.id, dig_port->base.base.name);
 		return;
 	}
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "[ENCODER:%d:%s] initial power sequencer: %s\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
 		    pps_name(intel_dp));
 }
 
-static int intel_num_pps(struct drm_i915_private *i915)
+static int intel_num_pps(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		return 2;
 
@@ -368,23 +374,24 @@ static int intel_num_pps(struct drm_i915_private *i915)
 
 static bool intel_pps_is_valid(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (intel_dp->pps.pps_idx == 1 &&
 	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
 	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
-		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
+		return intel_de_read(display, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
 
 	return true;
 }
 
 static int
-bxt_initial_pps_idx(struct drm_i915_private *i915, pps_check check)
+bxt_initial_pps_idx(struct intel_display *display, pps_check check)
 {
-	int pps_idx, pps_num = intel_num_pps(i915);
+	int pps_idx, pps_num = intel_num_pps(display);
 
 	for (pps_idx = 0; pps_idx < pps_num; pps_idx++) {
-		if (check(i915, pps_idx))
+		if (check(display, pps_idx))
 			return pps_idx;
 	}
 
@@ -394,11 +401,12 @@ bxt_initial_pps_idx(struct drm_i915_private *i915, pps_check check)
 static bool
 pps_initial_setup(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct intel_connector *connector = intel_dp->attached_connector;
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
-	lockdep_assert_held(&i915->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
 		vlv_initial_power_sequencer_setup(intel_dp);
@@ -406,30 +414,30 @@ pps_initial_setup(struct intel_dp *intel_dp)
 	}
 
 	/* first ask the VBT */
-	if (intel_num_pps(i915) > 1)
+	if (intel_num_pps(display) > 1)
 		intel_dp->pps.pps_idx = connector->panel.vbt.backlight.controller;
 	else
 		intel_dp->pps.pps_idx = 0;
 
-	if (drm_WARN_ON(&i915->drm, intel_dp->pps.pps_idx >= intel_num_pps(i915)))
+	if (drm_WARN_ON(display->drm, intel_dp->pps.pps_idx >= intel_num_pps(display)))
 		intel_dp->pps.pps_idx = -1;
 
 	/* VBT wasn't parsed yet? pick one where the panel is on */
 	if (intel_dp->pps.pps_idx < 0)
-		intel_dp->pps.pps_idx = bxt_initial_pps_idx(i915, pps_has_pp_on);
+		intel_dp->pps.pps_idx = bxt_initial_pps_idx(display, pps_has_pp_on);
 	/* didn't find one? pick one where vdd is on */
 	if (intel_dp->pps.pps_idx < 0)
-		intel_dp->pps.pps_idx = bxt_initial_pps_idx(i915, pps_has_vdd_on);
+		intel_dp->pps.pps_idx = bxt_initial_pps_idx(display, pps_has_vdd_on);
 	/* didn't find one? pick any */
 	if (intel_dp->pps.pps_idx < 0) {
-		intel_dp->pps.pps_idx = bxt_initial_pps_idx(i915, pps_any);
+		intel_dp->pps.pps_idx = bxt_initial_pps_idx(display, pps_any);
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[ENCODER:%d:%s] no initial power sequencer, assuming %s\n",
 			    encoder->base.base.id, encoder->base.name,
 			    pps_name(intel_dp));
 	} else {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[ENCODER:%d:%s] initial power sequencer: %s\n",
 			    encoder->base.base.id, encoder->base.name,
 			    pps_name(intel_dp));
@@ -438,14 +446,15 @@ pps_initial_setup(struct intel_dp *intel_dp)
 	return intel_pps_is_valid(intel_dp);
 }
 
-void intel_pps_reset_all(struct drm_i915_private *dev_priv)
+void intel_pps_reset_all(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder;
 
-	if (drm_WARN_ON(&dev_priv->drm, !IS_LP(dev_priv)))
+	if (drm_WARN_ON(display->drm, !IS_LP(dev_priv)))
 		return;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	/*
@@ -458,16 +467,16 @@ void intel_pps_reset_all(struct drm_i915_private *dev_priv)
 	 * should use them always.
 	 */
 
-	for_each_intel_dp(&dev_priv->drm, encoder) {
+	for_each_intel_dp(display->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-		drm_WARN_ON(&dev_priv->drm,
+		drm_WARN_ON(display->drm,
 			    intel_dp->pps.active_pipe != INVALID_PIPE);
 
 		if (encoder->type != INTEL_OUTPUT_EDP)
 			continue;
 
-		if (DISPLAY_VER(dev_priv) >= 9)
+		if (DISPLAY_VER(display) >= 9)
 			intel_dp->pps.pps_reset = true;
 		else
 			intel_dp->pps.pps_pipe = INVALID_PIPE;
@@ -485,7 +494,8 @@ struct pps_registers {
 static void intel_pps_get_registers(struct intel_dp *intel_dp,
 				    struct pps_registers *regs)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int pps_idx;
 
 	memset(regs, 0, sizeof(*regs));
@@ -497,17 +507,17 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 	else
 		pps_idx = intel_dp->pps.pps_idx;
 
-	regs->pp_ctrl = PP_CONTROL(dev_priv, pps_idx);
-	regs->pp_stat = PP_STATUS(dev_priv, pps_idx);
-	regs->pp_on = PP_ON_DELAYS(dev_priv, pps_idx);
-	regs->pp_off = PP_OFF_DELAYS(dev_priv, pps_idx);
+	regs->pp_ctrl = PP_CONTROL(display, pps_idx);
+	regs->pp_stat = PP_STATUS(display, pps_idx);
+	regs->pp_on = PP_ON_DELAYS(display, pps_idx);
+	regs->pp_off = PP_OFF_DELAYS(display, pps_idx);
 
 	/* Cycle delay moved from PP_DIVISOR to PP_CONTROL */
 	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ||
 	    INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
 		regs->pp_div = INVALID_MMIO_REG;
 	else
-		regs->pp_div = PP_DIVISOR(dev_priv, pps_idx);
+		regs->pp_div = PP_DIVISOR(display, pps_idx);
 }
 
 static i915_reg_t
@@ -532,49 +542,51 @@ _pp_stat_reg(struct intel_dp *intel_dp)
 
 static bool edp_have_panel_power(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
 	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
 	    intel_dp->pps.pps_pipe == INVALID_PIPE)
 		return false;
 
-	return (intel_de_read(dev_priv, _pp_stat_reg(intel_dp)) & PP_ON) != 0;
+	return (intel_de_read(display, _pp_stat_reg(intel_dp)) & PP_ON) != 0;
 }
 
 static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
 	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
 	    intel_dp->pps.pps_pipe == INVALID_PIPE)
 		return false;
 
-	return intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp)) & EDP_FORCE_VDD;
+	return intel_de_read(display, _pp_ctrl_reg(intel_dp)) & EDP_FORCE_VDD;
 }
 
 void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
 	if (!edp_have_panel_power(intel_dp) && !edp_have_panel_vdd(intel_dp)) {
-		drm_WARN(&dev_priv->drm, 1,
+		drm_WARN(display->drm, 1,
 			 "[ENCODER:%d:%s] %s powered off while attempting AUX CH communication.\n",
 			 dig_port->base.base.base.id, dig_port->base.base.name,
 			 pps_name(intel_dp));
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "[ENCODER:%d:%s] %s PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
 			    dig_port->base.base.base.id, dig_port->base.base.name,
 			    pps_name(intel_dp),
-			    intel_de_read(dev_priv, _pp_stat_reg(intel_dp)),
-			    intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp)));
+			    intel_de_read(display, _pp_stat_reg(intel_dp)),
+			    intel_de_read(display, _pp_ctrl_reg(intel_dp)));
 	}
 }
 
@@ -592,42 +604,43 @@ static void intel_pps_verify_state(struct intel_dp *intel_dp);
 static void wait_panel_status(struct intel_dp *intel_dp,
 			      u32 mask, u32 value)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
 	intel_pps_verify_state(intel_dp);
 
 	pp_stat_reg = _pp_stat_reg(intel_dp);
 	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "[ENCODER:%d:%s] %s mask: 0x%08x value: 0x%08x PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
 		    pps_name(intel_dp),
 		    mask, value,
-		    intel_de_read(dev_priv, pp_stat_reg),
-		    intel_de_read(dev_priv, pp_ctrl_reg));
+		    intel_de_read(display, pp_stat_reg),
+		    intel_de_read(display, pp_ctrl_reg));
 
-	if (intel_de_wait(dev_priv, pp_stat_reg, mask, value, 5000))
-		drm_err(&dev_priv->drm,
+	if (intel_de_wait(display, pp_stat_reg, mask, value, 5000))
+		drm_err(display->drm,
 			"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
 			dig_port->base.base.base.id, dig_port->base.base.name,
 			pps_name(intel_dp),
-			intel_de_read(dev_priv, pp_stat_reg),
-			intel_de_read(dev_priv, pp_ctrl_reg));
+			intel_de_read(display, pp_stat_reg),
+			intel_de_read(display, pp_ctrl_reg));
 
-	drm_dbg_kms(&dev_priv->drm, "Wait complete\n");
+	drm_dbg_kms(display->drm, "Wait complete\n");
 }
 
 static void wait_panel_on(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
-	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] %s wait for panel power on\n",
+	drm_dbg_kms(display->drm,
+		    "[ENCODER:%d:%s] %s wait for panel power on\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
 		    pps_name(intel_dp));
 	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE);
@@ -635,10 +648,11 @@ static void wait_panel_on(struct intel_dp *intel_dp)
 
 static void wait_panel_off(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
-	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] %s wait for panel power off time\n",
+	drm_dbg_kms(display->drm,
+		    "[ENCODER:%d:%s] %s wait for panel power off time\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
 		    pps_name(intel_dp));
 	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE);
@@ -646,12 +660,13 @@ static void wait_panel_off(struct intel_dp *intel_dp)
 
 static void wait_panel_power_cycle(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	ktime_t panel_power_on_time;
 	s64 panel_power_off_duration;
 
-	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] %s wait for panel power cycle\n",
+	drm_dbg_kms(display->drm,
+		    "[ENCODER:%d:%s] %s wait for panel power cycle\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
 		    pps_name(intel_dp));
 
@@ -698,13 +713,13 @@ static void edp_wait_backlight_off(struct intel_dp *intel_dp)
 
 static  u32 ilk_get_pp_control(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	u32 control;
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
-	control = intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp));
-	if (drm_WARN_ON(&dev_priv->drm, !HAS_DDI(dev_priv) &&
+	control = intel_de_read(display, _pp_ctrl_reg(intel_dp));
+	if (drm_WARN_ON(display->drm, !HAS_DDI(display) &&
 			(control & PANEL_UNLOCK_MASK) != PANEL_UNLOCK_REGS)) {
 		control &= ~PANEL_UNLOCK_MASK;
 		control |= PANEL_UNLOCK_REGS;
@@ -719,13 +734,14 @@ static  u32 ilk_get_pp_control(struct intel_dp *intel_dp)
  */
 bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	u32 pp;
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
 	bool need_to_disable = !intel_dp->pps.want_panel_vdd;
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return false;
@@ -736,14 +752,14 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 	if (edp_have_panel_vdd(intel_dp))
 		return need_to_disable;
 
-	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.vdd_wakeref);
+	drm_WARN_ON(display->drm, intel_dp->pps.vdd_wakeref);
 	intel_dp->pps.vdd_wakeref = intel_display_power_get(dev_priv,
 							    intel_aux_power_domain(dig_port));
 
 	pp_stat_reg = _pp_stat_reg(intel_dp);
 	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
 
-	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s turning VDD on\n",
+	drm_dbg_kms(display->drm, "[ENCODER:%d:%s] %s turning VDD on\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
 		    pps_name(intel_dp));
 
@@ -753,18 +769,19 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 	pp = ilk_get_pp_control(intel_dp);
 	pp |= EDP_FORCE_VDD;
 
-	intel_de_write(dev_priv, pp_ctrl_reg, pp);
-	intel_de_posting_read(dev_priv, pp_ctrl_reg);
-	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+	intel_de_write(display, pp_ctrl_reg, pp);
+	intel_de_posting_read(display, pp_ctrl_reg);
+	drm_dbg_kms(display->drm,
+		    "[ENCODER:%d:%s] %s PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
 		    pps_name(intel_dp),
-		    intel_de_read(dev_priv, pp_stat_reg),
-		    intel_de_read(dev_priv, pp_ctrl_reg));
+		    intel_de_read(display, pp_stat_reg),
+		    intel_de_read(display, pp_ctrl_reg));
 	/*
 	 * If the panel wasn't on, delay before accessing aux channel
 	 */
 	if (!edp_have_panel_power(intel_dp)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "[ENCODER:%d:%s] %s panel power wasn't enabled\n",
 			    dig_port->base.base.base.id, dig_port->base.base.name,
 			    pps_name(intel_dp));
@@ -782,7 +799,8 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
  */
 void intel_pps_vdd_on(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t wakeref;
 	bool vdd;
 
@@ -800,20 +818,20 @@ void intel_pps_vdd_on(struct intel_dp *intel_dp)
 
 static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	struct intel_digital_port *dig_port =
-		dp_to_dig_port(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	u32 pp;
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
-	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.want_panel_vdd);
+	drm_WARN_ON(display->drm, intel_dp->pps.want_panel_vdd);
 
 	if (!edp_have_panel_vdd(intel_dp))
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s turning VDD off\n",
+	drm_dbg_kms(display->drm, "[ENCODER:%d:%s] %s turning VDD off\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
 		    pps_name(intel_dp));
 
@@ -823,15 +841,16 @@ static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
 	pp_stat_reg = _pp_stat_reg(intel_dp);
 
-	intel_de_write(dev_priv, pp_ctrl_reg, pp);
-	intel_de_posting_read(dev_priv, pp_ctrl_reg);
+	intel_de_write(display, pp_ctrl_reg, pp);
+	intel_de_posting_read(display, pp_ctrl_reg);
 
 	/* Make sure sequencer is idle before allowing subsequent activity */
-	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+	drm_dbg_kms(display->drm,
+		    "[ENCODER:%d:%s] %s PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
 		    pps_name(intel_dp),
-		    intel_de_read(dev_priv, pp_stat_reg),
-		    intel_de_read(dev_priv, pp_ctrl_reg));
+		    intel_de_read(display, pp_stat_reg),
+		    intel_de_read(display, pp_ctrl_reg));
 
 	if ((pp & PANEL_POWER_ON) == 0)
 		intel_dp->pps.panel_power_off_time = ktime_get_boottime();
@@ -872,7 +891,8 @@ static void edp_panel_vdd_work(struct work_struct *__work)
 
 static void edp_panel_vdd_schedule_off(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	unsigned long delay;
 
 	/*
@@ -899,9 +919,10 @@ static void edp_panel_vdd_schedule_off(struct intel_dp *intel_dp)
  */
 void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
@@ -922,21 +943,22 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
 
 void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 pp;
 	i915_reg_t pp_ctrl_reg;
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s turn panel power on\n",
+	drm_dbg_kms(display->drm, "[ENCODER:%d:%s] %s turn panel power on\n",
 		    dp_to_dig_port(intel_dp)->base.base.base.id,
 		    dp_to_dig_port(intel_dp)->base.base.name,
 		    pps_name(intel_dp));
 
-	if (drm_WARN(&dev_priv->drm, edp_have_panel_power(intel_dp),
+	if (drm_WARN(display->drm, edp_have_panel_power(intel_dp),
 		     "[ENCODER:%d:%s] %s panel power already on\n",
 		     dp_to_dig_port(intel_dp)->base.base.base.id,
 		     dp_to_dig_port(intel_dp)->base.base.name,
@@ -950,36 +972,36 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 	if (IS_IRONLAKE(dev_priv)) {
 		/* ILK workaround: disable reset around power sequence */
 		pp &= ~PANEL_POWER_RESET;
-		intel_de_write(dev_priv, pp_ctrl_reg, pp);
-		intel_de_posting_read(dev_priv, pp_ctrl_reg);
+		intel_de_write(display, pp_ctrl_reg, pp);
+		intel_de_posting_read(display, pp_ctrl_reg);
 	}
 
 	/*
 	 * WA: 22019252566
 	 * Disable DPLS gating around power sequence.
 	 */
-	if (IS_DISPLAY_VER(dev_priv, 13, 14))
-		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
+	if (IS_DISPLAY_VER(display, 13, 14))
+		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D,
 			     0, PCH_DPLSUNIT_CLOCK_GATE_DISABLE);
 
 	pp |= PANEL_POWER_ON;
 	if (!IS_IRONLAKE(dev_priv))
 		pp |= PANEL_POWER_RESET;
 
-	intel_de_write(dev_priv, pp_ctrl_reg, pp);
-	intel_de_posting_read(dev_priv, pp_ctrl_reg);
+	intel_de_write(display, pp_ctrl_reg, pp);
+	intel_de_posting_read(display, pp_ctrl_reg);
 
 	wait_panel_on(intel_dp);
 	intel_dp->pps.last_power_on = jiffies;
 
-	if (IS_DISPLAY_VER(dev_priv, 13, 14))
-		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
+	if (IS_DISPLAY_VER(display, 13, 14))
+		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D,
 			     PCH_DPLSUNIT_CLOCK_GATE_DISABLE, 0);
 
 	if (IS_IRONLAKE(dev_priv)) {
 		pp |= PANEL_POWER_RESET; /* restore panel reset bit */
-		intel_de_write(dev_priv, pp_ctrl_reg, pp);
-		intel_de_posting_read(dev_priv, pp_ctrl_reg);
+		intel_de_write(display, pp_ctrl_reg, pp);
+		intel_de_posting_read(display, pp_ctrl_reg);
 	}
 }
 
@@ -996,21 +1018,22 @@ void intel_pps_on(struct intel_dp *intel_dp)
 
 void intel_pps_off_unlocked(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	u32 pp;
 	i915_reg_t pp_ctrl_reg;
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s turn panel power off\n",
+	drm_dbg_kms(display->drm, "[ENCODER:%d:%s] %s turn panel power off\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
 		    pps_name(intel_dp));
 
-	drm_WARN(&dev_priv->drm, !intel_dp->pps.want_panel_vdd,
+	drm_WARN(display->drm, !intel_dp->pps.want_panel_vdd,
 		 "[ENCODER:%d:%s] %s need VDD to turn off panel\n",
 		 dig_port->base.base.base.id, dig_port->base.base.name,
 		 pps_name(intel_dp));
@@ -1025,8 +1048,8 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp)
 
 	intel_dp->pps.want_panel_vdd = false;
 
-	intel_de_write(dev_priv, pp_ctrl_reg, pp);
-	intel_de_posting_read(dev_priv, pp_ctrl_reg);
+	intel_de_write(display, pp_ctrl_reg, pp);
+	intel_de_posting_read(display, pp_ctrl_reg);
 
 	wait_panel_off(intel_dp);
 	intel_dp->pps.panel_power_off_time = ktime_get_boottime();
@@ -1051,7 +1074,7 @@ void intel_pps_off(struct intel_dp *intel_dp)
 /* Enable backlight in the panel power control. */
 void intel_pps_backlight_on(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	intel_wakeref_t wakeref;
 
 	/*
@@ -1069,15 +1092,15 @@ void intel_pps_backlight_on(struct intel_dp *intel_dp)
 		pp = ilk_get_pp_control(intel_dp);
 		pp |= EDP_BLC_ENABLE;
 
-		intel_de_write(dev_priv, pp_ctrl_reg, pp);
-		intel_de_posting_read(dev_priv, pp_ctrl_reg);
+		intel_de_write(display, pp_ctrl_reg, pp);
+		intel_de_posting_read(display, pp_ctrl_reg);
 	}
 }
 
 /* Disable backlight in the panel power control. */
 void intel_pps_backlight_off(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	intel_wakeref_t wakeref;
 
 	if (!intel_dp_is_edp(intel_dp))
@@ -1090,8 +1113,8 @@ void intel_pps_backlight_off(struct intel_dp *intel_dp)
 		pp = ilk_get_pp_control(intel_dp);
 		pp &= ~EDP_BLC_ENABLE;
 
-		intel_de_write(dev_priv, pp_ctrl_reg, pp);
-		intel_de_posting_read(dev_priv, pp_ctrl_reg);
+		intel_de_write(display, pp_ctrl_reg, pp);
+		intel_de_posting_read(display, pp_ctrl_reg);
 	}
 
 	intel_dp->pps.last_backlight_off = jiffies;
@@ -1104,7 +1127,7 @@ void intel_pps_backlight_off(struct intel_dp *intel_dp)
  */
 void intel_pps_backlight_power(struct intel_connector *connector, bool enable)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	intel_wakeref_t wakeref;
 	bool is_enabled;
@@ -1115,7 +1138,7 @@ void intel_pps_backlight_power(struct intel_connector *connector, bool enable)
 	if (is_enabled == enable)
 		return;
 
-	drm_dbg_kms(&i915->drm, "panel power control backlight %s\n",
+	drm_dbg_kms(display->drm, "panel power control backlight %s\n",
 		    enable ? "enable" : "disable");
 
 	if (enable)
@@ -1126,14 +1149,14 @@ void intel_pps_backlight_power(struct intel_connector *connector, bool enable)
 
 static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	enum pipe pipe = intel_dp->pps.pps_pipe;
-	i915_reg_t pp_on_reg = PP_ON_DELAYS(dev_priv, pipe);
+	i915_reg_t pp_on_reg = PP_ON_DELAYS(display, pipe);
 
-	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.active_pipe != INVALID_PIPE);
+	drm_WARN_ON(display->drm, intel_dp->pps.active_pipe != INVALID_PIPE);
 
-	if (drm_WARN_ON(&dev_priv->drm, pipe != PIPE_A && pipe != PIPE_B))
+	if (drm_WARN_ON(display->drm, pipe != PIPE_A && pipe != PIPE_B))
 		return;
 
 	intel_pps_vdd_off_sync_unlocked(intel_dp);
@@ -1147,27 +1170,27 @@ static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
 	 * port select always when logically disconnecting a power sequencer
 	 * from a port.
 	 */
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "detaching %s from [ENCODER:%d:%s]\n",
 		    pps_name(intel_dp),
 		    dig_port->base.base.base.id, dig_port->base.base.name);
-	intel_de_write(dev_priv, pp_on_reg, 0);
-	intel_de_posting_read(dev_priv, pp_on_reg);
+	intel_de_write(display, pp_on_reg, 0);
+	intel_de_posting_read(display, pp_on_reg);
 
 	intel_dp->pps.pps_pipe = INVALID_PIPE;
 }
 
-static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
+static void vlv_steal_power_sequencer(struct intel_display *display,
 				      enum pipe pipe)
 {
 	struct intel_encoder *encoder;
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
-	for_each_intel_dp(&dev_priv->drm, encoder) {
+	for_each_intel_dp(display->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-		drm_WARN(&dev_priv->drm, intel_dp->pps.active_pipe == pipe,
+		drm_WARN(display->drm, intel_dp->pps.active_pipe == pipe,
 			 "stealing PPS %c from active [ENCODER:%d:%s]\n",
 			 pipe_name(pipe), encoder->base.base.id,
 			 encoder->base.name);
@@ -1175,7 +1198,7 @@ static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
 		if (intel_dp->pps.pps_pipe != pipe)
 			continue;
 
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "stealing PPS %c from [ENCODER:%d:%s]\n",
 			    pipe_name(pipe), encoder->base.base.id,
 			    encoder->base.name);
@@ -1188,13 +1211,13 @@ static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
 void vlv_pps_init(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
-	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.active_pipe != INVALID_PIPE);
+	drm_WARN_ON(display->drm, intel_dp->pps.active_pipe != INVALID_PIPE);
 
 	if (intel_dp->pps.pps_pipe != INVALID_PIPE &&
 	    intel_dp->pps.pps_pipe != crtc->pipe) {
@@ -1210,7 +1233,7 @@ void vlv_pps_init(struct intel_encoder *encoder,
 	 * We may be stealing the power
 	 * sequencer from another port.
 	 */
-	vlv_steal_power_sequencer(dev_priv, crtc->pipe);
+	vlv_steal_power_sequencer(display, crtc->pipe);
 
 	intel_dp->pps.active_pipe = crtc->pipe;
 
@@ -1220,7 +1243,7 @@ void vlv_pps_init(struct intel_encoder *encoder,
 	/* now it's all ours */
 	intel_dp->pps.pps_pipe = crtc->pipe;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "initializing %s for [ENCODER:%d:%s]\n",
 		    pps_name(intel_dp),
 		    encoder->base.base.id, encoder->base.name);
@@ -1232,10 +1255,11 @@ void vlv_pps_init(struct intel_encoder *encoder,
 
 static void pps_vdd_init(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
 	if (!edp_have_panel_vdd(intel_dp))
 		return;
@@ -1246,11 +1270,11 @@ static void pps_vdd_init(struct intel_dp *intel_dp)
 	 * schedule a vdd off, so we don't hold on to the reference
 	 * indefinitely.
 	 */
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "[ENCODER:%d:%s] %s VDD left on by BIOS, adjusting state tracking\n",
 		    dig_port->base.base.base.id, dig_port->base.base.name,
 		    pps_name(intel_dp));
-	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.vdd_wakeref);
+	drm_WARN_ON(display->drm, intel_dp->pps.vdd_wakeref);
 	intel_dp->pps.vdd_wakeref = intel_display_power_get(dev_priv,
 							    intel_aux_power_domain(dig_port));
 }
@@ -1284,7 +1308,7 @@ static void pps_init_timestamps(struct intel_dp *intel_dp)
 static void
 intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct edp_power_seq *seq)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	u32 pp_on, pp_off, pp_ctl;
 	struct pps_registers regs;
 
@@ -1293,11 +1317,11 @@ intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct edp_power_seq *seq)
 	pp_ctl = ilk_get_pp_control(intel_dp);
 
 	/* Ensure PPS is unlocked */
-	if (!HAS_DDI(dev_priv))
-		intel_de_write(dev_priv, regs.pp_ctrl, pp_ctl);
+	if (!HAS_DDI(display))
+		intel_de_write(display, regs.pp_ctrl, pp_ctl);
 
-	pp_on = intel_de_read(dev_priv, regs.pp_on);
-	pp_off = intel_de_read(dev_priv, regs.pp_off);
+	pp_on = intel_de_read(display, regs.pp_on);
+	pp_off = intel_de_read(display, regs.pp_off);
 
 	/* Pull timing values out of registers */
 	seq->t1_t3 = REG_FIELD_GET(PANEL_POWER_UP_DELAY_MASK, pp_on);
@@ -1308,7 +1332,7 @@ intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct edp_power_seq *seq)
 	if (i915_mmio_reg_valid(regs.pp_div)) {
 		u32 pp_div;
 
-		pp_div = intel_de_read(dev_priv, regs.pp_div);
+		pp_div = intel_de_read(display, regs.pp_div);
 
 		seq->t11_t12 = REG_FIELD_GET(PANEL_POWER_CYCLE_DELAY_MASK, pp_div) * 1000;
 	} else {
@@ -1320,9 +1344,10 @@ static void
 intel_pps_dump_state(struct intel_dp *intel_dp, const char *state_name,
 		     const struct edp_power_seq *seq)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
-	drm_dbg_kms(&i915->drm, "%s t1_t3 %d t8 %d t9 %d t10 %d t11_t12 %d\n",
+	drm_dbg_kms(display->drm,
+		    "%s t1_t3 %d t8 %d t9 %d t10 %d t11_t12 %d\n",
 		    state_name,
 		    seq->t1_t3, seq->t8, seq->t9, seq->t10, seq->t11_t12);
 }
@@ -1330,7 +1355,7 @@ intel_pps_dump_state(struct intel_dp *intel_dp, const char *state_name,
 static void
 intel_pps_verify_state(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct edp_power_seq hw;
 	struct edp_power_seq *sw = &intel_dp->pps.pps_delays;
 
@@ -1338,7 +1363,7 @@ intel_pps_verify_state(struct intel_dp *intel_dp)
 
 	if (hw.t1_t3 != sw->t1_t3 || hw.t8 != sw->t8 || hw.t9 != sw->t9 ||
 	    hw.t10 != sw->t10 || hw.t11_t12 != sw->t11_t12) {
-		drm_err(&i915->drm, "PPS state mismatch\n");
+		drm_err(display->drm, "PPS state mismatch\n");
 		intel_pps_dump_state(intel_dp, "sw", sw);
 		intel_pps_dump_state(intel_dp, "hw", &hw);
 	}
@@ -1353,9 +1378,9 @@ static bool pps_delays_valid(struct edp_power_seq *delays)
 static void pps_init_delays_bios(struct intel_dp *intel_dp,
 				 struct edp_power_seq *bios)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
 	if (!pps_delays_valid(&intel_dp->pps.bios_pps_delays))
 		intel_pps_readout_hw_state(intel_dp, &intel_dp->pps.bios_pps_delays);
@@ -1400,9 +1425,9 @@ static void pps_init_delays_vbt(struct intel_dp *intel_dp,
 static void pps_init_delays_spec(struct intel_dp *intel_dp,
 				 struct edp_power_seq *spec)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
 	/* Upper limits from eDP 1.3 spec. Note that we use the clunky units of
 	 * our hw here, which are all in 100usec. */
@@ -1421,11 +1446,11 @@ static void pps_init_delays_spec(struct intel_dp *intel_dp,
 
 static void pps_init_delays(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct edp_power_seq cur, vbt, spec,
 		*final = &intel_dp->pps.pps_delays;
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
 	/* already initialized? */
 	if (pps_delays_valid(final))
@@ -1455,13 +1480,13 @@ static void pps_init_delays(struct intel_dp *intel_dp)
 	intel_dp->pps.panel_power_cycle_delay = get_delay(t11_t12);
 #undef get_delay
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "panel power up delay %d, power down delay %d, power cycle delay %d\n",
 		    intel_dp->pps.panel_power_up_delay,
 		    intel_dp->pps.panel_power_down_delay,
 		    intel_dp->pps.panel_power_cycle_delay);
 
-	drm_dbg_kms(&dev_priv->drm, "backlight on delay %d, off delay %d\n",
+	drm_dbg_kms(display->drm, "backlight on delay %d, off delay %d\n",
 		    intel_dp->pps.backlight_on_delay,
 		    intel_dp->pps.backlight_off_delay);
 
@@ -1484,14 +1509,15 @@ static void pps_init_delays(struct intel_dp *intel_dp)
 
 static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 pp_on, pp_off, port_sel = 0;
-	int div = DISPLAY_RUNTIME_INFO(dev_priv)->rawclk_freq / 1000;
+	int div = DISPLAY_RUNTIME_INFO(display)->rawclk_freq / 1000;
 	struct pps_registers regs;
 	enum port port = dp_to_dig_port(intel_dp)->base.port;
 	const struct edp_power_seq *seq = &intel_dp->pps.pps_delays;
 
-	lockdep_assert_held(&dev_priv->display.pps.mutex);
+	lockdep_assert_held(&display->pps.mutex);
 
 	intel_pps_get_registers(intel_dp, &regs);
 
@@ -1510,16 +1536,16 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 	if (force_disable_vdd) {
 		u32 pp = ilk_get_pp_control(intel_dp);
 
-		drm_WARN(&dev_priv->drm, pp & PANEL_POWER_ON,
+		drm_WARN(display->drm, pp & PANEL_POWER_ON,
 			 "Panel power already on\n");
 
 		if (pp & EDP_FORCE_VDD)
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "VDD already on, disabling first\n");
 
 		pp &= ~EDP_FORCE_VDD;
 
-		intel_de_write(dev_priv, regs.pp_ctrl, pp);
+		intel_de_write(display, regs.pp_ctrl, pp);
 	}
 
 	pp_on = REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, seq->t1_t3) |
@@ -1550,32 +1576,33 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 
 	pp_on |= port_sel;
 
-	intel_de_write(dev_priv, regs.pp_on, pp_on);
-	intel_de_write(dev_priv, regs.pp_off, pp_off);
+	intel_de_write(display, regs.pp_on, pp_on);
+	intel_de_write(display, regs.pp_off, pp_off);
 
 	/*
 	 * Compute the divisor for the pp clock, simply match the Bspec formula.
 	 */
 	if (i915_mmio_reg_valid(regs.pp_div))
-		intel_de_write(dev_priv, regs.pp_div,
+		intel_de_write(display, regs.pp_div,
 			       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, (100 * div) / 2 - 1) | REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000)));
 	else
-		intel_de_rmw(dev_priv, regs.pp_ctrl, BXT_POWER_CYCLE_DELAY_MASK,
+		intel_de_rmw(display, regs.pp_ctrl, BXT_POWER_CYCLE_DELAY_MASK,
 			     REG_FIELD_PREP(BXT_POWER_CYCLE_DELAY_MASK,
 					    DIV_ROUND_UP(seq->t11_t12, 1000)));
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "panel power sequencer register settings: PP_ON %#x, PP_OFF %#x, PP_DIV %#x\n",
-		    intel_de_read(dev_priv, regs.pp_on),
-		    intel_de_read(dev_priv, regs.pp_off),
+		    intel_de_read(display, regs.pp_on),
+		    intel_de_read(display, regs.pp_off),
 		    i915_mmio_reg_valid(regs.pp_div) ?
-		    intel_de_read(dev_priv, regs.pp_div) :
-		    (intel_de_read(dev_priv, regs.pp_ctrl) & BXT_POWER_CYCLE_DELAY_MASK));
+		    intel_de_read(display, regs.pp_div) :
+		    (intel_de_read(display, regs.pp_ctrl) & BXT_POWER_CYCLE_DELAY_MASK));
 }
 
 void intel_pps_encoder_reset(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t wakeref;
 
 	if (!intel_dp_is_edp(intel_dp))
@@ -1621,17 +1648,19 @@ bool intel_pps_init(struct intel_dp *intel_dp)
 
 static void pps_init_late(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct intel_connector *connector = intel_dp->attached_connector;
 
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		return;
 
-	if (intel_num_pps(i915) < 2)
+	if (intel_num_pps(display) < 2)
 		return;
 
-	drm_WARN(&i915->drm, connector->panel.vbt.backlight.controller >= 0 &&
+	drm_WARN(display->drm,
+		 connector->panel.vbt.backlight.controller >= 0 &&
 		 intel_dp->pps.pps_idx != connector->panel.vbt.backlight.controller,
 		 "[ENCODER:%d:%s] power sequencer mismatch: %d (initial) vs. %d (VBT)\n",
 		 encoder->base.base.id, encoder->base.name,
@@ -1660,32 +1689,34 @@ void intel_pps_init_late(struct intel_dp *intel_dp)
 	}
 }
 
-void intel_pps_unlock_regs_wa(struct drm_i915_private *dev_priv)
+void intel_pps_unlock_regs_wa(struct intel_display *display)
 {
 	int pps_num;
 	int pps_idx;
 
-	if (!HAS_DISPLAY(dev_priv) || HAS_DDI(dev_priv))
+	if (!HAS_DISPLAY(display) || HAS_DDI(display))
 		return;
 	/*
 	 * This w/a is needed at least on CPT/PPT, but to be sure apply it
 	 * everywhere where registers can be write protected.
 	 */
-	pps_num = intel_num_pps(dev_priv);
+	pps_num = intel_num_pps(display);
 
 	for (pps_idx = 0; pps_idx < pps_num; pps_idx++)
-		intel_de_rmw(dev_priv, PP_CONTROL(dev_priv, pps_idx),
+		intel_de_rmw(display, PP_CONTROL(display, pps_idx),
 			     PANEL_UNLOCK_MASK, PANEL_UNLOCK_REGS);
 }
 
-void intel_pps_setup(struct drm_i915_private *i915)
+void intel_pps_setup(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	if (HAS_PCH_SPLIT(i915) || IS_GEMINILAKE(i915) || IS_BROXTON(i915))
-		i915->display.pps.mmio_base = PCH_PPS_BASE;
+		display->pps.mmio_base = PCH_PPS_BASE;
 	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
-		i915->display.pps.mmio_base = VLV_PPS_BASE;
+		display->pps.mmio_base = VLV_PPS_BASE;
 	else
-		i915->display.pps.mmio_base = PPS_BASE;
+		display->pps.mmio_base = PPS_BASE;
 }
 
 static int intel_pps_show(struct seq_file *m, void *data)
@@ -1719,21 +1750,23 @@ void intel_pps_connector_debugfs_add(struct intel_connector *connector)
 				    connector, &intel_pps_fops);
 }
 
-void assert_pps_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
+void assert_pps_unlocked(struct intel_display *display, enum pipe pipe)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	i915_reg_t pp_reg;
 	u32 val;
 	enum pipe panel_pipe = INVALID_PIPE;
 	bool locked = true;
 
-	if (drm_WARN_ON(&dev_priv->drm, HAS_DDI(dev_priv)))
+	if (drm_WARN_ON(display->drm, HAS_DDI(display)))
 		return;
 
 	if (HAS_PCH_SPLIT(dev_priv)) {
 		u32 port_sel;
 
-		pp_reg = PP_CONTROL(dev_priv, 0);
-		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(dev_priv, 0)) & PANEL_PORT_SELECT_MASK;
+		pp_reg = PP_CONTROL(display, 0);
+		port_sel = intel_de_read(display, PP_ON_DELAYS(display, 0)) &
+			PANEL_PORT_SELECT_MASK;
 
 		switch (port_sel) {
 		case PANEL_PORT_SELECT_LVDS:
@@ -1754,20 +1787,21 @@ void assert_pps_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
 		}
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		/* presumably write lock depends on pipe, not port select */
-		pp_reg = PP_CONTROL(dev_priv, pipe);
+		pp_reg = PP_CONTROL(display, pipe);
 		panel_pipe = pipe;
 	} else {
 		u32 port_sel;
 
-		pp_reg = PP_CONTROL(dev_priv, 0);
-		port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(dev_priv, 0)) & PANEL_PORT_SELECT_MASK;
+		pp_reg = PP_CONTROL(display, 0);
+		port_sel = intel_de_read(display, PP_ON_DELAYS(display, 0)) &
+			PANEL_PORT_SELECT_MASK;
 
-		drm_WARN_ON(&dev_priv->drm,
+		drm_WARN_ON(display->drm,
 			    port_sel != PANEL_PORT_SELECT_LVDS);
 		intel_lvds_port_enabled(dev_priv, LVDS, &panel_pipe);
 	}
 
-	val = intel_de_read(dev_priv, pp_reg);
+	val = intel_de_read(display, pp_reg);
 	if (!(val & PANEL_POWER_ON) ||
 	    ((val & PANEL_UNLOCK_MASK) == PANEL_UNLOCK_REGS))
 		locked = false;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 07ef96ca8da2..0c5da83a559e 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -11,9 +11,9 @@
 #include "intel_wakeref.h"
 
 enum pipe;
-struct drm_i915_private;
 struct intel_connector;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_dp;
 struct intel_encoder;
 
@@ -43,16 +43,16 @@ void intel_pps_wait_power_cycle(struct intel_dp *intel_dp);
 bool intel_pps_init(struct intel_dp *intel_dp);
 void intel_pps_init_late(struct intel_dp *intel_dp);
 void intel_pps_encoder_reset(struct intel_dp *intel_dp);
-void intel_pps_reset_all(struct drm_i915_private *i915);
+void intel_pps_reset_all(struct intel_display *display);
 
 void vlv_pps_init(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state);
 
-void intel_pps_unlock_regs_wa(struct drm_i915_private *i915);
-void intel_pps_setup(struct drm_i915_private *i915);
+void intel_pps_unlock_regs_wa(struct intel_display *display);
+void intel_pps_setup(struct intel_display *display);
 
 void intel_pps_connector_debugfs_add(struct intel_connector *connector);
 
-void assert_pps_unlocked(struct drm_i915_private *i915, enum pipe pipe);
+void assert_pps_unlocked(struct intel_display *display, enum pipe pipe);
 
 #endif /* __INTEL_PPS_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index ccdd2983cfb5..f3cd3a8b708f 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1167,7 +1167,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	intel_dmc_resume(dev_priv);
 
 	i915_restore_display(dev_priv);
-	intel_pps_unlock_regs_wa(dev_priv);
+	intel_pps_unlock_regs_wa(display);
 
 	intel_init_pch_refclk(dev_priv);
 
-- 
2.39.2

