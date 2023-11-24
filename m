Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6F77F6E18
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Nov 2023 09:28:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E33810E7A5;
	Fri, 24 Nov 2023 08:27:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2799F10E1B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Nov 2023 08:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700814471; x=1732350471;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WVXpKSWSDJJ4cxJcNP6w0tDbvl/euj2Hh92B6DfK64k=;
 b=Im5e5DrvHoxYlnmAhAOOh94Cuf6FiYnCBk61EddY06q10QFuvy9htibd
 Ee5kNsoaCivu9EIPfJiBkq1b3jMYXzu8LcInfZQjarrwwd356eQGRpVrK
 zZbLxI2L90MBjTHjdf2U2dsxoGrUqOi687P2RKOCVwIEqvPhVKiqG0tMA
 +VcPpox24ntDAcxT3FULPPgYLVbietUJpBPksb/WQHZ+b+Z4Vbx5ufvTg
 Xj8hf6CDCdp+VqMZQrB3T9gdixSPCxwMDODQ+DEitkOQn4pOft5wvgXDv
 7Vj9BKnj9h5p8tkBm8u5sh7qWCnf61aB19Yqj15kqwicefdmcnJc18Qfx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="423523568"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="423523568"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 00:27:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="760896291"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="760896291"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 24 Nov 2023 00:27:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Nov 2023 10:27:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Nov 2023 10:27:35 +0200
Message-ID: <20231124082735.25470-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231124082735.25470-1-ville.syrjala@linux.intel.com>
References: <20231124082735.25470-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Convert PLL flags to booleans
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

No real reason why the PLL flags need to be a bitmask. Switch
to booleans to make the code simpler.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 46 +++++++++----------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 22 +++++----
 2 files changed, 35 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 5c6c4fc50b1d..45a39a545453 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -1263,11 +1263,11 @@ static const struct dpll_info hsw_plls[] = {
 	{ .name = "WRPLL 2", .funcs = &hsw_ddi_wrpll_funcs, .id = DPLL_ID_WRPLL2, },
 	{ .name = "SPLL", .funcs = &hsw_ddi_spll_funcs, .id = DPLL_ID_SPLL, },
 	{ .name = "LCPLL 810", .funcs = &hsw_ddi_lcpll_funcs, .id = DPLL_ID_LCPLL_810,
-	  .flags = INTEL_DPLL_ALWAYS_ON, },
+	  .always_on = true, },
 	{ .name = "LCPLL 1350", .funcs = &hsw_ddi_lcpll_funcs, .id = DPLL_ID_LCPLL_1350,
-	  .flags = INTEL_DPLL_ALWAYS_ON, },
+	  .always_on = true, },
 	{ .name = "LCPLL 2700", .funcs = &hsw_ddi_lcpll_funcs, .id = DPLL_ID_LCPLL_2700,
-	  .flags = INTEL_DPLL_ALWAYS_ON, },
+	  .always_on = true, },
 	{}
 };
 
