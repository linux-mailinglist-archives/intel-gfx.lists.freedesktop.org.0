Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 200E2C2497F
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:48:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A257210EB90;
	Fri, 31 Oct 2025 10:48:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bcpmfn/9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA71710EB72;
 Fri, 31 Oct 2025 10:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907704; x=1793443704;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RTVSPSPfymqN78+JnnETLyXKlEeDYFTrZfwrRhgDgi4=;
 b=Bcpmfn/9OTkCzVYyseBpE7KrLRifIAM49Oc1PNl1xpA2ijA08TXoKH4T
 d3E/+aekwP4THZ+b0zy6ruVZmUas7A0jNErKvu6IW2ygRq2sJeDAR0D8m
 uRi6JouaSRIQiLeDVHLvUJgD+wwJuA+vF+F6uyH5YT+dNxUo8UMkXpEs+
 P5vtzzRd60F3oKny8WOFMMs1f4wu0T/5Fzono0kV2pFHUqhHj2i6CNxPO
 V3JjaQtOOFAgDSl6AITzSCAJ6eHArY1CC9YysPbZ/1haKp0MbYBRpxl/M
 lN16aM0K+Vh1lzgV+5fe04EI5cDONJ0hWS509OHhcN4iE4SgAxjC60Yp2 g==;
X-CSE-ConnectionGUID: SFZYlflrSoqWvdJcjTwbNg==
X-CSE-MsgGUID: GCCKKBRmTcqtfnr/PrhvfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64217597"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64217597"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:48:24 -0700
X-CSE-ConnectionGUID: dRfoltzCT9CPF4XL4psGbw==
X-CSE-MsgGUID: 937ywI5ARby5Rp7sJGLogw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="223441465"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa001.jf.intel.com with ESMTP; 31 Oct 2025 03:48:22 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [CI 32/32] drm/i915/display: Enable dpll framework for MTL+
Date: Fri, 31 Oct 2025 12:35:49 +0200
Message-Id: <20251031103549.173208-33-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103549.173208-1-mika.kahola@intel.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
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

Now that MTL+ platforms are supported by dpll framework
we can remove a separate check for hw comparison and
rely solely on dpll framework hw comparison.

Finally, we have all required hooks in place so we can
initialize the PLL manager for MTL+ platforms and remove
the redirections to the legacy code paths from the following
interfaces:

* intel_encoder::clock_enable/disable()
* intel_encoder::get_config()
* intel_dpll_funcs::get_hw_state()
* intel_ddi_update_active_dpll()
* pipe_config_pll_mismatch()

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 10 ------
 drivers/gpu/drm/i915/display/intel_ddi.c      | 26 ++--------------
 drivers/gpu/drm/i915/display/intel_display.c  | 31 -------------------
 drivers/gpu/drm/i915/display/intel_dpll.c     | 23 +-------------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  5 +--
 5 files changed, 6 insertions(+), 89 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 432cdf56a6ed..2005a3a93f74 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3456,9 +3456,6 @@ void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
-	else
-		/* TODO: remove when PLL mgr is in place. */
-		intel_mtl_pll_enable(encoder, NULL, &crtc_state->dpll_hw_state);
 }
 
 /*
@@ -3624,9 +3621,6 @@ void intel_mtl_pll_disable_clock(struct intel_encoder *encoder)
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_disable_clock(encoder);
-	else
-		/* TODO: remove when PLL mgr is in place. */
-		intel_mtl_pll_disable(encoder);
 }
 
 enum icl_port_dpll_id
@@ -3655,10 +3649,6 @@ bool intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 {
 	memset(pll_state, 0, sizeof(*pll_state));
 
-	pll_state->tbt_mode = intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
-	if (pll_state->tbt_mode)
-		return true;
-
 	if (!intel_cx0_pll_is_enabled(encoder))
 		return false;
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f554921f59a3..7a981b11b029 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3667,8 +3667,7 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_crtc *pipe_crtc;
 
-	/* FIXME: Add MTL pll_mgr */
-	if (DISPLAY_VER(display) >= 14 || !intel_encoder_is_tc(encoder))
+	if (!intel_encoder_is_tc(encoder))
 		return;
 
 	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc,
@@ -4242,19 +4241,6 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
 						     &crtc_state->dpll_hw_state);
 }
 
