Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2EB8AC722
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:35:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D0121128C0;
	Mon, 22 Apr 2024 08:35:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m34JZKkq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DE571128C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713774913; x=1745310913;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=D9eBTFVQovi62deSroiE3h4CeS2IUPU98vdN74qR2yo=;
 b=m34JZKkqjXO1GO7x0k1w04cZCRlyVgb85ebIac3Jc94QQX1KB8M2Cw6U
 2z64QD4U6HWYjXusWpFRVRJYMJY1RndJ8lPrO3vrY9T+0Dg0+9WNvs/xH
 tfTkG2mUsG9yFLXkx+Z6EnOfyPVOAiQ2MwVQIoonX+cZ+Dx58pdDMsBJ2
 0+166EOYdZwjWRe1+LvOPElNeDPffC4iydCJfvEQXK5/zXifPSb9997yy
 r9XCIipROUUxDzO7qy4PbPxVY24W8g0NI3pXuwEhfsCJUEEGFa++BUtZy
 xXvY2A+RIU2EJdriMwr2BcRrR/+ukc9COu4x0zjgRwaVK1ZYbU6FVrYbP w==;
X-CSE-ConnectionGUID: JtL+lAQTR1KYbx77SyCvQQ==
X-CSE-MsgGUID: sEIB+6A+SvWn9JEtfH5v4g==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9453465"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9453465"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:35:13 -0700
X-CSE-ConnectionGUID: ke9WputkRjy/jUDsx+fCog==
X-CSE-MsgGUID: 3Re8fqnbTn6igBTuV/Xdgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24021801"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Apr 2024 01:35:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Apr 2024 11:35:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/14] drm/i915/dpio: Remove pointless variables from vlv/chv
 DPLL code
Date: Mon, 22 Apr 2024 11:34:48 +0300
Message-ID: <20240422083457.23815-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
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

Drop all the local variables for the DPLL dividers for vlv/chv
and just consult the state directly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 62 ++++++++++-------------
 1 file changed, 27 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index b95032651da0..01f800b6b30e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1899,20 +1899,13 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct dpll *clock = &crtc_state->dpll;
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	enum pipe pipe = crtc->pipe;
-	u32 mdiv;
-	u32 bestn, bestm1, bestm2, bestp1, bestp2;
-	u32 coreclk, reg_val;
+	u32 mdiv, coreclk, reg_val;
 
 	vlv_dpio_get(dev_priv);
 
-	bestn = crtc_state->dpll.n;
-	bestm1 = crtc_state->dpll.m1;
-	bestm2 = crtc_state->dpll.m2;
-	bestp1 = crtc_state->dpll.p1;
-	bestp2 = crtc_state->dpll.p2;
-
 	/* See eDP HDMI DPIO driver vbios notes doc */
 
 	/* PLL B needs special handling */
@@ -1931,10 +1924,12 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	vlv_dpio_write(dev_priv, phy, VLV_CMN_DW0, 0x610);
 
 	/* Set idtafcrecal before PLL is enabled */
-	mdiv = ((bestm1 << DPIO_M1DIV_SHIFT) | (bestm2 & DPIO_M2DIV_MASK));
-	mdiv |= ((bestp1 << DPIO_P1_SHIFT) | (bestp2 << DPIO_P2_SHIFT));
-	mdiv |= ((bestn << DPIO_N_SHIFT));
-	mdiv |= (1 << DPIO_K_SHIFT);
+	mdiv = (clock->m1 << DPIO_M1DIV_SHIFT) |
+		(clock->m2 & DPIO_M2DIV_MASK) |
+		(clock->p1 << DPIO_P1_SHIFT) |
+		(clock->p2 << DPIO_P2_SHIFT) |
+		(clock->n << DPIO_N_SHIFT) |
+		(1 << DPIO_K_SHIFT);
 
 	/*
 	 * Post divider depends on pixel clock rate, DAC vs digital (and LVDS,
@@ -2030,19 +2025,14 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct dpll *clock = &crtc_state->dpll;
 	enum pipe pipe = crtc->pipe;
 	enum dpio_channel port = vlv_pipe_to_channel(pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
-	u32 loopfilter, tribuf_calcntr;
-	u32 bestm2, bestp1, bestp2, bestm2_frac;
-	u32 dpio_val;
-	int vco;
+	u32 dpio_val, loopfilter, tribuf_calcntr;
+	u32 m2_frac;
 
-	bestm2_frac = crtc_state->dpll.m2 & 0x3fffff;
-	bestm2 = crtc_state->dpll.m2 >> 22;
-	bestp1 = crtc_state->dpll.p1;
-	bestp2 = crtc_state->dpll.p2;
-	vco = crtc_state->dpll.vco;
+	m2_frac = clock->m2 & 0x3fffff;
 	dpio_val = 0;
 	loopfilter = 0;
 
@@ -2050,27 +2040,29 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 
 	/* p1 and p2 divider */
 	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW13(port),
