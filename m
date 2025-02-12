Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8EAA32BD7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:37:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14A6310E907;
	Wed, 12 Feb 2025 16:37:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MojNKwnQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F01510E907;
 Wed, 12 Feb 2025 16:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378230; x=1770914230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KY1DgI1Vd1EGa8H5UrjGflq5XlQ3SAZvk+nbtf8GRyo=;
 b=MojNKwnQMFiHvnJtzUIyCCIHg8/h3Zl05FHcWv/ipMj5jY3plMNqnldF
 6ogocbNTvSAQIsJreoDXx5FY98ppXWve7qdjzqHCKE0ae8p2pBo5gP0aE
 +sjCxIv2a0fOUKAJfWcFFiM28s+kiOEJ33k4GdA5WSrnxMKRxZVdij1lL
 YT50ksu8E1WgaCuKE5Db5wmiQAL+hNhrnr+LqMRKWjpynMqpi0AaPEjDW
 KLtcZfsCh/kAoET8EZpfO6FzFgay6yNv5LkBL04prlBovuY8ehBe9/vgk
 3RCnDzRSZFS1XuO/Zaj2mBRh9Oh2UCL16vnofBq5ktwg4bClI5Jy1k8GT g==;
X-CSE-ConnectionGUID: DhgxVStaTJOZrEdnAVtaJA==
X-CSE-MsgGUID: hcFHjc+yTAu+URfH225juA==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="50693497"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="50693497"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:10 -0800
X-CSE-ConnectionGUID: 493R8my3TNGdxj69gRwjOg==
X-CSE-MsgGUID: /IPXCaEAReOfUI+l7LydEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="143713492"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/14] drm/i915/display: convert assert_transcoder*() to
 struct intel_display
Date: Wed, 12 Feb 2025 18:36:33 +0200
Message-Id: <430c2f3c899bc98beeb6ba8608f841c9271d0971.1739378095.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1739378095.git.jani.nikula@intel.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
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
pointer. Convert the assert_transcoder*() helpers to struct
intel_display, allowing further conversions elsewhere.

Do a few small opportunistic conversions right away.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c        |  7 ++--
 drivers/gpu/drm/i915/display/intel_display.c | 34 +++++++++-----------
 drivers/gpu/drm/i915/display/intel_display.h |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c    | 30 +++++++++--------
 drivers/gpu/drm/i915/display/intel_fdi.c     |  3 +-
 drivers/gpu/drm/i915/display/intel_tv.c      |  3 +-
 6 files changed, 38 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index cfc796607a78..f50ab9a3f3e9 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -197,9 +197,8 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	assert_transcoder_disabled(dev_priv, pipe_config->cpu_transcoder);
+	assert_transcoder_disabled(display, pipe_config->cpu_transcoder);
 	assert_dp_port_disabled(intel_dp);
 	assert_edp_pll_disabled(display);
 
@@ -237,10 +236,8 @@ static void ilk_edp_pll_off(struct intel_dp *intel_dp,
 			    const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	assert_transcoder_disabled(dev_priv, old_crtc_state->cpu_transcoder);
+	assert_transcoder_disabled(display, old_crtc_state->cpu_transcoder);
 	assert_dp_port_disabled(intel_dp);
 	assert_edp_pll_enabled(display);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b8c57a5d26a0..a95564b499ea 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -419,23 +419,22 @@ intel_wait_for_pipe_off(const struct intel_crtc_state *old_crtc_state)
 	}
 }
 
