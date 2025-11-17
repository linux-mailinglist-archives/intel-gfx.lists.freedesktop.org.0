Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E400C63AE3
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 894D310E3A6;
	Mon, 17 Nov 2025 10:59:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IhTMWuVv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4BED10E3A1;
 Mon, 17 Nov 2025 10:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377184; x=1794913184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Np4XVGHkXASCaUM9l4idgulFHqXKvlA6FBNla3Y5UAs=;
 b=IhTMWuVvS3x31OlrcB6cUU/3QFIne1fv0MyNp/G+tyVjW9tz6hNLBWyh
 jd7A2thVmwpKpH2Q0W4uAfAxw8dFsxx9Ve2Kc9mXYdnSjtIjz/EO355eA
 WOhZh+E6iUlM3dKhD8dQw/7Mrm1Unf5cWzv5wKGl+4S/cWVjGEtyNlc06
 2CXgkd57e9DSHHWVvBECGJJxNoc96oXL/ClzfPa3DYNhKA8A6PahbEK1C
 boWTw5znkbfg1ZAESq9fgFseNJdDx8NKxy34SBbKyQ8kzMGh1Yv4znXX9
 UU4LSl/wGD/hT/lPAVws0jwJRBoJxkwKDLFZzir5euPtAuyB61sQtTd02 w==;
X-CSE-ConnectionGUID: FxCd2YH6QvqoeOx+Jfwvyw==
X-CSE-MsgGUID: r03hRo52R/O2fomfRUWttQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475437"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475437"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:44 -0800
X-CSE-ConnectionGUID: HFAQrywLSBOXVB4xiYVpRw==
X-CSE-MsgGUID: OMXyhHmmS2+iUpl7IzMYUQ==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:43 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 32/32] drm/i915/cx0: Enable dpll framework for MTL+
Date: Mon, 17 Nov 2025 12:46:02 +0200
Message-Id: <20251117104602.2363671-33-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117104602.2363671-1-mika.kahola@intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
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
remove a separate check for hw comparison and rely solely
on dpll framework hw comparison.

Finally, all required hooks are now in place so initialize
PLL manager for MTL+ platforms and remove the redirections
to the legacy code paths from the following interfaces:

* intel_encoder::clock_enable/disable()
* intel_encoder::get_config()
* intel_dpll_funcs::get_hw_state()
* intel_ddi_update_active_dpll()
* pipe_config_pll_mismatch()

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 10 -------
 drivers/gpu/drm/i915/display/intel_ddi.c      | 29 ++++---------------
 drivers/gpu/drm/i915/display/intel_display.c  | 29 -------------------
 drivers/gpu/drm/i915/display/intel_dpll.c     | 23 +--------------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  5 ++--
 5 files changed, 9 insertions(+), 87 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 9d96e8940838..96ab7f3b5539 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3432,9 +3432,6 @@ void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
-	else
-		/* TODO: remove when PLL mgr is in place. */
-		intel_mtl_pll_enable(encoder, NULL, &crtc_state->dpll_hw_state);
 }
 
 /*
@@ -3598,9 +3595,6 @@ void intel_mtl_pll_disable_clock(struct intel_encoder *encoder)
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_disable_clock(encoder);
-	else
-		/* TODO: remove when PLL mgr is in place. */
-		intel_mtl_pll_disable(encoder);
 }
 
 enum icl_port_dpll_id
@@ -3629,10 +3623,6 @@ bool intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
 {
 	memset(pll_state, 0, sizeof(*pll_state));
 
-	pll_state->tbt_mode = intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
-	if (pll_state->tbt_mode)
-		return true;
-
 	if (!intel_cx0_pll_is_enabled(encoder))
 		return false;
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 689bd3224919..4e379b0b066d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3669,8 +3669,10 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_crtc *pipe_crtc;
 
-	/* FIXME: Add MTL pll_mgr */
-	if (DISPLAY_VER(display) >= 14 || !intel_encoder_is_tc(encoder))
+	if (!intel_encoder_is_tc(encoder))
+		return;
+
+	if (!HAS_LT_PHY(display))
 		return;
 
 	if (!HAS_LT_PHY(display))
@@ -4260,19 +4262,6 @@ static void xe3plpd_ddi_get_config(struct intel_encoder *encoder,
 	intel_ddi_get_config(encoder, crtc_state);
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
@@ -4319,10 +4308,6 @@ static void mtl_ddi_non_tc_phy_get_config(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 
-	/* TODO: Remove when the PLL manager is in place. */
-	mtl_ddi_get_config(encoder, crtc_state);
-	return;
-
 	mtl_ddi_cx0_get_config(encoder, crtc_state, ICL_PORT_DPLL_DEFAULT,
 			       mtl_port_to_pll_id(display, encoder->port));
 }
@@ -4332,10 +4317,6 @@ static void mtl_ddi_tc_phy_get_config(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 
-	/* TODO: Remove when the PLL manager is in place. */
-	mtl_ddi_get_config(encoder, crtc_state);
-	return;
-
 	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
 		mtl_ddi_cx0_get_config(encoder, crtc_state, ICL_PORT_DPLL_DEFAULT,
 				       DPLL_ID_ICL_TBTPLL);
@@ -5325,7 +5306,7 @@ void intel_ddi_init(struct intel_display *display,
 	} else if (DISPLAY_VER(display) >= 14) {
 		encoder->enable_clock = intel_mtl_pll_enable_clock;
 		encoder->disable_clock = intel_mtl_pll_disable_clock;
-		encoder->port_pll_type = intel_mtl_port_pll_type;
+		encoder->port_pll_type = icl_ddi_tc_port_pll_type;
 		if (intel_encoder_is_tc(encoder))
 			encoder->get_config = mtl_ddi_tc_phy_get_config;
 		else
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e7bb8ec0d6bb..6c8a7f63111e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4977,23 +4977,6 @@ pipe_config_pll_mismatch(struct drm_printer *p, bool fastset,
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
@@ -5145,16 +5128,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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
 #define PIPE_CONF_CHECK_PLL_LT(name) do { \
 	if (!intel_lt_phy_pll_compare_hw_state(&current_config->name, \
 					       &pipe_config->name)) { \
@@ -5394,8 +5367,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	/* FIXME convert MTL+ platforms over to dpll_mgr */
 	if (HAS_LT_PHY(display))
 		PIPE_CONF_CHECK_PLL_LT(dpll_hw_state.ltpll);
-	else if (DISPLAY_VER(display) >= 14)
-		PIPE_CONF_CHECK_PLL_CX0(dpll_hw_state.cx0pll);
 
 	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
 	PIPE_CONF_CHECK_X(dsi_pll.div);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 2da65bb20f1c..a4f372c9e6fc 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1212,27 +1212,6 @@ static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
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
 static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
 				      struct intel_crtc *crtc)
 {
@@ -1719,7 +1698,7 @@ static const struct intel_dpll_global_funcs xe3plpd_dpll_funcs = {
 };
 
 static const struct intel_dpll_global_funcs mtl_dpll_funcs = {
-	.crtc_compute_clock = mtl_crtc_compute_clock,
+	.crtc_compute_clock = hsw_crtc_compute_clock,
 	.crtc_get_dpll = hsw_crtc_get_dpll,
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 8fd3b06f393d..6c94dd2e1a15 100644
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

