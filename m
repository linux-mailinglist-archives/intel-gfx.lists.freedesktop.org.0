Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2D6A789F4
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 10:32:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A315F10E6FB;
	Wed,  2 Apr 2025 08:32:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NMUKpP4m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A5A010E6F7;
 Wed,  2 Apr 2025 08:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743582734; x=1775118734;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3z7uWjpPMaKgeB5Kyh2JdurCkogtwIXj/EM37ifXN3k=;
 b=NMUKpP4mkMXoji2ftHurR/F6+Ch9mnCZ75L34ZhPTMxWD2iEsh9meWVj
 l2GIbaSYa24Y/ep0jhCnJNlVo1vqaZ6vytzekQQ7NjYeG2KscQ9BtaKNz
 X6Pb3U1DwloCJNejim33YVt4/rVclkMEP90scv9Y0NXc76tp8vp/HcxX+
 gqxbI5Ys41RygwgOicVNCgb3gT280aAaC0qMrbSgPnjFtgW63ccdRctWi
 fLJNjBB+ltRKoBjsMzfroFXXibD8rP1Z2juFEFHzcUrWG+WAkjUNnW87H
 yzCGUgYo5aYdZQ0MU8g+3IjqkRBQhVbunjWflR+lMnl//MKaXS0Uv2eDx w==;
X-CSE-ConnectionGUID: 5ry3QZVUQViIj8iI0ac6tw==
X-CSE-MsgGUID: 8Gn/QfsES/ukCE1wk3mVwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44828682"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="44828682"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 01:32:13 -0700
X-CSE-ConnectionGUID: RRdK7xeITaK+8oRib4qnOQ==
X-CSE-MsgGUID: Nrq7K9BqTLy5NzjgfRCJ5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="126612356"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2025 01:32:10 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 05/16] drm/i915/dpll: Move away from using shared dpll
Date: Wed,  2 Apr 2025 14:01:53 +0530
Message-Id: <20250402083204.1523470-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250402083204.1523470-1-suraj.kandpal@intel.com>
References: <20250402083204.1523470-1-suraj.kandpal@intel.com>
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

Rename functions to move away from using shared dpll in the dpll
framework as much as possible since dpll may not always be shared.

--v2
-Use intel_dpll_global instead of global_dpll [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  14 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
 .../drm/i915/display/intel_display_driver.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  10 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 150 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  32 ++--
 drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
 .../drm/i915/display/intel_modeset_setup.c    |   2 +-
 .../drm/i915/display/intel_modeset_verify.c   |   4 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |  14 +-
 10 files changed, 119 insertions(+), 119 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a8934ea5077d..3fe330bf2636 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1567,7 +1567,7 @@ _icl_ddi_get_pll(struct intel_display *display, i915_reg_t reg,
 
 	id = (intel_de_read(display, reg) & clk_sel_mask) >> clk_sel_shift;
 
-	return intel_get_shared_dpll_by_id(display, id);
+	return intel_get_dpll_global_by_id(display, id);
 }
 
 static void adls_ddi_enable_clock(struct intel_encoder *encoder,
@@ -1721,7 +1721,7 @@ static struct intel_dpll_global *dg1_ddi_get_pll(struct intel_encoder *encoder)
 	if (phy >= PHY_C)
 		id += DPLL_ID_DG1_DPLL2;
 
-	return intel_get_shared_dpll_by_id(display, id);
+	return intel_get_dpll_global_by_id(display, id);
 }
 
 static void icl_ddi_combo_enable_clock(struct intel_encoder *encoder,
@@ -1893,7 +1893,7 @@ static struct intel_dpll_global *icl_ddi_tc_get_pll(struct intel_encoder *encode
 		return NULL;
 	}
 
-	return intel_get_shared_dpll_by_id(display, id);
+	return intel_get_dpll_global_by_id(display, id);
 }
 
 static struct intel_dpll_global *bxt_ddi_get_pll(struct intel_encoder *encoder)
@@ -1916,7 +1916,7 @@ static struct intel_dpll_global *bxt_ddi_get_pll(struct intel_encoder *encoder)
 		return NULL;
 	}
 
-	return intel_get_shared_dpll_by_id(display, id);
+	return intel_get_dpll_global_by_id(display, id);
 }
 
 static void skl_ddi_enable_clock(struct intel_encoder *encoder,
@@ -1984,7 +1984,7 @@ static struct intel_dpll_global *skl_ddi_get_pll(struct intel_encoder *encoder)
 	id = (tmp & DPLL_CTRL2_DDI_CLK_SEL_MASK(port)) >>
 		DPLL_CTRL2_DDI_CLK_SEL_SHIFT(port);
 
-	return intel_get_shared_dpll_by_id(display, id);
+	return intel_get_dpll_global_by_id(display, id);
 }
 
 void hsw_ddi_enable_clock(struct intel_encoder *encoder,
@@ -2051,7 +2051,7 @@ static struct intel_dpll_global *hsw_ddi_get_pll(struct intel_encoder *encoder)
 		return NULL;
 	}
 
