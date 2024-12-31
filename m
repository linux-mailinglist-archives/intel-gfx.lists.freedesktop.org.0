Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 500DB9FF0AE
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 17:28:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3AFF10E693;
	Tue, 31 Dec 2024 16:28:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HSMKJIzN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13D3310E691;
 Tue, 31 Dec 2024 16:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735662483; x=1767198483;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0SP9bJIvaCyHHvZm4wMj7xVx4TrYyvuNgjUbDBK7yoc=;
 b=HSMKJIzNHmuhne92/lh7l16qxB7HXKIekcXXPKEXDtrQdB/vYpJ/mUDc
 dPqUEIbov7Z0U4MJFmw6OQVYN5vtx/VTs38g4UFkW3xyH8l8telaU9L4d
 g7DX5fvv6B21PQuAxXZnvyeHhQu52ObJD9hZ4u5mbylx8BCCpqKqV9y4Q
 0k8TPAeX/X/EB0OATsYvpJuoXR0Wt2huYuoKU5Zha2Hr2lSNYDx7/UaOW
 OHRbi76gmobdN9JJPeBrUJKLU4VvBeiJe5WS3FnfaXpAdP5J6/N8EQZuH
 u+qP1Ao8qHgicmzCdy1/TDZiFo+qfYh7pVuv7rg4VXb6/9/nK559f9/y0 w==;
X-CSE-ConnectionGUID: WcULKMEeTeCr83WzIZagkA==
X-CSE-MsgGUID: MePvT8u8QT+2kkArNonnAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="35251989"
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="35251989"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 08:28:03 -0800
X-CSE-ConnectionGUID: rH+SoAD4SDCcdXWuHwl8GQ==
X-CSE-MsgGUID: 1sT9x1tLTBekG5zor4Ke+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="100924956"
Received: from iklimasz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 08:28:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Gustavo Sousa <gustavo.sousa@intel.com>,
 ville.syrjala@linux.intel.com
Subject: [PATCH 3/4] drm/i915/pmdemand: convert to struct intel_display
Date: Tue, 31 Dec 2024 18:27:39 +0200
Message-Id: <c1d92e9490013d5aba50fc1d1ebc0ee18e82cf7e.1735662324.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735662324.git.jani.nikula@intel.com>
References: <cover.1735662324.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device
structure. Convert pmdemand to it.

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |   4 +-
 .../drm/i915/display/intel_display_power.c    |   4 +-
 .../drm/i915/display/intel_modeset_setup.c    |  17 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 160 +++++++++---------
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  14 +-
 5 files changed, 101 insertions(+), 98 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 497b4a1f045f..c4cfb0406fa2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -233,7 +233,7 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	if (ret < 0)
 		goto cleanup_vga;
 
-	intel_pmdemand_init_early(i915);
+	intel_pmdemand_init_early(display);
 
 	intel_power_domains_init_hw(display, false);
 
@@ -265,7 +265,7 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
-	ret = intel_pmdemand_init(i915);
+	ret = intel_pmdemand_init(display);
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 34465d56def0..d3b8453a1705 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1103,7 +1103,7 @@ static void gen9_dbuf_enable(struct intel_display *display)
 	slices_mask = BIT(DBUF_S1) | display->dbuf.enabled_slices;
 
 	if (DISPLAY_VER(display) >= 14)
-		intel_pmdemand_program_dbuf(dev_priv, slices_mask);
+		intel_pmdemand_program_dbuf(display, slices_mask);
 
 	/*
 	 * Just power up at least 1 slice, we will
@@ -1119,7 +1119,7 @@ static void gen9_dbuf_disable(struct intel_display *display)
 	gen9_dbuf_slices_update(dev_priv, 0);
 
 	if (DISPLAY_VER(display) >= 14)
-		intel_pmdemand_program_dbuf(dev_priv, 0);
+		intel_pmdemand_program_dbuf(display, 0);
 }
 
 static void gen12_dbuf_slices_config(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 9db30db428f7..9a2bea19f17b 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -116,6 +116,7 @@ static void set_encoder_for_connector(struct intel_connector *connector,
 
 static void reset_encoder_connector_state(struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_pmdemand_state *pmdemand_state =
 		to_intel_pmdemand_state(i915->display.pmdemand.obj.state);
@@ -128,7 +129,7 @@ static void reset_encoder_connector_state(struct intel_encoder *encoder)
 			continue;
 
 		/* Clear the corresponding bit in pmdemand active phys mask */
