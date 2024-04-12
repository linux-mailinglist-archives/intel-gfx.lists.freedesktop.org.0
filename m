Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE548A35A5
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:27:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF9ED10F7A4;
	Fri, 12 Apr 2024 18:27:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W3Nvitne";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D8CE10F7A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946457; x=1744482457;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YXd4oUe96ARFpghoIL5pLF/BgbbM5KSl7gr6TRbNErk=;
 b=W3Nvitne6FVJVJxuGi7Pm8erCcwR8vjgyAAAnQWSg+bLSdk/vY3+4pgy
 dT/p54Grbqa81FJ0HGvG9Ocw5YXW/+6e24SLIo98CLMnWwZiZA6Z41P1Z
 UI4SsmAltQVTj9KL60qKb8evwPihzbWGmuf7ggBs9zcsWT5O9FHL6nN3+
 6X6FSdD7q/0lTO+T+LQC2G4ipQrZGIwjnMi/mjVJ4v6ZJf77gkl2ZZOF3
 lVettSftoewIp1YCcXvNrE91/UIVvHJGNPvtqy2SybbX9l6KUBfMIjWdl
 NG7kvknmycXEm5bP5Jc323tIDkdlyE2rt2UtOXFyDfkDqWVh9koTemFTt A==;
X-CSE-ConnectionGUID: RFAmwG16RDa7Nv+DOXO9bw==
X-CSE-MsgGUID: Y/Ut75FPS1CR0z2p8O4T1Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560559"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560559"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:36 -0700
X-CSE-ConnectionGUID: pwp9m3QOSpaqiPqYfzvsOQ==
X-CSE-MsgGUID: NNswIGJeQkWeITjANa009Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394716"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/18] drm/i915: Extract {i9xx,i8xx,ilk}_dpll()
Date: Fri, 12 Apr 2024 21:26:55 +0300
Message-ID: <20240412182703.19916-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
References: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The *_compute_dpll() functions generally contain
two things:
- huge pile of inline code to calculate the DPLL
  register value
- a few calls to helpers to calculate the
  DPLL_MD and FP register values

Pull the DPLL register value calculations into a helpers
as well, so that *_compute_dpll() can focus on higher
level tasks.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 115 ++++++++++++++--------
 1 file changed, 75 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 9e1f94a2ce92..0625b9c436c2 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1013,17 +1013,15 @@ static u32 i965_dpll_md(const struct intel_crtc_state *crtc_state)
 	return (crtc_state->pixel_multiplier - 1) << DPLL_MD_UDI_MULTIPLIER_SHIFT;
 }
 
-static void i9xx_compute_dpll(struct intel_crtc_state *crtc_state,
-			      const struct dpll *clock,
-			      const struct dpll *reduced_clock)
+static u32 i9xx_dpll(const struct intel_crtc_state *crtc_state,
+		     const struct dpll *clock,
+		     const struct dpll *reduced_clock)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dpll;
 
-	i9xx_update_pll_dividers(crtc_state, clock, reduced_clock);
-
-	dpll = DPLL_VGA_MODE_DIS;
+	dpll = DPLL_VCO_ENABLE | DPLL_VGA_MODE_DIS;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS))
 		dpll |= DPLLB_MODE_LVDS;
@@ -1082,24 +1080,33 @@ static void i9xx_compute_dpll(struct intel_crtc_state *crtc_state,
 	else
 		dpll |= PLL_REF_INPUT_DREFCLK;
 
-	dpll |= DPLL_VCO_ENABLE;
-	crtc_state->dpll_hw_state.dpll = dpll;
+	return dpll;
+}
+
+static void i9xx_compute_dpll(struct intel_crtc_state *crtc_state,
+			      const struct dpll *clock,
+			      const struct dpll *reduced_clock)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+
+	i9xx_update_pll_dividers(crtc_state, clock, reduced_clock);
+
+	crtc_state->dpll_hw_state.dpll = i9xx_dpll(crtc_state, clock, reduced_clock);
 
 	if (DISPLAY_VER(dev_priv) >= 4)
 		crtc_state->dpll_hw_state.dpll_md = i965_dpll_md(crtc_state);
 }
 
-static void i8xx_compute_dpll(struct intel_crtc_state *crtc_state,
-			      const struct dpll *clock,
-			      const struct dpll *reduced_clock)
+static u32 i8xx_dpll(const struct intel_crtc_state *crtc_state,
+		     const struct dpll *clock,
+		     const struct dpll *reduced_clock)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dpll;
 
-	i9xx_update_pll_dividers(crtc_state, clock, reduced_clock);
-
-	dpll = DPLL_VGA_MODE_DIS;
+	dpll = DPLL_VCO_ENABLE | DPLL_VGA_MODE_DIS;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
 		dpll |= (1 << (clock->p1 - 1)) << DPLL_FPA01_P1_POST_DIV_SHIFT;
