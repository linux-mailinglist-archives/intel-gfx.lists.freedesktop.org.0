Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 471E08A35AC
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:28:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A554E10F7B0;
	Fri, 12 Apr 2024 18:28:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bQQQ7+2k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A14BF10F7B2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946468; x=1744482468;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=31zuSeLZmgie3X/SCcJ/SW/Jzrk9LW4S0eDTTAAUYE0=;
 b=bQQQ7+2ky3I3gmVN3/tTMLwqTcdJZ3sey6x/Wwj5lIXooo8iI8viYlAZ
 EB4lgTHq7aMwiqaIQDQR47dbsW4MZh5TTmsyxbTCYQqDAvbMHSp5pL7if
 cWtdqiqRsSA/DV2zgdhQlku3lMlYVQCVqd/BgZhcq4LYm7a937SJNni7r
 OHg8h0o4Z679kDJVVjXAMn3INLQOdV97Ov/ReOKr4sbu9CgkUkGyMC106
 zy37XsD/a7HZJTm1DIHXlGR5tTmvPhr9q1QTwjOt2Agaqx5foTnv3MPvW
 VCONh1ikEux2/aFnMROr6D68CIrekHwOKLMPldegL6L1BNV2+jCV+6gB7 g==;
X-CSE-ConnectionGUID: JsrAZZd9T2u/EK1nOFKwKQ==
X-CSE-MsgGUID: +6Fd8xafQzmuBx9xBmvq4Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560590"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560590"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:47 -0700
X-CSE-ConnectionGUID: wkVLOvaOQsWe121gsuuD8A==
X-CSE-MsgGUID: DxajimlmRNqznbMQIH76XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394870"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 14/18] drm/i915: s/pipe_config/crtc_state/ in legacy PLL code
Date: Fri, 12 Apr 2024 21:26:59 +0300
Message-ID: <20240412182703.19916-15-ville.syrjala@linux.intel.com>
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

Rename all the ye olde 'pipe_config's to the modern
'crtc_state' name in the legacy DPLL code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 30 +++++++++++------------
 drivers/gpu/drm/i915/display/intel_dpll.h |  6 ++---
 2 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 9d57262ac577..4df40a14d0f1 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -415,20 +415,20 @@ void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
 }
 
 /* Returns the clock of the currently programmed mode of the given pipe. */
-void i9xx_crtc_clock_get(struct intel_crtc_state *pipe_config)
+void i9xx_crtc_clock_get(struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	u32 dpll = pipe_config->dpll_hw_state.dpll;
+	u32 dpll = crtc_state->dpll_hw_state.dpll;
 	u32 fp;
 	struct dpll clock;
 	int port_clock;
-	int refclk = i9xx_pll_refclk(pipe_config);
+	int refclk = i9xx_pll_refclk(crtc_state);
 
 	if ((dpll & DISPLAY_RATE_SELECT_FPA1) == 0)
-		fp = pipe_config->dpll_hw_state.fp0;
+		fp = crtc_state->dpll_hw_state.fp0;
 	else
-		fp = pipe_config->dpll_hw_state.fp1;
+		fp = crtc_state->dpll_hw_state.fp1;
 
 	clock.m1 = (fp & FP_M1_DIV_MASK) >> FP_M1_DIV_SHIFT;
 	if (IS_PINEVIEW(dev_priv)) {
@@ -503,12 +503,12 @@ void i9xx_crtc_clock_get(struct intel_crtc_state *pipe_config)
 	 * port_clock to compute adjusted_mode.crtc_clock in the
 	 * encoder's get_config() function.
 	 */
-	pipe_config->port_clock = port_clock;
+	crtc_state->port_clock = port_clock;
 }
 
-void vlv_crtc_clock_get(struct intel_crtc_state *pipe_config)
+void vlv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	struct dpll clock;
@@ -516,7 +516,7 @@ void vlv_crtc_clock_get(struct intel_crtc_state *pipe_config)
 	int refclk = 100000;
 
 	/* In case of DSI, DPLL will not be used */
-	if ((pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE) == 0)
+	if ((crtc_state->dpll_hw_state.dpll & DPLL_VCO_ENABLE) == 0)
 		return;
 
 	vlv_dpio_get(dev_priv);
@@ -529,12 +529,12 @@ void vlv_crtc_clock_get(struct intel_crtc_state *pipe_config)
 	clock.p1 = (mdiv >> DPIO_P1_SHIFT) & 7;
 	clock.p2 = (mdiv >> DPIO_P2_SHIFT) & 0x1f;
 
-	pipe_config->port_clock = vlv_calc_dpll_params(refclk, &clock);
+	crtc_state->port_clock = vlv_calc_dpll_params(refclk, &clock);
 }
 
-void chv_crtc_clock_get(struct intel_crtc_state *pipe_config)
+void chv_crtc_clock_get(struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum dpio_channel port = vlv_pipe_to_channel(crtc->pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
@@ -543,7 +543,7 @@ void chv_crtc_clock_get(struct intel_crtc_state *pipe_config)
 	int refclk = 100000;
 
 	/* In case of DSI, DPLL will not be used */
-	if ((pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE) == 0)
+	if ((crtc_state->dpll_hw_state.dpll & DPLL_VCO_ENABLE) == 0)
 		return;
 
 	vlv_dpio_get(dev_priv);
@@ -562,7 +562,7 @@ void chv_crtc_clock_get(struct intel_crtc_state *pipe_config)
 	clock.p1 = (cmn_dw13 >> DPIO_CHV_P1_DIV_SHIFT) & 0x7;
 	clock.p2 = (cmn_dw13 >> DPIO_CHV_P2_DIV_SHIFT) & 0x1f;
 
-	pipe_config->port_clock = chv_calc_dpll_params(refclk, &clock);
+	crtc_state->port_clock = chv_calc_dpll_params(refclk, &clock);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
index dc47affba2ba..49591bda7f8b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll.h
@@ -42,9 +42,9 @@ bool bxt_find_best_dpll(struct intel_crtc_state *crtc_state,
 			struct dpll *best_clock);
 int chv_calc_dpll_params(int refclk, struct dpll *pll_clock);
 
-void i9xx_crtc_clock_get(struct intel_crtc_state *pipe_config);
-void vlv_crtc_clock_get(struct intel_crtc_state *pipe_config);
-void chv_crtc_clock_get(struct intel_crtc_state *pipe_config);
+void i9xx_crtc_clock_get(struct intel_crtc_state *crtc_state);
+void vlv_crtc_clock_get(struct intel_crtc_state *crtc_state);
+void chv_crtc_clock_get(struct intel_crtc_state *crtc_state);
 
 void assert_pll_enabled(struct drm_i915_private *i915, enum pipe pipe);
 void assert_pll_disabled(struct drm_i915_private *i915, enum pipe pipe);
-- 
2.43.2