-			5 << DPIO_CHV_S1_DIV_SHIFT |
-			bestp1 << DPIO_CHV_P1_DIV_SHIFT |
-			bestp2 << DPIO_CHV_P2_DIV_SHIFT |
-			1 << DPIO_CHV_K_DIV_SHIFT);
+		       5 << DPIO_CHV_S1_DIV_SHIFT |
+		       clock->p1 << DPIO_CHV_P1_DIV_SHIFT |
+		       clock->p2 << DPIO_CHV_P2_DIV_SHIFT |
+		       1 << DPIO_CHV_K_DIV_SHIFT);
 
 	/* Feedback post-divider - m2 */
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW0(port), bestm2);
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW0(port),
+		       clock->m2 >> 22);
 
 	/* Feedback refclk divider - n and m1 */
 	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW1(port),
-			DPIO_CHV_M1_DIV_BY_2 |
-			1 << DPIO_CHV_N_DIV_SHIFT);
+		       DPIO_CHV_M1_DIV_BY_2 |
+		       1 << DPIO_CHV_N_DIV_SHIFT);
 
 	/* M2 fraction division */
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW2(port), bestm2_frac);
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW2(port),
+		       m2_frac);
 
 	/* M2 fraction division enable */
 	dpio_val = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(port));
 	dpio_val &= ~(DPIO_CHV_FEEDFWD_GAIN_MASK | DPIO_CHV_FRAC_DIV_EN);
 	dpio_val |= (2 << DPIO_CHV_FEEDFWD_GAIN_SHIFT);
-	if (bestm2_frac)
+	if (m2_frac)
 		dpio_val |= DPIO_CHV_FRAC_DIV_EN;
 	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW3(port), dpio_val);
 
@@ -2079,22 +2071,22 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	dpio_val &= ~(DPIO_CHV_INT_LOCK_THRESHOLD_MASK |
 					DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE);
 	dpio_val |= (0x5 << DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT);
-	if (!bestm2_frac)
+	if (!m2_frac)
 		dpio_val |= DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE;
 	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW9(port), dpio_val);
 
 	/* Loop filter */
-	if (vco == 5400000) {
+	if (clock->vco == 5400000) {
 		loopfilter |= (0x3 << DPIO_CHV_PROP_COEFF_SHIFT);
 		loopfilter |= (0x8 << DPIO_CHV_INT_COEFF_SHIFT);
 		loopfilter |= (0x1 << DPIO_CHV_GAIN_CTRL_SHIFT);
 		tribuf_calcntr = 0x9;
-	} else if (vco <= 6200000) {
+	} else if (clock->vco <= 6200000) {
 		loopfilter |= (0x5 << DPIO_CHV_PROP_COEFF_SHIFT);
 		loopfilter |= (0xB << DPIO_CHV_INT_COEFF_SHIFT);
 		loopfilter |= (0x3 << DPIO_CHV_GAIN_CTRL_SHIFT);
 		tribuf_calcntr = 0x9;
-	} else if (vco <= 6480000) {
+	} else if (clock->vco <= 6480000) {
 		loopfilter |= (0x4 << DPIO_CHV_PROP_COEFF_SHIFT);
 		loopfilter |= (0x9 << DPIO_CHV_INT_COEFF_SHIFT);
 		loopfilter |= (0x3 << DPIO_CHV_GAIN_CTRL_SHIFT);
-- 
2.43.2