-		intel_pmdemand_update_phys_mask(i915, encoder,
+		intel_pmdemand_update_phys_mask(display, encoder,
 						pmdemand_state, false);
 
 		set_encoder_for_connector(connector, NULL);
@@ -152,6 +153,7 @@ static void reset_crtc_encoder_state(struct intel_crtc *crtc)
 
 static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_bw_state *bw_state =
 		to_intel_bw_state(i915->display.bw.obj.state);
@@ -185,7 +187,7 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 	bw_state->data_rate[pipe] = 0;
 	bw_state->num_active_planes[pipe] = 0;
 
-	intel_pmdemand_update_port_clock(i915, pmdemand_state, pipe, 0);
+	intel_pmdemand_update_port_clock(display, pmdemand_state, pipe, 0);
 }
 
 /*
@@ -582,6 +584,7 @@ static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
 
 static void intel_sanitize_encoder(struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_connector *connector;
 	struct intel_crtc *crtc = to_intel_crtc(encoder->base.crtc);
@@ -613,7 +616,7 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 			    encoder->base.name);
 
 		/* Clear the corresponding bit in pmdemand active phys mask */
-		intel_pmdemand_update_phys_mask(i915, encoder,
+		intel_pmdemand_update_phys_mask(display, encoder,
 						pmdemand_state, false);
 
 		/*
@@ -770,11 +773,11 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 				}
 			}
 
-			intel_pmdemand_update_phys_mask(i915, encoder,
+			intel_pmdemand_update_phys_mask(display, encoder,
 							pmdemand_state,
 							true);
 		} else {
-			intel_pmdemand_update_phys_mask(i915, encoder,
+			intel_pmdemand_update_phys_mask(display, encoder,
 							pmdemand_state,
 							false);
 
@@ -899,13 +902,13 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 		cdclk_state->min_voltage_level[crtc->pipe] =
 			crtc_state->min_voltage_level;
 
-		intel_pmdemand_update_port_clock(i915, pmdemand_state, pipe,
+		intel_pmdemand_update_port_clock(display, pmdemand_state, pipe,
 						 crtc_state->port_clock);
 
 		intel_bw_crtc_update(bw_state, crtc_state);
 	}
 
-	intel_pmdemand_init_pmdemand_params(i915, pmdemand_state);
+	intel_pmdemand_init_pmdemand_params(display, pmdemand_state);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 500faf639290..9373cf2885ab 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -74,10 +74,10 @@ static const struct intel_global_state_funcs intel_pmdemand_funcs = {
 static struct intel_pmdemand_state *
 intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_global_state *pmdemand_state =
 		intel_atomic_get_global_obj_state(state,
-						  &i915->display.pmdemand.obj);
+						  &display->pmdemand.obj);
 
 	if (IS_ERR(pmdemand_state))
 		return ERR_CAST(pmdemand_state);
@@ -88,10 +88,10 @@ intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)
 static struct intel_pmdemand_state *
 intel_atomic_get_old_pmdemand_state(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_global_state *pmdemand_state =
 		intel_atomic_get_old_global_obj_state(state,
-						      &i915->display.pmdemand.obj);
+						      &display->pmdemand.obj);
 
 	if (!pmdemand_state)
 		return NULL;
@@ -102,10 +102,10 @@ intel_atomic_get_old_pmdemand_state(struct intel_atomic_state *state)
 static struct intel_pmdemand_state *
 intel_atomic_get_new_pmdemand_state(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_global_state *pmdemand_state =
 		intel_atomic_get_new_global_obj_state(state,
-						      &i915->display.pmdemand.obj);
+						      &display->pmdemand.obj);
 
 	if (!pmdemand_state)
 		return NULL;
@@ -113,40 +113,41 @@ intel_atomic_get_new_pmdemand_state(struct intel_atomic_state *state)
 	return to_intel_pmdemand_state(pmdemand_state);
 }
 
-int intel_pmdemand_init(struct drm_i915_private *i915)
+int intel_pmdemand_init(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_pmdemand_state *pmdemand_state;
 
 	pmdemand_state = kzalloc(sizeof(*pmdemand_state), GFP_KERNEL);
 	if (!pmdemand_state)
 		return -ENOMEM;
 
-	intel_atomic_global_obj_init(i915, &i915->display.pmdemand.obj,
+	intel_atomic_global_obj_init(i915, &display->pmdemand.obj,
 				     &pmdemand_state->base,
 				     &intel_pmdemand_funcs);
 
-	if (IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_A0, STEP_C0))
+	if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_C0))
 		/* Wa_14016740474 */
-		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
+		intel_de_rmw(display, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
 
 	return 0;
 }
 
-void intel_pmdemand_init_early(struct drm_i915_private *i915)
+void intel_pmdemand_init_early(struct intel_display *display)
 {
-	mutex_init(&i915->display.pmdemand.lock);
-	init_waitqueue_head(&i915->display.pmdemand.waitqueue);
+	mutex_init(&display->pmdemand.lock);
+	init_waitqueue_head(&display->pmdemand.waitqueue);
 }
 
 void
-intel_pmdemand_update_phys_mask(struct drm_i915_private *i915,
+intel_pmdemand_update_phys_mask(struct intel_display *display,
 				struct intel_encoder *encoder,
 				struct intel_pmdemand_state *pmdemand_state,
 				bool set_bit)
 {
 	enum phy phy;
 
-	if (DISPLAY_VER(i915) < 14)
+	if (DISPLAY_VER(display) < 14)
 		return;
 
 	if (!encoder)
@@ -164,18 +165,18 @@ intel_pmdemand_update_phys_mask(struct drm_i915_private *i915,
 }
 
 void
-intel_pmdemand_update_port_clock(struct drm_i915_private *i915,
+intel_pmdemand_update_port_clock(struct intel_display *display,
 				 struct intel_pmdemand_state *pmdemand_state,
 				 enum pipe pipe, int port_clock)
 {
-	if (DISPLAY_VER(i915) < 14)
+	if (DISPLAY_VER(display) < 14)
 		return;
 
 	pmdemand_state->ddi_clocks[pipe] = port_clock;
 }
 
 static void
-intel_pmdemand_update_max_ddiclk(struct drm_i915_private *i915,
+intel_pmdemand_update_max_ddiclk(struct intel_display *display,
 				 struct intel_atomic_state *state,
 				 struct intel_pmdemand_state *pmdemand_state)
 {
@@ -185,7 +186,7 @@ intel_pmdemand_update_max_ddiclk(struct drm_i915_private *i915,
 	int i;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
-		intel_pmdemand_update_port_clock(i915, pmdemand_state,
+		intel_pmdemand_update_port_clock(display, pmdemand_state,
 						 crtc->pipe,
 						 new_crtc_state->port_clock);
 
@@ -196,7 +197,7 @@ intel_pmdemand_update_max_ddiclk(struct drm_i915_private *i915,
 }
 
 static void
-intel_pmdemand_update_connector_phys(struct drm_i915_private *i915,
+intel_pmdemand_update_connector_phys(struct intel_display *display,
 				     struct intel_atomic_state *state,
 				     struct drm_connector_state *conn_state,
 				     bool set_bit,
@@ -217,12 +218,12 @@ intel_pmdemand_update_connector_phys(struct drm_i915_private *i915,
 	if (!crtc_state->hw.active)
 		return;
 
-	intel_pmdemand_update_phys_mask(i915, encoder, pmdemand_state,
+	intel_pmdemand_update_phys_mask(display, encoder, pmdemand_state,
 					set_bit);
 }
 
 static void
-intel_pmdemand_update_active_non_tc_phys(struct drm_i915_private *i915,
+intel_pmdemand_update_active_non_tc_phys(struct intel_display *display,
 					 struct intel_atomic_state *state,
 					 struct intel_pmdemand_state *pmdemand_state)
 {
@@ -237,12 +238,12 @@ intel_pmdemand_update_active_non_tc_phys(struct drm_i915_private *i915,
 			continue;
 
 		/* First clear the active phys in the old connector state */
-		intel_pmdemand_update_connector_phys(i915, state,
+		intel_pmdemand_update_connector_phys(display, state,
 						     old_conn_state, false,
 						     pmdemand_state);
 
 		/* Then set the active phys in new connector state */
-		intel_pmdemand_update_connector_phys(i915, state,
+		intel_pmdemand_update_connector_phys(display, state,
 						     new_conn_state, true,
 						     pmdemand_state);
 	}
@@ -253,7 +254,7 @@ intel_pmdemand_update_active_non_tc_phys(struct drm_i915_private *i915,
 }
 
 static bool
-intel_pmdemand_encoder_has_tc_phy(struct drm_i915_private *i915,
+intel_pmdemand_encoder_has_tc_phy(struct intel_display *display,
 				  struct intel_encoder *encoder)
 {
 	return encoder && intel_encoder_is_tc(encoder);
@@ -262,7 +263,7 @@ intel_pmdemand_encoder_has_tc_phy(struct drm_i915_private *i915,
 static bool
 intel_pmdemand_connector_needs_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct drm_connector_state *old_conn_state;
 	struct drm_connector_state *new_conn_state;
 	struct drm_connector *connector;
@@ -279,8 +280,8 @@ intel_pmdemand_connector_needs_update(struct intel_atomic_state *state)
 			continue;
 
 		if (old_encoder == new_encoder ||
-		    (intel_pmdemand_encoder_has_tc_phy(i915, old_encoder) &&
-		     intel_pmdemand_encoder_has_tc_phy(i915, new_encoder)))
+		    (intel_pmdemand_encoder_has_tc_phy(display, old_encoder) &&
+		     intel_pmdemand_encoder_has_tc_phy(display, new_encoder)))
 			continue;
 
 		return true;
@@ -337,13 +338,13 @@ static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
 
 int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_bw_state *new_bw_state;
 	const struct intel_cdclk_state *new_cdclk_state;
 	const struct intel_dbuf_state *new_dbuf_state;
 	struct intel_pmdemand_state *new_pmdemand_state;
 
-	if (DISPLAY_VER(i915) < 14)
+	if (DISPLAY_VER(display) < 14)
 		return 0;
 
 	if (!intel_pmdemand_needs_update(state))
@@ -365,14 +366,14 @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
 	if (IS_ERR(new_dbuf_state))
 		return PTR_ERR(new_dbuf_state);
 
-	if (DISPLAY_VER(i915) < 30) {
+	if (DISPLAY_VER(display) < 30) {
 		new_pmdemand_state->params.active_dbufs =
 			min_t(u8, hweight8(new_dbuf_state->enabled_slices), 3);
 		new_pmdemand_state->params.active_pipes =
 			min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
 	} else {
 		new_pmdemand_state->params.active_pipes =
-			min_t(u8, hweight8(new_dbuf_state->active_pipes), INTEL_NUM_PIPES(i915));
+			min_t(u8, hweight8(new_dbuf_state->active_pipes), INTEL_NUM_PIPES(display));
 	}
 
 	new_cdclk_state = intel_atomic_get_cdclk_state(state);
@@ -384,9 +385,9 @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
 	new_pmdemand_state->params.cdclk_freq_mhz =
 		DIV_ROUND_UP(new_cdclk_state->actual.cdclk, 1000);
 
-	intel_pmdemand_update_max_ddiclk(i915, state, new_pmdemand_state);
+	intel_pmdemand_update_max_ddiclk(display, state, new_pmdemand_state);
 
-	intel_pmdemand_update_active_non_tc_phys(i915, state, new_pmdemand_state);
+	intel_pmdemand_update_active_non_tc_phys(display, state, new_pmdemand_state);
 
 	/*
 	 * Active_PLLs starts with 1 because of CDCLK PLL.
@@ -407,36 +408,36 @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
 		return intel_atomic_lock_global_state(&new_pmdemand_state->base);
 }
 
-static bool intel_pmdemand_check_prev_transaction(struct drm_i915_private *i915)
+static bool intel_pmdemand_check_prev_transaction(struct intel_display *display)
 {
-	return !(intel_de_wait_for_clear(i915,
+	return !(intel_de_wait_for_clear(display,
 					 XELPDP_INITIATE_PMDEMAND_REQUEST(1),
 					 XELPDP_PMDEMAND_REQ_ENABLE, 10) ||
-		 intel_de_wait_for_clear(i915,
+		 intel_de_wait_for_clear(display,
 					 GEN12_DCPR_STATUS_1,
 					 XELPDP_PMDEMAND_INFLIGHT_STATUS, 10));
 }
 
 void
-intel_pmdemand_init_pmdemand_params(struct drm_i915_private *i915,
+intel_pmdemand_init_pmdemand_params(struct intel_display *display,
 				    struct intel_pmdemand_state *pmdemand_state)
 {
 	u32 reg1, reg2;
 
-	if (DISPLAY_VER(i915) < 14)
+	if (DISPLAY_VER(display) < 14)
 		return;
 
-	mutex_lock(&i915->display.pmdemand.lock);
-	if (drm_WARN_ON(&i915->drm,
-			!intel_pmdemand_check_prev_transaction(i915))) {
+	mutex_lock(&display->pmdemand.lock);
+	if (drm_WARN_ON(display->drm,
+			!intel_pmdemand_check_prev_transaction(display))) {
 		memset(&pmdemand_state->params, 0,
 		       sizeof(pmdemand_state->params));
 		goto unlock;
 	}
 
-	reg1 = intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0));
+	reg1 = intel_de_read(display, XELPDP_INITIATE_PMDEMAND_REQUEST(0));
 
-	reg2 = intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
+	reg2 = intel_de_read(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
 
 	pmdemand_state->params.qclk_gv_bw =
 		REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, reg1);
@@ -452,7 +453,7 @@ intel_pmdemand_init_pmdemand_params(struct drm_i915_private *i915,
 	pmdemand_state->params.ddiclk_max =
 		REG_FIELD_GET(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, reg2);
 
-	if (DISPLAY_VER(i915) >= 30) {
+	if (DISPLAY_VER(display) >= 30) {
 		pmdemand_state->params.active_pipes =
 			REG_FIELD_GET(XE3_PMDEMAND_PIPES_MASK, reg1);
 	} else {
@@ -466,49 +467,49 @@ intel_pmdemand_init_pmdemand_params(struct drm_i915_private *i915,
 	}
 
 unlock:
-	mutex_unlock(&i915->display.pmdemand.lock);
+	mutex_unlock(&display->pmdemand.lock);
 }
 
-static bool intel_pmdemand_req_complete(struct drm_i915_private *i915)
+static bool intel_pmdemand_req_complete(struct intel_display *display)
 {
-	return !(intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) &
+	return !(intel_de_read(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1)) &
 		 XELPDP_PMDEMAND_REQ_ENABLE);
 }
 
-static void intel_pmdemand_wait(struct drm_i915_private *i915)
+static void intel_pmdemand_wait(struct intel_display *display)
 {
-	if (!wait_event_timeout(i915->display.pmdemand.waitqueue,
-				intel_pmdemand_req_complete(i915),
+	if (!wait_event_timeout(display->pmdemand.waitqueue,
+				intel_pmdemand_req_complete(display),
 				msecs_to_jiffies_timeout(10)))
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"timed out waiting for Punit PM Demand Response\n");
 }
 
 /* Required to be programmed during Display Init Sequences. */
-void intel_pmdemand_program_dbuf(struct drm_i915_private *i915,
+void intel_pmdemand_program_dbuf(struct intel_display *display,
 				 u8 dbuf_slices)
 {
 	u32 dbufs = min_t(u32, hweight8(dbuf_slices), 3);
 
 	/* PM Demand only tracks active dbufs on pre-Xe3 platforms */
-	if (DISPLAY_VER(i915) >= 30)
+	if (DISPLAY_VER(display) >= 30)
 		return;
 
-	mutex_lock(&i915->display.pmdemand.lock);
-	if (drm_WARN_ON(&i915->drm,
-			!intel_pmdemand_check_prev_transaction(i915)))
+	mutex_lock(&display->pmdemand.lock);
+	if (drm_WARN_ON(display->drm,
+			!intel_pmdemand_check_prev_transaction(display)))
 		goto unlock;
 
-	intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
+	intel_de_rmw(display, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
 		     XELPDP_PMDEMAND_DBUFS_MASK,
 		     REG_FIELD_PREP(XELPDP_PMDEMAND_DBUFS_MASK, dbufs));
-	intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
+	intel_de_rmw(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
 		     XELPDP_PMDEMAND_REQ_ENABLE);
 
-	intel_pmdemand_wait(i915);
+	intel_pmdemand_wait(display);
 
 unlock:
-	mutex_unlock(&i915->display.pmdemand.lock);
+	mutex_unlock(&display->pmdemand.lock);
 }
 
 static void
@@ -568,38 +569,37 @@ intel_pmdemand_update_params(struct intel_display *display,
 }
 
 static void
-intel_pmdemand_program_params(struct drm_i915_private *i915,
+intel_pmdemand_program_params(struct intel_display *display,
 			      const struct intel_pmdemand_state *new,
 			      const struct intel_pmdemand_state *old,
 			      bool serialized)
 {
-	struct intel_display *display = &i915->display;
 	bool changed = false;
 	u32 reg1, mod_reg1;
 	u32 reg2, mod_reg2;
 
-	mutex_lock(&i915->display.pmdemand.lock);
-	if (drm_WARN_ON(&i915->drm,
-			!intel_pmdemand_check_prev_transaction(i915)))
+	mutex_lock(&display->pmdemand.lock);
+	if (drm_WARN_ON(display->drm,
+			!intel_pmdemand_check_prev_transaction(display)))
 		goto unlock;
 
-	reg1 = intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0));
+	reg1 = intel_de_read(display, XELPDP_INITIATE_PMDEMAND_REQUEST(0));
 	mod_reg1 = reg1;
 
-	reg2 = intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
+	reg2 = intel_de_read(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1));
 	mod_reg2 = reg2;
 
 	intel_pmdemand_update_params(display, new, old, &mod_reg1, &mod_reg2,
 				     serialized);
 
 	if (reg1 != mod_reg1) {
-		intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
+		intel_de_write(display, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
 			       mod_reg1);
 		changed = true;
 	}
 
 	if (reg2 != mod_reg2) {
-		intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
+		intel_de_write(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
 			       mod_reg2);
 		changed = true;
 	}
@@ -608,17 +608,17 @@ intel_pmdemand_program_params(struct drm_i915_private *i915,
 	if (!changed)
 		goto unlock;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "initate pmdemand request values: (0x%x 0x%x)\n",
 		    mod_reg1, mod_reg2);
 
-	intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
+	intel_de_rmw(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
 		     XELPDP_PMDEMAND_REQ_ENABLE);
 
-	intel_pmdemand_wait(i915);
+	intel_pmdemand_wait(display);
 
 unlock:
-	mutex_unlock(&i915->display.pmdemand.lock);
+	mutex_unlock(&display->pmdemand.lock);
 }
 
 static bool
@@ -630,13 +630,13 @@ intel_pmdemand_state_changed(const struct intel_pmdemand_state *new,
 
 void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_pmdemand_state *new_pmdemand_state =
 		intel_atomic_get_new_pmdemand_state(state);
 	const struct intel_pmdemand_state *old_pmdemand_state =
 		intel_atomic_get_old_pmdemand_state(state);
 
-	if (DISPLAY_VER(i915) < 14)
+	if (DISPLAY_VER(display) < 14)
 		return;
 
 	if (!new_pmdemand_state ||
@@ -646,20 +646,20 @@ void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_pmdemand_state->base.changed);
 
-	intel_pmdemand_program_params(i915, new_pmdemand_state,
+	intel_pmdemand_program_params(display, new_pmdemand_state,
 				      old_pmdemand_state,
 				      intel_atomic_global_state_is_serialized(state));
 }
 
 void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_pmdemand_state *new_pmdemand_state =
 		intel_atomic_get_new_pmdemand_state(state);
 	const struct intel_pmdemand_state *old_pmdemand_state =
 		intel_atomic_get_old_pmdemand_state(state);
 
-	if (DISPLAY_VER(i915) < 14)
+	if (DISPLAY_VER(display) < 14)
 		return;
 
 	if (!new_pmdemand_state ||
@@ -669,6 +669,6 @@ void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_pmdemand_state->base.changed);
 
-	intel_pmdemand_program_params(i915, new_pmdemand_state, NULL,
+	intel_pmdemand_program_params(display, new_pmdemand_state, NULL,
 				      intel_atomic_global_state_is_serialized(state));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/drm/i915/display/intel_pmdemand.h
index 34f68912fe04..821ef2c4134a 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.h
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
@@ -9,9 +9,9 @@
 #include <linux/types.h>
 
 enum pipe;
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_encoder;
 struct intel_global_state;
 struct intel_plane_state;
@@ -19,18 +19,18 @@ struct intel_pmdemand_state;
 
 struct intel_pmdemand_state *to_intel_pmdemand_state(struct intel_global_state *obj_state);
 
-void intel_pmdemand_init_early(struct drm_i915_private *i915);
-int intel_pmdemand_init(struct drm_i915_private *i915);
-void intel_pmdemand_init_pmdemand_params(struct drm_i915_private *i915,
+void intel_pmdemand_init_early(struct intel_display *display);
+int intel_pmdemand_init(struct intel_display *display);
+void intel_pmdemand_init_pmdemand_params(struct intel_display *display,
 					 struct intel_pmdemand_state *pmdemand_state);
-void intel_pmdemand_update_port_clock(struct drm_i915_private *i915,
+void intel_pmdemand_update_port_clock(struct intel_display *display,
 				      struct intel_pmdemand_state *pmdemand_state,
 				      enum pipe pipe, int port_clock);
-void intel_pmdemand_update_phys_mask(struct drm_i915_private *i915,
+void intel_pmdemand_update_phys_mask(struct intel_display *display,
 				     struct intel_encoder *encoder,
 				     struct intel_pmdemand_state *pmdemand_state,
 				     bool clear_bit);
-void intel_pmdemand_program_dbuf(struct drm_i915_private *i915,
+void intel_pmdemand_program_dbuf(struct intel_display *display,
 				 u8 dbuf_slices);
 void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state);
 void intel_pmdemand_post_plane_update(struct intel_atomic_state *state);
-- 
2.39.5