@@ -1136,8 +1143,16 @@ static void i8xx_compute_dpll(struct intel_crtc_state *crtc_state,
 	else
 		dpll |= PLL_REF_INPUT_DREFCLK;
 
-	dpll |= DPLL_VCO_ENABLE;
-	crtc_state->dpll_hw_state.dpll = dpll;
+	return dpll;
+}
+
+static void i8xx_compute_dpll(struct intel_crtc_state *crtc_state,
+			      const struct dpll *clock,
+			      const struct dpll *reduced_clock)
+{
+	i9xx_update_pll_dividers(crtc_state, clock, reduced_clock);
+
+	crtc_state->dpll_hw_state.dpll = i8xx_dpll(crtc_state, clock, reduced_clock);
 }
 
 static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
@@ -1266,17 +1281,15 @@ static void ilk_update_pll_dividers(struct intel_crtc_state *crtc_state,
 	crtc_state->dpll_hw_state.fp1 = ilk_dpll_compute_fp(reduced_clock, factor);
 }
 
-static void ilk_compute_dpll(struct intel_crtc_state *crtc_state,
-			     const struct dpll *clock,
-			     const struct dpll *reduced_clock)
+static u32 ilk_dpll(const struct intel_crtc_state *crtc_state,
+		    const struct dpll *clock,
+		    const struct dpll *reduced_clock)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dpll;
 
-	ilk_update_pll_dividers(crtc_state, clock, reduced_clock);
-
-	dpll = 0;
+	dpll = DPLL_VCO_ENABLE;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS))
 		dpll |= DPLLB_MODE_LVDS;
@@ -1338,9 +1351,16 @@ static void ilk_compute_dpll(struct intel_crtc_state *crtc_state,
 	else
 		dpll |= PLL_REF_INPUT_DREFCLK;
 
-	dpll |= DPLL_VCO_ENABLE;
+	return dpll;
+}
 
-	crtc_state->dpll_hw_state.dpll = dpll;
+static void ilk_compute_dpll(struct intel_crtc_state *crtc_state,
+			     const struct dpll *clock,
+			     const struct dpll *reduced_clock)
+{
+	ilk_update_pll_dividers(crtc_state, clock, reduced_clock);
+
+	crtc_state->dpll_hw_state.dpll = ilk_dpll(crtc_state, clock, reduced_clock);
 }
 
 static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
@@ -1413,36 +1433,51 @@ static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	return intel_reserve_shared_dplls(state, crtc, NULL);
 }
 
+static u32 vlv_dpll(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	u32 dpll;
+
+	dpll = DPLL_INTEGRATED_REF_CLK_VLV |
+		DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
+
+	if (crtc->pipe != PIPE_A)
+		dpll |= DPLL_INTEGRATED_CRI_CLK_VLV;
+
+	/* DPLL not used with DSI, but still need the rest set up */
+	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
+		dpll |= DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV;
+
+	return dpll;
+}
+
 void vlv_compute_dpll(struct intel_crtc_state *crtc_state)
+{
+	crtc_state->dpll_hw_state.dpll = vlv_dpll(crtc_state);
+	crtc_state->dpll_hw_state.dpll_md = i965_dpll_md(crtc_state);
+}
+
+static u32 chv_dpll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	u32 dpll;
 
-	crtc_state->dpll_hw_state.dpll = DPLL_INTEGRATED_REF_CLK_VLV |
+	dpll = DPLL_SSC_REF_CLK_CHV |
 		DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
+
 	if (crtc->pipe != PIPE_A)
-		crtc_state->dpll_hw_state.dpll |= DPLL_INTEGRATED_CRI_CLK_VLV;
+		dpll |= DPLL_INTEGRATED_CRI_CLK_VLV;
 
 	/* DPLL not used with DSI, but still need the rest set up */
 	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
-		crtc_state->dpll_hw_state.dpll |= DPLL_VCO_ENABLE |
-			DPLL_EXT_BUFFER_ENABLE_VLV;
+		dpll |= DPLL_VCO_ENABLE;
 
-	crtc_state->dpll_hw_state.dpll_md = i965_dpll_md(crtc_state);
+	return dpll;
 }
 
 void chv_compute_dpll(struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-
-	crtc_state->dpll_hw_state.dpll = DPLL_SSC_REF_CLK_CHV |
-		DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
-	if (crtc->pipe != PIPE_A)
-		crtc_state->dpll_hw_state.dpll |= DPLL_INTEGRATED_CRI_CLK_VLV;
-
-	/* DPLL not used with DSI, but still need the rest set up */
-	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
-		crtc_state->dpll_hw_state.dpll |= DPLL_VCO_ENABLE;
-
+	crtc_state->dpll_hw_state.dpll = chv_dpll(crtc_state);
 	crtc_state->dpll_hw_state.dpll_md = i965_dpll_md(crtc_state);
 }
 
-- 
2.43.2

