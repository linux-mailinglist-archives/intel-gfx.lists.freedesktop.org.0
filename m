Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C8BA3203B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 08:46:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7AD110E7DD;
	Wed, 12 Feb 2025 07:46:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DlqAvxlh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0328910E7DD;
 Wed, 12 Feb 2025 07:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739346364; x=1770882364;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9w8b7/B89KZnoiuXyf6i552RcaLXfrvauxe1ndwavRs=;
 b=DlqAvxlhP9U4jqtWKwq8ys2rfbAXBEPz41rC4ZbcAu8Rhjy1E4fXjl9e
 ETD0gl0P4fnr8jxmqLSHYgW84Tt1A4IS2IH0jLpdZaTecrSrslEL+ls5O
 Qf+tdrN2KnLVSsgrS/r3z33SFjovc7W6fBWvLp5SEyjJ0F26AJP9zbngM
 5W3FHoT8lpA3JUO7Jf7DgWkVBObuXVBQw4OxEPjg18OdtpnKoshmhIXlu
 eCP2VOGACNB6sXRLg/KTMW14qFf9+LTMuh9ePpWSjIiQIPedlg5wOe3Li
 FSXePEKqcAhhGUorh1uiNFLiZnXl4Y4ghwqVwemUeB6AQKYPVr7EXgus0 w==;
X-CSE-ConnectionGUID: D0irGEEgT+abXi0aqYdtbA==
X-CSE-MsgGUID: AWwTpqiZQmG4ugO5IHLEdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39906742"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="39906742"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:46:04 -0800
X-CSE-ConnectionGUID: VWlm7sJXQsGBett2gp6R8A==
X-CSE-MsgGUID: 4oGdYdZmR+KUKIIaFpUMtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112601113"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 11 Feb 2025 23:46:02 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 5/8] drm/i915/dpll: Use intel_display for asserting pll
Date: Wed, 12 Feb 2025 13:15:39 +0530
Message-Id: <20250212074542.3569452-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250212074542.3569452-1-suraj.kandpal@intel.com>
References: <20250212074542.3569452-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Use intel_display instead of drm_i915_private to assert pll enabled
and disabled and the corresponding changes needed to make that happen.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 22 +++++++++----------
 .../i915/display/intel_display_power_well.c   | 10 ++++-----
 drivers/gpu/drm/i915/display/intel_dpll.c     | 11 +++++-----
 drivers/gpu/drm/i915/display/intel_dpll.h     |  5 +++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  9 +++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      | 16 ++++++--------
 drivers/gpu/drm/i915/display/intel_fdi.h      |  7 +++---
 drivers/gpu/drm/i915/display/intel_lvds.c     |  7 +++---
 .../gpu/drm/i915/display/intel_pch_display.c  |  2 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    | 12 +++++-----
 drivers/gpu/drm/i915/display/vlv_dsi_pll.h    | 10 +++++----
 12 files changed, 55 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 571a61b770b1..6c1e7441313e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -518,7 +518,7 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 	enum pipe pipe = crtc->pipe;
 	u32 val;
 
-	drm_dbg_kms(&dev_priv->drm, "enabling pipe %c\n", pipe_name(pipe));
+	drm_dbg_kms(display->drm, "enabling pipe %c\n", pipe_name(pipe));
 
 	assert_planes_disabled(crtc);
 
