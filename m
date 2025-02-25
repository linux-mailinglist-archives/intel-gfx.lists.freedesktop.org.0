Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA250A436F9
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 09:09:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AD0710E5AE;
	Tue, 25 Feb 2025 08:09:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IsHMoOeG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 472EB10E5AE;
 Tue, 25 Feb 2025 08:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740470985; x=1772006985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ojKJtZTbADUqKClCyoBuM2u0ULvZtGhiVlnGQSWEtp4=;
 b=IsHMoOeGQxkcvkMeBh3hd4u61vAK2kvIfNU5qBzPm6F2s80jyL0W40+t
 MXIkg1vnj1cX+KOKsAOcEmV8Ir18BFbsqyXV6LD3HUO6BExCX7HOluyUj
 eRU6PLAF80c/njk0XmwmjPu2qbwDBFQJZStG382BZK+UpxoBcdm5iBgtl
 1H1YzzA/x6vtldg/jexiacuRx8K/TUo/EiiFYcYxvFHWO4KUMFijnhCM4
 tqWBx3ZvEW6Qq/SpG8O+kH/QfL33iYhqzbOHK8z/2Z+5mGQYP4UueWsDu
 MVxpOyjd9LQgxm8+7gRRV1cCFgIFN4Qe3m3H8JYyV9uKv5EKYlq1/Og1r g==;
X-CSE-ConnectionGUID: Z1mgizOAS1arOV6wRo8s3g==
X-CSE-MsgGUID: qZJJCMmbQ86G7vL5WKPt2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="66634541"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="66634541"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:09:45 -0800
X-CSE-ConnectionGUID: Cv6reiIFR3m48PGjNkQHNQ==
X-CSE-MsgGUID: o3OevJEmRnWWhS39qafjBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="116519363"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 25 Feb 2025 00:09:42 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpll
Date: Tue, 25 Feb 2025 13:39:21 +0530
Message-Id: <20250225080927.157437-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250225080927.157437-1-suraj.kandpal@intel.com>
References: <20250225080927.157437-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  14 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  10 +-
 .../drm/i915/display/intel_display_driver.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  10 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 146 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  28 ++--
 drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
 .../drm/i915/display/intel_modeset_setup.c    |   2 +-
 .../drm/i915/display/intel_modeset_verify.c   |   2 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |  12 +-
 10 files changed, 114 insertions(+), 114 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 82bcf5031a09..be6d88cb91d1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1579,7 +1579,7 @@ _icl_ddi_get_pll(struct intel_display *display, i915_reg_t reg,
 
 	id = (intel_de_read(display, reg) & clk_sel_mask) >> clk_sel_shift;
 
-	return intel_get_shared_dpll_by_id(display, id);
+	return intel_get_global_dpll_by_id(display, id);
 }
 
 static void adls_ddi_enable_clock(struct intel_encoder *encoder,
@@ -1733,7 +1733,7 @@ static struct intel_global_dpll *dg1_ddi_get_pll(struct intel_encoder *encoder)
 	if (phy >= PHY_C)
 		id += DPLL_ID_DG1_DPLL2;
 
-	return intel_get_shared_dpll_by_id(display, id);
+	return intel_get_global_dpll_by_id(display, id);
 }
 
 static void icl_ddi_combo_enable_clock(struct intel_encoder *encoder,
@@ -1905,7 +1905,7 @@ static struct intel_global_dpll *icl_ddi_tc_get_pll(struct intel_encoder *encode
 		return NULL;
 	}
 
-	return intel_get_shared_dpll_by_id(display, id);
+	return intel_get_global_dpll_by_id(display, id);
 }
 
 static struct intel_global_dpll *bxt_ddi_get_pll(struct intel_encoder *encoder)
@@ -1928,7 +1928,7 @@ static struct intel_global_dpll *bxt_ddi_get_pll(struct intel_encoder *encoder)
 		return NULL;
 	}
 
-	return intel_get_shared_dpll_by_id(display, id);
+	return intel_get_global_dpll_by_id(display, id);
 }
 
 static void skl_ddi_enable_clock(struct intel_encoder *encoder,
@@ -1996,7 +1996,7 @@ static struct intel_global_dpll *skl_ddi_get_pll(struct intel_encoder *encoder)
 	id = (tmp & DPLL_CTRL2_DDI_CLK_SEL_MASK(port)) >>
 		DPLL_CTRL2_DDI_CLK_SEL_SHIFT(port);
 
-	return intel_get_shared_dpll_by_id(display, id);
+	return intel_get_global_dpll_by_id(display, id);
 }
 
 void hsw_ddi_enable_clock(struct intel_encoder *encoder,
@@ -2063,7 +2063,7 @@ static struct intel_global_dpll *hsw_ddi_get_pll(struct intel_encoder *encoder)
 		return NULL;
 	}
 