-static void mtl_ddi_get_config(struct intel_encoder *encoder,
-			       struct intel_crtc_state *crtc_state)
-{
-	intel_cx0pll_readout_hw_state(encoder, &crtc_state->dpll_hw_state.cx0pll);
-
-	if (crtc_state->dpll_hw_state.cx0pll.tbt_mode)
-		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
-	else
-		crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
-
-	intel_ddi_get_config(encoder, crtc_state);
-}
-
 static bool icl_ddi_tc_pll_is_tbt(const struct intel_dpll *pll)
 {
 	return pll->info->id == DPLL_ID_ICL_TBTPLL;
@@ -4301,10 +4287,6 @@ static void mtl_ddi_non_tc_phy_get_config(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 
-	/* TODO: Remove when the PLL manager is in place. */
-	mtl_ddi_get_config(encoder, crtc_state);
-	return;
-
 	mtl_ddi_cx0_get_config(encoder, crtc_state, ICL_PORT_DPLL_DEFAULT,
 			       mtl_port_to_pll_id(display, encoder->port));
 }
@@ -4314,10 +4296,6 @@ static void mtl_ddi_tc_phy_get_config(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 
-	/* TODO: Remove when the PLL manager is in place. */
-	mtl_ddi_get_config(encoder, crtc_state);
-	return;
-
 	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
 		mtl_ddi_cx0_get_config(encoder, crtc_state, ICL_PORT_DPLL_DEFAULT,
 				       DPLL_ID_ICL_TBTPLL);
@@ -5302,7 +5280,7 @@ void intel_ddi_init(struct intel_display *display,
 	if (DISPLAY_VER(display) >= 14) {
 		encoder->enable_clock = intel_mtl_pll_enable_clock;
 		encoder->disable_clock = intel_mtl_pll_disable_clock;
-		encoder->port_pll_type = intel_mtl_port_pll_type;
+		encoder->port_pll_type = icl_ddi_tc_port_pll_type;
 		if (intel_encoder_is_tc(encoder))
 			encoder->get_config = mtl_ddi_tc_phy_get_config;
 		else
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2e927d6cd577..5b569ad8157b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4932,23 +4932,6 @@ pipe_config_pll_mismatch(struct drm_printer *p, bool fastset,
 	intel_dpll_dump_hw_state(display, p, b);
 }
 
-static void
-pipe_config_cx0pll_mismatch(struct drm_printer *p, bool fastset,
-			    const struct intel_crtc *crtc,
-			    const char *name,
-			    const struct intel_cx0pll_state *a,
-			    const struct intel_cx0pll_state *b)
-{
-	char *chipname = a->use_c10 ? "C10" : "C20";
-
-	pipe_config_mismatch(p, fastset, crtc, name, chipname);
-
-	drm_printf(p, "expected:\n");
-	intel_cx0pll_dump_hw_state(p, a);
-	drm_printf(p, "found:\n");
-	intel_cx0pll_dump_hw_state(p, b);
-}
-
 static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
@@ -5082,16 +5065,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	} \
 } while (0)
 
-#define PIPE_CONF_CHECK_PLL_CX0(name) do { \
-	if (!intel_cx0pll_compare_hw_state(&current_config->name, \
-					   &pipe_config->name)) { \
-		pipe_config_cx0pll_mismatch(&p, fastset, crtc, __stringify(name), \
-					    &current_config->name, \
-					    &pipe_config->name); \
-		ret = false; \
-	} \
-} while (0)
-
 #define PIPE_CONF_CHECK_TIMINGS(name) do {     \
 	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
 	PIPE_CONF_CHECK_I(name.crtc_htotal); \
@@ -5315,10 +5288,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (display->dpll.mgr || HAS_GMCH(display))
 		PIPE_CONF_CHECK_PLL(dpll_hw_state);
 
-	/* FIXME convert MTL+ platforms over to dpll_mgr */
-	if (DISPLAY_VER(display) >= 14)
-		PIPE_CONF_CHECK_PLL_CX0(dpll_hw_state.cx0pll);
-
 	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
 	PIPE_CONF_CHECK_X(dsi_pll.div);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 46ae05976191..f744f61b291a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1211,27 +1211,6 @@ static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
-static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
-				  struct intel_crtc *crtc)
-{
-	struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_encoder *encoder =
-		intel_get_crtc_new_encoder(state, crtc_state);
-	int ret;
-
-	ret = intel_cx0pll_calc_state(crtc_state, encoder, &crtc_state->dpll_hw_state);
-	if (ret)
-		return ret;
-
-	/* TODO: Do the readback via intel_dpll_compute() */
-	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
-
-	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
-
-	return 0;
-}
-
 static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -1692,7 +1671,7 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 }
 
 static const struct intel_dpll_global_funcs mtl_dpll_funcs = {
-	.crtc_compute_clock = mtl_crtc_compute_clock,
+	.crtc_compute_clock = hsw_crtc_compute_clock,
 	.crtc_get_dpll = hsw_crtc_get_dpll,
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ddc763d89aac..77ef6a0419d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4558,7 +4558,6 @@ static bool mtl_compare_hw_state(const struct intel_dpll_hw_state *_a,
 	return intel_cx0pll_compare_hw_state(a, b);
 }
 
-__maybe_unused
 static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.dpll_info = mtl_plls,
 	.compute_dplls = mtl_compute_dplls,
@@ -4584,9 +4583,11 @@ void intel_dpll_init(struct intel_display *display)
 
 	mutex_init(&display->dpll.lock);
 
-	if (DISPLAY_VER(display) >= 14 || display->platform.dg2)
+	if (display->platform.dg2)
 		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
 		dpll_mgr = NULL;
+	else if (DISPLAY_VER(display) >= 14)
+		dpll_mgr = &mtl_pll_mgr;
 	else if (display->platform.alderlake_p)
 		dpll_mgr = &adlp_pll_mgr;
 	else if (display->platform.alderlake_s)
-- 
2.34.1

