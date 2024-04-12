Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D643D8A35AD
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:28:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CFC310E4C4;
	Fri, 12 Apr 2024 18:28:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cVqFclp8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B730D10F7B9
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946474; x=1744482474;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Qv7hI2H+eQLj6VtdpPW9nnoGpeffX4AdVdhVv4LDqB4=;
 b=cVqFclp8J7zwtJz3vMMskn9HIn3sS0efZw78GB4F1/F1KHo2pvmLZouE
 /BPHncbmWD6PJYqHDhqazeuNqJ0nPVKC+qsOGXcpeo7PjL3iuuX+8zJgr
 MU5a/S2sph9FvWLcShEV6g2lJnZ2x1kw6Dc1CrSkHjs+2uRUNFSMb+3hh
 F2OP0KlHAmApTZmnwlekOPS3jWdEFw2VILEcqKvnjt2qNMOD24dvE3F0x
 vK/EUYQvgX/Qp6GnF48GBcMunmJakabMvJ3moA1TpOQOzHYvk1Ka3670t
 mVDEJ1d/m2bV7Kli1yQHTV84IrbH8b4k7Iyn6x+isfp/lPNiu6UonJ+6g A==;
X-CSE-ConnectionGUID: f8ebN1FeS1ap6g70LOzvLQ==
X-CSE-MsgGUID: WyHbILg+S3eFY4wgPIeHsw==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560596"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560596"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:50 -0700
X-CSE-ConnectionGUID: f40Tnl8oRVu8D+FtuH99+w==
X-CSE-MsgGUID: gTev1E71RAmK0QvPlBaYYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394893"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 15/18] drm/i915: Add local DPLL 'hw_state' variables
Date: Fri, 12 Apr 2024 21:27:00 +0300
Message-ID: <20240412182703.19916-16-ville.syrjala@linux.intel.com>
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

