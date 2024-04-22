Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F5B8AC723
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:35:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9B151128C2;
	Mon, 22 Apr 2024 08:35:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DseajCCu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 376C21128C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713774916; x=1745310916;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SkRrte8h+7zRDF6rlBEsoPcGXcWhocWHSOyrAdVjftQ=;
 b=DseajCCuqdMJv0snIN6EAYXOx9ckGhLjQy4KEmr4B0ou5b/RgaOIysPw
 OR0I4oRJShuG4izUO64BD9/+/s1Uk0NJ9zVN81BllYDBNCuY0dse0gXFo
 GiPTb4Wtt0P9zSWAkdNk3wMLICvKEYm+vHlPGTFt0b2FtynrN9K2Bb4mU
 eF8Pz53f9IaxRlRjcE+BZqoM9BynpxS9AVel+HmjhBI3tExPN0BT+8kOE
 Upu/IaLwlefNxkpgcj/L5cE2Gqz73UK4CiXiTNaPZVwRP3UqMDEz6/AYT
 SYz1+Md5aIqcmwYugoMiONsKHVt1v50R48lgvLDxykGlmekBT1NS5nJ4n A==;
X-CSE-ConnectionGUID: FFWKexJUTrWSt+CiFi1gKA==
X-CSE-MsgGUID: LP6Lbp1vQTqfwfLJ/v74Lg==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9453470"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9453470"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:35:16 -0700
X-CSE-ConnectionGUID: RQ4KsFUBSGujD3KBGBA6Rw==
X-CSE-MsgGUID: SURcfsd7RfifhUHCqfApqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24021806"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Apr 2024 01:35:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Apr 2024 11:35:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/14] drm/i915/dpio: Rename some variables
Date: Mon, 22 Apr 2024 11:34:49 +0300
Message-ID: <20240422083457.23815-7-ville.syrjala@linux.intel.com>
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

Use a constent 'tmp' as the variable name for the register
values during rmw when we don't deal with multiple registers
in parallel.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 97 +++++++++++------------
 1 file changed, 48 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 01f800b6b30e..0a738b491c40 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -514,23 +514,23 @@ void vlv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
-	struct dpll clock;
-	u32 mdiv;
 	int refclk = 100000;
+	struct dpll clock;
+	u32 tmp;
 
 	/* In case of DSI, DPLL will not be used */
 	if ((hw_state->dpll & DPLL_VCO_ENABLE) == 0)
 		return;
 
 	vlv_dpio_get(dev_priv);
-	mdiv = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW3(crtc->pipe));
+	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW3(crtc->pipe));
 	vlv_dpio_put(dev_priv);
 
-	clock.m1 = (mdiv >> DPIO_M1DIV_SHIFT) & 7;
-	clock.m2 = mdiv & DPIO_M2DIV_MASK;
-	clock.n = (mdiv >> DPIO_N_SHIFT) & 0xf;
-	clock.p1 = (mdiv >> DPIO_P1_SHIFT) & 7;
-	clock.p2 = (mdiv >> DPIO_P2_SHIFT) & 0x1f;
+	clock.m1 = (tmp >> DPIO_M1DIV_SHIFT) & 7;
+	clock.m2 = tmp & DPIO_M2DIV_MASK;
+	clock.n = (tmp >> DPIO_N_SHIFT) & 0xf;
+	clock.p1 = (tmp >> DPIO_P1_SHIFT) & 7;
+	clock.p2 = (tmp >> DPIO_P2_SHIFT) & 0x1f;
 
 	crtc_state->port_clock = vlv_calc_dpll_params(refclk, &clock);
 }
@@ -1869,30 +1869,30 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 static void vlv_pllb_recal_opamp(struct drm_i915_private *dev_priv,
 				 enum dpio_phy phy)
 {
-	u32 reg_val;
+	u32 tmp;
 
 	/*
 	 * PLLB opamp always calibrates to max value of 0x3f, force enable it
 	 * and set it to a reasonable value instead.
 	 */
-	reg_val = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(1));
-	reg_val &= 0xffffff00;
-	reg_val |= 0x00000030;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(1), reg_val);
+	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(1));
+	tmp &= 0xffffff00;
+	tmp |= 0x00000030;
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(1), tmp);
 
-	reg_val = vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
-	reg_val &= 0x00ffffff;
-	reg_val |= 0x8c000000;
-	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, reg_val);
+	tmp = vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
+	tmp &= 0x00ffffff;
+	tmp |= 0x8c000000;
+	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, tmp);
 
-	reg_val = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(1));
-	reg_val &= 0xffffff00;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(1), reg_val);
+	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(1));
+	tmp &= 0xffffff00;
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(1), tmp);
 
-	reg_val = vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
-	reg_val &= 0x00ffffff;
-	reg_val |= 0xb0000000;
-	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, reg_val);
+	tmp = vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
+	tmp &= 0x00ffffff;
+	tmp |= 0xb0000000;
+	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, tmp);
 }
 
 static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