-	return intel_get_shared_dpll_by_id(display, id);
+	return intel_get_global_dpll_by_id(display, id);
 }
 
 void intel_ddi_enable_clock(struct intel_encoder *encoder,
@@ -2771,7 +2771,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 * 4. Enable the port PLL.
 	 *
 	 * The PLL enabling itself was already done before this function by
-	 * hsw_crtc_enable()->intel_enable_shared_dpll().  We need only
+	 * hsw_crtc_enable()->intel_enable_global_dpll().  We need only
 	 * configure the PLL to port mapping here.
 	 */
 	intel_ddi_enable_clock(encoder, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4577787cb8f9..36e365cdb33f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1695,7 +1695,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
 		if (pipe_crtc_state->global_dpll)
-			intel_enable_shared_dpll(pipe_crtc_state);
+			intel_enable_global_dpll(pipe_crtc_state);
 	}
 
 	intel_encoders_pre_enable(state, crtc);
@@ -1824,7 +1824,7 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
 	intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
 	intel_set_pch_fifo_underrun_reporting(display, pipe, true);
 
-	intel_disable_shared_dpll(old_crtc_state);
+	intel_disable_global_dpll(old_crtc_state);
 }
 
 static void hsw_crtc_disable(struct intel_atomic_state *state,
@@ -1847,7 +1847,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
-		intel_disable_shared_dpll(old_pipe_crtc_state);
+		intel_disable_global_dpll(old_pipe_crtc_state);
 	}
 
 	intel_encoders_post_pll_disable(state, crtc);
@@ -6593,7 +6593,7 @@ int intel_atomic_check(struct drm_device *dev,
 
 		any_ms = true;
 
-		intel_release_shared_dplls(state, crtc);
+		intel_release_global_dplls(state, crtc);
 	}
 
 	if (any_ms && !check_digital_port_conflicts(state)) {
@@ -7685,7 +7685,7 @@ static int intel_atomic_swap_state(struct intel_atomic_state *state)
 
 	intel_atomic_swap_global_state(state);
 
-	intel_shared_dpll_swap_state(state);
+	intel_dpll_swap_state(state);
 
 	intel_atomic_track_fbs(state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index b72b07329fbf..234cccdf7edc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -448,7 +448,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 	}
 
 	intel_plane_possible_crtcs_init(display);
-	intel_shared_dpll_init(display);
+	intel_global_dpll_init(display);
 	intel_fdi_pll_freq_update(i915);
 
 	intel_update_czclk(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 96c79269c755..78cdbd54a5ba 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1168,7 +1168,7 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
 
-	ret = intel_compute_shared_dplls(state, crtc, encoder);
+	ret = intel_compute_global_dplls(state, crtc, encoder);
 	if (ret)
 		return ret;
 
@@ -1196,7 +1196,7 @@ static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
 
-	return intel_reserve_shared_dplls(state, crtc, encoder);
+	return intel_reserve_global_dplls(state, crtc, encoder);
 }
 
 static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
@@ -1230,7 +1230,7 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	/* TODO: Do the readback via intel_compute_shared_dplls() */
+	/* TODO: Do the readback via intel_compute_global_dplls() */
 	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
 
 	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
@@ -1406,7 +1406,7 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
 			 &crtc_state->dpll);
 
-	ret = intel_compute_shared_dplls(state, crtc, NULL);
+	ret = intel_compute_global_dplls(state, crtc, NULL);
 	if (ret)
 		return ret;
 
@@ -1426,7 +1426,7 @@ static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	if (!crtc_state->has_pch_encoder)
 		return 0;
 
