Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 823E58AC726
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:35:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F0A71128CF;
	Mon, 22 Apr 2024 08:35:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kgavdlee";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC9E01128C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713774922; x=1745310922;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uuYfmtzJ13vGHCIqEp3T3wrn2e9SJUlFBgz8LLtqnLs=;
 b=Kgavdleeq7dvRMDOXThxr+pvwmrizrW6urm6aEzWBCEKCLNvSshDzgKC
 nFg+a9LZf/n2Zf4Vo2lYbeZerLHwN4VZcherAei0Hfwy0bC1kmUHQSPua
 B7015sK1+LDf7K7sXPuE6Ypiz64WNio2CtA6MLH3LFrPIhGidJucb1jxs
 ouWZgiAsKsTp6aq0W04JK/+Va8QuwxLpOh1OPkR2yN4luYVzfv5ztRsKX
 JqZGPZylCmQXNetMTdXuK7NJ5/jhPTAu14raH7wKCRgprhOnd8w5EUlEi
 q5hvte6ky4eYth71ezmdzeL5VhO1em+9Ol5uC1d0FeucE6Om01b8o9Cxk Q==;
X-CSE-ConnectionGUID: uD+Lys7ISEex+NGW+WEBtA==
X-CSE-MsgGUID: 4n5lExqoR1OukHEqCca+zQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9453475"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9453475"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:35:21 -0700
X-CSE-ConnectionGUID: 8ff+XtlrSNilVD0+l5615g==
X-CSE-MsgGUID: 9IDhPRbYTCOITVH6EJ5V5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24021817"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Apr 2024 01:35:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Apr 2024 11:35:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/14] drm/i915/dpio: s/pipe/ch/
Date: Mon, 22 Apr 2024 11:34:51 +0300
Message-ID: <20240422083457.23815-9-ville.syrjala@linux.intel.com>
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

Stop using 'pipe' directly as the DPIO PHY channel. This
does happen to work on VLV since it just has the one PHY
with CH0==pipe A and CH1==pipe B. But explicitly converting
the thing to the right enum makes the whole thing less
confusing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 49 ++++++++++++-----------
 1 file changed, 25 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 743cc466ee39..861f4a735251 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -512,6 +512,7 @@ void vlv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum dpio_channel ch = vlv_pipe_to_channel(crtc->pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	int refclk = 100000;
@@ -523,7 +524,7 @@ void vlv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 		return;
 
 	vlv_dpio_get(dev_priv);
-	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW3(crtc->pipe));
+	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW3(ch));
 	vlv_dpio_put(dev_priv);
 
 	clock.m1 = (tmp >> DPIO_M1DIV_SHIFT) & 7;
@@ -1867,7 +1868,7 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 }
 
 static void vlv_pllb_recal_opamp(struct drm_i915_private *dev_priv,
-				 enum dpio_phy phy)
+				 enum dpio_phy phy, enum dpio_channel ch)
 {
 	u32 tmp;
 
@@ -1875,19 +1876,19 @@ static void vlv_pllb_recal_opamp(struct drm_i915_private *dev_priv,
 	 * PLLB opamp always calibrates to max value of 0x3f, force enable it
 	 * and set it to a reasonable value instead.
 	 */
-	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(1));
+	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(ch));
 	tmp &= 0xffffff00;
 	tmp |= 0x00000030;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(1), tmp);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(ch), tmp);
 
 	tmp = vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
 	tmp &= 0x00ffffff;
 	tmp |= 0x8c000000;
 	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, tmp);
 
-	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(1));
+	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(ch));
 	tmp &= 0xffffff00;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(1), tmp);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(ch), tmp);
 
 	tmp = vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
 	tmp &= 0x00ffffff;
@@ -1900,6 +1901,7 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct dpll *clock = &crtc_state->dpll;
+	enum dpio_channel ch = vlv_pipe_to_channel(crtc->pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	enum pipe pipe = crtc->pipe;
 	u32 tmp, coreclk;
@@ -1910,15 +1912,15 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 
 	/* PLL B needs special handling */
 	if (pipe == PIPE_B)
-		vlv_pllb_recal_opamp(dev_priv, phy);
+		vlv_pllb_recal_opamp(dev_priv, phy, ch);
 
 	/* Set up Tx target for periodic Rcomp update */
 	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW17_BCAST, 0x0100000f);
 
 	/* Disable target IRef on PLL */
-	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW16(pipe));
+	tmp = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW16(ch));
 	tmp &= 0x00ffffff;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW16(pipe), tmp);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW16(ch), tmp);
 
 	/* Disable fast lock */
 	vlv_dpio_write(dev_priv, phy, VLV_CMN_DW0, 0x610);
@@ -1937,46 +1939,46 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	 * Note: don't use the DAC post divider as it seems unstable.
 	 */
 	tmp |= (DPIO_POST_DIV_HDMIDP << DPIO_POST_DIV_SHIFT);
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(pipe), tmp);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(ch), tmp);
 
 	tmp |= DPIO_ENABLE_CALIBRATION;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(pipe), tmp);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW3(ch), tmp);
 
 	/* Set HBR and RBR LPF coefficients */
 	if (crtc_state->port_clock == 162000 ||
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG) ||
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(pipe),
+		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(ch),
 				 0x009f0003);
 	else
-		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(pipe),
+		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(ch),
 				 0x00d0000f);
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		/* Use SSC source */
 		if (pipe == PIPE_A)
-			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(pipe),
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
 					 0x0df40000);
 		else
-			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(pipe),
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
 					 0x0df70000);
 	} else { /* HDMI or VGA */
 		/* Use bend source */
 		if (pipe == PIPE_A)
-			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(pipe),
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
 					 0x0df70000);
 		else
-			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(pipe),
+			vlv_dpio_write(dev_priv, phy, VLV_PLL_DW5(ch),
 					 0x0df40000);
 	}
 
-	coreclk = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW7(pipe));
+	coreclk = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW7(ch));
 	coreclk = (coreclk & 0x0000ff00) | 0x01c00000;
 	if (intel_crtc_has_dp_encoder(crtc_state))
 		coreclk |= 0x01000000;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW7(pipe), coreclk);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW7(ch), coreclk);
 
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW19(pipe), 0x87871000);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW19(ch), 0x87871000);
 
 	vlv_dpio_put(dev_priv);
 }
@@ -2026,8 +2028,7 @@ static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct dpll *clock = &crtc_state->dpll;
-	enum pipe pipe = crtc->pipe;
-	enum dpio_channel ch = vlv_pipe_to_channel(pipe);
+	enum dpio_channel ch = vlv_pipe_to_channel(crtc->pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	u32 tmp, loopfilter, tribuf_calcntr;
 	u32 m2_frac;
@@ -2117,9 +2118,9 @@ static void _chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
-	enum pipe pipe = crtc->pipe;
-	enum dpio_channel ch = vlv_pipe_to_channel(pipe);
+	enum dpio_channel ch = vlv_pipe_to_channel(crtc->pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
+	enum pipe pipe = crtc->pipe;
 	u32 tmp;
 
 	vlv_dpio_get(dev_priv);
-- 
2.43.2

