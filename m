Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A71D8BAFB39
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A62C10E703;
	Wed,  1 Oct 2025 08:39:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a/RBI0LU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA6AA10E6F5;
 Wed,  1 Oct 2025 08:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307966; x=1790843966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HUc6qKqdNQsOWnzyVaM2xaHWr0MN9UgWlJLDsafXWtI=;
 b=a/RBI0LUGFJDhnuX/KRNap0gtr9QFhFOIz4LI1nBNqm7D9HI/TeNKISF
 e3qhGgu/lZ04xWqVMNZixXlm32dT6RYUL5AQhvblbtJu0J3AIsLKALOoN
 wGOR50CjnZSQQzZtHcF42ic+2t7U6J1Xwk3lQ0+6E/kqLomTSGsG3+oNl
 lgIc6LLn3mMq/2NPvaRiJfBXpElXAafwdgkgtkMByr+gUY0Inf7SFWALu
 QWZFgv+2LAees19DgcTFXgEeuvSOZcHCWRsW41knlmLwM+E1BYZpKi2eC
 desT/vQtpZOVknkhIGVjcDhGIRlpbar6EZ1Fh2FolILCurNZCJSlRkVho g==;
X-CSE-ConnectionGUID: w1jvkbMZT5mjvOikJ3OSGA==
X-CSE-MsgGUID: Vk9bdnd1SHeLwkvpCska4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742845"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742845"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:26 -0700
X-CSE-ConnectionGUID: R1TAoyVBQju8I7p9+dhYDw==
X-CSE-MsgGUID: 4+m5ODX4QhaQqS2JUQQhYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179143021"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:39:24 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [RFC PATCH 39/39] drm/i915/display: Enable dpll framework for MTL+
Date: Wed,  1 Oct 2025 11:28:39 +0300
Message-Id: <20251001082839.2585559-40-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
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
index 832c635b8a12..2bde3f601dc7 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3452,9 +3452,6 @@ void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
-	else
-		/* TODO: remove when PLL mgr is in place. */
-		intel_mtl_pll_enable(encoder, NULL, &crtc_state->dpll_hw_state);
 }
 
 /*
@@ -3620,9 +3617,6 @@ void intel_mtl_pll_disable_clock(struct intel_encoder *encoder)
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_disable_clock(encoder);
-	else
-		/* TODO: remove when PLL mgr is in place. */
-		intel_mtl_pll_disable(encoder);
 }
 
 enum icl_port_dpll_id
@@ -3651,10 +3645,6 @@ bool intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 {
 	memset(pll_state, 0, sizeof(*pll_state));
 
-	pll_state->tbt_mode = intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
-	if (pll_state->tbt_mode)
-		return true;
-
 	if (!intel_cx0_pll_is_enabled(encoder))
 		return false;
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 972033b41718..321fb6f83478 100644
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
@@ -4296,10 +4282,6 @@ static void mtl_ddi_c10phy_get_config(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 
-	/* TODO: Remove when the PLL manager is in place. */
-	mtl_ddi_get_config(encoder, crtc_state);
-	return;
-
 	mtl_ddi_cx0_get_config(encoder, crtc_state, ICL_PORT_DPLL_DEFAULT,
 			       mtl_port_to_pll_id(display, encoder->port));
 }
@@ -4309,10 +4291,6 @@ static void mtl_ddi_c20phy_get_config(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 
-	/* TODO: Remove when the PLL manager is in place. */
-	mtl_ddi_get_config(encoder, crtc_state);
-	return;
-
 	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
 		mtl_ddi_cx0_get_config(encoder, crtc_state, ICL_PORT_DPLL_DEFAULT,
 				       DPLL_ID_ICL_TBTPLL);
@@ -5290,7 +5268,7 @@ void intel_ddi_init(struct intel_display *display,
 	if (DISPLAY_VER(display) >= 14) {
 		encoder->enable_clock = intel_mtl_pll_enable_clock;
 		encoder->disable_clock = intel_mtl_pll_disable_clock;
-		encoder->port_pll_type = intel_mtl_port_pll_type;
+		encoder->port_pll_type = icl_ddi_tc_port_pll_type;
 		if (intel_encoder_is_c10phy(encoder))
 			encoder->get_config = mtl_ddi_c10phy_get_config;
 		else
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1b3e6ccd8e37..ef7e24d09672 100644
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
@@ -5076,16 +5059,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
@@ -5309,10 +5282,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
index 26af1a500979..851defec267e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4541,7 +4541,6 @@ static bool mtl_compare_hw_state(const struct intel_dpll_hw_state *_a,
 	return intel_cx0pll_compare_hw_state(a, b);
 }
 
-__maybe_unused
 static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.dpll_info = mtl_plls,
 	.compute_dplls = mtl_compute_dplls,
@@ -4567,9 +4566,11 @@ void intel_dpll_init(struct intel_display *display)
 
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