-	return intel_reserve_shared_dplls(state, crtc, NULL);
+	return intel_reserve_global_dplls(state, crtc, NULL);
 }
 
 static u32 vlv_dpll(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index b26351eff7a8..bd623fdddfdc 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -49,21 +49,21 @@
  * share a PLL if their configurations match.
  *
  * This file provides an abstraction over display PLLs. The function
- * intel_shared_dpll_init() initializes the PLLs for the given platform.  The
+ * intel_global_dpll_init() initializes the PLLs for the given platform.  The
  * users of a PLL are tracked and that tracking is integrated with the atomic
  * modset interface. During an atomic operation, required PLLs can be reserved
  * for a given CRTC and encoder configuration by calling
- * intel_reserve_shared_dplls() and previously reserved PLLs can be released
- * with intel_release_shared_dplls().
+ * intel_reserve_global_dplls() and previously reserved PLLs can be released
+ * with intel_release_global_dplls().
  * Changes to the users are first staged in the atomic state, and then made
- * effective by calling intel_shared_dpll_swap_state() during the atomic
+ * effective by calling intel_dpll_swap_state() during the atomic
  * commit phase.
  */
 
 /* platform specific hooks for managing DPLLs */
 struct intel_global_dpll_funcs {
 	/*
-	 * Hook for enabling the pll, called from intel_enable_shared_dpll() if
+	 * Hook for enabling the pll, called from intel_enable_global_dpll() if
 	 * the pll is not already enabled.
 	 */
 	void (*enable)(struct intel_display *display,
@@ -71,7 +71,7 @@ struct intel_global_dpll_funcs {
 		       const struct intel_dpll_hw_state *dpll_hw_state);
 
 	/*
-	 * Hook for disabling the pll, called from intel_disable_shared_dpll()
+	 * Hook for disabling the pll, called from intel_disable_global_dpll()
 	 * only when it is safe to disable the pll, i.e., there are no more
 	 * tracked users for it.
 	 */
@@ -130,7 +130,7 @@ intel_atomic_duplicate_dpll_state(struct intel_display *display,
 }
 
 static struct intel_dpll_state *
-intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
+intel_atomic_get_global_dpll_state(struct drm_atomic_state *s)
 {
 	struct intel_atomic_state *state = to_intel_atomic_state(s);
 	struct intel_display *display = to_intel_display(state);
@@ -148,7 +148,7 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
 }
 
 /**
- * intel_get_shared_dpll_by_id - get a DPLL given its id
+ * intel_get_global_dpll_by_id - get a DPLL given its id
  * @display: intel_display device instance
  * @id: pll id
  *
@@ -156,7 +156,7 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
  * A pointer to the DPLL with @id
  */
 struct intel_global_dpll *
-intel_get_shared_dpll_by_id(struct intel_display *display,
+intel_get_global_dpll_by_id(struct intel_display *display,
 			    enum intel_dpll_id id)
 {
 	struct intel_global_dpll *pll;
@@ -172,7 +172,7 @@ intel_get_shared_dpll_by_id(struct intel_display *display,
 }
 
 /* For ILK+ */
-void assert_shared_dpll(struct intel_display *display,
+void assert_global_dpll(struct intel_display *display,
 			struct intel_global_dpll *pll,
 			bool state)
 {
@@ -247,12 +247,12 @@ static void _intel_disable_shared_dpll(struct intel_display *display,
 }
 
 /**
- * intel_enable_shared_dpll - enable a CRTC's shared DPLL
- * @crtc_state: CRTC, and its state, which has a shared DPLL
+ * intel_enable_global_dpll - enable a CRTC's global DPLL
+ * @crtc_state: CRTC, and its state, which has a DPLL
  *
- * Enable the shared DPLL used by @crtc.
+ * Enable DPLL used by @crtc.
  */
-void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
+void intel_enable_global_dpll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -279,7 +279,7 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 
 	if (old_mask) {
 		drm_WARN_ON(display->drm, !pll->on);
-		assert_shared_dpll_enabled(display, pll);
+		assert_global_dpll_enabled(display, pll);
 		goto out;
 	}
 	drm_WARN_ON(display->drm, pll->on);
@@ -293,12 +293,12 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 }
 
 /**
- * intel_disable_shared_dpll - disable a CRTC's shared DPLL
+ * intel_disable_global_dpll - disable a CRTC's shared DPLL
  * @crtc_state: CRTC, and its state, which has a shared DPLL
  *
- * Disable the shared DPLL used by @crtc.
+ * Disable DPLL used by @crtc.
  */
-void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
+void intel_disable_global_dpll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -323,7 +323,7 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 		    pll->info->name, pll->active_mask, pll->on,
 		    crtc->base.base.id, crtc->base.name);
 
-	assert_shared_dpll_enabled(display, pll);
+	assert_global_dpll_enabled(display, pll);
 	drm_WARN_ON(display->drm, !pll->on);
 
 	pll->active_mask &= ~pipe_mask;
@@ -355,7 +355,7 @@ intel_dpll_mask_all(struct intel_display *display)
 }
 
 static struct intel_global_dpll *
-intel_find_shared_dpll(struct intel_atomic_state *state,
+intel_find_global_dpll(struct intel_atomic_state *state,
 		       const struct intel_crtc *crtc,
 		       const struct intel_dpll_hw_state *dpll_hw_state,
 		       unsigned long dpll_mask)
@@ -366,14 +366,14 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 	struct intel_global_dpll *unused_pll = NULL;
 	enum intel_dpll_id id;
 
-	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
+	dpll_state = intel_atomic_get_global_dpll_state(&state->base);
 
 	drm_WARN_ON(display->drm, dpll_mask & ~dpll_mask_all);
 
 	for_each_set_bit(id, &dpll_mask, fls(dpll_mask_all)) {
 		struct intel_global_dpll *pll;
 
-		pll = intel_get_shared_dpll_by_id(display, id);
+		pll = intel_get_global_dpll_by_id(display, id);
 		if (!pll)
 			continue;
 
@@ -409,7 +409,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 }
 
 /**
- * intel_reference_shared_dpll_crtc - Get a DPLL reference for a CRTC
+ * intel_reference_global_dpll_crtc - Get a DPLL reference for a CRTC
  * @crtc: CRTC on which behalf the reference is taken
  * @pll: DPLL for which the reference is taken
  * @dpll_state: the DPLL atomic state in which the reference is tracked
@@ -417,7 +417,7 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
  * Take a reference for @pll tracking the use of it by @crtc.
  */
 static void
-intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
+intel_reference_global_dpll_crtc(const struct intel_crtc *crtc,
 				 const struct intel_global_dpll *pll,
 				 struct intel_dpll_state *dpll_state)
 {
@@ -432,23 +432,23 @@ intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
 }
 
 static void
-intel_reference_shared_dpll(struct intel_atomic_state *state,
+intel_reference_global_dpll(struct intel_atomic_state *state,
 			    const struct intel_crtc *crtc,
 			    const struct intel_global_dpll *pll,
 			    const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct intel_dpll_state *dpll_state;
 
-	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
+	dpll_state = intel_atomic_get_global_dpll_state(&state->base);
 
 	if (dpll_state[pll->index].pipe_mask == 0)
 		dpll_state[pll->index].hw_state = *dpll_hw_state;
 
-	intel_reference_shared_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
+	intel_reference_global_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
 }
 
 /**
- * intel_unreference_shared_dpll_crtc - Drop a DPLL reference for a CRTC
+ * intel_unreference_global_dpll_crtc - Drop a DPLL reference for a CRTC
  * @crtc: CRTC on which behalf the reference is dropped
  * @pll: DPLL for which the reference is dropped
  * @dpll_state: the DPLL atomic state in which the reference is tracked
@@ -456,7 +456,7 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
  * Drop a reference for @pll tracking the end of use of it by @crtc.
  */
 void
-intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
+intel_unreference_global_dpll_crtc(const struct intel_crtc *crtc,
 				   const struct intel_global_dpll *pll,
 				   struct intel_dpll_state *dpll_state)
 {
@@ -470,15 +470,15 @@ intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
 		    crtc->base.base.id, crtc->base.name, pll->info->name);
 }
 
-static void intel_unreference_shared_dpll(struct intel_atomic_state *state,
+static void intel_unreference_global_dpll(struct intel_atomic_state *state,
 					  const struct intel_crtc *crtc,
 					  const struct intel_global_dpll *pll)
 {
 	struct intel_dpll_state *dpll_state;
 
-	dpll_state = intel_atomic_get_shared_dpll_state(&state->base);
+	dpll_state = intel_atomic_get_global_dpll_state(&state->base);
 
-	intel_unreference_shared_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
+	intel_unreference_global_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
 }
 
 static void intel_put_dpll(struct intel_atomic_state *state,
@@ -494,11 +494,11 @@ static void intel_put_dpll(struct intel_atomic_state *state,
 	if (!old_crtc_state->global_dpll)
 		return;
 
-	intel_unreference_shared_dpll(state, crtc, old_crtc_state->global_dpll);
+	intel_unreference_global_dpll(state, crtc, old_crtc_state->global_dpll);
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
+		pll = intel_get_global_dpll_by_id(display, id);
 
 		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] using pre-allocated %s\n",
 			    crtc->base.base.id, crtc->base.name,
 			    pll->info->name);
 	} else {
-		pll = intel_find_shared_dpll(state, crtc,
+		pll = intel_find_global_dpll(state, crtc,
 					     &crtc_state->dpll_hw_state,
 					     BIT(DPLL_ID_PCH_PLL_B) |
 					     BIT(DPLL_ID_PCH_PLL_A));
@@ -635,7 +635,7 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
 		return -EINVAL;
 
 	/* reference the pll */
-	intel_reference_shared_dpll(state, crtc,
+	intel_reference_global_dpll(state, crtc,
 				    pll, &crtc_state->dpll_hw_state);
 
 	crtc_state->global_dpll = pll;
@@ -1066,7 +1066,7 @@ hsw_ddi_wrpll_get_dpll(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	return intel_find_shared_dpll(state, crtc,
+	return intel_find_global_dpll(state, crtc,
 				      &crtc_state->dpll_hw_state,
 				      BIT(DPLL_ID_WRPLL2) |
 				      BIT(DPLL_ID_WRPLL1));
@@ -1113,7 +1113,7 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
 		return NULL;
 	}
 
-	pll = intel_get_shared_dpll_by_id(display, pll_id);
+	pll = intel_get_global_dpll_by_id(display, pll_id);
 
 	if (!pll)
 		return NULL;
@@ -1169,7 +1169,7 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	return intel_find_shared_dpll(state, crtc, &crtc_state->dpll_hw_state,
+	return intel_find_global_dpll(state, crtc, &crtc_state->dpll_hw_state,
 				      BIT(DPLL_ID_SPLL));
 }
 
@@ -1233,7 +1233,7 @@ static int hsw_get_dpll(struct intel_atomic_state *state,
 	if (!pll)
 		return -EINVAL;
 
-	intel_reference_shared_dpll(state, crtc,
+	intel_reference_global_dpll(state, crtc,
 				    pll, &crtc_state->dpll_hw_state);
 
 	crtc_state->global_dpll = pll;
@@ -1942,11 +1942,11 @@ static int skl_get_dpll(struct intel_atomic_state *state,
 	struct intel_global_dpll *pll;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
-		pll = intel_find_shared_dpll(state, crtc,
+		pll = intel_find_global_dpll(state, crtc,
 					     &crtc_state->dpll_hw_state,
 					     BIT(DPLL_ID_SKL_DPLL0));
 	else
-		pll = intel_find_shared_dpll(state, crtc,
+		pll = intel_find_global_dpll(state, crtc,
 					     &crtc_state->dpll_hw_state,
 					     BIT(DPLL_ID_SKL_DPLL3) |
 					     BIT(DPLL_ID_SKL_DPLL2) |
@@ -1954,7 +1954,7 @@ static int skl_get_dpll(struct intel_atomic_state *state,
 	if (!pll)
 		return -EINVAL;
 
-	intel_reference_shared_dpll(state, crtc,
+	intel_reference_global_dpll(state, crtc,
 				    pll, &crtc_state->dpll_hw_state);
 
 	crtc_state->global_dpll = pll;
@@ -2434,12 +2434,12 @@ static int bxt_get_dpll(struct intel_atomic_state *state,
 
 	/* 1:1 mapping between ports and PLLs */
 	id = (enum intel_dpll_id) encoder->port;
-	pll = intel_get_shared_dpll_by_id(display, id);
+	pll = intel_get_global_dpll_by_id(display, id);
 
 	drm_dbg_kms(display->drm, "[CRTC:%d:%s] using pre-allocated %s\n",
 		    crtc->base.base.id, crtc->base.name, pll->info->name);
 
-	intel_reference_shared_dpll(state, crtc,
+	intel_reference_global_dpll(state, crtc,
 				    pll, &crtc_state->dpll_hw_state);
 
 	crtc_state->global_dpll = pll;
@@ -3390,13 +3390,13 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 	/* Eliminate DPLLs from consideration if reserved by HTI */
 	dpll_mask &= ~intel_hti_dpll_mask(display);
 
-	port_dpll->pll = intel_find_shared_dpll(state, crtc,
+	port_dpll->pll = intel_find_global_dpll(state, crtc,
 						&port_dpll->hw_state,
 						dpll_mask);
 	if (!port_dpll->pll)
 		return -EINVAL;
 
-	intel_reference_shared_dpll(state, crtc,
+	intel_reference_global_dpll(state, crtc,
 				    port_dpll->pll, &port_dpll->hw_state);
 
 	icl_update_active_dpll(state, crtc, encoder);
@@ -3454,25 +3454,25 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 	int ret;
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
-	port_dpll->pll = intel_find_shared_dpll(state, crtc,
+	port_dpll->pll = intel_find_global_dpll(state, crtc,
 						&port_dpll->hw_state,
 						BIT(DPLL_ID_ICL_TBTPLL));
 	if (!port_dpll->pll)
 		return -EINVAL;
-	intel_reference_shared_dpll(state, crtc,
+	intel_reference_global_dpll(state, crtc,
 				    port_dpll->pll, &port_dpll->hw_state);
 
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
 	dpll_id = icl_tc_port_to_pll_id(intel_encoder_to_tc(encoder));
-	port_dpll->pll = intel_find_shared_dpll(state, crtc,
+	port_dpll->pll = intel_find_global_dpll(state, crtc,
 						&port_dpll->hw_state,
 						BIT(dpll_id));
 	if (!port_dpll->pll) {
 		ret = -EINVAL;
 		goto err_unreference_tbt_pll;
 	}
-	intel_reference_shared_dpll(state, crtc,
+	intel_reference_global_dpll(state, crtc,
 				    port_dpll->pll, &port_dpll->hw_state);
 
 	icl_update_active_dpll(state, crtc, encoder);
@@ -3481,7 +3481,7 @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 
 err_unreference_tbt_pll:
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
-	intel_unreference_shared_dpll(state, crtc, port_dpll->pll);
+	intel_unreference_global_dpll(state, crtc, port_dpll->pll);
 
 	return ret;
 }
@@ -3536,7 +3536,7 @@ static void icl_put_dplls(struct intel_atomic_state *state,
 		if (!old_port_dpll->pll)
 			continue;
 
-		intel_unreference_shared_dpll(state, crtc, old_port_dpll->pll);
+		intel_unreference_global_dpll(state, crtc, old_port_dpll->pll);
 	}
 }
 
@@ -4302,12 +4302,12 @@ static const struct intel_dpll_mgr adlp_pll_mgr = {
 };
 
 /**
- * intel_shared_dpll_init - Initialize shared DPLLs
+ * intel_global_dpll_init - Initialize DPLLs
  * @display: intel_display device
  *
- * Initialize shared DPLLs for @display.
+ * Initialize DPLLs for @display.
  */
-void intel_shared_dpll_init(struct intel_display *display)
+void intel_global_dpll_init(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_dpll_mgr *dpll_mgr = NULL;
@@ -4365,7 +4365,7 @@ void intel_shared_dpll_init(struct intel_display *display)
 }
 
 /**
- * intel_compute_shared_dplls - compute DPLL state CRTC and encoder combination
+ * intel_compute_global_dplls - compute DPLL state CRTC and encoder combination
  * @state: atomic state
  * @crtc: CRTC to compute DPLLs for
  * @encoder: encoder
@@ -4373,12 +4373,12 @@ void intel_shared_dpll_init(struct intel_display *display)
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
+int intel_compute_global_dplls(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
 			       struct intel_encoder *encoder)
 {
@@ -4392,7 +4392,7 @@ int intel_compute_shared_dplls(struct intel_atomic_state *state,
 }
 
 /**
- * intel_reserve_shared_dplls - reserve DPLLs for CRTC and encoder combination
+ * intel_reserve_global_dplls - reserve DPLLs for CRTC and encoder combination
  * @state: atomic state
  * @crtc: CRTC to reserve DPLLs for
  * @encoder: encoder
@@ -4402,16 +4402,16 @@ int intel_compute_shared_dplls(struct intel_atomic_state *state,
  * state.
  *
  * The new configuration in the atomic commit @state is made effective by
- * calling intel_shared_dpll_swap_state().
+ * calling intel_dpll_swap_state().
  *
  * The reserved DPLLs should be released by calling
- * intel_release_shared_dplls().
+ * intel_release_global_dplls().
  *
  * Returns:
  * 0 if all required DPLLs were successfully reserved,
  * negative error code otherwise.
  */
-int intel_reserve_shared_dplls(struct intel_atomic_state *state,
+int intel_reserve_global_dplls(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
 			       struct intel_encoder *encoder)
 {
@@ -4425,17 +4425,17 @@ int intel_reserve_shared_dplls(struct intel_atomic_state *state,
 }
 
 /**
- * intel_release_shared_dplls - end use of DPLLs by CRTC in atomic state
+ * intel_release_global_dplls - end use of DPLLs by CRTC in atomic state
  * @state: atomic state
  * @crtc: crtc from which the DPLLs are to be released
  *
- * This function releases all DPLLs reserved by intel_reserve_shared_dplls()
+ * This function releases all DPLLs reserved by intel_reserve_global_dplls()
  * from the current atomic commit @state and the old @crtc atomic state.
  *
  * The new configuration in the atomic commit @state is made effective by
- * calling intel_shared_dpll_swap_state().
+ * calling intel_dpll_swap_state().
  */
-void intel_release_shared_dplls(struct intel_atomic_state *state,
+void intel_release_global_dplls(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
@@ -4444,7 +4444,7 @@ void intel_release_shared_dplls(struct intel_atomic_state *state,
 	/*
 	 * FIXME: this function is called for every platform having a
 	 * compute_clock hook, even though the platform doesn't yet support
-	 * the shared DPLL framework and intel_reserve_shared_dplls() is not
+	 * the global DPLL framework and intel_reserve_global_dplls() is not
 	 * called on those.
 	 */
 	if (!dpll_mgr)
@@ -4460,7 +4460,7 @@ void intel_release_shared_dplls(struct intel_atomic_state *state,
  * @encoder: encoder determining the type of port DPLL
  *
  * Update the active DPLL for the given @crtc/@encoder in @crtc's atomic state,
- * from the port DPLLs reserved previously by intel_reserve_shared_dplls(). The
+ * from the port DPLLs reserved previously by intel_reserve_global_dplls(). The
  * DPLL selected will be based on the current mode of the encoder's port.
  */
 void intel_update_active_dpll(struct intel_atomic_state *state,
@@ -4525,7 +4525,7 @@ static void readout_dpll_hw_state(struct intel_display *display,
 			to_intel_crtc_state(crtc->base.state);
 
 		if (crtc_state->hw.active && crtc_state->global_dpll == pll)
-			intel_reference_shared_dpll_crtc(crtc, pll, &pll->state);
+			intel_reference_global_dpll_crtc(crtc, pll, &pll->state);
 	}
 	pll->active_mask = pll->state.pipe_mask;
 
@@ -4717,7 +4717,7 @@ void intel_dpll_state_verify(struct intel_atomic_state *state,
 	}
 }
 
-void intel_shared_dpll_verify_disabled(struct intel_atomic_state *state)
+void intel_global_dpll_verify_disabled(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_global_dpll *pll;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 6edd103eda55..ef66aca5da1d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -387,24 +387,24 @@ struct intel_global_dpll {
 #define SKL_DPLL2 2
 #define SKL_DPLL3 3
 
-/* shared dpll functions */
+/* global dpll functions */
 struct intel_global_dpll *
-intel_get_shared_dpll_by_id(struct intel_display *display,
+intel_get_global_dpll_by_id(struct intel_display *display,
 			    enum intel_dpll_id id);
-void assert_shared_dpll(struct intel_display *display,
+void assert_global_dpll(struct intel_display *display,
 			struct intel_global_dpll *pll,
 			bool state);
-#define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d, p, true)
-#define assert_shared_dpll_disabled(d, p) assert_shared_dpll(d, p, false)
-int intel_compute_shared_dplls(struct intel_atomic_state *state,
+#define assert_global_dpll_enabled(d, p) assert_global_dpll(d, p, true)
+#define assert_global_dpll_disabled(d, p) assert_global_dpll(d, p, false)
+int intel_compute_global_dplls(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
 			       struct intel_encoder *encoder);
-int intel_reserve_shared_dplls(struct intel_atomic_state *state,
+int intel_reserve_global_dplls(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc,
 			       struct intel_encoder *encoder);
-void intel_release_shared_dplls(struct intel_atomic_state *state,
+void intel_release_global_dplls(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
-void intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
+void intel_unreference_global_dpll_crtc(const struct intel_crtc *crtc,
 					const struct intel_global_dpll *pll,
 					struct intel_dpll_state *shared_dpll_state);
 void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
@@ -418,10 +418,10 @@ int intel_dpll_get_freq(struct intel_display *display,
 bool intel_dpll_get_hw_state(struct intel_display *display,
 			     struct intel_global_dpll *pll,
 			     struct intel_dpll_hw_state *dpll_hw_state);
-void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
-void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state);
-void intel_shared_dpll_swap_state(struct intel_atomic_state *state);
-void intel_shared_dpll_init(struct intel_display *display);
+void intel_enable_global_dpll(const struct intel_crtc_state *crtc_state);
+void intel_disable_global_dpll(const struct intel_crtc_state *crtc_state);
+void intel_dpll_swap_state(struct intel_atomic_state *state);
+void intel_global_dpll_init(struct intel_display *display);
 void intel_dpll_update_ref_clks(struct intel_display *display);
 void intel_dpll_readout_hw_state(struct intel_display *display);
 void intel_dpll_sanitize_state(struct intel_display *display);
@@ -437,6 +437,6 @@ bool intel_dpll_is_combophy(enum intel_dpll_id id);
 
 void intel_dpll_state_verify(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc);
-void intel_shared_dpll_verify_disabled(struct intel_atomic_state *state);
+void intel_global_dpll_verify_disabled(struct intel_atomic_state *state);
 
 #endif /* _INTEL_DPLL_MGR_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index c5b828dc4d6c..3a5c999dc68f 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -250,7 +250,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
 
 	if (HAS_PCH_SPLIT(i915)) {
 		assert_fdi_rx_pll_disabled(display, pipe);
-		assert_shared_dpll_disabled(display, crtc_state->global_dpll);
+		assert_global_dpll_disabled(display, crtc_state->global_dpll);
 	} else {
 		assert_pll_disabled(display, pipe);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 07a75be8cb12..78b1f825f42c 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -92,7 +92,7 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 	crtc->base.enabled = false;
 
 	if (crtc_state->global_dpll)
-		intel_unreference_shared_dpll_crtc(crtc,
+		intel_unreference_global_dpll_crtc(crtc,
 						   crtc_state->global_dpll,
 						   &crtc_state->global_dpll->state);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 5f3b1c2b081b..41d4ef7afb4b 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -254,5 +254,5 @@ void intel_modeset_verify_disabled(struct intel_atomic_state *state)
 {
 	verify_encoder_state(state);
 	verify_connector_state(state, NULL);
-	intel_shared_dpll_verify_disabled(state);
+	intel_global_dpll_verify_disabled(state);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 4192cfbb7af6..23e6651609a5 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -256,7 +256,7 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 	u32 val, pipeconf_val;
 
 	/* Make sure PCH DPLL is enabled */
-	assert_shared_dpll_enabled(display, crtc_state->global_dpll);
+	assert_global_dpll_enabled(display, crtc_state->global_dpll);
 
 	/* FDI must be feeding us bits for PCH ports */
 	assert_fdi_tx_enabled(dev_priv, pipe);
@@ -388,7 +388,7 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 		temp |= TRANS_DPLL_ENABLE(pipe);
 		sel = TRANS_DPLLB_SEL(pipe);
 		if (crtc_state->global_dpll ==
-		    intel_get_shared_dpll_by_id(display, DPLL_ID_PCH_PLL_B))
+		    intel_get_global_dpll_by_id(display, DPLL_ID_PCH_PLL_B))
 			temp |= sel;
 		else
 			temp &= ~sel;
@@ -400,11 +400,11 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 	 * transcoder, and we actually should do this to not upset any PCH
 	 * transcoder that already use the clock when we share it.
 	 *
-	 * Note that enable_shared_dpll tries to do the right thing, but
-	 * get_shared_dpll unconditionally resets the pll - we need that
+	 * Note that enable_global_dpll tries to do the right thing, but
+	 * get_global_dpll unconditionally resets the pll - we need that
 	 * to have the right LVDS enable sequence.
 	 */
-	intel_enable_shared_dpll(crtc_state);
+	intel_enable_global_dpll(crtc_state);
 
 	/* set transcoder timing, panel must allow it */
 	assert_pps_unlocked(display, pipe);
@@ -532,7 +532,7 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
 			pll_id = DPLL_ID_PCH_PLL_A;
 	}
 
-	crtc_state->global_dpll = intel_get_shared_dpll_by_id(display, pll_id);
+	crtc_state->global_dpll = intel_get_global_dpll_by_id(display, pll_id);
 	pll = crtc_state->global_dpll;
 
 	pll_active = intel_dpll_get_hw_state(display, pll,
-- 
2.34.1