-void assert_transcoder(struct drm_i915_private *dev_priv,
+void assert_transcoder(struct intel_display *display,
 		       enum transcoder cpu_transcoder, bool state)
 {
-	struct intel_display *display = &dev_priv->display;
 	bool cur_state;
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
 
 	/* we keep both pipes enabled on 830 */
-	if (IS_I830(dev_priv))
+	if (display->platform.i830)
 		state = true;
 
 	power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (wakeref) {
-		u32 val = intel_de_read(dev_priv,
-					TRANSCONF(dev_priv, cpu_transcoder));
+		u32 val = intel_de_read(display,
+					TRANSCONF(display, cpu_transcoder));
 		cur_state = !!(val & TRANSCONF_ENABLE);
 
 		intel_display_power_put(display, power_domain, wakeref);
@@ -1968,8 +1967,8 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 
 static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
 	if (!crtc_state->gmch_pfit.control)
 		return;
@@ -1978,18 +1977,18 @@ static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
 	 * The panel fitter should only be adjusted whilst the pipe is disabled,
 	 * according to register description and PRM.
 	 */
-	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)) & PFIT_ENABLE);
-	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
+	drm_WARN_ON(display->drm,
+		    intel_de_read(display, PFIT_CONTROL(display)) & PFIT_ENABLE);
+	assert_transcoder_disabled(display, crtc_state->cpu_transcoder);
 