@@ -1902,7 +1902,7 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	const struct dpll *clock = &crtc_state->dpll;
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	enum pipe pipe = crtc->pipe;
-	u32 mdiv, coreclk, reg_val;
+	u32 tmp, coreclk;
 
 	vlv_dpio_get(dev_priv);
 
@@ -1916,15 +1916,15 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW17_BCAST, 0x0100000f);
 
 	/* Disable target IRef on PLL */
-	reg_val = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW16(pipe));
-	reg_val &= 0x00ffffff;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW16(pipe), reg_val);
+	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW16(pipe));
+	tmp &= 0x00ffffff;
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW16(pipe), tmp);
 
 	/* Disable fast lock */
 	vlv_dpio_write(dev_priv, phy, VLV_CMN_DW0, 0x610);
 
 	/* Set idtafcrecal before PLL is enabled */
-	mdiv = (clock->m1 << DPIO_M1DIV_SHIFT) |
+	tmp = (clock->m1 << DPIO_M1DIV_SHIFT) |
 		(clock->m2 & DPIO_M2DIV_MASK) |
 		(clock->p1 << DPIO_P1_SHIFT) |
 		(clock->p2 << DPIO_P2_SHIFT) |
@@ -1936,11 +1936,11 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	 * but we don't support that).
 	 * Note: don't use the DAC post divider as it seems unstable.
 	 */
-	mdiv |= (DPIO_POST_DIV_HDMIDP << DPIO_POST_DIV_SHIFT);
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(pipe), mdiv);
+	tmp |= (DPIO_POST_DIV_HDMIDP << DPIO_POST_DIV_SHIFT);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(pipe), tmp);
 
-	mdiv |= DPIO_ENABLE_CALIBRATION;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(pipe), mdiv);
+	tmp |= DPIO_ENABLE_CALIBRATION;
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(pipe), tmp);
 
 	/* Set HBR and RBR LPF coefficients */
 	if (crtc_state->port_clock == 162000 ||
@@ -2029,11 +2029,10 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 	enum dpio_channel port = vlv_pipe_to_channel(pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
-	u32 dpio_val, loopfilter, tribuf_calcntr;
+	u32 tmp, loopfilter, tribuf_calcntr;
 	u32 m2_frac;
 
 	m2_frac = clock->m2 & 0x3fffff;
-	dpio_val = 0;
 	loopfilter = 0;
 
 	vlv_dpio_get(dev_priv);
@@ -2059,21 +2058,21 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 		       m2_frac);
 
 	/* M2 fraction division enable */
-	dpio_val = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(port));
-	dpio_val &= ~(DPIO_CHV_FEEDFWD_GAIN_MASK | DPIO_CHV_FRAC_DIV_EN);
-	dpio_val |= (2 << DPIO_CHV_FEEDFWD_GAIN_SHIFT);
+	tmp = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW3(port));
+	tmp &= ~(DPIO_CHV_FEEDFWD_GAIN_MASK | DPIO_CHV_FRAC_DIV_EN);
+	tmp |= (2 << DPIO_CHV_FEEDFWD_GAIN_SHIFT);
 	if (m2_frac)
-		dpio_val |= DPIO_CHV_FRAC_DIV_EN;
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW3(port), dpio_val);
+		tmp |= DPIO_CHV_FRAC_DIV_EN;
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW3(port), tmp);
 
 	/* Program digital lock detect threshold */
-	dpio_val = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW9(port));
-	dpio_val &= ~(DPIO_CHV_INT_LOCK_THRESHOLD_MASK |
+	tmp = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW9(port));
+	tmp &= ~(DPIO_CHV_INT_LOCK_THRESHOLD_MASK |
 					DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE);
-	dpio_val |= (0x5 << DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT);
+	tmp |= (0x5 << DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT);
 	if (!m2_frac)
-		dpio_val |= DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE;
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW9(port), dpio_val);
+		tmp |= DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE;
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW9(port), tmp);
 
 	/* Loop filter */
 	if (clock->vco == 5400000) {
@@ -2100,10 +2099,10 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	}
 	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW6(port), loopfilter);
 
-	dpio_val = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW8(port));
-	dpio_val &= ~DPIO_CHV_TDC_TARGET_CNT_MASK;
-	dpio_val |= (tribuf_calcntr << DPIO_CHV_TDC_TARGET_CNT_SHIFT);
-	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW8(port), dpio_val);
+	tmp = vlv_dpio_read(dev_priv, phy, CHV_PLL_DW8(port));
+	tmp &= ~DPIO_CHV_TDC_TARGET_CNT_MASK;
+	tmp |= (tribuf_calcntr << DPIO_CHV_TDC_TARGET_CNT_SHIFT);
+	vlv_dpio_write(dev_priv, phy, CHV_PLL_DW8(port), tmp);
 
 	/* AFC Recal */
 	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW14(port),
-- 
2.43.2

