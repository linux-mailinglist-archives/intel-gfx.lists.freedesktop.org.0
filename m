Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3EE8A35AE
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:28:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61D110F7B6;
	Fri, 12 Apr 2024 18:28:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xd8Fb6xF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81A1510F7AD
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946479; x=1744482479;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EcG4uLLpCctnJ14NI5J0Dg/HDXqJ3VQkfaEsvH7JvWc=;
 b=Xd8Fb6xF78A4tjR49i3vYpWIHrh7HcZDj3roEV4gRLu29rdI/Sp6pPlE
 Hieb11hg/keIZ9AirLAnxEQONgmTwEwkPCraFpxBFAzg+4nZUbUGT2XC+
 TUdAeMBV0DCW1Z48qqsChqQcMSUk+uUvdo3ET1IV1G9IHibo+WxcoaRD3
 B6oWVjHWPBkUxah6gWWl0VFCyg4hW3IKetKe266Pzm2nonD/2tosae//3
 gDY+C7JYToNt14Lcp3LW7SlangTAPWk/E3o9MwTrg1KysqWf4MpWiIYd9
 NIX42SV6omo6HisVF5hk6i/2VbS7id/KWygLJm0FwO1lhtq+HECPSRRqV g==;
X-CSE-ConnectionGUID: 2r3QR9AuSUaq12v4St54iQ==
X-CSE-MsgGUID: Zc1bZcEBRuuXod8/jBHmTg==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560600"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560600"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:53 -0700
X-CSE-ConnectionGUID: +VeVQ0kFQPK8J+OZ39fuAQ==
X-CSE-MsgGUID: ihkryOEpT4ClRFPw6LThDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394915"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 16/18] drm/i915: Carve up struct intel_dpll_hw_state
Date: Fri, 12 Apr 2024 21:27:01 +0300
Message-ID: <20240412182703.19916-17-ville.syrjala@linux.intel.com>
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

struct intel_dpll_hw_state has a spot for all possible
PLL registers across all platforms (well, apart from
cx0/snps). This makes it rather confusing when trying to
figure out which members belong to which platform(s).