@@ -529,15 +529,15 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 	 */
 	if (HAS_GMCH(dev_priv)) {
 		if (intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
-			assert_dsi_pll_enabled(dev_priv);
+			assert_dsi_pll_enabled(display);
 		else
-			assert_pll_enabled(dev_priv, pipe);
+			assert_pll_enabled(display, pipe);
 	} else {
 		if (new_crtc_state->has_pch_encoder) {
 			/* if driving the PCH, we need FDI enabled */
-			assert_fdi_rx_pll_enabled(dev_priv,
+			assert_fdi_rx_pll_enabled(display,
 						  intel_crtc_pch_transcoder(crtc));
-			assert_fdi_tx_pll_enabled(dev_priv,
+			assert_fdi_tx_pll_enabled(display,
 						  (enum pipe) cpu_transcoder);
 		}
 		/* FIXME: assert CPU port conditions for SNB+ */
@@ -545,21 +545,21 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 
 	/* Wa_22012358565:adl-p */
 	if (DISPLAY_VER(dev_priv) == 13)
-		intel_de_rmw(dev_priv, PIPE_ARB_CTL(dev_priv, pipe),
+		intel_de_rmw(display, PIPE_ARB_CTL(display, pipe),
 			     0, PIPE_ARB_USE_PROG_SLOTS);
 
 	if (DISPLAY_VER(dev_priv) >= 14) {
 		u32 clear = DP_DSC_INSERT_SF_AT_EOL_WA;
 		u32 set = 0;
 
-		if (DISPLAY_VER(dev_priv) == 14)
+		if (DISPLAY_VER(display) == 14)
 			set |= DP_FEC_BS_JITTER_WA;
 
 		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
 			     clear, set);
 	}
 
-	val = intel_de_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
+	val = intel_de_read(display, TRANSCONF(display, cpu_transcoder));
 	if (val & TRANSCONF_ENABLE) {
 		/* we keep both pipes enabled on 830 */
 		drm_WARN_ON(&dev_priv->drm, !IS_I830(dev_priv));
@@ -567,16 +567,16 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 	}
 
 	/* Wa_1409098942:adlp+ */
-	if (DISPLAY_VER(dev_priv) >= 13 &&
+	if (DISPLAY_VER(display) >= 13 &&
 	    new_crtc_state->dsc.compression_enable) {
 		val &= ~TRANSCONF_PIXEL_COUNT_SCALING_MASK;
 		val |= REG_FIELD_PREP(TRANSCONF_PIXEL_COUNT_SCALING_MASK,
 				      TRANSCONF_PIXEL_COUNT_SCALING_X4);
 	}
 
-	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder),
+	intel_de_write(display, TRANSCONF(display, cpu_transcoder),
 		       val | TRANSCONF_ENABLE);
-	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
+	intel_de_posting_read(display, TRANSCONF(display, cpu_transcoder));
 
 	/*
 	 * Until the pipe starts PIPEDSL reads will return a stale value,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index faf5ca1c706d..6fbb94c8bfb3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1312,11 +1312,10 @@ static void vlv_dpio_cmn_power_well_enable(struct intel_display *display,
 static void vlv_dpio_cmn_power_well_disable(struct intel_display *display,
 					    struct i915_power_well *power_well)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe;
 
 	for_each_pipe(display, pipe)
-		assert_pll_disabled(dev_priv, pipe);
+		assert_pll_disabled(display, pipe);
 
 	/* Assert common reset */
 	intel_de_rmw(display, DPIO_CTL, DPIO_CMNRST, 0);
@@ -1498,7 +1497,6 @@ static void chv_dpio_cmn_power_well_enable(struct intel_display *display,
 static void chv_dpio_cmn_power_well_disable(struct intel_display *display,
 					    struct i915_power_well *power_well)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum i915_power_well_id id = i915_power_well_instance(power_well)->id;
 	enum dpio_phy phy;
 
@@ -1508,11 +1506,11 @@ static void chv_dpio_cmn_power_well_disable(struct intel_display *display,
 
 	if (id == VLV_DISP_PW_DPIO_CMN_BC) {
 		phy = DPIO_PHY0;
-		assert_pll_disabled(dev_priv, PIPE_A);
-		assert_pll_disabled(dev_priv, PIPE_B);
+		assert_pll_disabled(display, PIPE_A);
+		assert_pll_disabled(display, PIPE_B);
 	} else {
 		phy = DPIO_PHY1;
-		assert_pll_disabled(dev_priv, PIPE_C);
+		assert_pll_disabled(display, PIPE_C);
 	}
 
 	display->power.chv_phy_control &= ~PHY_COM_LANE_RESET_DEASSERT(phy);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 3256b1293f7f..cc19cd51ab4d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -2329,10 +2329,9 @@ void vlv_force_pll_off(struct drm_i915_private *dev_priv, enum pipe pipe)
 }
 
 /* Only for pre-ILK configs */
-static void assert_pll(struct drm_i915_private *dev_priv,
+static void assert_pll(struct intel_display *display,
 		       enum pipe pipe, bool state)
 {
-	struct intel_display *display = &dev_priv->display;
 	bool cur_state;
 
 	cur_state = intel_de_read(display, DPLL(display, pipe)) & DPLL_VCO_ENABLE;
@@ -2341,12 +2340,12 @@ static void assert_pll(struct drm_i915_private *dev_priv,
 				 str_on_off(state), str_on_off(cur_state));
 }
 
-void assert_pll_enabled(struct drm_i915_private *i915, enum pipe pipe)
+void assert_pll_enabled(struct intel_display *display, enum pipe pipe)
 {
-	assert_pll(i915, pipe, true);
+	assert_pll(display, pipe, true);
 }
 
-void assert_pll_disabled(struct drm_i915_private *i915, enum pipe pipe)
+void assert_pll_disabled(struct intel_display *display, enum pipe pipe)
 {
-	assert_pll(i915, pipe, false);
+	assert_pll(display, pipe, false);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
index a86a79408af0..21d06cbd2ce7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll.h
@@ -13,6 +13,7 @@ struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_dpll_hw_state;
 enum pipe;
 
@@ -46,7 +47,7 @@ void i9xx_crtc_clock_get(struct intel_crtc_state *crtc_state);
 void vlv_crtc_clock_get(struct intel_crtc_state *crtc_state);
 void chv_crtc_clock_get(struct intel_crtc_state *crtc_state);
 
-void assert_pll_enabled(struct drm_i915_private *i915, enum pipe pipe);
-void assert_pll_disabled(struct drm_i915_private *i915, enum pipe pipe);
+void assert_pll_enabled(struct intel_display *display, enum pipe pipe);
+void assert_pll_disabled(struct intel_display *display, enum pipe pipe);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 16332c0635b0..2d909e6c0137 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -171,11 +171,10 @@ intel_get_shared_dpll_by_id(struct intel_display *display,
 }
 
 /* For ILK+ */
-void assert_shared_dpll(struct drm_i915_private *i915,
+void assert_shared_dpll(struct intel_display *display,
 			struct intel_shared_dpll *pll,
 			bool state)
 {
-	struct intel_display *display = &i915->display;
 	bool cur_state;
 	struct intel_dpll_hw_state hw_state;
 
@@ -256,7 +255,6 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 	unsigned int pipe_mask = BIT(crtc->pipe);
 	unsigned int old_mask;
@@ -280,7 +278,7 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 
 	if (old_mask) {
 		drm_WARN_ON(display->drm, !pll->on);
-		assert_shared_dpll_enabled(i915, pll);
+		assert_shared_dpll_enabled(display, pll);
 		goto out;
 	}
 	drm_WARN_ON(display->drm, pll->on);
@@ -303,7 +301,6 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 	unsigned int pipe_mask = BIT(crtc->pipe);
 
@@ -325,7 +322,7 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 		    pll->info->name, pll->active_mask, pll->on,
 		    crtc->base.base.id, crtc->base.name);
 
-	assert_shared_dpll_enabled(i915, pll);
+	assert_shared_dpll_enabled(display, pll);
 	drm_WARN_ON(display->drm, !pll->on);
 
 	pll->active_mask &= ~pipe_mask;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index ebd0ed79d2b5..b6f2cbce13e4 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -392,7 +392,7 @@ struct intel_shared_dpll {
 struct intel_shared_dpll *
 intel_get_shared_dpll_by_id(struct intel_display *display,
 			    enum intel_dpll_id id);
-void assert_shared_dpll(struct drm_i915_private *i915,
+void assert_shared_dpll(struct intel_display *display,
 			struct intel_shared_dpll *pll,
 			bool state);
 #define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d, p, true)
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 3e8d6d8af780..9ebe80bfaab6 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -80,14 +80,13 @@ void assert_fdi_rx_disabled(struct drm_i915_private *i915, enum pipe pipe)
 	assert_fdi_rx(i915, pipe, false);
 }
 
-void assert_fdi_tx_pll_enabled(struct drm_i915_private *i915,
+void assert_fdi_tx_pll_enabled(struct intel_display *display,
 			       enum pipe pipe)
 {
-	struct intel_display *display = &i915->display;
 	bool cur_state;
 
 	/* ILK FDI PLL is always enabled */
-	if (IS_IRONLAKE(i915))
+	if (display->platform.ironlake)
 		return;
 
 	/* On Haswell, DDI ports are responsible for the FDI PLL setup */
@@ -99,10 +98,9 @@ void assert_fdi_tx_pll_enabled(struct drm_i915_private *i915,
 				 "FDI TX PLL assertion failure, should be active but is disabled\n");
 }
 
-static void assert_fdi_rx_pll(struct drm_i915_private *i915,
+static void assert_fdi_rx_pll(struct intel_display *display,
 			      enum pipe pipe, bool state)
 {
-	struct intel_display *display = &i915->display;
 	bool cur_state;
 
 	cur_state = intel_de_read(display, FDI_RX_CTL(pipe)) & FDI_RX_PLL_ENABLE;
@@ -111,14 +109,14 @@ static void assert_fdi_rx_pll(struct drm_i915_private *i915,
 				 str_on_off(state), str_on_off(cur_state));
 }
 
-void assert_fdi_rx_pll_enabled(struct drm_i915_private *i915, enum pipe pipe)
+void assert_fdi_rx_pll_enabled(struct intel_display *display, enum pipe pipe)
 {
-	assert_fdi_rx_pll(i915, pipe, true);
+	assert_fdi_rx_pll(display, pipe, true);
 }
 
-void assert_fdi_rx_pll_disabled(struct drm_i915_private *i915, enum pipe pipe)
+void assert_fdi_rx_pll_disabled(struct intel_display *display, enum pipe pipe)
 {
-	assert_fdi_rx_pll(i915, pipe, false);
+	assert_fdi_rx_pll(display, pipe, false);
 }
 
 void intel_fdi_link_train(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
index 477ff0136934..b5be09efb36f 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.h
+++ b/drivers/gpu/drm/i915/display/intel_fdi.h
@@ -13,6 +13,7 @@ struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_encoder;
 struct intel_link_bw_limits;
 
@@ -41,8 +42,8 @@ void assert_fdi_tx_enabled(struct drm_i915_private *i915, enum pipe pipe);
 void assert_fdi_tx_disabled(struct drm_i915_private *i915, enum pipe pipe);
 void assert_fdi_rx_enabled(struct drm_i915_private *i915, enum pipe pipe);
 void assert_fdi_rx_disabled(struct drm_i915_private *i915, enum pipe pipe);
-void assert_fdi_tx_pll_enabled(struct drm_i915_private *i915, enum pipe pipe);
-void assert_fdi_rx_pll_enabled(struct drm_i915_private *i915, enum pipe pipe);
-void assert_fdi_rx_pll_disabled(struct drm_i915_private *i915, enum pipe pipe);
+void assert_fdi_tx_pll_enabled(struct intel_display *display, enum pipe pipe);
+void assert_fdi_rx_pll_enabled(struct intel_display *display, enum pipe pipe);
+void assert_fdi_rx_pll_disabled(struct intel_display *display, enum pipe pipe);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index e86b3a86db82..6b05db2c10ba 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -240,6 +240,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -248,10 +249,10 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
 	u32 temp;
 
 	if (HAS_PCH_SPLIT(i915)) {
-		assert_fdi_rx_pll_disabled(i915, pipe);
-		assert_shared_dpll_disabled(i915, crtc_state->shared_dpll);
+		assert_fdi_rx_pll_disabled(display, pipe);
+		assert_shared_dpll_disabled(display, crtc_state->shared_dpll);
 	} else {
-		assert_pll_disabled(i915, pipe);
+		assert_pll_disabled(display, pipe);
 	}
 
 	intel_lvds_pps_init_hw(i915, &lvds_encoder->init_pps);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index e874a577b7d1..75ff5592312f 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -256,7 +256,7 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 	u32 val, pipeconf_val;
 
 	/* Make sure PCH DPLL is enabled */
-	assert_shared_dpll_enabled(dev_priv, crtc_state->shared_dpll);
+	assert_shared_dpll_enabled(display, crtc_state->shared_dpll);
 
 	/* FDI must be feeding us bits for PCH ports */
 	assert_fdi_tx_enabled(dev_priv, pipe);
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index ac69eaece0fd..2ed47e7d1051 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -590,9 +590,9 @@ void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port)
 	intel_de_write(display, MIPI_EOT_DISABLE(display, port), CLOCKSTOP);
 }
 
-static void assert_dsi_pll(struct drm_i915_private *i915, bool state)
+static void assert_dsi_pll(struct intel_display *display, bool state)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	bool cur_state;
 
 	vlv_cck_get(i915);
@@ -604,12 +604,12 @@ static void assert_dsi_pll(struct drm_i915_private *i915, bool state)
 				 str_on_off(state), str_on_off(cur_state));
 }
 
-void assert_dsi_pll_enabled(struct drm_i915_private *i915)
+void assert_dsi_pll_enabled(struct intel_display *display)
 {
-	assert_dsi_pll(i915, true);
+	assert_dsi_pll(display, true);
 }
 
-void assert_dsi_pll_disabled(struct drm_i915_private *i915)
+void assert_dsi_pll_disabled(struct intel_display *display)
 {
-	assert_dsi_pll(i915, false);
+	assert_dsi_pll(display, false);
 }
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.h b/drivers/gpu/drm/i915/display/vlv_dsi_pll.h
index fbe5113dbeb9..a032cc2a2524 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.h
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.h
@@ -11,6 +11,7 @@
 enum port;
 struct drm_i915_private;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_encoder;
 
 int vlv_dsi_pll_compute(struct intel_encoder *encoder,
@@ -33,13 +34,14 @@ u32 bxt_dsi_get_pclk(struct intel_encoder *encoder,
 void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port);
 
 #ifdef I915
-void assert_dsi_pll_enabled(struct drm_i915_private *i915);
-void assert_dsi_pll_disabled(struct drm_i915_private *i915);
+void assert_dsi_pll_enabled(struct intel_display *display);
+void assert_dsi_pll_disabled(struct intel_display *display);
 #else
-static inline void assert_dsi_pll_enabled(struct drm_i915_private *i915)
+static inline void assert_dsi_pll_enabled(struct intel_display *display)
 {
 }
-static inline void assert_dsi_pll_disabled(struct drm_i915_private *i915)
+
+static inline void assert_dsi_pll_disabled(struct intel_display *display)
 {
 }
 #endif
-- 
2.34.1

