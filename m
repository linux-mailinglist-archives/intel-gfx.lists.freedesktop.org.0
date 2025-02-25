Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77002A446DC
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 17:50:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E975F10E767;
	Tue, 25 Feb 2025 16:50:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gyA0/DRt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEACE10E767;
 Tue, 25 Feb 2025 16:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740502218; x=1772038218;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=soch2YG5Dk/Wh/cQB2rWNmzMdU5grdAvjD7aO6NqvYc=;
 b=gyA0/DRtqQkNlsHyejD5yEjmHbCXa542pVLYX21myQsqspvfpreNl21e
 WRVzHsuZHWcJXxZ43gaaLI1u1oa/zQ+y71D4THGclzjdXoMykxuIHEsQ+
 CP6ONg7qZtlM7w9j3Dc9lNZJ6wYeOD3WJU9RHjyYnKpdK4S06fxunmu47
 qJG/UOM7Z47i/SL9kz6tPWAJCf0NVLkWvQx+BorsOK5rVSZoZbsouqjtH
 MJbKYhNOde0ocCrKMW0GV/KG861dsEBuepDxQTSNA0XKKXjdTA3darmnU
 IkBsFRPV9ks0d74LojcgJauc9odTrY1B+gzoRRB96rSSCdFPUwLUKL8bM Q==;
X-CSE-ConnectionGUID: UfcgrqCsSO+mn8HyMth0YA==
X-CSE-MsgGUID: fyV1qx5xRS2ylIJ84NwgOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52741792"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52741792"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:50:17 -0800
X-CSE-ConnectionGUID: XC+TEDnQQrS2TVfRrnn//A==
X-CSE-MsgGUID: EiKN4P8eTCe6132Z9xAnJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121691957"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:50:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 12/12] drm/i915/fdi: convert intel_fdi.[ch] to struct
 intel_display
Date: Tue, 25 Feb 2025 18:49:13 +0200
Message-Id: <a1a4ae213a8823734908993f22bdc91517470b19.1740502116.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740502116.git.jani.nikula@intel.com>
References: <cover.1740502116.git.jani.nikula@intel.com>
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
pointer. Convert as much as possible of intel_fdi.[ch] to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_display_driver.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      | 458 +++++++++---------
 drivers/gpu/drm/i915/display/intel_fdi.h      |  16 +-
 .../drm/i915/display/intel_modeset_verify.c   |   3 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |  19 +-
 6 files changed, 247 insertions(+), 257 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 49a67d629c07..217ef2240be8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1568,8 +1568,8 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	if (new_crtc_state->has_pch_encoder) {
 		ilk_pch_pre_enable(state, crtc);
 	} else {
-		assert_fdi_tx_disabled(dev_priv, pipe);
-		assert_fdi_rx_disabled(dev_priv, pipe);
+		assert_fdi_tx_disabled(display, pipe);
+		assert_fdi_rx_disabled(display, pipe);
 	}
 
 	ilk_pfit_enable(new_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index f22672ed556a..68d0753659e8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -200,7 +200,7 @@ void intel_display_driver_early_probe(struct intel_display *display)
 	intel_audio_hooks_init(display);
 	intel_dpll_init_clock_hook(i915);
 	intel_init_display_hooks(i915);
-	intel_fdi_init_hook(i915);
+	intel_fdi_init_hook(display);
 	intel_dmc_wl_init(display);
 }
 
@@ -449,7 +449,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 
 	intel_plane_possible_crtcs_init(display);
 	intel_shared_dpll_init(display);
-	intel_fdi_pll_freq_update(i915);
+	intel_fdi_pll_freq_update(display);
 
 	intel_update_czclk(i915);
 	intel_display_driver_init_hw(display);
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 7e67b3881fd0..40deee0769ae 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -24,10 +24,9 @@ struct intel_fdi_funcs {
 			       const struct intel_crtc_state *crtc_state);
 };
 
-static void assert_fdi_tx(struct drm_i915_private *dev_priv,
+static void assert_fdi_tx(struct intel_display *display,
 			  enum pipe pipe, bool state)
 {
-	struct intel_display *display = &dev_priv->display;
 	bool cur_state;
 
 	if (HAS_DDI(display)) {
@@ -48,20 +47,19 @@ static void assert_fdi_tx(struct drm_i915_private *dev_priv,
 				 str_on_off(state), str_on_off(cur_state));
 }
 
-void assert_fdi_tx_enabled(struct drm_i915_private *i915, enum pipe pipe)
+void assert_fdi_tx_enabled(struct intel_display *display, enum pipe pipe)
 {
-	assert_fdi_tx(i915, pipe, true);
+	assert_fdi_tx(display, pipe, true);
 }
 
-void assert_fdi_tx_disabled(struct drm_i915_private *i915, enum pipe pipe)
+void assert_fdi_tx_disabled(struct intel_display *display, enum pipe pipe)
 {
-	assert_fdi_tx(i915, pipe, false);
+	assert_fdi_tx(display, pipe, false);
 }
 
-static void assert_fdi_rx(struct drm_i915_private *dev_priv,
+static void assert_fdi_rx(struct intel_display *display,
 			  enum pipe pipe, bool state)
 {
-	struct intel_display *display = &dev_priv->display;
 	bool cur_state;
 
 	cur_state = intel_de_read(display, FDI_RX_CTL(pipe)) & FDI_RX_ENABLE;
@@ -70,18 +68,17 @@ static void assert_fdi_rx(struct drm_i915_private *dev_priv,
 				 str_on_off(state), str_on_off(cur_state));
 }
 
-void assert_fdi_rx_enabled(struct drm_i915_private *i915, enum pipe pipe)
+void assert_fdi_rx_enabled(struct intel_display *display, enum pipe pipe)
 {
-	assert_fdi_rx(i915, pipe, true);
+	assert_fdi_rx(display, pipe, true);
 }
 
-void assert_fdi_rx_disabled(struct drm_i915_private *i915, enum pipe pipe)
+void assert_fdi_rx_disabled(struct intel_display *display, enum pipe pipe)
 {
-	assert_fdi_rx(i915, pipe, false);
+	assert_fdi_rx(display, pipe, false);
 }
 
-void assert_fdi_tx_pll_enabled(struct intel_display *display,
-			       enum pipe pipe)
+void assert_fdi_tx_pll_enabled(struct intel_display *display, enum pipe pipe)
 {
 	bool cur_state;
 
@@ -122,9 +119,9 @@ void assert_fdi_rx_pll_disabled(struct intel_display *display, enum pipe pipe)
 void intel_fdi_link_train(struct intel_crtc *crtc,
 			  const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
-	dev_priv->display.funcs.fdi->fdi_link_train(crtc, crtc_state);
+	display->funcs.fdi->fdi_link_train(crtc, crtc_state);
 }
 
 /**
@@ -141,12 +138,11 @@ void intel_fdi_link_train(struct intel_crtc *crtc,
 int intel_fdi_add_affected_crtcs(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state;
 	const struct intel_crtc_state *new_crtc_state;
 	struct intel_crtc *crtc;
 
-	if (!IS_IVYBRIDGE(i915) || INTEL_NUM_PIPES(i915) != 3)
+	if (!display->platform.ivybridge || INTEL_NUM_PIPES(display) != 3)
 		return 0;
 
 	crtc = intel_crtc_for_pipe(display, PIPE_C);
@@ -184,31 +180,29 @@ static int pipe_required_fdi_lanes(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
+static int ilk_check_fdi_lanes(struct intel_display *display, enum pipe pipe,
 			       struct intel_crtc_state *pipe_config,
 			       enum pipe *pipe_to_reduce)
 {
-	struct intel_display *display = to_intel_display(dev);
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_atomic_state *state = pipe_config->uapi.state;
 	struct intel_crtc *other_crtc;
 	struct intel_crtc_state *other_crtc_state;
 
 	*pipe_to_reduce = pipe;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "checking fdi config on pipe %c, lanes %i\n",
 		    pipe_name(pipe), pipe_config->fdi_lanes);
 	if (pipe_config->fdi_lanes > 4) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "invalid fdi lane config on pipe %c: %i lanes\n",
 			    pipe_name(pipe), pipe_config->fdi_lanes);
 		return -EINVAL;
 	}
 
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
+	if (display->platform.haswell || display->platform.broadwell) {
 		if (pipe_config->fdi_lanes > 2) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "only 2 lanes on haswell, required: %i lanes\n",
 				    pipe_config->fdi_lanes);
 			return -EINVAL;
@@ -217,7 +211,7 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 		}
 	}
 
-	if (INTEL_NUM_PIPES(dev_priv) == 2)
+	if (INTEL_NUM_PIPES(display) == 2)
 		return 0;
 
 	/* Ivybridge 3 pipe is really complicated */
@@ -235,7 +229,7 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 			return PTR_ERR(other_crtc_state);
 
 		if (pipe_required_fdi_lanes(other_crtc_state) > 0) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "invalid shared fdi lane config on pipe %c: %i lanes\n",
 				    pipe_name(pipe), pipe_config->fdi_lanes);
 			return -EINVAL;
@@ -243,7 +237,7 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 		return 0;
 	case PIPE_C:
 		if (pipe_config->fdi_lanes > 2) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "only 2 lanes on pipe %c: required %i lanes\n",
 				    pipe_name(pipe), pipe_config->fdi_lanes);
 			return -EINVAL;
@@ -256,7 +250,7 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 			return PTR_ERR(other_crtc_state);
 
 		if (pipe_required_fdi_lanes(other_crtc_state) > 2) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "fdi link B uses too many lanes to enable link C\n");
 
 			*pipe_to_reduce = PIPE_B;
@@ -270,29 +264,30 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 	}
 }
 