-	intel_de_write(dev_priv, PFIT_PGM_RATIOS(dev_priv),
+	intel_de_write(display, PFIT_PGM_RATIOS(display),
 		       crtc_state->gmch_pfit.pgm_ratios);
-	intel_de_write(dev_priv, PFIT_CONTROL(dev_priv),
+	intel_de_write(display, PFIT_CONTROL(display),
 		       crtc_state->gmch_pfit.control);
 
 	/* Border color in case we don't scale up to the full screen. Black by
 	 * default, change to something else for debugging. */
-	intel_de_write(dev_priv, BCLRPAT(dev_priv, crtc->pipe), 0);
+	intel_de_write(display, BCLRPAT(display, crtc->pipe), 0);
 }
 
 /* Prefer intel_encoder_is_combo() */
@@ -2300,17 +2299,16 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 
 static void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(old_crtc_state);
 
 	if (!old_crtc_state->gmch_pfit.control)
 		return;
 
-	assert_transcoder_disabled(dev_priv, old_crtc_state->cpu_transcoder);
+	assert_transcoder_disabled(display, old_crtc_state->cpu_transcoder);
 
-	drm_dbg_kms(&dev_priv->drm, "disabling pfit, current: 0x%08x\n",
-		    intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)));
-	intel_de_write(dev_priv, PFIT_CONTROL(dev_priv), 0);
+	drm_dbg_kms(display->drm, "disabling pfit, current: 0x%08x\n",
+		    intel_de_read(display, PFIT_CONTROL(display)));
+	intel_de_write(display, PFIT_CONTROL(display), 0);
 }
 
 static void i9xx_crtc_disable(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index e594492bade7..503e2ea1d029 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -574,7 +574,7 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 void intel_hpd_poll_fini(struct drm_i915_private *i915);
 
 /* modesetting asserts */
-void assert_transcoder(struct drm_i915_private *dev_priv,
+void assert_transcoder(struct intel_display *display,
 		       enum transcoder cpu_transcoder, bool state);
 #define assert_transcoder_enabled(d, t) assert_transcoder(d, t, true)
 #define assert_transcoder_disabled(d, t) assert_transcoder(d, t, false)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index cc19cd51ab4d..08a30e5aafce 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1843,7 +1843,7 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 	int i;
 
-	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
+	assert_transcoder_disabled(display, crtc_state->cpu_transcoder);
 
 	/* PLL is protected by panel, make sure we can write it */
 	if (i9xx_has_pps(dev_priv))
@@ -2024,7 +2024,7 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	enum pipe pipe = crtc->pipe;
 
-	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
+	assert_transcoder_disabled(display, crtc_state->cpu_transcoder);
 
 	/* PLL is protected by panel, make sure we can write it */
 	assert_pps_unlocked(display, pipe);
@@ -2171,7 +2171,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	enum pipe pipe = crtc->pipe;
 
-	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
+	assert_transcoder_disabled(display, crtc_state->cpu_transcoder);
 
 	/* PLL is protected by panel, make sure we can write it */
 	assert_pps_unlocked(display, pipe);
@@ -2253,36 +2253,38 @@ int vlv_force_pll_on(struct drm_i915_private *dev_priv, enum pipe pipe,
 
 void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 val;
 
 	/* Make sure the pipe isn't still relying on us */
-	assert_transcoder_disabled(dev_priv, (enum transcoder)pipe);
+	assert_transcoder_disabled(display, (enum transcoder)pipe);
 
 	val = DPLL_INTEGRATED_REF_CLK_VLV |
 		DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
 	if (pipe != PIPE_A)
 		val |= DPLL_INTEGRATED_CRI_CLK_VLV;
 
-	intel_de_write(dev_priv, DPLL(dev_priv, pipe), val);
-	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
+	intel_de_write(display, DPLL(display, pipe), val);
+	intel_de_posting_read(display, DPLL(display, pipe));
 }
 
 void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
+	struct intel_display *display = &dev_priv->display;
 	enum dpio_channel ch = vlv_pipe_to_channel(pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
 	u32 val;
 
 	/* Make sure the pipe isn't still relying on us */
-	assert_transcoder_disabled(dev_priv, (enum transcoder)pipe);
+	assert_transcoder_disabled(display, (enum transcoder)pipe);
 
 	val = DPLL_SSC_REF_CLK_CHV |
 		DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
 	if (pipe != PIPE_A)
 		val |= DPLL_INTEGRATED_CRI_CLK_VLV;
 
-	intel_de_write(dev_priv, DPLL(dev_priv, pipe), val);
-	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
+	intel_de_write(display, DPLL(display, pipe), val);
+	intel_de_posting_read(display, DPLL(display, pipe));
 
 	vlv_dpio_get(dev_priv);
 
@@ -2296,19 +2298,19 @@ void chv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 void i9xx_disable_pll(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
 	/* Don't disable pipe or pipe PLLs if needed */
-	if (IS_I830(dev_priv))
+	if (display->platform.i830)
 		return;
 
 	/* Make sure the pipe isn't still relying on us */
-	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
+	assert_transcoder_disabled(display, crtc_state->cpu_transcoder);
 
-	intel_de_write(dev_priv, DPLL(dev_priv, pipe), DPLL_VGA_MODE_DIS);
-	intel_de_posting_read(dev_priv, DPLL(dev_priv, pipe));
+	intel_de_write(display, DPLL(display, pipe), DPLL_VGA_MODE_DIS);
+	intel_de_posting_read(display, DPLL(display, pipe));
 }
 
 
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 9ebe80bfaab6..024d0c7e0a88 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -511,6 +511,7 @@ void intel_fdi_normal_train(struct intel_crtc *crtc)
 static void ilk_fdi_link_train(struct intel_crtc *crtc,
 			       const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum pipe pipe = crtc->pipe;
@@ -525,7 +526,7 @@ static void ilk_fdi_link_train(struct intel_crtc *crtc,
 		       intel_de_read(dev_priv, PIPE_DATA_M1(dev_priv, pipe)) & TU_SIZE_MASK);
 
 	/* FDI needs bits from pipe first */
-	assert_transcoder_enabled(dev_priv, crtc_state->cpu_transcoder);
+	assert_transcoder_enabled(display, crtc_state->cpu_transcoder);
 
 	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
 	   for train result */
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 1c50732a099d..7838c92f8ded 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1436,7 +1436,6 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
 				const struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_tv *intel_tv = enc_to_tv(encoder);
 	const struct intel_tv_connector_state *tv_conn_state =
@@ -1543,7 +1542,7 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
 		intel_de_write(display, TV_CLR_LEVEL,
 			       ((video_levels->black << TV_BLACK_LEVEL_SHIFT) | (video_levels->blank << TV_BLANK_LEVEL_SHIFT)));
 
-	assert_transcoder_disabled(dev_priv, pipe_config->cpu_transcoder);
+	assert_transcoder_disabled(display, pipe_config->cpu_transcoder);
 
 	/* Filter ctl must be set before TV_WIN_SIZE */
 	tv_filter_ctl = TV_AUTO_SCALE;
-- 
2.39.5