Split the struct up into five different platform specific
sub-structures. For now this will actually increase the size
a little bit as we have to duplicate a few members from
skl to icl, but that will be remedied soon when we turn
the thing into a union.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  35 ++--
 drivers/gpu/drm/i915/display/intel_dpll.h     |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 183 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  33 ++--
 .../gpu/drm/i915/display/intel_pch_display.c  |   2 +-
 6 files changed, 162 insertions(+), 97 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 806595cf8f97..96ed1490fec7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3074,13 +3074,13 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	i9xx_dpll_get_hw_state(crtc, &pipe_config->dpll_hw_state);
 
 	if (DISPLAY_VER(dev_priv) >= 4) {
-		tmp = pipe_config->dpll_hw_state.dpll_md;
+		tmp = pipe_config->dpll_hw_state.i9xx.dpll_md;
 		pipe_config->pixel_multiplier =
 			((tmp & DPLL_MD_UDI_MULTIPLIER_MASK)
 			 >> DPLL_MD_UDI_MULTIPLIER_SHIFT) + 1;
 	} else if (IS_I945G(dev_priv) || IS_I945GM(dev_priv) ||
 		   IS_G33(dev_priv) || IS_PINEVIEW(dev_priv)) {
-		tmp = pipe_config->dpll_hw_state.dpll;
+		tmp = pipe_config->dpll_hw_state.i9xx.dpll;
 		pipe_config->pixel_multiplier =
 			((tmp & SDVO_MULTIPLIER_MASK)
 			 >> SDVO_MULTIPLIER_SHIFT_HIRES) + 1;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index b6fbc481c9e5..b9f1c5370598 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -372,7 +372,7 @@ int chv_calc_dpll_params(int refclk, struct dpll *clock)
 static int i9xx_pll_refclk(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 
 	if ((hw_state->dpll & PLL_REF_INPUT_MASK) == PLLB_REF_INPUT_SPREADSPECTRUMIN)
 		return i915->display.vbt.lvds_ssc_freq;
@@ -385,9 +385,10 @@ static int i9xx_pll_refclk(const struct intel_crtc_state *crtc_state)
 }
 
 void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
-			    struct intel_dpll_hw_state *hw_state)
+			    struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
 
 	if (DISPLAY_VER(dev_priv) >= 4) {
 		u32 tmp;
@@ -419,7 +420,7 @@ void i9xx_crtc_clock_get(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	u32 dpll = hw_state->dpll;
 	u32 fp;
 	struct dpll clock;
@@ -427,9 +428,9 @@ void i9xx_crtc_clock_get(struct intel_crtc_state *crtc_state)
 	int refclk = i9xx_pll_refclk(crtc_state);
 
 	if ((dpll & DISPLAY_RATE_SELECT_FPA1) == 0)
-		fp = crtc_state->dpll_hw_state.fp0;
+		fp = hw_state->fp0;
 	else
-		fp = crtc_state->dpll_hw_state.fp1;
+		fp = hw_state->fp1;
 
 	clock.m1 = (fp & FP_M1_DIV_MASK) >> FP_M1_DIV_SHIFT;
 	if (IS_PINEVIEW(dev_priv)) {
@@ -512,7 +513,7 @@ void vlv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
-	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	struct dpll clock;
 	u32 mdiv;
 	int refclk = 100000;
@@ -540,7 +541,7 @@ void chv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum dpio_channel port = vlv_pipe_to_channel(crtc->pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
-	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	struct dpll clock;
 	u32 cmn_dw13, pll_dw0, pll_dw1, pll_dw2, pll_dw3;
 	int refclk = 100000;
@@ -1068,7 +1069,7 @@ static void i9xx_compute_dpll(struct intel_crtc_state *crtc_state,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 
 	if (IS_PINEVIEW(dev_priv)) {
 		hw_state->fp0 = pnv_dpll_compute_fp(clock);
@@ -1136,7 +1137,7 @@ static void i8xx_compute_dpll(struct intel_crtc_state *crtc_state,
 			      const struct dpll *clock,
 			      const struct dpll *reduced_clock)
 {
-	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 
 	hw_state->fp0 = i9xx_dpll_compute_fp(clock);
 	hw_state->fp1 = i9xx_dpll_compute_fp(reduced_clock);
@@ -1337,7 +1338,7 @@ static void ilk_compute_dpll(struct intel_crtc_state *crtc_state,
 			     const struct dpll *clock,
 			     const struct dpll *reduced_clock)
 {
-	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	int factor = ilk_fb_cb_factor(crtc_state);
 
 	hw_state->fp0 = ilk_dpll_compute_fp(clock, factor);
@@ -1436,7 +1437,7 @@ static u32 vlv_dpll(const struct intel_crtc_state *crtc_state)
 
 void vlv_compute_dpll(struct intel_crtc_state *crtc_state)
 {
-	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 
 	hw_state->dpll = vlv_dpll(crtc_state);
 	hw_state->dpll_md = i965_dpll_md(crtc_state);
@@ -1462,7 +1463,7 @@ static u32 chv_dpll(const struct intel_crtc_state *crtc_state)
 
 void chv_compute_dpll(struct intel_crtc_state *crtc_state)
 {
-	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 
 	hw_state->dpll = chv_dpll(crtc_state);
 	hw_state->dpll_md = i965_dpll_md(crtc_state);
@@ -1821,7 +1822,7 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	enum pipe pipe = crtc->pipe;
 	int i;
 
@@ -1989,7 +1990,7 @@ static void _vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	enum pipe pipe = crtc->pipe;
 
 	intel_de_write(dev_priv, DPLL(pipe), hw_state->dpll);
@@ -2004,7 +2005,7 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	enum pipe pipe = crtc->pipe;
 
 	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
@@ -2124,7 +2125,7 @@ static void _chv_enable_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	enum pipe pipe = crtc->pipe;
 	enum dpio_channel port = vlv_pipe_to_channel(pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
@@ -2156,7 +2157,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	const struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	const struct i9xx_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.i9xx;
 	enum pipe pipe = crtc->pipe;
 
 	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
index 49591bda7f8b..a86a79408af0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll.h
@@ -24,7 +24,7 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 int i9xx_calc_dpll_params(int refclk, struct dpll *clock);
 u32 i9xx_dpll_compute_fp(const struct dpll *dpll);
 void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
-			    struct intel_dpll_hw_state *hw_state);
+			    struct intel_dpll_hw_state *dpll_hw_state);
 void vlv_compute_dpll(struct intel_crtc_state *crtc_state);
 void chv_compute_dpll(struct intel_crtc_state *crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 1a78093e41f5..4709b290be97 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -520,8 +520,9 @@ void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
 
 static bool ibx_pch_dpll_get_hw_state(struct drm_i915_private *i915,
 				      struct intel_shared_dpll *pll,
-				      struct intel_dpll_hw_state *hw_state)
+				      struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
 	const enum intel_dpll_id id = pll->info->id;
 	intel_wakeref_t wakeref;
 	u32 val;
@@ -555,8 +556,9 @@ static void ibx_assert_pch_refclk_enabled(struct drm_i915_private *i915)
 
 static void ibx_pch_dpll_enable(struct drm_i915_private *i915,
 				struct intel_shared_dpll *pll,
-				const struct intel_dpll_hw_state *hw_state)
+				const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
 	const enum intel_dpll_id id = pll->info->id;
 
 	/* PCH refclock must be enabled first */
@@ -637,8 +639,10 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
 }
 
 static void ibx_dump_hw_state(struct drm_printer *p,
-			      const struct intel_dpll_hw_state *hw_state)
+			      const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
+
 	drm_printf(p, "dpll_hw_state: dpll: 0x%x, dpll_md: 0x%x, "
 		   "fp0: 0x%x, fp1: 0x%x\n",
 		   hw_state->dpll,
@@ -647,9 +651,12 @@ static void ibx_dump_hw_state(struct drm_printer *p,
 		   hw_state->fp1);
 }
 
-static bool ibx_compare_hw_state(const struct intel_dpll_hw_state *a,
-				 const struct intel_dpll_hw_state *b)
+static bool ibx_compare_hw_state(const struct intel_dpll_hw_state *_a,
+				 const struct intel_dpll_hw_state *_b)
 {
+	const struct i9xx_dpll_hw_state *a = &_a->i9xx;
+	const struct i9xx_dpll_hw_state *b = &_b->i9xx;
+
 	return a->dpll == b->dpll &&
 		a->dpll_md == b->dpll_md &&
 		a->fp0 == b->fp0 &&
@@ -679,8 +686,9 @@ static const struct intel_dpll_mgr pch_pll_mgr = {
 
 static void hsw_ddi_wrpll_enable(struct drm_i915_private *i915,
 				 struct intel_shared_dpll *pll,
-				 const struct intel_dpll_hw_state *hw_state)
+				 const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	const enum intel_dpll_id id = pll->info->id;
 
 	intel_de_write(i915, WRPLL_CTL(id), hw_state->wrpll);
@@ -690,8 +698,10 @@ static void hsw_ddi_wrpll_enable(struct drm_i915_private *i915,
 
 static void hsw_ddi_spll_enable(struct drm_i915_private *i915,
 				struct intel_shared_dpll *pll,
-				const struct intel_dpll_hw_state *hw_state)
+				const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
+
 	intel_de_write(i915, SPLL_CTL, hw_state->spll);
 	intel_de_posting_read(i915, SPLL_CTL);
 	udelay(20);
@@ -731,8 +741,9 @@ static void hsw_ddi_spll_disable(struct drm_i915_private *i915,
 
 static bool hsw_ddi_wrpll_get_hw_state(struct drm_i915_private *i915,
 				       struct intel_shared_dpll *pll,
-				       struct intel_dpll_hw_state *hw_state)
+				       struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	const enum intel_dpll_id id = pll->info->id;
 	intel_wakeref_t wakeref;
 	u32 val;
@@ -752,8 +763,9 @@ static bool hsw_ddi_wrpll_get_hw_state(struct drm_i915_private *i915,
 
 static bool hsw_ddi_spll_get_hw_state(struct drm_i915_private *i915,
 				      struct intel_shared_dpll *pll,
-				      struct intel_dpll_hw_state *hw_state)
+				      struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	intel_wakeref_t wakeref;
 	u32 val;
 
@@ -978,8 +990,9 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
 
 static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 				  const struct intel_shared_dpll *pll,
-				  const struct intel_dpll_hw_state *hw_state)
+				  const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	int refclk;
 	int n, p, r;
 	u32 wrpll = hw_state->wrpll;
@@ -1023,7 +1036,7 @@ hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	struct hsw_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.hsw;
 	unsigned int p, n2, r2;
 
 	hsw_ddi_calculate_wrpll(crtc_state->port_clock * 1000, &r2, &n2, &p);
@@ -1103,7 +1116,7 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
 
 static int hsw_ddi_lcpll_get_freq(struct drm_i915_private *i915,
 				  const struct intel_shared_dpll *pll,
-				  const struct intel_dpll_hw_state *hw_state)
+				  const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	int link_clock = 0;
 
@@ -1131,7 +1144,7 @@ hsw_ddi_spll_compute_dpll(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	struct hsw_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.hsw;
 
 	if (drm_WARN_ON(crtc->base.dev, crtc_state->port_clock / 2 != 135000))
 		return -EINVAL;
@@ -1155,8 +1168,9 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
 
 static int hsw_ddi_spll_get_freq(struct drm_i915_private *i915,
 				 const struct intel_shared_dpll *pll,
-				 const struct intel_dpll_hw_state *hw_state)
+				 const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	int link_clock = 0;
 
 	switch (hw_state->spll & SPLL_FREQ_MASK) {
@@ -1231,15 +1245,20 @@ static void hsw_update_dpll_ref_clks(struct drm_i915_private *i915)
 }
 
 static void hsw_dump_hw_state(struct drm_printer *p,
-			      const struct intel_dpll_hw_state *hw_state)
+			      const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
+
 	drm_printf(p, "dpll_hw_state: wrpll: 0x%x spll: 0x%x\n",
 		   hw_state->wrpll, hw_state->spll);
 }
 
-static bool hsw_compare_hw_state(const struct intel_dpll_hw_state *a,
-				 const struct intel_dpll_hw_state *b)
+static bool hsw_compare_hw_state(const struct intel_dpll_hw_state *_a,
+				 const struct intel_dpll_hw_state *_b)
 {
+	const struct hsw_dpll_hw_state *a = &_a->hsw;
+	const struct hsw_dpll_hw_state *b = &_b->hsw;
+
 	return a->wrpll == b->wrpll &&
 		a->spll == b->spll;
 }
@@ -1271,7 +1290,7 @@ static void hsw_ddi_lcpll_disable(struct drm_i915_private *i915,
 
 static bool hsw_ddi_lcpll_get_hw_state(struct drm_i915_private *i915,
 				       struct intel_shared_dpll *pll,
-				       struct intel_dpll_hw_state *hw_state)
+				       struct intel_dpll_hw_state *dpll_hw_state)
 {
 	return true;
 }
@@ -1339,7 +1358,7 @@ static const struct skl_dpll_regs skl_dpll_regs[4] = {
 
 static void skl_ddi_pll_write_ctrl1(struct drm_i915_private *i915,
 				    struct intel_shared_dpll *pll,
-				    const struct intel_dpll_hw_state *hw_state)
+				    const struct skl_dpll_hw_state *hw_state)
 {
 	const enum intel_dpll_id id = pll->info->id;
 
@@ -1353,8 +1372,9 @@ static void skl_ddi_pll_write_ctrl1(struct drm_i915_private *i915,
 
 static void skl_ddi_pll_enable(struct drm_i915_private *i915,
 			       struct intel_shared_dpll *pll,
-			       const struct intel_dpll_hw_state *hw_state)
+			       const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
 
@@ -1374,8 +1394,10 @@ static void skl_ddi_pll_enable(struct drm_i915_private *i915,
 
 static void skl_ddi_dpll0_enable(struct drm_i915_private *i915,
 				 struct intel_shared_dpll *pll,
-				 const struct intel_dpll_hw_state *hw_state)
+				 const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
+
 	skl_ddi_pll_write_ctrl1(i915, pll, hw_state);
 }
 
@@ -1397,13 +1419,14 @@ static void skl_ddi_dpll0_disable(struct drm_i915_private *i915,
 
 static bool skl_ddi_pll_get_hw_state(struct drm_i915_private *i915,
 				     struct intel_shared_dpll *pll,
-				     struct intel_dpll_hw_state *hw_state)
+				     struct intel_dpll_hw_state *dpll_hw_state)
 {
-	u32 val;
+	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
 	intel_wakeref_t wakeref;
 	bool ret;
+	u32 val;
 
 	wakeref = intel_display_power_get_if_enabled(i915,
 						     POWER_DOMAIN_DISPLAY_CORE);
@@ -1434,8 +1457,9 @@ static bool skl_ddi_pll_get_hw_state(struct drm_i915_private *i915,
 
 static bool skl_ddi_dpll0_get_hw_state(struct drm_i915_private *i915,
 				       struct intel_shared_dpll *pll,
-				       struct intel_dpll_hw_state *hw_state)
+				       struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
 	intel_wakeref_t wakeref;
@@ -1706,8 +1730,9 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
 
 static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 				  const struct intel_shared_dpll *pll,
-				  const struct intel_dpll_hw_state *hw_state)
+				  const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	int ref_clock = i915->display.dpll.ref_clks.nssc;
 	u32 p0, p1, p2, dco_freq;
 
@@ -1778,7 +1803,7 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	struct skl_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.skl;
 	struct skl_wrpll_params wrpll_params = {};
 	int ret;
 
@@ -1816,7 +1841,7 @@ static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 static int
 skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 {
-	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	struct skl_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.skl;
 	u32 ctrl1;
 
 	/*
@@ -1853,8 +1878,9 @@ skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 
 static int skl_ddi_lcpll_get_freq(struct drm_i915_private *i915,
 				  const struct intel_shared_dpll *pll,
-				  const struct intel_dpll_hw_state *hw_state)
+				  const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	int link_clock = 0;
 
 	switch ((hw_state->ctrl1 & DPLL_CTRL1_LINK_RATE_MASK(0)) >>
@@ -1931,16 +1957,18 @@ static int skl_get_dpll(struct intel_atomic_state *state,
 
 static int skl_ddi_pll_get_freq(struct drm_i915_private *i915,
 				const struct intel_shared_dpll *pll,
-				const struct intel_dpll_hw_state *hw_state)
+				const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
+
 	/*
 	 * ctrl1 register is already shifted for each pll, just use 0 to get
 	 * the internal shift for each field
 	 */
 	if (hw_state->ctrl1 & DPLL_CTRL1_HDMI_MODE(0))
-		return skl_ddi_wrpll_get_freq(i915, pll, hw_state);
+		return skl_ddi_wrpll_get_freq(i915, pll, dpll_hw_state);
 	else
-		return skl_ddi_lcpll_get_freq(i915, pll, hw_state);
+		return skl_ddi_lcpll_get_freq(i915, pll, dpll_hw_state);
 }
 
 static void skl_update_dpll_ref_clks(struct drm_i915_private *i915)
@@ -1950,15 +1978,20 @@ static void skl_update_dpll_ref_clks(struct drm_i915_private *i915)
 }
 
 static void skl_dump_hw_state(struct drm_printer *p,
-			      const struct intel_dpll_hw_state *hw_state)
+			      const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
+
 	drm_printf(p, "dpll_hw_state: ctrl1: 0x%x, cfgcr1: 0x%x, cfgcr2: 0x%x\n",
 		   hw_state->ctrl1, hw_state->cfgcr1, hw_state->cfgcr2);
 }
 
-static bool skl_compare_hw_state(const struct intel_dpll_hw_state *a,
-				 const struct intel_dpll_hw_state *b)
+static bool skl_compare_hw_state(const struct intel_dpll_hw_state *_a,
+				 const struct intel_dpll_hw_state *_b)
 {
+	const struct skl_dpll_hw_state *a = &_a->skl;
+	const struct skl_dpll_hw_state *b = &_b->skl;
+
 	return a->ctrl1 == b->ctrl1 &&
 		a->cfgcr1 == b->cfgcr1 &&
 		a->cfgcr2 == b->cfgcr2;
@@ -1999,8 +2032,9 @@ static const struct intel_dpll_mgr skl_pll_mgr = {
 
 static void bxt_ddi_pll_enable(struct drm_i915_private *i915,
 			       struct intel_shared_dpll *pll,
-			       const struct intel_dpll_hw_state *hw_state)
+			       const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
 	enum dpio_phy phy;
 	enum dpio_channel ch;
@@ -2120,8 +2154,9 @@ static void bxt_ddi_pll_disable(struct drm_i915_private *i915,
 
 static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *i915,
 				     struct intel_shared_dpll *pll,
-				     struct intel_dpll_hw_state *hw_state)
+				     struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
 	intel_wakeref_t wakeref;
 	enum dpio_phy phy;
@@ -2253,7 +2288,7 @@ static int bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 				     const struct dpll *clk_div)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
+	struct bxt_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state.bxt;
 	int clock = crtc_state->port_clock;
 	int vco = clk_div->vco;
 	u32 prop_coef, int_coef, gain_ctl, targ_cnt;
@@ -2319,8 +2354,9 @@ static int bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 
 static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
 				const struct intel_shared_dpll *pll,
-				const struct intel_dpll_hw_state *hw_state)
+				const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
 	struct dpll clock;
 
 	clock.m1 = 2;
@@ -2412,8 +2448,10 @@ static void bxt_update_dpll_ref_clks(struct drm_i915_private *i915)
 }
 
 static void bxt_dump_hw_state(struct drm_printer *p,
-			      const struct intel_dpll_hw_state *hw_state)
+			      const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
+
 	drm_printf(p, "dpll_hw_state: ebb0: 0x%x, ebb4: 0x%x,"
 		   "pll0: 0x%x, pll1: 0x%x, pll2: 0x%x, pll3: 0x%x, "
 		   "pll6: 0x%x, pll8: 0x%x, pll9: 0x%x, pll10: 0x%x, pcsdw12: 0x%x\n",
@@ -2423,9 +2461,12 @@ static void bxt_dump_hw_state(struct drm_printer *p,
 		   hw_state->pcsdw12);
 }
 
-static bool bxt_compare_hw_state(const struct intel_dpll_hw_state *a,
-				 const struct intel_dpll_hw_state *b)
+static bool bxt_compare_hw_state(const struct intel_dpll_hw_state *_a,
+				 const struct intel_dpll_hw_state *_b)
 {
+	const struct bxt_dpll_hw_state *a = &_a->bxt;
+	const struct bxt_dpll_hw_state *b = &_b->bxt;
+
 	return a->ebb0 == b->ebb0 &&
 		a->ebb4 == b->ebb4 &&
 		a->pll0 == b->pll0 &&
@@ -2708,7 +2749,7 @@ static int icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 
 static int icl_ddi_tbt_pll_get_freq(struct drm_i915_private *i915,
 				    const struct intel_shared_dpll *pll,
-				    const struct intel_dpll_hw_state *hw_state)
+				    const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	/*
 	 * The PLL outputs multiple frequencies at the same time, selection is
@@ -2779,8 +2820,9 @@ icl_calc_wrpll(struct intel_crtc_state *crtc_state,
 
 static int icl_ddi_combo_pll_get_freq(struct drm_i915_private *i915,
 				      const struct intel_shared_dpll *pll,
-				      const struct intel_dpll_hw_state *hw_state)
+				      const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	int ref_clock = icl_wrpll_ref_clock(i915);
 	u32 dco_fraction;
 	u32 p0, p1, p2, dco_freq;
@@ -2840,8 +2882,9 @@ static int icl_ddi_combo_pll_get_freq(struct drm_i915_private *i915,
 
 static void icl_calc_dpll_state(struct drm_i915_private *i915,
 				const struct skl_wrpll_params *pll_params,
-				struct intel_dpll_hw_state *hw_state)
+				struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	u32 dco_fraction = pll_params->dco_fraction;
 
 	if (ehl_combo_pll_div_frac_wa_needed(i915))
@@ -2866,7 +2909,7 @@ static void icl_calc_dpll_state(struct drm_i915_private *i915,
 
 static int icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
 				    u32 *target_dco_khz,
-				    struct intel_dpll_hw_state *hw_state,
+				    struct icl_dpll_hw_state *hw_state,
 				    bool is_dkl)
 {
 	static const u8 div1_vals[] = { 7, 5, 3, 2 };
@@ -2945,9 +2988,10 @@ static int icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
  * adapted to integer-only calculation, that's why it looks so different.
  */
 static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
-				 struct intel_dpll_hw_state *hw_state)
+				 struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	int refclk_khz = i915->display.dpll.ref_clks.nssc;
 	int clock = crtc_state->port_clock;
 	u32 dco_khz, m1div, m2div_int, m2div_rem, m2div_frac;
@@ -3149,8 +3193,9 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 
 static int icl_ddi_mg_pll_get_freq(struct drm_i915_private *i915,
 				   const struct intel_shared_dpll *pll,
-				   const struct intel_dpll_hw_state *hw_state)
+				   const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	u32 m1, m2_int, m2_frac, div1, div2, ref_clock;
 	u64 tmp;
 
@@ -3487,8 +3532,9 @@ static void icl_put_dplls(struct intel_atomic_state *state,
 
 static bool mg_pll_get_hw_state(struct drm_i915_private *i915,
 				struct intel_shared_dpll *pll,
-				struct intel_dpll_hw_state *hw_state)
+				struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
 	enum tc_port tc_port = icl_pll_id_to_tc_port(id);
 	intel_wakeref_t wakeref;
@@ -3553,8 +3599,9 @@ static bool mg_pll_get_hw_state(struct drm_i915_private *i915,
 
 static bool dkl_pll_get_hw_state(struct drm_i915_private *i915,
 				 struct intel_shared_dpll *pll,
-				 struct intel_dpll_hw_state *hw_state)
+				 struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
 	enum tc_port tc_port = icl_pll_id_to_tc_port(id);
 	intel_wakeref_t wakeref;
@@ -3624,9 +3671,10 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *i915,
 
 static bool icl_pll_get_hw_state(struct drm_i915_private *i915,
 				 struct intel_shared_dpll *pll,
-				 struct intel_dpll_hw_state *hw_state,
+				 struct intel_dpll_hw_state *dpll_hw_state,
 				 i915_reg_t enable_reg)
 {
+	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
 	intel_wakeref_t wakeref;
 	bool ret = false;
@@ -3684,23 +3732,23 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *i915,
 
 static bool combo_pll_get_hw_state(struct drm_i915_private *i915,
 				   struct intel_shared_dpll *pll,
-				   struct intel_dpll_hw_state *hw_state)
+				   struct intel_dpll_hw_state *dpll_hw_state)
 {
 	i915_reg_t enable_reg = intel_combo_pll_enable_reg(i915, pll);
 
-	return icl_pll_get_hw_state(i915, pll, hw_state, enable_reg);
+	return icl_pll_get_hw_state(i915, pll, dpll_hw_state, enable_reg);
 }
 
 static bool tbt_pll_get_hw_state(struct drm_i915_private *i915,
 				 struct intel_shared_dpll *pll,
-				 struct intel_dpll_hw_state *hw_state)
+				 struct intel_dpll_hw_state *dpll_hw_state)
 {
-	return icl_pll_get_hw_state(i915, pll, hw_state, TBT_PLL_ENABLE);
+	return icl_pll_get_hw_state(i915, pll, dpll_hw_state, TBT_PLL_ENABLE);
 }
 
 static void icl_dpll_write(struct drm_i915_private *i915,
 			   struct intel_shared_dpll *pll,
-			   const struct intel_dpll_hw_state *hw_state)
+			   const struct icl_dpll_hw_state *hw_state)
 {
 	const enum intel_dpll_id id = pll->info->id;
 	i915_reg_t cfgcr0_reg, cfgcr1_reg, div0_reg = INVALID_MMIO_REG;
@@ -3742,7 +3790,7 @@ static void icl_dpll_write(struct drm_i915_private *i915,
 
 static void icl_mg_pll_write(struct drm_i915_private *i915,
 			     struct intel_shared_dpll *pll,
-			     const struct intel_dpll_hw_state *hw_state)
+			     const struct icl_dpll_hw_state *hw_state)
 {
 	enum tc_port tc_port = icl_pll_id_to_tc_port(pll->info->id);
 
@@ -3785,7 +3833,7 @@ static void icl_mg_pll_write(struct drm_i915_private *i915,
 
 static void dkl_pll_write(struct drm_i915_private *i915,
 			  struct intel_shared_dpll *pll,
-			  const struct intel_dpll_hw_state *hw_state)
+			  const struct icl_dpll_hw_state *hw_state)
 {
 	enum tc_port tc_port = icl_pll_id_to_tc_port(pll->info->id);
 	u32 val;
@@ -3900,8 +3948,9 @@ static void adlp_cmtg_clock_gating_wa(struct drm_i915_private *i915, struct inte
 
 static void combo_pll_enable(struct drm_i915_private *i915,
 			     struct intel_shared_dpll *pll,
-			     const struct intel_dpll_hw_state *hw_state)
+			     const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	i915_reg_t enable_reg = intel_combo_pll_enable_reg(i915, pll);
 
 	icl_pll_power_enable(i915, pll, enable_reg);
@@ -3923,8 +3972,10 @@ static void combo_pll_enable(struct drm_i915_private *i915,
 
 static void tbt_pll_enable(struct drm_i915_private *i915,
 			   struct intel_shared_dpll *pll,
-			   const struct intel_dpll_hw_state *hw_state)
+			   const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
+
 	icl_pll_power_enable(i915, pll, TBT_PLL_ENABLE);
 
 	icl_dpll_write(i915, pll, hw_state);
@@ -3942,8 +3993,9 @@ static void tbt_pll_enable(struct drm_i915_private *i915,
 
 static void mg_pll_enable(struct drm_i915_private *i915,
 			  struct intel_shared_dpll *pll,
-			  const struct intel_dpll_hw_state *hw_state)
+			  const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	i915_reg_t enable_reg = intel_tc_pll_enable_reg(i915, pll);
 
 	icl_pll_power_enable(i915, pll, enable_reg);
@@ -4024,8 +4076,10 @@ static void icl_update_dpll_ref_clks(struct drm_i915_private *i915)
 }
 
 static void icl_dump_hw_state(struct drm_printer *p,
-			      const struct intel_dpll_hw_state *hw_state)
+			      const struct intel_dpll_hw_state *dpll_hw_state)
 {
+	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
+
 	drm_printf(p, "dpll_hw_state: cfgcr0: 0x%x, cfgcr1: 0x%x, div0: 0x%x, "
 		   "mg_refclkin_ctl: 0x%x, hg_clktop2_coreclkctl1: 0x%x, "
 		   "mg_clktop2_hsclkctl: 0x%x, mg_pll_div0: 0x%x, "
@@ -4045,9 +4099,12 @@ static void icl_dump_hw_state(struct drm_printer *p,
 		   hw_state->mg_pll_tdc_coldst_bias);
 }
 
-static bool icl_compare_hw_state(const struct intel_dpll_hw_state *a,
-				 const struct intel_dpll_hw_state *b)
+static bool icl_compare_hw_state(const struct intel_dpll_hw_state *_a,
+				 const struct intel_dpll_hw_state *_b)
 {
+	const struct icl_dpll_hw_state *a = &_a->icl;
+	const struct icl_dpll_hw_state *b = &_b->icl;
+
 	/* FIXME split combo vs. mg more thoroughly */
 	return a->cfgcr0 == b->cfgcr0 &&
 		a->cfgcr1 == b->cfgcr1 &&
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index d63d0651b6a1..95438f12c4f0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -181,18 +181,19 @@ enum icl_port_dpll_id {
 	ICL_PORT_DPLL_COUNT,
 };
 
-struct intel_dpll_hw_state {
-	/* i9xx, pch plls */
+struct i9xx_dpll_hw_state {
 	u32 dpll;
 	u32 dpll_md;
 	u32 fp0;
 	u32 fp1;
+};
 
-	/* hsw, bdw */
+struct hsw_dpll_hw_state {
 	u32 wrpll;
 	u32 spll;
+};
 
-	/* skl */
+struct skl_dpll_hw_state {
 	/*
 	 * DPLL_CTRL1 has 6 bits for each each this DPLL. We store those in
 	 * lower part of ctrl1 and they get shifted into position when writing
@@ -202,20 +203,18 @@ struct intel_dpll_hw_state {
 	u32 ctrl1;
 	/* HDMI only, 0 when used for DP */
 	u32 cfgcr1, cfgcr2;
+};
 
-	/* icl */
-	u32 cfgcr0;
+struct bxt_dpll_hw_state {
+	u32 ebb0, ebb4, pll0, pll1, pll2, pll3, pll6, pll8, pll9, pll10, pcsdw12;
+};
+
+struct icl_dpll_hw_state {
+	u32 cfgcr0, cfgcr1;
 
 	/* tgl */
 	u32 div0;
 
-	/* bxt */
-	u32 ebb0, ebb4, pll0, pll1, pll2, pll3, pll6, pll8, pll9, pll10, pcsdw12;
-
-	/*
-	 * ICL uses the following, already defined:
-	 * u32 cfgcr0, cfgcr1;
-	 */
 	u32 mg_refclkin_ctl;
 	u32 mg_clktop2_coreclkctl1;
 	u32 mg_clktop2_hsclkctl;
@@ -230,6 +229,14 @@ struct intel_dpll_hw_state {
 	u32 mg_pll_tdc_coldst_bias_mask;
 };
 
+struct intel_dpll_hw_state {
+	struct i9xx_dpll_hw_state i9xx;
+	struct hsw_dpll_hw_state hsw;
+	struct skl_dpll_hw_state skl;
+	struct bxt_dpll_hw_state bxt;
+	struct icl_dpll_hw_state icl;
+};
+
 /**
  * struct intel_shared_dpll_state - hold the DPLL atomic state
  *
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 252483581c96..826e38a9e6a4 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -529,7 +529,7 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
 					     &crtc_state->dpll_hw_state);
 	drm_WARN_ON(&dev_priv->drm, !pll_active);
 
-	tmp = crtc_state->dpll_hw_state.dpll;
+	tmp = crtc_state->dpll_hw_state.i9xx.dpll;
 	crtc_state->pixel_multiplier =
 		((tmp & PLL_REF_SDVO_HDMI_MULTIPLIER_MASK)
 		 >> PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT) + 1;
-- 
2.43.2