Add some local 'hw_state' variables to the old DPLL code.
Will help with unionizing the dpll_hw_state later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 98 +++++++++++++----------
 1 file changed, 54 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 4df40a14d0f1..b6fbc481c9e5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -372,9 +372,9 @@ int chv_calc_dpll_params(int refclk, struct dpll *clock)
 static int i9xx_pll_refclk(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	u32 dpll = crtc_state->dpll_hw_state.dpll;
+	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
 
-	if ((dpll & PLL_REF_INPUT_MASK) == PLLB_REF_INPUT_SPREADSPECTRUMIN)
+	if ((hw_state->dpll & PLL_REF_INPUT_MASK) == PLLB_REF_INPUT_SPREADSPECTRUMIN)
 		return i915->display.vbt.lvds_ssc_freq;
 	else if (HAS_PCH_SPLIT(i915))
 		return 120000;
@@ -419,7 +419,8 @@ void i9xx_crtc_clock_get(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	u32 dpll = crtc_state->dpll_hw_state.dpll;
+	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	u32 dpll = hw_state->dpll;
 	u32 fp;
 	struct dpll clock;
 	int port_clock;
@@ -511,12 +512,13 @@ void vlv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
+	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
 	struct dpll clock;
 	u32 mdiv;
 	int refclk = 100000;
 
 	/* In case of DSI, DPLL will not be used */
-	if ((crtc_state->dpll_hw_state.dpll & DPLL_VCO_ENABLE) == 0)
+	if ((hw_state->dpll & DPLL_VCO_ENABLE) == 0)
 		return;
 
 	vlv_dpio_get(dev_priv);
@@ -538,12 +540,13 @@ void chv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum dpio_channel port = vlv_pipe_to_channel(crtc->pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
+	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
 	struct dpll clock;
 	u32 cmn_dw13, pll_dw0, pll_dw1, pll_dw2, pll_dw3;
 	int refclk = 100000;
 
 	/* In case of DSI, DPLL will not be used */
-	if ((crtc_state->dpll_hw_state.dpll & DPLL_VCO_ENABLE) == 0)
+	if ((hw_state->dpll & DPLL_VCO_ENABLE) == 0)
 		return;
 
 	vlv_dpio_get(dev_priv);
@@ -1065,19 +1068,20 @@ static void i9xx_compute_dpll(struct intel_crtc_state *crtc_state,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
 
 	if (IS_PINEVIEW(dev_priv)) {
-		crtc_state->dpll_hw_state.fp0 = pnv_dpll_compute_fp(clock);
-		crtc_state->dpll_hw_state.fp1 = pnv_dpll_compute_fp(reduced_clock);
+		hw_state->fp0 = pnv_dpll_compute_fp(clock);
+		hw_state->fp1 = pnv_dpll_compute_fp(reduced_clock);
 	} else {
-		crtc_state->dpll_hw_state.fp0 = i9xx_dpll_compute_fp(clock);
-		crtc_state->dpll_hw_state.fp1 = i9xx_dpll_compute_fp(reduced_clock);
+		hw_state->fp0 = i9xx_dpll_compute_fp(clock);
+		hw_state->fp1 = i9xx_dpll_compute_fp(reduced_clock);
 	}
 
-	crtc_state->dpll_hw_state.dpll = i9xx_dpll(crtc_state, clock, reduced_clock);
+	hw_state->dpll = i9xx_dpll(crtc_state, clock, reduced_clock);
 
 	if (DISPLAY_VER(dev_priv) >= 4)
-		crtc_state->dpll_hw_state.dpll_md = i965_dpll_md(crtc_state);
+		hw_state->dpll_md = i965_dpll_md(crtc_state);
 }
 
 static u32 i8xx_dpll(const struct intel_crtc_state *crtc_state,
@@ -1132,10 +1136,12 @@ static void i8xx_compute_dpll(struct intel_crtc_state *crtc_state,
 			      const struct dpll *clock,
 			      const struct dpll *reduced_clock)
 {
-	crtc_state->dpll_hw_state.fp0 = i9xx_dpll_compute_fp(clock);
-	crtc_state->dpll_hw_state.fp1 = i9xx_dpll_compute_fp(reduced_clock);
+	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
 
-	crtc_state->dpll_hw_state.dpll = i8xx_dpll(crtc_state, clock, reduced_clock);
+	hw_state->fp0 = i9xx_dpll_compute_fp(clock);
+	hw_state->fp1 = i9xx_dpll_compute_fp(reduced_clock);
+
+	hw_state->dpll = i8xx_dpll(crtc_state, clock, reduced_clock);
 }
 
 static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
@@ -1331,12 +1337,13 @@ static void ilk_compute_dpll(struct intel_crtc_state *crtc_state,
 			     const struct dpll *clock,
 			     const struct dpll *reduced_clock)
 {
+	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
 	int factor = ilk_fb_cb_factor(crtc_state);
 
-	crtc_state->dpll_hw_state.fp0 = ilk_dpll_compute_fp(clock, factor);
-	crtc_state->dpll_hw_state.fp1 = ilk_dpll_compute_fp(reduced_clock, factor);
+	hw_state->fp0 = ilk_dpll_compute_fp(clock, factor);
+	hw_state->fp1 = ilk_dpll_compute_fp(reduced_clock, factor);
 
-	crtc_state->dpll_hw_state.dpll = ilk_dpll(crtc_state, clock, reduced_clock);
+	hw_state->dpll = ilk_dpll(crtc_state, clock, reduced_clock);
 }
 
 static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
@@ -1429,8 +1436,10 @@ static u32 vlv_dpll(const struct intel_crtc_state *crtc_state)
 
 void vlv_compute_dpll(struct intel_crtc_state *crtc_state)
 {
-	crtc_state->dpll_hw_state.dpll = vlv_dpll(crtc_state);
-	crtc_state->dpll_hw_state.dpll_md = i965_dpll_md(crtc_state);
+	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+
+	hw_state->dpll = vlv_dpll(crtc_state);
+	hw_state->dpll_md = i965_dpll_md(crtc_state);
 }
 
 static u32 chv_dpll(const struct intel_crtc_state *crtc_state)
@@ -1453,8 +1462,10 @@ static u32 chv_dpll(const struct intel_crtc_state *crtc_state)
 
 void chv_compute_dpll(struct intel_crtc_state *crtc_state)
 {
-	crtc_state->dpll_hw_state.dpll = chv_dpll(crtc_state);
-	crtc_state->dpll_hw_state.dpll_md = i965_dpll_md(crtc_state);
+	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+
+	hw_state->dpll = chv_dpll(crtc_state);
+	hw_state->dpll_md = i965_dpll_md(crtc_state);
 }
 
 static int chv_crtc_compute_clock(struct intel_atomic_state *state,
@@ -1810,7 +1821,7 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	u32 dpll = crtc_state->dpll_hw_state.dpll;
+	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
 	enum pipe pipe = crtc->pipe;
 	int i;
 
@@ -1820,36 +1831,35 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 	if (i9xx_has_pps(dev_priv))
 		assert_pps_unlocked(dev_priv, pipe);
 
-	intel_de_write(dev_priv, FP0(pipe), crtc_state->dpll_hw_state.fp0);
-	intel_de_write(dev_priv, FP1(pipe), crtc_state->dpll_hw_state.fp1);
+	intel_de_write(dev_priv, FP0(pipe), hw_state->fp0);
+	intel_de_write(dev_priv, FP1(pipe), hw_state->fp1);
 
 	/*
 	 * Apparently we need to have VGA mode enabled prior to changing
 	 * the P1/P2 dividers. Otherwise the DPLL will keep using the old
 	 * dividers, even though the register value does change.
 	 */
-	intel_de_write(dev_priv, DPLL(pipe), dpll & ~DPLL_VGA_MODE_DIS);
-	intel_de_write(dev_priv, DPLL(pipe), dpll);
+	intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll & ~DPLL_VGA_MODE_DIS);
+	intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
 
 	/* Wait for the clocks to stabilize. */
 	intel_de_posting_read(dev_priv, DPLL(pipe));
 	udelay(150);
 
 	if (DISPLAY_VER(dev_priv) >= 4) {
-		intel_de_write(dev_priv, DPLL_MD(pipe),
-			       crtc_state->dpll_hw_state.dpll_md);
+		intel_de_write(dev_priv, DPLL_MD(pipe), hw_state->dpll_md);
 	} else {
 		/* The pixel multiplier can only be updated once the
 		 * DPLL is enabled and the clocks are stable.
 		 *
 		 * So write it again.
 		 */
-		intel_de_write(dev_priv, DPLL(pipe), dpll);
+		intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
 	}
 
 	/* We do this three times for luck */
 	for (i = 0; i < 3; i++) {
-		intel_de_write(dev_priv, DPLL(pipe), dpll);
+		intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
 		intel_de_posting_read(dev_priv, DPLL(pipe));
 		udelay(150); /* wait for warmup */
 	}
@@ -1979,9 +1989,10 @@ static void _vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write(dev_priv, DPLL(pipe), crtc_state->dpll_hw_state.dpll);
+	intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
 	intel_de_posting_read(dev_priv, DPLL(pipe));
 	udelay(150);
 
@@ -1993,6 +2004,7 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
 	enum pipe pipe = crtc->pipe;
 
 	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
@@ -2002,16 +2014,14 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 
 	/* Enable Refclk */
 	intel_de_write(dev_priv, DPLL(pipe),
-		       crtc_state->dpll_hw_state.dpll &
-		       ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));
+		       hw_state->dpll & ~(DPLL_VCO_ENABLE | DPLL_EXT_BUFFER_ENABLE_VLV));
 
-	if (crtc_state->dpll_hw_state.dpll & DPLL_VCO_ENABLE) {
+	if (hw_state->dpll & DPLL_VCO_ENABLE) {
 		vlv_prepare_pll(crtc_state);
 		_vlv_enable_pll(crtc_state);
 	}
 
-	intel_de_write(dev_priv, DPLL_MD(pipe),
-		       crtc_state->dpll_hw_state.dpll_md);
+	intel_de_write(dev_priv, DPLL_MD(pipe), hw_state->dpll_md);
 	intel_de_posting_read(dev_priv, DPLL_MD(pipe));
 }
 
@@ -2114,6 +2124,7 @@ static void _chv_enable_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
 	enum pipe pipe = crtc->pipe;
 	enum dpio_channel port = vlv_pipe_to_channel(pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
@@ -2134,7 +2145,7 @@ static void _chv_enable_pll(const struct intel_crtc_state *crtc_state)
 	udelay(1);
 
 	/* Enable PLL */
-	intel_de_write(dev_priv, DPLL(pipe), crtc_state->dpll_hw_state.dpll);
+	intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
 
 	/* Check PLL is locked */
 	if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
@@ -2145,6 +2156,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
 	enum pipe pipe = crtc->pipe;
 
 	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
@@ -2154,9 +2166,9 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 
 	/* Enable Refclk and SSC */
 	intel_de_write(dev_priv, DPLL(pipe),
-		       crtc_state->dpll_hw_state.dpll & ~DPLL_VCO_ENABLE);
+		       hw_state->dpll & ~DPLL_VCO_ENABLE);
 
-	if (crtc_state->dpll_hw_state.dpll & DPLL_VCO_ENABLE) {
+	if (hw_state->dpll & DPLL_VCO_ENABLE) {
 		chv_prepare_pll(crtc_state);
 		_chv_enable_pll(crtc_state);
 	}
@@ -2169,10 +2181,9 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 		 * the value from DPLLBMD to either pipe B or C.
 		 */
 		intel_de_write(dev_priv, CBR4_VLV, CBR_DPLLBMD_PIPE(pipe));
-		intel_de_write(dev_priv, DPLL_MD(PIPE_B),
-			       crtc_state->dpll_hw_state.dpll_md);
+		intel_de_write(dev_priv, DPLL_MD(PIPE_B), hw_state->dpll_md);
 		intel_de_write(dev_priv, CBR4_VLV, 0);
-		dev_priv->display.state.chv_dpll_md[pipe] = crtc_state->dpll_hw_state.dpll_md;
+		dev_priv->display.state.chv_dpll_md[pipe] = hw_state->dpll_md;
 
 		/*
 		 * DPLLB VGA mode also seems to cause problems.
@@ -2182,8 +2193,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 			    (intel_de_read(dev_priv, DPLL(PIPE_B)) &
 			     DPLL_VGA_MODE_DIS) == 0);
 	} else {
-		intel_de_write(dev_priv, DPLL_MD(pipe),
-			       crtc_state->dpll_hw_state.dpll_md);
+		intel_de_write(dev_priv, DPLL_MD(pipe), hw_state->dpll_md);
 		intel_de_posting_read(dev_priv, DPLL_MD(pipe));
 	}
 }
-- 
2.43.2