-void intel_fdi_pll_freq_update(struct drm_i915_private *i915)
+void intel_fdi_pll_freq_update(struct intel_display *display)
 {
-	if (IS_IRONLAKE(i915)) {
-		u32 fdi_pll_clk =
-			intel_de_read(i915, FDI_PLL_BIOS_0) & FDI_PLL_FB_CLOCK_MASK;
+	if (display->platform.ironlake) {
+		u32 fdi_pll_clk;
+
+		fdi_pll_clk = intel_de_read(display, FDI_PLL_BIOS_0) & FDI_PLL_FB_CLOCK_MASK;
 
-		i915->display.fdi.pll_freq = (fdi_pll_clk + 2) * 10000;
-	} else if (IS_SANDYBRIDGE(i915) || IS_IVYBRIDGE(i915)) {
-		i915->display.fdi.pll_freq = 270000;
+		display->fdi.pll_freq = (fdi_pll_clk + 2) * 10000;
+	} else if (display->platform.sandybridge || display->platform.ivybridge) {
+		display->fdi.pll_freq = 270000;
 	} else {
 		return;
 	}
 
-	drm_dbg(&i915->drm, "FDI PLL freq=%d\n", i915->display.fdi.pll_freq);
+	drm_dbg(display->drm, "FDI PLL freq=%d\n", display->fdi.pll_freq);
 }
 
-int intel_fdi_link_freq(struct drm_i915_private *i915,
+int intel_fdi_link_freq(struct intel_display *display,
 			const struct intel_crtc_state *pipe_config)
 {
-	if (HAS_DDI(i915))
+	if (HAS_DDI(display))
 		return pipe_config->port_clock; /* SPLL */
 	else
-		return i915->display.fdi.pll_freq;
+		return display->fdi.pll_freq;
 }
 
 /**
@@ -326,8 +321,7 @@ bool intel_fdi_compute_pipe_bpp(struct intel_crtc_state *crtc_state)
 int ilk_fdi_compute_config(struct intel_crtc *crtc,
 			   struct intel_crtc_state *pipe_config)
 {
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *i915 = to_i915(dev);
+	struct intel_display *display = to_intel_display(crtc);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int lane, link_bw, fdi_dotclock;
 
@@ -338,7 +332,7 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
 	 * Hence the bw of each lane in terms of the mode signal
 	 * is:
 	 */
-	link_bw = intel_fdi_link_freq(i915, pipe_config);
+	link_bw = intel_fdi_link_freq(display, pipe_config);
 
 	fdi_dotclock = adjusted_mode->crtc_clock;
 
@@ -361,11 +355,11 @@ static int intel_fdi_atomic_check_bw(struct intel_atomic_state *state,
 				     struct intel_crtc_state *pipe_config,
 				     struct intel_link_bw_limits *limits)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe_to_reduce;
 	int ret;
 
-	ret = ilk_check_fdi_lanes(&i915->drm, crtc->pipe, pipe_config,
+	ret = ilk_check_fdi_lanes(display, crtc->pipe, pipe_config,
 				  &pipe_to_reduce);
 	if (ret != -EINVAL)
 		return ret;
@@ -418,48 +412,48 @@ int intel_fdi_atomic_check_link(struct intel_atomic_state *state,
 	return 0;
 }
 
-static void cpt_set_fdi_bc_bifurcation(struct drm_i915_private *dev_priv, bool enable)
+static void cpt_set_fdi_bc_bifurcation(struct intel_display *display, bool enable)
 {
 	u32 temp;
 
-	temp = intel_de_read(dev_priv, SOUTH_CHICKEN1);
+	temp = intel_de_read(display, SOUTH_CHICKEN1);
 	if (!!(temp & FDI_BC_BIFURCATION_SELECT) == enable)
 		return;
 
-	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, FDI_RX_CTL(PIPE_B)) &
+	drm_WARN_ON(display->drm,
+		    intel_de_read(display, FDI_RX_CTL(PIPE_B)) &
 		    FDI_RX_ENABLE);
-	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, FDI_RX_CTL(PIPE_C)) &
+	drm_WARN_ON(display->drm,
+		    intel_de_read(display, FDI_RX_CTL(PIPE_C)) &
 		    FDI_RX_ENABLE);
 
 	temp &= ~FDI_BC_BIFURCATION_SELECT;
 	if (enable)
 		temp |= FDI_BC_BIFURCATION_SELECT;
 
-	drm_dbg_kms(&dev_priv->drm, "%sabling fdi C rx\n",
+	drm_dbg_kms(display->drm, "%sabling fdi C rx\n",
 		    enable ? "en" : "dis");
-	intel_de_write(dev_priv, SOUTH_CHICKEN1, temp);
-	intel_de_posting_read(dev_priv, SOUTH_CHICKEN1);
+	intel_de_write(display, SOUTH_CHICKEN1, temp);
+	intel_de_posting_read(display, SOUTH_CHICKEN1);
 }
 
 static void ivb_update_fdi_bc_bifurcation(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
 	switch (crtc->pipe) {
 	case PIPE_A:
 		break;
 	case PIPE_B:
 		if (crtc_state->fdi_lanes > 2)
-			cpt_set_fdi_bc_bifurcation(dev_priv, false);
+			cpt_set_fdi_bc_bifurcation(display, false);
 		else
-			cpt_set_fdi_bc_bifurcation(dev_priv, true);
+			cpt_set_fdi_bc_bifurcation(display, true);
 
 		break;
 	case PIPE_C:
-		cpt_set_fdi_bc_bifurcation(dev_priv, true);
+		cpt_set_fdi_bc_bifurcation(display, true);
 
 		break;
 	default:
@@ -469,26 +463,26 @@ static void ivb_update_fdi_bc_bifurcation(const struct intel_crtc_state *crtc_st
 
 void intel_fdi_normal_train(struct intel_crtc *crtc)
 {
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(crtc);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe = crtc->pipe;
 	i915_reg_t reg;
 	u32 temp;
 
 	/* enable normal train */
 	reg = FDI_TX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
-	if (IS_IVYBRIDGE(dev_priv)) {
+	temp = intel_de_read(display, reg);
+	if (display->platform.ivybridge) {
 		temp &= ~FDI_LINK_TRAIN_NONE_IVB;
 		temp |= FDI_LINK_TRAIN_NONE_IVB | FDI_TX_ENHANCE_FRAME_ENABLE;
 	} else {
 		temp &= ~FDI_LINK_TRAIN_NONE;
 		temp |= FDI_LINK_TRAIN_NONE | FDI_TX_ENHANCE_FRAME_ENABLE;
 	}
-	intel_de_write(dev_priv, reg, temp);
+	intel_de_write(display, reg, temp);
 
 	reg = FDI_RX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
+	temp = intel_de_read(display, reg);
 	if (HAS_PCH_CPT(dev_priv)) {
 		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
 		temp |= FDI_LINK_TRAIN_NORMAL_CPT;
@@ -496,15 +490,15 @@ void intel_fdi_normal_train(struct intel_crtc *crtc)
 		temp &= ~FDI_LINK_TRAIN_NONE;
 		temp |= FDI_LINK_TRAIN_NONE;
 	}
-	intel_de_write(dev_priv, reg, temp | FDI_RX_ENHANCE_FRAME_ENABLE);
+	intel_de_write(display, reg, temp | FDI_RX_ENHANCE_FRAME_ENABLE);
 
 	/* wait one idle pattern time */
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_posting_read(display, reg);
 	udelay(1000);
 
 	/* IVB wants error correction enabled */
-	if (IS_IVYBRIDGE(dev_priv))
-		intel_de_rmw(dev_priv, reg, 0, FDI_FS_ERRC_ENABLE | FDI_FE_ERRC_ENABLE);
+	if (display->platform.ivybridge)
+		intel_de_rmw(display, reg, 0, FDI_FS_ERRC_ENABLE | FDI_FE_ERRC_ENABLE);
 }
 
 /* The FDI link training functions for ILK/Ibexpeak. */
@@ -512,8 +506,6 @@ static void ilk_fdi_link_train(struct intel_crtc *crtc,
 			       const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum pipe pipe = crtc->pipe;
 	i915_reg_t reg;
 	u32 temp, tries;
@@ -522,8 +514,8 @@ static void ilk_fdi_link_train(struct intel_crtc *crtc,
 	 * Write the TU size bits before fdi link training, so that error
 	 * detection works.
 	 */
-	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
-		       intel_de_read(dev_priv, PIPE_DATA_M1(dev_priv, pipe)) & TU_SIZE_MASK);
+	intel_de_write(display, FDI_RX_TUSIZE1(pipe),
+		       intel_de_read(display, PIPE_DATA_M1(display, pipe)) & TU_SIZE_MASK);
 
 	/* FDI needs bits from pipe first */
 	assert_transcoder_enabled(display, crtc_state->cpu_transcoder);
@@ -531,75 +523,75 @@ static void ilk_fdi_link_train(struct intel_crtc *crtc,
 	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
 	   for train result */
 	reg = FDI_RX_IMR(pipe);
-	temp = intel_de_read(dev_priv, reg);
+	temp = intel_de_read(display, reg);
 	temp &= ~FDI_RX_SYMBOL_LOCK;
 	temp &= ~FDI_RX_BIT_LOCK;
-	intel_de_write(dev_priv, reg, temp);
-	intel_de_read(dev_priv, reg);
+	intel_de_write(display, reg, temp);
+	intel_de_read(display, reg);
 	udelay(150);
 
 	/* enable CPU FDI TX and PCH FDI RX */
 	reg = FDI_TX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
+	temp = intel_de_read(display, reg);
 	temp &= ~FDI_DP_PORT_WIDTH_MASK;
 	temp |= FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
 	temp &= ~FDI_LINK_TRAIN_NONE;
 	temp |= FDI_LINK_TRAIN_PATTERN_1;
-	intel_de_write(dev_priv, reg, temp | FDI_TX_ENABLE);
+	intel_de_write(display, reg, temp | FDI_TX_ENABLE);
 
 	reg = FDI_RX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
+	temp = intel_de_read(display, reg);
 	temp &= ~FDI_LINK_TRAIN_NONE;
 	temp |= FDI_LINK_TRAIN_PATTERN_1;
-	intel_de_write(dev_priv, reg, temp | FDI_RX_ENABLE);
+	intel_de_write(display, reg, temp | FDI_RX_ENABLE);
 
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_posting_read(display, reg);
 	udelay(150);
 
 	/* Ironlake workaround, enable clock pointer after FDI enable*/
-	intel_de_write(dev_priv, FDI_RX_CHICKEN(pipe),
+	intel_de_write(display, FDI_RX_CHICKEN(pipe),
 		       FDI_RX_PHASE_SYNC_POINTER_OVR);
-	intel_de_write(dev_priv, FDI_RX_CHICKEN(pipe),
+	intel_de_write(display, FDI_RX_CHICKEN(pipe),
 		       FDI_RX_PHASE_SYNC_POINTER_OVR | FDI_RX_PHASE_SYNC_POINTER_EN);
 
 	reg = FDI_RX_IIR(pipe);
 	for (tries = 0; tries < 5; tries++) {
-		temp = intel_de_read(dev_priv, reg);
-		drm_dbg_kms(&dev_priv->drm, "FDI_RX_IIR 0x%x\n", temp);
+		temp = intel_de_read(display, reg);
+		drm_dbg_kms(display->drm, "FDI_RX_IIR 0x%x\n", temp);
 
 		if ((temp & FDI_RX_BIT_LOCK)) {
-			drm_dbg_kms(&dev_priv->drm, "FDI train 1 done.\n");
-			intel_de_write(dev_priv, reg, temp | FDI_RX_BIT_LOCK);
+			drm_dbg_kms(display->drm, "FDI train 1 done.\n");
+			intel_de_write(display, reg, temp | FDI_RX_BIT_LOCK);
 			break;
 		}
 	}
 	if (tries == 5)
-		drm_err(&dev_priv->drm, "FDI train 1 fail!\n");
+		drm_err(display->drm, "FDI train 1 fail!\n");
 
 	/* Train 2 */
-	intel_de_rmw(dev_priv, FDI_TX_CTL(pipe),
+	intel_de_rmw(display, FDI_TX_CTL(pipe),
 		     FDI_LINK_TRAIN_NONE, FDI_LINK_TRAIN_PATTERN_2);
-	intel_de_rmw(dev_priv, FDI_RX_CTL(pipe),
+	intel_de_rmw(display, FDI_RX_CTL(pipe),
 		     FDI_LINK_TRAIN_NONE, FDI_LINK_TRAIN_PATTERN_2);
-	intel_de_posting_read(dev_priv, FDI_RX_CTL(pipe));
+	intel_de_posting_read(display, FDI_RX_CTL(pipe));
 	udelay(150);
 
 	reg = FDI_RX_IIR(pipe);
 	for (tries = 0; tries < 5; tries++) {
-		temp = intel_de_read(dev_priv, reg);
-		drm_dbg_kms(&dev_priv->drm, "FDI_RX_IIR 0x%x\n", temp);
+		temp = intel_de_read(display, reg);
+		drm_dbg_kms(display->drm, "FDI_RX_IIR 0x%x\n", temp);
 
 		if (temp & FDI_RX_SYMBOL_LOCK) {
-			intel_de_write(dev_priv, reg,
+			intel_de_write(display, reg,
 				       temp | FDI_RX_SYMBOL_LOCK);
-			drm_dbg_kms(&dev_priv->drm, "FDI train 2 done.\n");
+			drm_dbg_kms(display->drm, "FDI train 2 done.\n");
 			break;
 		}
 	}
 	if (tries == 5)
-		drm_err(&dev_priv->drm, "FDI train 2 fail!\n");
+		drm_err(display->drm, "FDI train 2 fail!\n");
 
-	drm_dbg_kms(&dev_priv->drm, "FDI train done\n");
+	drm_dbg_kms(display->drm, "FDI train done\n");
 
 }
 
@@ -614,8 +606,8 @@ static const int snb_b_fdi_train_param[] = {
 static void gen6_fdi_link_train(struct intel_crtc *crtc,
 				const struct intel_crtc_state *crtc_state)
 {
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(crtc);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe = crtc->pipe;
 	i915_reg_t reg;
 	u32 temp, i, retry;
@@ -624,23 +616,23 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 	 * Write the TU size bits before fdi link training, so that error
 	 * detection works.
 	 */
-	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
-		       intel_de_read(dev_priv, PIPE_DATA_M1(dev_priv, pipe)) & TU_SIZE_MASK);
+	intel_de_write(display, FDI_RX_TUSIZE1(pipe),
+		       intel_de_read(display, PIPE_DATA_M1(display, pipe)) & TU_SIZE_MASK);
 
 	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
 	   for train result */
 	reg = FDI_RX_IMR(pipe);
-	temp = intel_de_read(dev_priv, reg);
+	temp = intel_de_read(display, reg);
 	temp &= ~FDI_RX_SYMBOL_LOCK;
 	temp &= ~FDI_RX_BIT_LOCK;
-	intel_de_write(dev_priv, reg, temp);
+	intel_de_write(display, reg, temp);
 
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_posting_read(display, reg);
 	udelay(150);
 
 	/* enable CPU FDI TX and PCH FDI RX */
 	reg = FDI_TX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
+	temp = intel_de_read(display, reg);
 	temp &= ~FDI_DP_PORT_WIDTH_MASK;
 	temp |= FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
 	temp &= ~FDI_LINK_TRAIN_NONE;
@@ -648,13 +640,13 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 	temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
 	/* SNB-B */
 	temp |= FDI_LINK_TRAIN_400MV_0DB_SNB_B;
-	intel_de_write(dev_priv, reg, temp | FDI_TX_ENABLE);
+	intel_de_write(display, reg, temp | FDI_TX_ENABLE);
 
-	intel_de_write(dev_priv, FDI_RX_MISC(pipe),
+	intel_de_write(display, FDI_RX_MISC(pipe),
 		       FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);
 
 	reg = FDI_RX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
+	temp = intel_de_read(display, reg);
 	if (HAS_PCH_CPT(dev_priv)) {
 		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
 		temp |= FDI_LINK_TRAIN_PATTERN_1_CPT;
@@ -662,25 +654,25 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 		temp &= ~FDI_LINK_TRAIN_NONE;
 		temp |= FDI_LINK_TRAIN_PATTERN_1;
 	}
-	intel_de_write(dev_priv, reg, temp | FDI_RX_ENABLE);
+	intel_de_write(display, reg, temp | FDI_RX_ENABLE);
 
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_posting_read(display, reg);
 	udelay(150);
 
 	for (i = 0; i < 4; i++) {
-		intel_de_rmw(dev_priv, FDI_TX_CTL(pipe),
+		intel_de_rmw(display, FDI_TX_CTL(pipe),
 			     FDI_LINK_TRAIN_VOL_EMP_MASK, snb_b_fdi_train_param[i]);
-		intel_de_posting_read(dev_priv, FDI_TX_CTL(pipe));
+		intel_de_posting_read(display, FDI_TX_CTL(pipe));
 		udelay(500);
 
 		for (retry = 0; retry < 5; retry++) {
 			reg = FDI_RX_IIR(pipe);
-			temp = intel_de_read(dev_priv, reg);
-			drm_dbg_kms(&dev_priv->drm, "FDI_RX_IIR 0x%x\n", temp);
+			temp = intel_de_read(display, reg);
+			drm_dbg_kms(display->drm, "FDI_RX_IIR 0x%x\n", temp);
 			if (temp & FDI_RX_BIT_LOCK) {
-				intel_de_write(dev_priv, reg,
+				intel_de_write(display, reg,
 					       temp | FDI_RX_BIT_LOCK);
-				drm_dbg_kms(&dev_priv->drm,
+				drm_dbg_kms(display->drm,
 					    "FDI train 1 done.\n");
 				break;
 			}
@@ -690,22 +682,22 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 			break;
 	}
 	if (i == 4)
-		drm_err(&dev_priv->drm, "FDI train 1 fail!\n");
+		drm_err(display->drm, "FDI train 1 fail!\n");
 
 	/* Train 2 */
 	reg = FDI_TX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
+	temp = intel_de_read(display, reg);
 	temp &= ~FDI_LINK_TRAIN_NONE;
 	temp |= FDI_LINK_TRAIN_PATTERN_2;
-	if (IS_SANDYBRIDGE(dev_priv)) {
+	if (display->platform.sandybridge) {
 		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
 		/* SNB-B */
 		temp |= FDI_LINK_TRAIN_400MV_0DB_SNB_B;
 	}
-	intel_de_write(dev_priv, reg, temp);
+	intel_de_write(display, reg, temp);
 
 	reg = FDI_RX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
+	temp = intel_de_read(display, reg);
 	if (HAS_PCH_CPT(dev_priv)) {
 		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
 		temp |= FDI_LINK_TRAIN_PATTERN_2_CPT;
@@ -713,25 +705,25 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 		temp &= ~FDI_LINK_TRAIN_NONE;
 		temp |= FDI_LINK_TRAIN_PATTERN_2;
 	}
-	intel_de_write(dev_priv, reg, temp);
+	intel_de_write(display, reg, temp);
 
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_posting_read(display, reg);
 	udelay(150);
 
 	for (i = 0; i < 4; i++) {
-		intel_de_rmw(dev_priv, FDI_TX_CTL(pipe),
+		intel_de_rmw(display, FDI_TX_CTL(pipe),
 			     FDI_LINK_TRAIN_VOL_EMP_MASK, snb_b_fdi_train_param[i]);
-		intel_de_posting_read(dev_priv, FDI_TX_CTL(pipe));
+		intel_de_posting_read(display, FDI_TX_CTL(pipe));
 		udelay(500);
 
 		for (retry = 0; retry < 5; retry++) {
 			reg = FDI_RX_IIR(pipe);
-			temp = intel_de_read(dev_priv, reg);
-			drm_dbg_kms(&dev_priv->drm, "FDI_RX_IIR 0x%x\n", temp);
+			temp = intel_de_read(display, reg);
+			drm_dbg_kms(display->drm, "FDI_RX_IIR 0x%x\n", temp);
 			if (temp & FDI_RX_SYMBOL_LOCK) {
-				intel_de_write(dev_priv, reg,
+				intel_de_write(display, reg,
 					       temp | FDI_RX_SYMBOL_LOCK);
-				drm_dbg_kms(&dev_priv->drm,
+				drm_dbg_kms(display->drm,
 					    "FDI train 2 done.\n");
 				break;
 			}
@@ -741,17 +733,16 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 			break;
 	}
 	if (i == 4)
-		drm_err(&dev_priv->drm, "FDI train 2 fail!\n");
+		drm_err(display->drm, "FDI train 2 fail!\n");
 
-	drm_dbg_kms(&dev_priv->drm, "FDI train done.\n");
+	drm_dbg_kms(display->drm, "FDI train done.\n");
 }
 
 /* Manual link training for Ivy Bridge A0 parts */
 static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
 				      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 	i915_reg_t reg;
 	u32 temp, i, j;
@@ -762,72 +753,72 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
 	 * Write the TU size bits before fdi link training, so that error
 	 * detection works.
 	 */
-	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
-		       intel_de_read(dev_priv, PIPE_DATA_M1(dev_priv, pipe)) & TU_SIZE_MASK);
+	intel_de_write(display, FDI_RX_TUSIZE1(pipe),
+		       intel_de_read(display, PIPE_DATA_M1(display, pipe)) & TU_SIZE_MASK);
 
 	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
 	   for train result */
 	reg = FDI_RX_IMR(pipe);
-	temp = intel_de_read(dev_priv, reg);
+	temp = intel_de_read(display, reg);
 	temp &= ~FDI_RX_SYMBOL_LOCK;
 	temp &= ~FDI_RX_BIT_LOCK;
-	intel_de_write(dev_priv, reg, temp);
+	intel_de_write(display, reg, temp);
 
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_posting_read(display, reg);
 	udelay(150);
 
-	drm_dbg_kms(&dev_priv->drm, "FDI_RX_IIR before link train 0x%x\n",
-		    intel_de_read(dev_priv, FDI_RX_IIR(pipe)));
+	drm_dbg_kms(display->drm, "FDI_RX_IIR before link train 0x%x\n",
+		    intel_de_read(display, FDI_RX_IIR(pipe)));
 
 	/* Try each vswing and preemphasis setting twice before moving on */
 	for (j = 0; j < ARRAY_SIZE(snb_b_fdi_train_param) * 2; j++) {
 		/* disable first in case we need to retry */
 		reg = FDI_TX_CTL(pipe);
-		temp = intel_de_read(dev_priv, reg);
+		temp = intel_de_read(display, reg);
 		temp &= ~(FDI_LINK_TRAIN_AUTO | FDI_LINK_TRAIN_NONE_IVB);
 		temp &= ~FDI_TX_ENABLE;
-		intel_de_write(dev_priv, reg, temp);
+		intel_de_write(display, reg, temp);
 
 		reg = FDI_RX_CTL(pipe);
-		temp = intel_de_read(dev_priv, reg);
+		temp = intel_de_read(display, reg);
 		temp &= ~FDI_LINK_TRAIN_AUTO;
 		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
 		temp &= ~FDI_RX_ENABLE;
-		intel_de_write(dev_priv, reg, temp);
+		intel_de_write(display, reg, temp);
 
 		/* enable CPU FDI TX and PCH FDI RX */
 		reg = FDI_TX_CTL(pipe);
-		temp = intel_de_read(dev_priv, reg);
+		temp = intel_de_read(display, reg);
 		temp &= ~FDI_DP_PORT_WIDTH_MASK;
 		temp |= FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
 		temp |= FDI_LINK_TRAIN_PATTERN_1_IVB;
 		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
 		temp |= snb_b_fdi_train_param[j/2];
 		temp |= FDI_COMPOSITE_SYNC;
-		intel_de_write(dev_priv, reg, temp | FDI_TX_ENABLE);
+		intel_de_write(display, reg, temp | FDI_TX_ENABLE);
 
-		intel_de_write(dev_priv, FDI_RX_MISC(pipe),
+		intel_de_write(display, FDI_RX_MISC(pipe),
 			       FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);
 
 		reg = FDI_RX_CTL(pipe);
-		temp = intel_de_read(dev_priv, reg);
+		temp = intel_de_read(display, reg);
 		temp |= FDI_LINK_TRAIN_PATTERN_1_CPT;
 		temp |= FDI_COMPOSITE_SYNC;
-		intel_de_write(dev_priv, reg, temp | FDI_RX_ENABLE);
+		intel_de_write(display, reg, temp | FDI_RX_ENABLE);
 
-		intel_de_posting_read(dev_priv, reg);
+		intel_de_posting_read(display, reg);
 		udelay(1); /* should be 0.5us */
 
 		for (i = 0; i < 4; i++) {
 			reg = FDI_RX_IIR(pipe);
-			temp = intel_de_read(dev_priv, reg);
-			drm_dbg_kms(&dev_priv->drm, "FDI_RX_IIR 0x%x\n", temp);
+			temp = intel_de_read(display, reg);
+			drm_dbg_kms(display->drm, "FDI_RX_IIR 0x%x\n", temp);
 
 			if (temp & FDI_RX_BIT_LOCK ||
-			    (intel_de_read(dev_priv, reg) & FDI_RX_BIT_LOCK)) {
-				intel_de_write(dev_priv, reg,
+			    (intel_de_read(display, reg) & FDI_RX_BIT_LOCK)) {
+				intel_de_write(display, reg,
 					       temp | FDI_RX_BIT_LOCK);
-				drm_dbg_kms(&dev_priv->drm,
+				drm_dbg_kms(display->drm,
 					    "FDI train 1 done, level %i.\n",
 					    i);
 				break;
@@ -835,31 +826,31 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
 			udelay(1); /* should be 0.5us */
 		}
 		if (i == 4) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "FDI train 1 fail on vswing %d\n", j / 2);
 			continue;
 		}
 
 		/* Train 2 */
-		intel_de_rmw(dev_priv, FDI_TX_CTL(pipe),
+		intel_de_rmw(display, FDI_TX_CTL(pipe),
 			     FDI_LINK_TRAIN_NONE_IVB,
 			     FDI_LINK_TRAIN_PATTERN_2_IVB);
-		intel_de_rmw(dev_priv, FDI_RX_CTL(pipe),
+		intel_de_rmw(display, FDI_RX_CTL(pipe),
 			     FDI_LINK_TRAIN_PATTERN_MASK_CPT,
 			     FDI_LINK_TRAIN_PATTERN_2_CPT);
-		intel_de_posting_read(dev_priv, FDI_RX_CTL(pipe));
+		intel_de_posting_read(display, FDI_RX_CTL(pipe));
 		udelay(2); /* should be 1.5us */
 
 		for (i = 0; i < 4; i++) {
 			reg = FDI_RX_IIR(pipe);
-			temp = intel_de_read(dev_priv, reg);
-			drm_dbg_kms(&dev_priv->drm, "FDI_RX_IIR 0x%x\n", temp);
+			temp = intel_de_read(display, reg);
+			drm_dbg_kms(display->drm, "FDI_RX_IIR 0x%x\n", temp);
 
 			if (temp & FDI_RX_SYMBOL_LOCK ||
-			    (intel_de_read(dev_priv, reg) & FDI_RX_SYMBOL_LOCK)) {
-				intel_de_write(dev_priv, reg,
+			    (intel_de_read(display, reg) & FDI_RX_SYMBOL_LOCK)) {
+				intel_de_write(display, reg,
 					       temp | FDI_RX_SYMBOL_LOCK);
-				drm_dbg_kms(&dev_priv->drm,
+				drm_dbg_kms(display->drm,
 					    "FDI train 2 done, level %i.\n",
 					    i);
 				goto train_done;
@@ -867,12 +858,12 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
 			udelay(2); /* should be 1.5us */
 		}
 		if (i == 4)
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "FDI train 2 fail on vswing %d\n", j / 2);
 	}
 
 train_done:
-	drm_dbg_kms(&dev_priv->drm, "FDI train done.\n");
+	drm_dbg_kms(display->drm, "FDI train done.\n");
 }
 
 /* Starting with Haswell, different DDI ports can work in FDI mode for
@@ -887,8 +878,6 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 temp, i, rx_ctl_val;
 	int n_entries;
 
@@ -903,33 +892,33 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 	 *
 	 * WaFDIAutoLinkSetTimingOverrride:hsw
 	 */
-	intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A),
+	intel_de_write(display, FDI_RX_MISC(PIPE_A),
 		       FDI_RX_PWRDN_LANE1_VAL(2) |
 		       FDI_RX_PWRDN_LANE0_VAL(2) |
 		       FDI_RX_TP1_TO_TP2_48 |
 		       FDI_RX_FDI_DELAY_90);
 
 	/* Enable the PCH Receiver FDI PLL */
-	rx_ctl_val = dev_priv->display.fdi.rx_config | FDI_RX_ENHANCE_FRAME_ENABLE |
+	rx_ctl_val = display->fdi.rx_config | FDI_RX_ENHANCE_FRAME_ENABLE |
 		     FDI_RX_PLL_ENABLE |
 		     FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
-	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
-	intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
+	intel_de_write(display, FDI_RX_CTL(PIPE_A), rx_ctl_val);
+	intel_de_posting_read(display, FDI_RX_CTL(PIPE_A));
 	udelay(220);
 
 	/* Switch from Rawclk to PCDclk */
 	rx_ctl_val |= FDI_PCDCLK;
-	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
+	intel_de_write(display, FDI_RX_CTL(PIPE_A), rx_ctl_val);
 
 	/* Configure Port Clock Select */
-	drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll->info->id != DPLL_ID_SPLL);
+	drm_WARN_ON(display->drm, crtc_state->shared_dpll->info->id != DPLL_ID_SPLL);
 	intel_ddi_enable_clock(encoder, crtc_state);
 
 	/* Start the training iterating through available voltages and emphasis,
 	 * testing each value twice. */
 	for (i = 0; i < n_entries * 2; i++) {
 		/* Configure DP_TP_CTL with auto-training */
-		intel_de_write(dev_priv, DP_TP_CTL(PORT_E),
+		intel_de_write(display, DP_TP_CTL(PORT_E),
 			       DP_TP_CTL_FDI_AUTOTRAIN |
 			       DP_TP_CTL_ENHANCED_FRAME_ENABLE |
 			       DP_TP_CTL_LINK_TRAIN_PAT1 |
@@ -939,36 +928,36 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		 * DDI E does not support port reversal, the functionality is
 		 * achieved on the PCH side in FDI_RX_CTL, so no need to set the
 		 * port reversal bit */
-		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E),
+		intel_de_write(display, DDI_BUF_CTL(PORT_E),
 			       DDI_BUF_CTL_ENABLE |
 			       ((crtc_state->fdi_lanes - 1) << 1) |
 			       DDI_BUF_TRANS_SELECT(i / 2));
-		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
+		intel_de_posting_read(display, DDI_BUF_CTL(PORT_E));
 
 		udelay(600);
 
 		/* Program PCH FDI Receiver TU */
-		intel_de_write(dev_priv, FDI_RX_TUSIZE1(PIPE_A), TU_SIZE(64));
+		intel_de_write(display, FDI_RX_TUSIZE1(PIPE_A), TU_SIZE(64));
 
 		/* Enable PCH FDI Receiver with auto-training */
 		rx_ctl_val |= FDI_RX_ENABLE | FDI_LINK_TRAIN_AUTO;
-		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
-		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
+		intel_de_write(display, FDI_RX_CTL(PIPE_A), rx_ctl_val);
+		intel_de_posting_read(display, FDI_RX_CTL(PIPE_A));
 
 		/* Wait for FDI receiver lane calibration */
 		udelay(30);
 
 		/* Unset FDI_RX_MISC pwrdn lanes */
-		intel_de_rmw(dev_priv, FDI_RX_MISC(PIPE_A),
+		intel_de_rmw(display, FDI_RX_MISC(PIPE_A),
 			     FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK, 0);
-		intel_de_posting_read(dev_priv, FDI_RX_MISC(PIPE_A));
+		intel_de_posting_read(display, FDI_RX_MISC(PIPE_A));
 
 		/* Wait for FDI auto training time */
 		udelay(5);
 
-		temp = intel_de_read(dev_priv, DP_TP_STATUS(PORT_E));
+		temp = intel_de_read(display, DP_TP_STATUS(PORT_E));
 		if (temp & DP_TP_STATUS_AUTOTRAIN_DONE) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "FDI link training done on step %d\n", i);
 			break;
 		}
@@ -978,32 +967,32 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		 * Results in less fireworks from the state checker.
 		 */
 		if (i == n_entries * 2 - 1) {
-			drm_err(&dev_priv->drm, "FDI link training failed!\n");
+			drm_err(display->drm, "FDI link training failed!\n");
 			break;
 		}
 
 		rx_ctl_val &= ~FDI_RX_ENABLE;
-		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
-		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
+		intel_de_write(display, FDI_RX_CTL(PIPE_A), rx_ctl_val);
+		intel_de_posting_read(display, FDI_RX_CTL(PIPE_A));
 
-		intel_de_rmw(dev_priv, DDI_BUF_CTL(PORT_E), DDI_BUF_CTL_ENABLE, 0);
-		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
+		intel_de_rmw(display, DDI_BUF_CTL(PORT_E), DDI_BUF_CTL_ENABLE, 0);
+		intel_de_posting_read(display, DDI_BUF_CTL(PORT_E));
 
 		/* Disable DP_TP_CTL and FDI_RX_CTL and retry */
-		intel_de_rmw(dev_priv, DP_TP_CTL(PORT_E), DP_TP_CTL_ENABLE, 0);
-		intel_de_posting_read(dev_priv, DP_TP_CTL(PORT_E));
+		intel_de_rmw(display, DP_TP_CTL(PORT_E), DP_TP_CTL_ENABLE, 0);
+		intel_de_posting_read(display, DP_TP_CTL(PORT_E));
 
 		intel_wait_ddi_buf_idle(display, PORT_E);
 
 		/* Reset FDI_RX_MISC pwrdn lanes */
-		intel_de_rmw(dev_priv, FDI_RX_MISC(PIPE_A),
+		intel_de_rmw(display, FDI_RX_MISC(PIPE_A),
 			     FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK,
 			     FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2));
-		intel_de_posting_read(dev_priv, FDI_RX_MISC(PIPE_A));
+		intel_de_posting_read(display, FDI_RX_MISC(PIPE_A));
 	}
 
 	/* Enable normal pixel sending for FDI */
-	intel_de_write(dev_priv, DP_TP_CTL(PORT_E),
+	intel_de_write(display, DP_TP_CTL(PORT_E),
 		       DP_TP_CTL_FDI_AUTOTRAIN |
 		       DP_TP_CTL_LINK_TRAIN_NORMAL |
 		       DP_TP_CTL_ENHANCED_FRAME_ENABLE |
@@ -1013,7 +1002,6 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 void hsw_fdi_disable(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	/*
 	 * Bspec lists this as both step 13 (before DDI_BUF_CTL disable)
@@ -1021,103 +1009,103 @@ void hsw_fdi_disable(struct intel_encoder *encoder)
 	 * step 13 is the correct place for it. Step 18 is where it was
 	 * originally before the BUN.
 	 */
-	intel_de_rmw(dev_priv, FDI_RX_CTL(PIPE_A), FDI_RX_ENABLE, 0);
-	intel_de_rmw(dev_priv, DDI_BUF_CTL(PORT_E), DDI_BUF_CTL_ENABLE, 0);
+	intel_de_rmw(display, FDI_RX_CTL(PIPE_A), FDI_RX_ENABLE, 0);
+	intel_de_rmw(display, DDI_BUF_CTL(PORT_E), DDI_BUF_CTL_ENABLE, 0);
 	intel_wait_ddi_buf_idle(display, PORT_E);
 	intel_ddi_disable_clock(encoder);
-	intel_de_rmw(dev_priv, FDI_RX_MISC(PIPE_A),
+	intel_de_rmw(display, FDI_RX_MISC(PIPE_A),
 		     FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK,
 		     FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2));
-	intel_de_rmw(dev_priv, FDI_RX_CTL(PIPE_A), FDI_PCDCLK, 0);
-	intel_de_rmw(dev_priv, FDI_RX_CTL(PIPE_A), FDI_RX_PLL_ENABLE, 0);
+	intel_de_rmw(display, FDI_RX_CTL(PIPE_A), FDI_PCDCLK, 0);
+	intel_de_rmw(display, FDI_RX_CTL(PIPE_A), FDI_RX_PLL_ENABLE, 0);
 }
 
 void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	i915_reg_t reg;
 	u32 temp;
 
 	/* enable PCH FDI RX PLL, wait warmup plus DMI latency */
 	reg = FDI_RX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
+	temp = intel_de_read(display, reg);
 	temp &= ~(FDI_DP_PORT_WIDTH_MASK | (0x7 << 16));
 	temp |= FDI_DP_PORT_WIDTH(crtc_state->fdi_lanes);
-	temp |= (intel_de_read(dev_priv, TRANSCONF(dev_priv, pipe)) & TRANSCONF_BPC_MASK) << 11;
-	intel_de_write(dev_priv, reg, temp | FDI_RX_PLL_ENABLE);
+	temp |= (intel_de_read(display, TRANSCONF(display, pipe)) & TRANSCONF_BPC_MASK) << 11;
+	intel_de_write(display, reg, temp | FDI_RX_PLL_ENABLE);
 
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_posting_read(display, reg);
 	udelay(200);
 
 	/* Switch from Rawclk to PCDclk */
-	intel_de_rmw(dev_priv, reg, 0, FDI_PCDCLK);
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_rmw(display, reg, 0, FDI_PCDCLK);
+	intel_de_posting_read(display, reg);
 	udelay(200);
 
 	/* Enable CPU FDI TX PLL, always on for Ironlake */
 	reg = FDI_TX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
+	temp = intel_de_read(display, reg);
 	if ((temp & FDI_TX_PLL_ENABLE) == 0) {
-		intel_de_write(dev_priv, reg, temp | FDI_TX_PLL_ENABLE);
+		intel_de_write(display, reg, temp | FDI_TX_PLL_ENABLE);
 
-		intel_de_posting_read(dev_priv, reg);
+		intel_de_posting_read(display, reg);
 		udelay(100);
 	}
 }
 
 void ilk_fdi_pll_disable(struct intel_crtc *crtc)
 {
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(crtc);
 	enum pipe pipe = crtc->pipe;
 
 	/* Switch from PCDclk to Rawclk */
-	intel_de_rmw(dev_priv, FDI_RX_CTL(pipe), FDI_PCDCLK, 0);
+	intel_de_rmw(display, FDI_RX_CTL(pipe), FDI_PCDCLK, 0);
 
 	/* Disable CPU FDI TX PLL */
-	intel_de_rmw(dev_priv, FDI_TX_CTL(pipe), FDI_TX_PLL_ENABLE, 0);
-	intel_de_posting_read(dev_priv, FDI_TX_CTL(pipe));
+	intel_de_rmw(display, FDI_TX_CTL(pipe), FDI_TX_PLL_ENABLE, 0);
+	intel_de_posting_read(display, FDI_TX_CTL(pipe));
 	udelay(100);
 
 	/* Wait for the clocks to turn off. */
-	intel_de_rmw(dev_priv, FDI_RX_CTL(pipe), FDI_RX_PLL_ENABLE, 0);
-	intel_de_posting_read(dev_priv, FDI_RX_CTL(pipe));
+	intel_de_rmw(display, FDI_RX_CTL(pipe), FDI_RX_PLL_ENABLE, 0);
+	intel_de_posting_read(display, FDI_RX_CTL(pipe));
 	udelay(100);
 }
 
 void ilk_fdi_disable(struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	i915_reg_t reg;
 	u32 temp;
 
 	/* disable CPU FDI tx and PCH FDI rx */
-	intel_de_rmw(dev_priv, FDI_TX_CTL(pipe), FDI_TX_ENABLE, 0);
-	intel_de_posting_read(dev_priv, FDI_TX_CTL(pipe));
+	intel_de_rmw(display, FDI_TX_CTL(pipe), FDI_TX_ENABLE, 0);
+	intel_de_posting_read(display, FDI_TX_CTL(pipe));
 
 	reg = FDI_RX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
+	temp = intel_de_read(display, reg);
 	temp &= ~(0x7 << 16);
-	temp |= (intel_de_read(dev_priv, TRANSCONF(dev_priv, pipe)) & TRANSCONF_BPC_MASK) << 11;
-	intel_de_write(dev_priv, reg, temp & ~FDI_RX_ENABLE);
+	temp |= (intel_de_read(display, TRANSCONF(display, pipe)) & TRANSCONF_BPC_MASK) << 11;
+	intel_de_write(display, reg, temp & ~FDI_RX_ENABLE);
 
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_posting_read(display, reg);
 	udelay(100);
 
 	/* Ironlake workaround, disable clock pointer after downing FDI */
 	if (HAS_PCH_IBX(dev_priv))
-		intel_de_write(dev_priv, FDI_RX_CHICKEN(pipe),
+		intel_de_write(display, FDI_RX_CHICKEN(pipe),
 			       FDI_RX_PHASE_SYNC_POINTER_OVR);
 
 	/* still set train pattern 1 */
-	intel_de_rmw(dev_priv, FDI_TX_CTL(pipe),
+	intel_de_rmw(display, FDI_TX_CTL(pipe),
 		     FDI_LINK_TRAIN_NONE, FDI_LINK_TRAIN_PATTERN_1);
 
 	reg = FDI_RX_CTL(pipe);
-	temp = intel_de_read(dev_priv, reg);
+	temp = intel_de_read(display, reg);
 	if (HAS_PCH_CPT(dev_priv)) {
 		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
 		temp |= FDI_LINK_TRAIN_PATTERN_1_CPT;
@@ -1127,10 +1115,10 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
 	}
 	/* BPC in FDI rx is consistent with that in TRANSCONF */
 	temp &= ~(0x07 << 16);
-	temp |= (intel_de_read(dev_priv, TRANSCONF(dev_priv, pipe)) & TRANSCONF_BPC_MASK) << 11;
-	intel_de_write(dev_priv, reg, temp);
+	temp |= (intel_de_read(display, TRANSCONF(display, pipe)) & TRANSCONF_BPC_MASK) << 11;
+	intel_de_write(display, reg, temp);
 
-	intel_de_posting_read(dev_priv, reg);
+	intel_de_posting_read(display, reg);
 	udelay(100);
 }
 
@@ -1147,14 +1135,14 @@ static const struct intel_fdi_funcs ivb_funcs = {
 };
 
 void
-intel_fdi_init_hook(struct drm_i915_private *dev_priv)
+intel_fdi_init_hook(struct intel_display *display)
 {
-	if (IS_IRONLAKE(dev_priv)) {
-		dev_priv->display.funcs.fdi = &ilk_funcs;
-	} else if (IS_SANDYBRIDGE(dev_priv)) {
-		dev_priv->display.funcs.fdi = &gen6_funcs;
-	} else if (IS_IVYBRIDGE(dev_priv)) {
+	if (display->platform.ironlake) {
+		display->funcs.fdi = &ilk_funcs;
+	} else if (display->platform.sandybridge) {
+		display->funcs.fdi = &gen6_funcs;
+	} else if (display->platform.ivybridge) {
 		/* FIXME: detect B0+ stepping and use auto training */
-		dev_priv->display.funcs.fdi = &ivb_funcs;
+		display->funcs.fdi = &ivb_funcs;
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
index b5be09efb36f..ad5e103c38a8 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.h
+++ b/drivers/gpu/drm/i915/display/intel_fdi.h
@@ -9,16 +9,16 @@
 #include <linux/types.h>
 
 enum pipe;
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_display;
+struct intel_display;
 struct intel_encoder;
 struct intel_link_bw_limits;
 
 int intel_fdi_add_affected_crtcs(struct intel_atomic_state *state);
-int intel_fdi_link_freq(struct drm_i915_private *i915,
+int intel_fdi_link_freq(struct intel_display *display,
 			const struct intel_crtc_state *pipe_config);
 bool intel_fdi_compute_pipe_bpp(struct intel_crtc_state *crtc_state);
 int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
@@ -29,19 +29,19 @@ void intel_fdi_normal_train(struct intel_crtc *crtc);
 void ilk_fdi_disable(struct intel_crtc *crtc);
 void ilk_fdi_pll_disable(struct intel_crtc *intel_crtc);
 void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state);
-void intel_fdi_init_hook(struct drm_i915_private *dev_priv);
+void intel_fdi_init_hook(struct intel_display *display);
 void hsw_fdi_link_train(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state);
 void hsw_fdi_disable(struct intel_encoder *encoder);
-void intel_fdi_pll_freq_update(struct drm_i915_private *i915);
+void intel_fdi_pll_freq_update(struct intel_display *display);
 
 void intel_fdi_link_train(struct intel_crtc *crtc,
 			  const struct intel_crtc_state *crtc_state);
 
-void assert_fdi_tx_enabled(struct drm_i915_private *i915, enum pipe pipe);
-void assert_fdi_tx_disabled(struct drm_i915_private *i915, enum pipe pipe);
-void assert_fdi_rx_enabled(struct drm_i915_private *i915, enum pipe pipe);
-void assert_fdi_rx_disabled(struct drm_i915_private *i915, enum pipe pipe);
+void assert_fdi_tx_enabled(struct intel_display *display, enum pipe pipe);
+void assert_fdi_tx_disabled(struct intel_display *display, enum pipe pipe);
+void assert_fdi_rx_enabled(struct intel_display *display, enum pipe pipe);
+void assert_fdi_rx_disabled(struct intel_display *display, enum pipe pipe);
 void assert_fdi_tx_pll_enabled(struct intel_display *display, enum pipe pipe);
 void assert_fdi_rx_pll_enabled(struct intel_display *display, enum pipe pipe);
 void assert_fdi_rx_pll_disabled(struct intel_display *display, enum pipe pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index bc70e72ccc2e..a008412fdd04 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -90,10 +90,11 @@ verify_connector_state(struct intel_atomic_state *state,
 
 static void intel_pipe_config_sanity_check(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	if (crtc_state->has_pch_encoder) {
-		int fdi_dotclock = intel_dotclock_calculate(intel_fdi_link_freq(i915, crtc_state),
+		int fdi_dotclock = intel_dotclock_calculate(intel_fdi_link_freq(display, crtc_state),
 							    &crtc_state->fdi_m_n);
 		int dotclock = crtc_state->hw.adjusted_mode.crtc_clock;
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 806729ec73c8..257f76c014c2 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -259,8 +259,8 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 	assert_shared_dpll_enabled(display, crtc_state->shared_dpll);
 
 	/* FDI must be feeding us bits for PCH ports */
-	assert_fdi_tx_enabled(dev_priv, pipe);
-	assert_fdi_rx_enabled(dev_priv, pipe);
+	assert_fdi_tx_enabled(display, pipe);
+	assert_fdi_rx_enabled(display, pipe);
 
 	if (HAS_PCH_CPT(dev_priv)) {
 		reg = TRANS_CHICKEN2(pipe);
@@ -316,13 +316,14 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 
 static void ilk_disable_pch_transcoder(struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	i915_reg_t reg;
 
 	/* FDI relies on the transcoder */
-	assert_fdi_tx_disabled(dev_priv, pipe);
-	assert_fdi_rx_disabled(dev_priv, pipe);
+	assert_fdi_tx_disabled(display, pipe);
+	assert_fdi_rx_disabled(display, pipe);
 
 	/* Ports must be off as well */
 	assert_pch_ports_disabled(dev_priv, pipe);
@@ -479,8 +480,7 @@ void ilk_pch_post_disable(struct intel_atomic_state *state,
 
 static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	/* read out port_clock from the DPLL */
 	i9xx_crtc_clock_get(crtc_state);
@@ -491,7 +491,7 @@ static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)
 	 * Calculate one based on the FDI configuration.
 	 */
 	crtc_state->hw.adjusted_mode.crtc_clock =
-		intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, crtc_state),
+		intel_dotclock_calculate(intel_fdi_link_freq(display, crtc_state),
 					 &crtc_state->fdi_m_n);
 }
 
@@ -549,14 +549,15 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
 
 static void lpt_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 val, pipeconf_val;
 
 	/* FDI must be feeding us bits for PCH ports */
-	assert_fdi_tx_enabled(dev_priv, (enum pipe) cpu_transcoder);
-	assert_fdi_rx_enabled(dev_priv, PIPE_A);
+	assert_fdi_tx_enabled(display, (enum pipe) cpu_transcoder);
+	assert_fdi_rx_enabled(display, PIPE_A);
 
 	val = intel_de_read(dev_priv, TRANS_CHICKEN2(PIPE_A));
 	/* Workaround: set timing override bit. */
-- 
2.39.5