@@ -1945,7 +1945,7 @@ static const struct intel_shared_dpll_funcs skl_ddi_dpll0_funcs = {
 
 static const struct dpll_info skl_plls[] = {
 	{ .name = "DPLL 0", .funcs = &skl_ddi_dpll0_funcs, .id = DPLL_ID_SKL_DPLL0,
-	  .flags = INTEL_DPLL_ALWAYS_ON, },
+	  .always_on = true, },
 	{ .name = "DPLL 1", .funcs = &skl_ddi_pll_funcs, .id = DPLL_ID_SKL_DPLL1, },
 	{ .name = "DPLL 2", .funcs = &skl_ddi_pll_funcs, .id = DPLL_ID_SKL_DPLL2, },
 	{ .name = "DPLL 3", .funcs = &skl_ddi_pll_funcs, .id = DPLL_ID_SKL_DPLL3, },
@@ -4024,15 +4024,15 @@ static const struct dpll_info icl_plls[] = {
 	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
 	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{ .name = "MG PLL 1", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL1,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{ .name = "MG PLL 2", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL2,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{ .name = "MG PLL 3", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL3,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{ .name = "MG PLL 4", .funcs = &mg_pll_funcs, .id = DPLL_ID_ICL_MGPLL4,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{}
 };
 
@@ -4074,19 +4074,19 @@ static const struct dpll_info tgl_plls[] = {
 	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
 	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{ .name = "TC PLL 3", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{ .name = "TC PLL 4", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL4,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{ .name = "TC PLL 5", .funcs = &dkl_pll_funcs, .id = DPLL_ID_TGL_MGPLL5,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{ .name = "TC PLL 6", .funcs = &dkl_pll_funcs, .id = DPLL_ID_TGL_MGPLL6,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{}
 };
 
@@ -4154,15 +4154,15 @@ static const struct dpll_info adlp_plls[] = {
 	{ .name = "DPLL 0", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
 	{ .name = "DPLL 1", .funcs = &combo_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
 	{ .name = "TBT PLL", .funcs = &tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{ .name = "TC PLL 1", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{ .name = "TC PLL 2", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{ .name = "TC PLL 3", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{ .name = "TC PLL 4", .funcs = &dkl_pll_funcs, .id = DPLL_ID_ICL_MGPLL4,
-	  .flags = INTEL_DPLL_HAS_ALT_PORT_DPLL, },
+	  .has_alt_port_dpll = true, },
 	{}
 };
 
@@ -4488,7 +4488,7 @@ verify_single_dpll_state(struct drm_i915_private *i915,
 
 	active = intel_dpll_get_hw_state(i915, pll, &dpll_hw_state);
 
-	if (!(pll->info->flags & INTEL_DPLL_ALWAYS_ON)) {
+	if (!pll->info->always_on) {
 		I915_STATE_WARN(i915, !pll->on && pll->active_mask,
 				"%s: pll in active use but not on in sw tracking\n",
 				pll->info->name);
@@ -4554,7 +4554,7 @@ void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
 				pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
 
 		/* TC ports have both MG/TC and TBT PLL referenced simultaneously */
-		I915_STATE_WARN(i915, !(pll->info->flags & INTEL_DPLL_HAS_ALT_PORT_DPLL) &&
+		I915_STATE_WARN(i915, !pll->info->has_alt_port_dpll &&
 				pll->state.pipe_mask & pipe_mask,
 				"%s: pll enabled crtcs mismatch (found pipe %c in enabled mask (0x%x))\n",
 				pll->info->name, pipe_name(crtc->pipe), pll->state.pipe_mask);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 594658087b4a..37cdc0b4ee18 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -276,19 +276,21 @@ struct dpll_info {
 	 */
 	enum intel_display_power_domain power_domain;
 
-#define INTEL_DPLL_ALWAYS_ON	(1 << 0)
-#define INTEL_DPLL_HAS_ALT_PORT_DPLL	(1 << 1)
 	/**
-	 * @flags:
+	 * @always_on:
 	 *
-	 * INTEL_DPLL_ALWAYS_ON
-	 *     Inform the state checker that the DPLL is kept enabled even if
-	 *     not in use by any CRTC.
-	 * INTEL_DPLL_HAS_ALT_PORT_DPLL
-	 *     Inform the state checker that the CRTC will have two port DPLLs
-	 *     referenced simultanously (for TC->TBT fallback).
+	 * Inform the state checker that the DPLL is kept enabled even if
+	 * not in use by any CRTC.
 	 */
-	u32 flags;
+	bool always_on;
+
+	/**
+	 * @has_alt_port_dpll:
+	 *
+	 * Inform the state checker that the CRTC will have two port DPLLs
+	 * referenced simultanously (for TC->TBT fallback).
+	 */
+	bool has_alt_port_dpll;
 };
 
 /**
-- 
2.41.0