-	return intel_get_shared_dpll_by_id(display, id);
+	return intel_get_dpll_global_by_id(display, id);
 }
 
 void intel_ddi_enable_clock(struct intel_encoder *encoder,
@@ -2758,7 +2758,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 * 4. Enable the port PLL.
 	 *
 	 * The PLL enabling itself was already done before this function by
-	 * hsw_crtc_enable()->intel_enable_shared_dpll().  We need only
+	 * hsw_crtc_enable()->intel_enable_dpll_global().  We need only
 	 * configure the PLL to port mapping here.
 	 */
 	intel_ddi_enable_clock(encoder, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5b808bad61e0..904b9544515b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1662,7 +1662,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	intel_encoders_pre_pll_enable(state, crtc);
 
 	if (new_crtc_state->dpll_global)
-		intel_enable_shared_dpll(new_crtc_state);
+		intel_enable_dpll_global(new_crtc_state);
 
 	intel_encoders_pre_enable(state, crtc);
 
@@ -1791,7 +1791,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	intel_encoders_disable(state, crtc);
 	intel_encoders_post_disable(state, crtc);
 
-	intel_disable_shared_dpll(old_crtc_state);
+	intel_disable_dpll_global(old_crtc_state);
 
 	intel_encoders_post_pll_disable(state, crtc);
 
@@ -6429,7 +6429,7 @@ int intel_atomic_check(struct drm_device *dev,
 
 		any_ms = true;
 
-		intel_release_shared_dplls(state, crtc);
+		intel_release_dpll_globals(state, crtc);
 	}
 
 	if (any_ms && !check_digital_port_conflicts(state)) {
@@ -7523,7 +7523,7 @@ static int intel_atomic_swap_state(struct intel_atomic_state *state)
 
 	intel_atomic_swap_global_state(state);
 
-	intel_shared_dpll_swap_state(state);
+	intel_dpll_swap_state(state);
 
 	intel_atomic_track_fbs(state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 4edadebad13b..b6c670c54eb1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -441,7 +441,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 	}
 
 	intel_plane_possible_crtcs_init(display);
-	intel_shared_dpll_init(display);
+	intel_dpll_global_init(display);
 	intel_fdi_pll_freq_update(display);
 
 	intel_update_czclk(display);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index c6d29382378b..04fb76a399ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1162,7 +1162,7 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
 
-	ret = intel_compute_shared_dplls(state, crtc, encoder);
+	ret = intel_compute_dpll_globals(state, crtc, encoder);
 	if (ret)
 		return ret;
 
@@ -1190,7 +1190,7 @@ static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
 
-	return intel_reserve_shared_dplls(state, crtc, encoder);
+	return intel_reserve_dpll_globals(state, crtc, encoder);
 }
 
 static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
@@ -1224,7 +1224,7 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	/* TODO: Do the readback via intel_compute_shared_dplls() */
+	/* TODO: Do the readback via intel_compute_dpll_globals() */
 	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
 
 	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
@@ -1397,7 +1397,7 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
 			 &crtc_state->dpll);
 
-	ret = intel_compute_shared_dplls(state, crtc, NULL);
+	ret = intel_compute_dpll_globals(state, crtc, NULL);
 	if (ret)
 		return ret;
 
@@ -1417,7 +1417,7 @@ static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	if (!crtc_state->has_pch_encoder)
 		return 0;
 
-	return intel_reserve_shared_dplls(state, crtc, NULL);
+	return intel_reserve_dpll_globals(state, crtc, NULL);
 }
 
 static u32 vlv_dpll(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 833c90f3f0f1..e6546d735799 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -49,21 +49,21 @@
  * share a PLL if their configurations match.
  *
  * This file provides an abstraction over display PLLs. The function
- * intel_shared_dpll_init() initializes the PLLs for the given platform.  The
+ * intel_dpll_global_init() initializes the PLLs for the given platform.  The
  * users of a PLL are tracked and that tracking is integrated with the atomic
  * modset interface. During an atomic operation, required PLLs can be reserved
  * for a given CRTC and encoder configuration by calling
- * intel_reserve_shared_dplls() and previously reserved PLLs can be released
- * with intel_release_shared_dplls().
+ * intel_reserve_dpll_globals() and previously reserved PLLs can be released
+ * with intel_release_dpll_globals().
  * Changes to the users are first staged in the atomic state, and then made
- * effective by calling intel_shared_dpll_swap_state() during the atomic
+ * effective by calling intel_dpll_swap_state() during the atomic
  * commit phase.
  */
 
 /* platform specific hooks for managing DPLLs */
 struct intel_dpll_global_funcs {
 	/*
-	 * Hook for enabling the pll, called from intel_enable_shared_dpll() if
+	 * Hook for enabling the pll, called from intel_enable_dpll_global() if
 	 * the pll is not already enabled.
 	 */
 	void (*enable)(struct intel_display *display,
@@ -71,7 +71,7 @@ struct intel_dpll_global_funcs {
 		       const struct intel_dpll_hw_state *dpll_hw_state);
 
 	/*
-	 * Hook for disabling the pll, called from intel_disable_shared_dpll()
+	 * Hook for disabling the pll, called from intel_disable_dpll_global()
 	 * only when it is safe to disable the pll, i.e., there are no more
 	 * tracked users for it.
 	 */
@@ -130,7 +130,7 @@ intel_atomic_duplicate_dpll_state(struct intel_display *display,
 }
 
 static struct intel_dpll_state *
-intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
+intel_atomic_get_dpll_global_state(struct drm_atomic_state *s)
 {
 	struct intel_atomic_state *state = to_intel_atomic_state(s);
 	struct intel_display *display = to_intel_display(state);
@@ -148,7 +148,7 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
 }
 
 /**
- * intel_get_shared_dpll_by_id - get a DPLL given its id
+ * intel_get_dpll_global_by_id - get a DPLL given its id
  * @display: intel_display device instance
  * @id: pll id
  *
@@ -156,7 +156,7 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
  * A pointer to the DPLL with @id
  */
 struct intel_dpll_global *
-intel_get_shared_dpll_by_id(struct intel_display *display,
+intel_get_dpll_global_by_id(struct intel_display *display,
 			    enum intel_dpll_id id)
 {
 	struct intel_dpll_global *pll;
@@ -172,7 +172,7 @@ intel_get_shared_dpll_by_id(struct intel_display *display,
 }
 
 /* For ILK+ */
-void assert_shared_dpll(struct intel_display *display,
+void assert_dpll_global(struct intel_display *display,
 			struct intel_dpll_global *pll,
 			bool state)
 {
@@ -247,12 +247,12 @@ static void _intel_disable_shared_dpll(struct intel_display *display,
 }
 
 /**
- * intel_enable_shared_dpll - enable a CRTC's shared DPLL
- * @crtc_state: CRTC, and its state, which has a shared DPLL
+ * intel_enable_dpll_global - enable a CRTC's global DPLL
+ * @crtc_state: CRTC, and its state, which has a DPLL
  *
- * Enable the shared DPLL used by @crtc.
+ * Enable DPLL used by @crtc.
  */
-void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
+void intel_enable_dpll_global(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -279,7 +279,7 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 
 	if (old_mask) {
 		drm_WARN_ON(display->drm, !pll->on);
-		assert_shared_dpll_enabled(display, pll);
+		assert_dpll_global_enabled(display, pll);
 		goto out;
 	}
 	drm_WARN_ON(display->drm, pll->on);
@@ -293,12 +293,12 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 }
 
 /**
- * intel_disable_shared_dpll - disable a CRTC's shared DPLL
+ * intel_disable_dpll_global - disable a CRTC's shared DPLL
  * @crtc_state: CRTC, and its state, which has a shared DPLL
  *
- * Disable the shared DPLL used by @crtc.
+ * Disable DPLL used by @crtc.
  */
-void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
+void intel_disable_dpll_global(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -323,7 +323,7 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 		    pll->info->name, pll->active_mask, pll->on,
 		    crtc->base.base.id, crtc->base.name);
 
-	assert_shared_dpll_enabled(display, pll);
+	assert_dpll_global_enabled(display, pll);
 	drm_WARN_ON(display->drm, !pll->on);
 
 	pll->active_mask &= ~pipe_mask;
@@ -355,7 +355,7 @@ intel_dpll_mask_all(struct intel_display *display)
 }
 
 static struct intel_dpll_global *
-intel_find_shared_dpll(struct intel_atomic_state *state,
+intel_find_dpll_global(struct intel_atomic_state *state,
 		       const struct intel_crtc *crtc,
 		       const struct intel_dpll_hw_state *dpll_hw_state,
 		       unsigned long dpll_mask)
@@ -366,14 +366,14 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 	struct intel_dpll_global *unused_pll = NULL;
 	enum intel_dpll_id id;
 
-	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
+	dpll_state = intel_atomic_get_dpll_global_state(&state->base);
 
 	drm_WARN_ON(display->drm, dpll_mask & ~dpll_mask_all);
 
 	for_each_set_bit(id, &dpll_mask, fls(dpll_mask_all)) {
 		struct intel_dpll_global *pll;
 
-		pll = intel_get_shared_dpll_by_id(display, id);
+		pll = intel_get_dpll_global_by_id(display, id);
 		if (!pll)
 			continue;
 
@@ -409,7 +409,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 }
 
 /**
- * intel_reference_shared_dpll_crtc - Get a DPLL reference for a CRTC
+ * intel_reference_dpll_global_crtc - Get a DPLL reference for a CRTC
  * @crtc: CRTC on which behalf the reference is taken
  * @pll: DPLL for which the reference is taken
  * @dpll_state: the DPLL atomic state in which the reference is tracked
@@ -417,7 +417,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
  * Take a reference for @pll tracking the use of it by @crtc.
  */
 static void
-intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
+intel_reference_dpll_global_crtc(const struct intel_crtc *crtc,
 				 const struct intel_dpll_global *pll,
 				 struct intel_dpll_state *dpll_state)
 {
@@ -432,23 +432,23 @@ intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
 }
 
 static void
-intel_reference_shared_dpll(struct intel_atomic_state *state,
+intel_reference_dpll_global(struct intel_atomic_state *state,
 			    const struct intel_crtc *crtc,
 			    const struct intel_dpll_global *pll,
 			    const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct intel_dpll_state *dpll_state;
 
-	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
+	dpll_state = intel_atomic_get_dpll_global_state(&state->base);
 
 	if (dpll_state[pll->index].pipe_mask == 0)
 		dpll_state[pll->index].hw_state = *dpll_hw_state;
 
-	intel_reference_shared_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
+	intel_reference_dpll_global_crtc(crtc, pll, &dpll_state[pll->index]);
 }
 
 /**
- * intel_unreference_shared_dpll_crtc - Drop a DPLL reference for a CRTC
+ * intel_unreference_dpll_global_crtc - Drop a DPLL reference for a CRTC
  * @crtc: CRTC on which behalf the reference is dropped
  * @pll: DPLL for which the reference is dropped
  * @dpll_state: the DPLL atomic state in which the reference is tracked
@@ -456,7 +456,7 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
  * Drop a reference for @pll tracking the end of use of it by @crtc.
  */
 void
-intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
+intel_unreference_dpll_global_crtc(const struct intel_crtc *crtc,
 				   const struct intel_dpll_global *pll,
 				   struct intel_dpll_state *dpll_state)
 {
@@ -470,15 +470,15 @@ intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
 		    crtc->base.base.id, crtc->base.name, pll->info->name);
 }
 
-static void intel_unreference_shared_dpll(struct intel_atomic_state *state,
+static void intel_unreference_dpll_global(struct intel_atomic_state *state,
 					  const struct intel_crtc *crtc,
 					  const struct intel_dpll_global *pll)
 {
 	struct intel_dpll_state *dpll_state;
 
-	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
+	dpll_state = intel_atomic_get_dpll_global_state(&state->base);
 
-	intel_unreference_shared_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
+	intel_unreference_dpll_global_crtc(crtc, pll, &dpll_state[pll->index]);
 }
 
 static void intel_put_dpll(struct intel_atomic_state *state,
@@ -494,11 +494,11 @@ static void intel_put_dpll(struct intel_atomic_state *state,
 	if (!old_crtc_state->dpll_global)
 		return;
 
-	intel_unreference_shared_dpll(state, crtc, old_crtc_state->dpll_global);
+	intel_unreference_dpll_global(state, crtc, old_crtc_state->dpll_global);
 }
 
 /**
- * intel_shared_dpll_swap_state - make atomic DPLL configuration effective
+ * intel_dpll_swap_state - make atomic DPLL configuration effective
  * @state: atomic state
  *
  * This is the dpll version of drm_atomic_helper_swap_state() since the
@@ -508,7 +508,7 @@ static void intel_put_dpll(struct intel_atomic_state *state,
  * i.e. it also puts the current state into @state, even though there is no
  * need for that at this moment.
  */
-void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
+void intel_dpll_swap_state(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_dpll_state *dpll_state = state->dpll_state;
@@ -618,14 +618,14 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
 	if (HAS_PCH_IBX(i915)) {
 		/* Ironlake PCH has a fixed PLL->PCH pipe mapping. */
 		id = (enum intel_dpll_id) crtc->pipe;
-		pll = intel_get_shared_dpll_by_id(display, id);
+		pll = intel_get_dpll_global_by_id(display, id);
 
 		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] using pre-allocated %s\n",
 			    crtc->base.base.id, crtc->base.name,
 			    pll->info->name);
 	} else {
-		pll = intel_find_shared_dpll(state, crtc,
+		pll = intel_find_dpll_global(state, crtc,
 					     &crtc_state->dpll_hw_state,
 					     BIT(DPLL_ID_PCH_PLL_B) |
 					     BIT(DPLL_ID_PCH_PLL_A));
@@ -635,7 +635,7 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
 		return -EINVAL;
 
 	/* reference the pll */
-	intel_reference_shared_dpll(state, crtc,
+	intel_reference_dpll_global(state, crtc,
 				    pll, &crtc_state->dpll_hw_state);
 
 	crtc_state->dpll_global = pll;
@@ -1064,7 +1064,7 @@ hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	return intel_find_shared_dpll(state, crtc,
+	return intel_find_dpll_global(state, crtc,
 				      &crtc_state->dpll_hw_state,
 				      BIT(DPLL_ID_WRPLL2) |
 				      BIT(DPLL_ID_WRPLL1));
@@ -1111,7 +1111,7 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
 		return NULL;
 	}
 
-	pll = intel_get_shared_dpll_by_id(display, pll_id);
+	pll = intel_get_dpll_global_by_id(display, pll_id);
 
 	if (!pll)
 		return NULL;
@@ -1167,7 +1167,7 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	return intel_find_shared_dpll(state, crtc, &crtc_state->dpll_hw_state,
+	return intel_find_dpll_global(state, crtc, &crtc_state->dpll_hw_state,
 				      BIT(DPLL_ID_SPLL));
 }
 
@@ -1231,7 +1231,7 @@ static int hsw_get_dpll(struct intel_atomic_state *state,
 	if (!pll)
 		return -EINVAL;
 
-	intel_reference_shared_dpll(state, crtc,
+	intel_reference_dpll_global(state, crtc,
 				    pll, &crtc_state->dpll_hw_state);
 
 	crtc_state->dpll_global = pll;
@@ -1940,11 +1940,11 @@ static int skl_get_dpll(struct intel_atomic_state *state,
 	struct intel_dpll_global *pll;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
-		pll = intel_find_shared_dpll(state, crtc,
+		pll = intel_find_dpll_global(state, crtc,
 					     &crtc_state->dpll_hw_state,
 					     BIT(DPLL_ID_SKL_DPLL0));
 	else
-		pll = intel_find_shared_dpll(state, crtc,
+		pll = intel_find_dpll_global(state, crtc,
 					     &crtc_state->dpll_hw_state,
 					     BIT(DPLL_ID_SKL_DPLL3) |
 					     BIT(DPLL_ID_SKL_DPLL2) |
@@ -1952,7 +1952,7 @@ static int skl_get_dpll(struct intel_atomic_state *state,
 	if (!pll)
 		return -EINVAL;
 
-	intel_reference_shared_dpll(state, crtc,
+	intel_reference_dpll_global(state, crtc,
 				    pll, &crtc_state->dpll_hw_state);
 
 	crtc_state->dpll_global = pll;
@@ -2432,12 +2432,12 @@ static int bxt_get_dpll(struct intel_atomic_state *state,
 
 	/* 1:1 mapping between ports and PLLs */
 	id = (enum intel_dpll_id) encoder->port;
-	pll = intel_get_shared_dpll_by_id(display, id);
+	pll = intel_get_dpll_global_by_id(display, id);
 
 	drm_dbg_kms(display->drm, "[CRTC:%d:%s] using pre-allocated %s\n",
 		    crtc->base.base.id, crtc->base.name, pll->info->name);
 
-	intel_reference_shared_dpll(state, crtc,
+	intel_reference_dpll_global(state, crtc,
 				    pll, &crtc_state->dpll_hw_state);
 
 	crtc_state->dpll_global = pll;
@@ -3388,13 +3388,13 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 	/* Eliminate DPLLs from consideration if reserved by HTI */
 	dpll_mask &= ~intel_hti_dpll_mask(display);
 
-	port_dpll->pll = intel_find_shared_dpll(state, crtc,
+	port_dpll->pll = intel_find_dpll_global(state, crtc,
 						&port_dpll->hw_state,
 						dpll_mask);
 	if (!port_dpll->pll)
 		return -EINVAL;
 
-	intel_reference_shared_dpll(state, crtc,
+	intel_reference_dpll_global(state, crtc,
 				    port_dpll->pll, &port_dpll->hw_state);
 
 	icl_update_active_dpll(state, crtc, encoder);
@@ -3452,25 +3452,25 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 	int ret;
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
-	port_dpll->pll = intel_find_shared_dpll(state, crtc,
+	port_dpll->pll = intel_find_dpll_global(state, crtc,
 						&port_dpll->hw_state,
 						BIT(DPLL_ID_ICL_TBTPLL));
 	if (!port_dpll->pll)
 		return -EINVAL;
-	intel_reference_shared_dpll(state, crtc,
+	intel_reference_dpll_global(state, crtc,
 				    port_dpll->pll, &port_dpll->hw_state);
 
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
 	dpll_id = icl_tc_port_to_pll_id(intel_encoder_to_tc(encoder));
-	port_dpll->pll = intel_find_shared_dpll(state, crtc,
+	port_dpll->pll = intel_find_dpll_global(state, crtc,
 						&port_dpll->hw_state,
 						BIT(dpll_id));
 	if (!port_dpll->pll) {
 		ret = -EINVAL;
 		goto err_unreference_tbt_pll;
 	}
-	intel_reference_shared_dpll(state, crtc,
+	intel_reference_dpll_global(state, crtc,
 				    port_dpll->pll, &port_dpll->hw_state);
 
 	icl_update_active_dpll(state, crtc, encoder);
@@ -3479,7 +3479,7 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 
 err_unreference_tbt_pll:
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
-	intel_unreference_shared_dpll(state, crtc, port_dpll->pll);
+	intel_unreference_dpll_global(state, crtc, port_dpll->pll);
 
 	return ret;
 }
@@ -3534,7 +3534,7 @@ static void icl_put_dplls(struct intel_atomic_state *state,
 		if (!old_port_dpll->pll)
 			continue;
 
-		intel_unreference_shared_dpll(state, crtc, old_port_dpll->pll);
+		intel_unreference_dpll_global(state, crtc, old_port_dpll->pll);
 	}
 }
 
@@ -4300,12 +4300,12 @@ static const struct intel_dpll_mgr adlp_pll_mgr = {
 };
 
 /**
- * intel_shared_dpll_init - Initialize shared DPLLs
+ * intel_dpll_global_init - Initialize DPLLs
  * @display: intel_display device
  *
- * Initialize shared DPLLs for @display.
+ * Initialize DPLLs for @display.
  */
-void intel_shared_dpll_init(struct intel_display *display)
+void intel_dpll_global_init(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_dpll_mgr *dpll_mgr = NULL;
@@ -4363,7 +4363,7 @@ void intel_shared_dpll_init(struct intel_display *display)
 }
 
 /**
- * intel_compute_shared_dplls - compute DPLL state CRTC and encoder combination
+ * intel_compute_dpll_globals - compute DPLL state CRTC and encoder combination
  * @state: atomic state
  * @crtc: CRTC to compute DPLLs for
  * @encoder: encoder
@@ -4371,12 +4371,12 @@ void intel_shared_dpll_init(struct intel_display *display)
  * This function computes the DPLL state for the given CRTC and encoder.
  *
  * The new configuration in the atomic commit @state is made effective by
- * calling intel_shared_dpll_swap_state().
+ * calling intel_dpll_swap_state().
  *
  * Returns:
  * 0 on success, negative error code on failure.
  */
-int intel_compute_shared_dplls(struct intel_atomic_state *state,
+int intel_compute_dpll_globals(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
 			       struct intel_encoder *encoder)
 {
@@ -4390,7 +4390,7 @@ int intel_compute_shared_dplls(struct intel_atomic_state *state,
 }
 
 /**
- * intel_reserve_shared_dplls - reserve DPLLs for CRTC and encoder combination
+ * intel_reserve_dpll_globals - reserve DPLLs for CRTC and encoder combination
  * @state: atomic state
  * @crtc: CRTC to reserve DPLLs for
  * @encoder: encoder
@@ -4400,16 +4400,16 @@ int intel_compute_shared_dplls(struct intel_atomic_state *state,
  * state.
  *
  * The new configuration in the atomic commit @state is made effective by
- * calling intel_shared_dpll_swap_state().
+ * calling intel_dpll_swap_state().
  *
  * The reserved DPLLs should be released by calling
- * intel_release_shared_dplls().
+ * intel_release_dpll_globals().
  *
  * Returns:
  * 0 if all required DPLLs were successfully reserved,
  * negative error code otherwise.
  */
-int intel_reserve_shared_dplls(struct intel_atomic_state *state,
+int intel_reserve_dpll_globals(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
 			       struct intel_encoder *encoder)
 {
@@ -4423,17 +4423,17 @@ int intel_reserve_shared_dplls(struct intel_atomic_state *state,
 }
 
 /**
- * intel_release_shared_dplls - end use of DPLLs by CRTC in atomic state
+ * intel_release_dpll_globals - end use of DPLLs by CRTC in atomic state
  * @state: atomic state
  * @crtc: crtc from which the DPLLs are to be released
  *
- * This function releases all DPLLs reserved by intel_reserve_shared_dplls()
+ * This function releases all DPLLs reserved by intel_reserve_dpll_globals()
  * from the current atomic commit @state and the old @crtc atomic state.
  *
  * The new configuration in the atomic commit @state is made effective by
- * calling intel_shared_dpll_swap_state().
+ * calling intel_dpll_swap_state().
  */
-void intel_release_shared_dplls(struct intel_atomic_state *state,
+void intel_release_dpll_globals(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
@@ -4442,7 +4442,7 @@ void intel_release_shared_dplls(struct intel_atomic_state *state,
 	/*
 	 * FIXME: this function is called for every platform having a
 	 * compute_clock hook, even though the platform doesn't yet support
-	 * the shared DPLL framework and intel_reserve_shared_dplls() is not
+	 * the global DPLL framework and intel_reserve_dpll_globals() is not
 	 * called on those.
 	 */
 	if (!dpll_mgr)
@@ -4458,7 +4458,7 @@ void intel_release_shared_dplls(struct intel_atomic_state *state,
  * @encoder: encoder determining the type of port DPLL
  *
  * Update the active DPLL for the given @crtc/@encoder in @crtc's atomic state,
- * from the port DPLLs reserved previously by intel_reserve_shared_dplls(). The
+ * from the port DPLLs reserved previously by intel_reserve_dpll_globals(). The
  * DPLL selected will be based on the current mode of the encoder's port.
  */
 void intel_update_active_dpll(struct intel_atomic_state *state,
@@ -4523,7 +4523,7 @@ static void readout_dpll_hw_state(struct intel_display *display,
 			to_intel_crtc_state(crtc->base.state);
 
 		if (crtc_state->hw.active && crtc_state->dpll_global == pll)
-			intel_reference_shared_dpll_crtc(crtc, pll, &pll->state);
+			intel_reference_dpll_global_crtc(crtc, pll, &pll->state);
 	}
 	pll->active_mask = pll->state.pipe_mask;
 
@@ -4684,8 +4684,8 @@ static bool has_alt_port_dpll(const struct intel_dpll_global *old_pll,
 		(old_pll->info->is_alt_port_dpll || new_pll->info->is_alt_port_dpll);
 }
 
-void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
-				    struct intel_crtc *crtc)
+void intel_dpll_state_verify(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
@@ -4715,7 +4715,7 @@ void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
 	}
 }
 
-void intel_shared_dpll_verify_disabled(struct intel_atomic_state *state)
+void intel_dpll_global_verify_disabled(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_dpll_global *pll;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index bd52e30d83bd..6215da164ffc 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -387,24 +387,24 @@ struct intel_dpll_global {
 #define SKL_DPLL2 2
 #define SKL_DPLL3 3
 
-/* shared dpll functions */
+/* global dpll functions */
 struct intel_dpll_global *
-intel_get_shared_dpll_by_id(struct intel_display *display,
+intel_get_dpll_global_by_id(struct intel_display *display,
 			    enum intel_dpll_id id);
-void assert_shared_dpll(struct intel_display *display,
+void assert_dpll_global(struct intel_display *display,
 			struct intel_dpll_global *pll,
 			bool state);
-#define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d, p, true)
-#define assert_shared_dpll_disabled(d, p) assert_shared_dpll(d, p, false)
-int intel_compute_shared_dplls(struct intel_atomic_state *state,
+#define assert_dpll_global_enabled(d, p) assert_dpll_global(d, p, true)
+#define assert_dpll_global_disabled(d, p) assert_dpll_global(d, p, false)
+int intel_compute_dpll_globals(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
 			       struct intel_encoder *encoder);
-int intel_reserve_shared_dplls(struct intel_atomic_state *state,
+int intel_reserve_dpll_globals(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
 			       struct intel_encoder *encoder);
-void intel_release_shared_dplls(struct intel_atomic_state *state,
+void intel_release_dpll_globals(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
-void intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
+void intel_unreference_dpll_global_crtc(const struct intel_crtc *crtc,
 					const struct intel_dpll_global *pll,
 					struct intel_dpll_state *shared_dpll_state);
 void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
@@ -418,10 +418,10 @@ int intel_dpll_get_freq(struct intel_display *display,
 bool intel_dpll_get_hw_state(struct intel_display *display,
 			     struct intel_dpll_global *pll,
 			     struct intel_dpll_hw_state *dpll_hw_state);
-void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
-void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state);
-void intel_shared_dpll_swap_state(struct intel_atomic_state *state);
-void intel_shared_dpll_init(struct intel_display *display);
+void intel_enable_dpll_global(const struct intel_crtc_state *crtc_state);
+void intel_disable_dpll_global(const struct intel_crtc_state *crtc_state);
+void intel_dpll_swap_state(struct intel_atomic_state *state);
+void intel_dpll_global_init(struct intel_display *display);
 void intel_dpll_update_ref_clks(struct intel_display *display);
 void intel_dpll_readout_hw_state(struct intel_display *display);
 void intel_dpll_sanitize_state(struct intel_display *display);
@@ -435,8 +435,8 @@ bool intel_dpll_compare_hw_state(struct intel_display *display,
 enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port);
 bool intel_dpll_is_combophy(enum intel_dpll_id id);
 
-void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
-				    struct intel_crtc *crtc);
-void intel_shared_dpll_verify_disabled(struct intel_atomic_state *state);
+void intel_dpll_state_verify(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc);
+void intel_dpll_global_verify_disabled(struct intel_atomic_state *state);
 
 #endif /* _INTEL_DPLL_MGR_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index bc8725aa99da..52f61a120b70 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -251,7 +251,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
 
 	if (HAS_PCH_SPLIT(i915)) {
 		assert_fdi_rx_pll_disabled(display, pipe);
-		assert_shared_dpll_disabled(display, crtc_state->dpll_global);
+		assert_dpll_global_disabled(display, crtc_state->dpll_global);
 	} else {
 		assert_pll_disabled(display, pipe);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 427eff400b53..4221d1566c8a 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -92,7 +92,7 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 	crtc->base.enabled = false;
 
 	if (crtc_state->dpll_global)
-		intel_unreference_shared_dpll_crtc(crtc,
+		intel_unreference_dpll_global_crtc(crtc,
 						   crtc_state->dpll_global,
 						   &crtc_state->dpll_global->state);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index a008412fdd04..eb080a1d8a42 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -246,7 +246,7 @@ void intel_modeset_verify_crtc(struct intel_atomic_state *state,
 	intel_wm_state_verify(state, crtc);
 	verify_connector_state(state, crtc);
 	verify_crtc_state(state, crtc);
-	intel_shared_dpll_state_verify(state, crtc);
+	intel_dpll_state_verify(state, crtc);
 	intel_mpllb_state_verify(state, crtc);
 	intel_cx0pll_state_verify(state, crtc);
 }
@@ -255,5 +255,5 @@ void intel_modeset_verify_disabled(struct intel_atomic_state *state)
 {
 	verify_encoder_state(state);
 	verify_connector_state(state, NULL);
-	intel_shared_dpll_verify_disabled(state);
+	intel_dpll_global_verify_disabled(state);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 57303ecb77ad..aa39d0fb1e23 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -255,7 +255,7 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 	u32 val, pipeconf_val;
 
 	/* Make sure PCH DPLL is enabled */
-	assert_shared_dpll_enabled(display, crtc_state->dpll_global);
+	assert_dpll_global_enabled(display, crtc_state->dpll_global);
 
 	/* FDI must be feeding us bits for PCH ports */
 	assert_fdi_tx_enabled(display, pipe);
@@ -388,7 +388,7 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 		temp |= TRANS_DPLL_ENABLE(pipe);
 		sel = TRANS_DPLLB_SEL(pipe);
 		if (crtc_state->dpll_global ==
-		    intel_get_shared_dpll_by_id(display, DPLL_ID_PCH_PLL_B))
+		    intel_get_dpll_global_by_id(display, DPLL_ID_PCH_PLL_B))
 			temp |= sel;
 		else
 			temp &= ~sel;
@@ -400,11 +400,11 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 	 * transcoder, and we actually should do this to not upset any PCH
 	 * transcoder that already use the clock when we share it.
 	 *
-	 * Note that enable_shared_dpll tries to do the right thing, but
-	 * get_shared_dpll unconditionally resets the pll - we need that
+	 * Note that enable_dpll_global tries to do the right thing, but
+	 * get_dpll_global unconditionally resets the pll - we need that
 	 * to have the right LVDS enable sequence.
 	 */
-	intel_enable_shared_dpll(crtc_state);
+	intel_enable_dpll_global(crtc_state);
 
 	/* set transcoder timing, panel must allow it */
 	assert_pps_unlocked(display, pipe);
@@ -479,7 +479,7 @@ void ilk_pch_post_disable(struct intel_atomic_state *state,
 
 	ilk_fdi_pll_disable(crtc);
 
-	intel_disable_shared_dpll(old_crtc_state);
+	intel_disable_dpll_global(old_crtc_state);
 }
 
 static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)
@@ -536,7 +536,7 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
 			pll_id = DPLL_ID_PCH_PLL_A;
 	}
 
-	crtc_state->dpll_global = intel_get_shared_dpll_by_id(display, pll_id);
+	crtc_state->dpll_global = intel_get_dpll_global_by_id(display, pll_id);
 	pll = crtc_state->dpll_global;
 
 	pll_active = intel_dpll_get_hw_state(display, pll,
-- 
2.34.1

