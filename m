Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 557181517A3
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 10:19:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0DD46EE11;
	Tue,  4 Feb 2020 09:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BF0E6EE12
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 09:19:35 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id w12so11065375wrt.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Feb 2020 01:19:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wgh9h8v2YFurLNje+nXFMtch0n1uxSpr4gT34WxALbk=;
 b=evnuL+NZYDitn8QDd8pydXCauEV8YItHQIM640/3g0wlWKAaij10lUFjLP7qnWWCsK
 zChFIyqM5HkQMU+MIBDkuVnoH79/cDMDA+V2nnIPO4D82A36QaCRtlZ1WBamHHP5T9Xs
 SN0YTtsFDUoFr9mPdEeNjXF/+5nzSWhGNwwioZyYa41Y2YLsOB1bpIkWK4Zn8nWqcYKQ
 3LBg3tnzSi64xvLwMHeQaqvl2IuQACyFr9xei0J5FoM5qANf1cYslk5PRbzheKfTDrgz
 64aQDp6pHVvtXEXnndWGgrjrutFNR+DiQK5F7tLjaOVNQLqDM4CuhC/WLL9x1AYoqWm7
 /Z2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wgh9h8v2YFurLNje+nXFMtch0n1uxSpr4gT34WxALbk=;
 b=n5xAfMA3sN71uaRSAhgvL4D5G2+zSj3xSCGqQthQ+wCtkyWuEUEwKKQU3c80ulmpj+
 /bWFvTQ6AT8tLFL+AWHdHHDyaqvmZ8fV8TWt7ewoOQ6wrcmvPZHFYJGhKQSBlsy/5L9J
 ZdBjsiLVRS+BFZP3TylxpTfIdQkndzsNAYW8drv/L4oATfqZjKpkgLFrJ4xNm8c9q6a1
 Qxq04r+FkRLUC9WjwA/igG2HpdbVLhuYwkrIdyiCNPZ/pOdBxR6wAvzzcDkGdcwtlX9D
 FfaJSAnfP4nTnBzCRTQooevuNHVXpRno3JalK4fuIKlYCJO6Bcvb8VO/iQ6hp6s9YIOL
 rTzA==
X-Gm-Message-State: APjAAAVy5TjDPeisxzR7f3c9+tTj+vTUNeWVkot4g97fmOOP0F5vbmC9
 MDVpkyCJZcbJhvTcUwsvp1s=
X-Google-Smtp-Source: APXvYqwoi7CPlggLiXMm0FLlFWoq4Adnnm69JxszC85oSHOiPI8jWXOOsUcWHijjuYOfQdVZQ1wScw==
X-Received: by 2002:a5d:6082:: with SMTP id w2mr15357931wrt.300.1580807973679; 
 Tue, 04 Feb 2020 01:19:33 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id f189sm3094968wmf.16.2020.02.04.01.19.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 01:19:33 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue,  4 Feb 2020 12:18:50 +0300
Message-Id: <20200204091855.24259-8-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200204091855.24259-1-wambui.karugax@gmail.com>
References: <20200204091855.24259-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/12] drm/i915/dpll_mgr: convert to drm_device
 based logging macros.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Conversion of instances of printk based drm logging macros to the struct
drm_device based logging macros in i915/display/intel_dpll_mgr.c.
This also involves extracting the struct drm_i915_private device pointer
from various intel types to use in the drm_device based macros.

Note that this converts DRM_DEBUG_DRIVER to drm_dbg().

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 254 ++++++++++--------
 1 file changed, 142 insertions(+), 112 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 13535c5ca3cf..6b3cd7fb0fa0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -146,7 +146,7 @@ void intel_prepare_shared_dpll(const struct intel_crtc_state *crtc_state)
 	mutex_lock(&dev_priv->dpll_lock);
 	WARN_ON(!pll->state.crtc_mask);
 	if (!pll->active_mask) {
-		DRM_DEBUG_DRIVER("setting up %s\n", pll->info->name);
+		drm_dbg(&dev_priv->drm, "setting up %s\n", pll->info->name);
 		WARN_ON(pll->on);
 		assert_shared_dpll_disabled(dev_priv, pll);
 
@@ -181,9 +181,10 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 
 	pll->active_mask |= crtc_mask;
 
-	DRM_DEBUG_KMS("enable %s (active %x, on? %d) for crtc %d\n",
-		      pll->info->name, pll->active_mask, pll->on,
-		      crtc->base.base.id);
+	drm_dbg_kms(&dev_priv->drm,
+		    "enable %s (active %x, on? %d) for crtc %d\n",
+		    pll->info->name, pll->active_mask, pll->on,
+		    crtc->base.base.id);
 
 	if (old_mask) {
 		WARN_ON(!pll->on);
@@ -192,7 +193,7 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 	}
 	WARN_ON(pll->on);
 
-	DRM_DEBUG_KMS("enabling %s\n", pll->info->name);
+	drm_dbg_kms(&dev_priv->drm, "enabling %s\n", pll->info->name);
 	pll->info->funcs->enable(dev_priv, pll);
 	pll->on = true;
 
@@ -224,9 +225,10 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 	if (WARN_ON(!(pll->active_mask & crtc_mask)))
 		goto out;
 
-	DRM_DEBUG_KMS("disable %s (active %x, on? %d) for crtc %d\n",
-		      pll->info->name, pll->active_mask, pll->on,
-		      crtc->base.base.id);
+	drm_dbg_kms(&dev_priv->drm,
+		    "disable %s (active %x, on? %d) for crtc %d\n",
+		    pll->info->name, pll->active_mask, pll->on,
+		    crtc->base.base.id);
 
 	assert_shared_dpll_enabled(dev_priv, pll);
 	WARN_ON(!pll->on);
@@ -235,7 +237,7 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 	if (pll->active_mask)
 		goto out;
 
-	DRM_DEBUG_KMS("disabling %s\n", pll->info->name);
+	drm_dbg_kms(&dev_priv->drm, "disabling %s\n", pll->info->name);
 	pll->info->funcs->disable(dev_priv, pll);
 	pll->on = false;
 
@@ -271,20 +273,21 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 		if (memcmp(pll_state,
 			   &shared_dpll[i].hw_state,
 			   sizeof(*pll_state)) == 0) {
-			DRM_DEBUG_KMS("[CRTC:%d:%s] sharing existing %s (crtc mask 0x%08x, active %x)\n",
-				      crtc->base.base.id, crtc->base.name,
-				      pll->info->name,
-				      shared_dpll[i].crtc_mask,
-				      pll->active_mask);
+			drm_dbg_kms(&dev_priv->drm,
+				    "[CRTC:%d:%s] sharing existing %s (crtc mask 0x%08x, active %x)\n",
+				    crtc->base.base.id, crtc->base.name,
+				    pll->info->name,
+				    shared_dpll[i].crtc_mask,
+				    pll->active_mask);
 			return pll;
 		}
 	}
 
 	/* Ok no matching timings, maybe there's a free one? */
 	if (unused_pll) {
-		DRM_DEBUG_KMS("[CRTC:%d:%s] allocated %s\n",
-			      crtc->base.base.id, crtc->base.name,
-			      unused_pll->info->name);
+		drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] allocated %s\n",
+			    crtc->base.base.id, crtc->base.name,
+			    unused_pll->info->name);
 		return unused_pll;
 	}
 
@@ -297,6 +300,7 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
 			    const struct intel_shared_dpll *pll,
 			    const struct intel_dpll_hw_state *pll_state)
 {
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_shared_dpll_state *shared_dpll;
 	const enum intel_dpll_id id = pll->info->id;
 
@@ -305,8 +309,8 @@ intel_reference_shared_dpll(struct intel_atomic_state *state,
 	if (shared_dpll[id].crtc_mask == 0)
 		shared_dpll[id].hw_state = *pll_state;
 
-	DRM_DEBUG_DRIVER("using %s for pipe %c\n", pll->info->name,
-			 pipe_name(crtc->pipe));
+	drm_dbg(&i915->drm, "using %s for pipe %c\n", pll->info->name,
+		pipe_name(crtc->pipe));
 
 	shared_dpll[id].crtc_mask |= 1 << crtc->pipe;
 }
@@ -459,9 +463,10 @@ static bool ibx_get_dpll(struct intel_atomic_state *state,
 		i = (enum intel_dpll_id) crtc->pipe;
 		pll = &dev_priv->shared_dplls[i];
 
-		DRM_DEBUG_KMS("[CRTC:%d:%s] using pre-allocated %s\n",
-			      crtc->base.base.id, crtc->base.name,
-			      pll->info->name);
+		drm_dbg_kms(&dev_priv->drm,
+			    "[CRTC:%d:%s] using pre-allocated %s\n",
+			    crtc->base.base.id, crtc->base.name,
+			    pll->info->name);
 	} else {
 		pll = intel_find_shared_dpll(state, crtc,
 					     &crtc_state->dpll_hw_state,
@@ -484,12 +489,13 @@ static bool ibx_get_dpll(struct intel_atomic_state *state,
 static void ibx_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	DRM_DEBUG_KMS("dpll_hw_state: dpll: 0x%x, dpll_md: 0x%x, "
-		      "fp0: 0x%x, fp1: 0x%x\n",
-		      hw_state->dpll,
-		      hw_state->dpll_md,
-		      hw_state->fp0,
-		      hw_state->fp1);
+	drm_dbg_kms(&dev_priv->drm,
+		    "dpll_hw_state: dpll: 0x%x, dpll_md: 0x%x, "
+		    "fp0: 0x%x, fp1: 0x%x\n",
+		    hw_state->dpll,
+		    hw_state->dpll_md,
+		    hw_state->fp0,
+		    hw_state->fp1);
 }
 
 static const struct intel_shared_dpll_funcs ibx_pch_dpll_funcs = {
@@ -858,7 +864,8 @@ hsw_ddi_dp_get_dpll(struct intel_crtc_state *crtc_state)
 		pll_id = DPLL_ID_LCPLL_2700;
 		break;
 	default:
-		DRM_DEBUG_KMS("Invalid clock for DP: %d\n", clock);
+		drm_dbg_kms(&dev_priv->drm, "Invalid clock for DP: %d\n",
+			    clock);
 		return NULL;
 	}
 
@@ -913,8 +920,8 @@ static bool hsw_get_dpll(struct intel_atomic_state *state,
 static void hsw_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	DRM_DEBUG_KMS("dpll_hw_state: wrpll: 0x%x spll: 0x%x\n",
-		      hw_state->wrpll, hw_state->spll);
+	drm_dbg_kms(&dev_priv->drm, "dpll_hw_state: wrpll: 0x%x spll: 0x%x\n",
+		    hw_state->wrpll, hw_state->spll);
 }
 
 static const struct intel_shared_dpll_funcs hsw_ddi_wrpll_funcs = {
@@ -1018,7 +1025,7 @@ static void skl_ddi_pll_enable(struct drm_i915_private *dev_priv,
 		       intel_de_read(dev_priv, regs[id].ctl) | LCPLL_PLL_ENABLE);
 
 	if (intel_de_wait_for_set(dev_priv, DPLL_STATUS, DPLL_LOCK(id), 5))
-		DRM_ERROR("DPLL %d not locked\n", id);
+		drm_err(&dev_priv->drm, "DPLL %d not locked\n", id);
 }
 
 static void skl_ddi_dpll0_enable(struct drm_i915_private *dev_priv,
@@ -1442,19 +1449,22 @@ static bool skl_get_dpll(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll;
 	bool bret;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
 		bret = skl_ddi_hdmi_pll_dividers(crtc_state);
 		if (!bret) {
-			DRM_DEBUG_KMS("Could not get HDMI pll dividers.\n");
+			drm_dbg_kms(&i915->drm,
+				    "Could not get HDMI pll dividers.\n");
 			return false;
 		}
 	} else if (intel_crtc_has_dp_encoder(crtc_state)) {
 		bret = skl_ddi_dp_set_dpll_hw_state(crtc_state);
 		if (!bret) {
-			DRM_DEBUG_KMS("Could not set DP dpll HW state.\n");
+			drm_dbg_kms(&i915->drm,
+				    "Could not set DP dpll HW state.\n");
 			return false;
 		}
 	} else {
@@ -1485,7 +1495,7 @@ static bool skl_get_dpll(struct intel_atomic_state *state,
 static void skl_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	DRM_DEBUG_KMS("dpll_hw_state: "
+	drm_dbg_kms(&dev_priv->drm, "dpll_hw_state: "
 		      "ctrl1: 0x%x, cfgcr1: 0x%x, cfgcr2: 0x%x\n",
 		      hw_state->ctrl1,
 		      hw_state->cfgcr1,
@@ -1526,7 +1536,8 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
 
 		if (wait_for_us((intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) &
 				 PORT_PLL_POWER_STATE), 200))
-			DRM_ERROR("Power state not set for PLL:%d\n", port);
+			drm_err(&dev_priv->drm,
+				"Power state not set for PLL:%d\n", port);
 	}
 
 	/* Disable 10 bit clock */
@@ -1605,7 +1616,7 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
 
 	if (wait_for_us((intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) & PORT_PLL_LOCK),
 			200))
-		DRM_ERROR("PLL %d not locked\n", port);
+		drm_err(&dev_priv->drm, "PLL %d not locked\n", port);
 
 	if (IS_GEMINILAKE(dev_priv)) {
 		temp = intel_de_read(dev_priv, BXT_PORT_TX_DW5_LN0(phy, ch));
@@ -1642,7 +1653,8 @@ static void bxt_ddi_pll_disable(struct drm_i915_private *dev_priv,
 
 		if (wait_for_us(!(intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) &
 				  PORT_PLL_POWER_STATE), 200))
-			DRM_ERROR("Power state not reset for PLL:%d\n", port);
+			drm_err(&dev_priv->drm,
+				"Power state not reset for PLL:%d\n", port);
 	}
 }
 
@@ -1711,9 +1723,11 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	hw_state->pcsdw12 = intel_de_read(dev_priv,
 					  BXT_PORT_PCS_DW12_LN01(phy, ch));
 	if (intel_de_read(dev_priv, BXT_PORT_PCS_DW12_LN23(phy, ch)) != hw_state->pcsdw12)
-		DRM_DEBUG_DRIVER("lane stagger config different for lane 01 (%08x) and 23 (%08x)\n",
-				 hw_state->pcsdw12,
-				 intel_de_read(dev_priv, BXT_PORT_PCS_DW12_LN23(phy, ch)));
+		drm_dbg(&dev_priv->drm,
+			"lane stagger config different for lane 01 (%08x) and 23 (%08x)\n",
+			hw_state->pcsdw12,
+			intel_de_read(dev_priv,
+				      BXT_PORT_PCS_DW12_LN23(phy, ch)));
 	hw_state->pcsdw12 &= LANE_STAGGER_MASK | LANESTAGGER_STRAP_OVRD;
 
 	ret = true;
@@ -1752,6 +1766,7 @@ static bool
 bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
 			  struct bxt_clk_div *clk_div)
 {
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct dpll best_clock;
 
@@ -1761,9 +1776,9 @@ bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
 	 * i9xx_crtc_compute_clock
 	 */
 	if (!bxt_find_best_dpll(crtc_state, &best_clock)) {
-		DRM_DEBUG_DRIVER("no PLL dividers found for clock %d pipe %c\n",
-				 crtc_state->port_clock,
-				 pipe_name(crtc->pipe));
+		drm_dbg(&i915->drm, "no PLL dividers found for clock %d pipe %c\n",
+			crtc_state->port_clock,
+			pipe_name(crtc->pipe));
 		return false;
 	}
 
@@ -1800,6 +1815,7 @@ static void bxt_ddi_dp_pll_dividers(struct intel_crtc_state *crtc_state,
 static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 				      const struct bxt_clk_div *clk_div)
 {
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	struct intel_dpll_hw_state *dpll_hw_state = &crtc_state->dpll_hw_state;
 	int clock = crtc_state->port_clock;
 	int vco = clk_div->vco;
@@ -1825,7 +1841,7 @@ static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 		gain_ctl = 1;
 		targ_cnt = 9;
 	} else {
-		DRM_ERROR("Invalid VCO\n");
+		drm_err(&i915->drm, "Invalid VCO\n");
 		return false;
 	}
 
@@ -1908,8 +1924,8 @@ static bool bxt_get_dpll(struct intel_atomic_state *state,
 	id = (enum intel_dpll_id) encoder->port;
 	pll = intel_get_shared_dpll_by_id(dev_priv, id);
 
-	DRM_DEBUG_KMS("[CRTC:%d:%s] using pre-allocated %s\n",
-		      crtc->base.base.id, crtc->base.name, pll->info->name);
+	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] using pre-allocated %s\n",
+		    crtc->base.base.id, crtc->base.name, pll->info->name);
 
 	intel_reference_shared_dpll(state, crtc,
 				    pll, &crtc_state->dpll_hw_state);
@@ -1922,20 +1938,20 @@ static bool bxt_get_dpll(struct intel_atomic_state *state,
 static void bxt_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	DRM_DEBUG_KMS("dpll_hw_state: ebb0: 0x%x, ebb4: 0x%x,"
-		      "pll0: 0x%x, pll1: 0x%x, pll2: 0x%x, pll3: 0x%x, "
-		      "pll6: 0x%x, pll8: 0x%x, pll9: 0x%x, pll10: 0x%x, pcsdw12: 0x%x\n",
-		      hw_state->ebb0,
-		      hw_state->ebb4,
-		      hw_state->pll0,
-		      hw_state->pll1,
-		      hw_state->pll2,
-		      hw_state->pll3,
-		      hw_state->pll6,
-		      hw_state->pll8,
-		      hw_state->pll9,
-		      hw_state->pll10,
-		      hw_state->pcsdw12);
+	drm_dbg_kms(&dev_priv->drm, "dpll_hw_state: ebb0: 0x%x, ebb4: 0x%x,"
+		    "pll0: 0x%x, pll1: 0x%x, pll2: 0x%x, pll3: 0x%x, "
+		    "pll6: 0x%x, pll8: 0x%x, pll9: 0x%x, pll10: 0x%x, pcsdw12: 0x%x\n",
+		    hw_state->ebb0,
+		    hw_state->ebb4,
+		    hw_state->pll0,
+		    hw_state->pll1,
+		    hw_state->pll2,
+		    hw_state->pll3,
+		    hw_state->pll6,
+		    hw_state->pll8,
+		    hw_state->pll9,
+		    hw_state->pll10,
+		    hw_state->pcsdw12);
 }
 
 static const struct intel_shared_dpll_funcs bxt_ddi_pll_funcs = {
@@ -2032,7 +2048,7 @@ static void cnl_ddi_pll_enable(struct drm_i915_private *dev_priv,
 	/* 2. Wait for DPLL power state enabled in DPLL_ENABLE. */
 	if (intel_de_wait_for_set(dev_priv, CNL_DPLL_ENABLE(id),
 				  PLL_POWER_STATE, 5))
-		DRM_ERROR("PLL %d Power not enabled\n", id);
+		drm_err(&dev_priv->drm, "PLL %d Power not enabled\n", id);
 
 	/*
 	 * 3. Configure DPLL_CFGCR0 to set SSC enable/disable,
@@ -2069,7 +2085,7 @@ static void cnl_ddi_pll_enable(struct drm_i915_private *dev_priv,
 
 	/* 7. Wait for PLL lock status in DPLL_ENABLE. */
 	if (intel_de_wait_for_set(dev_priv, CNL_DPLL_ENABLE(id), PLL_LOCK, 5))
-		DRM_ERROR("PLL %d not locked\n", id);
+		drm_err(&dev_priv->drm, "PLL %d not locked\n", id);
 
 	/*
 	 * 8. If the frequency will result in a change to the voltage
@@ -2113,7 +2129,7 @@ static void cnl_ddi_pll_disable(struct drm_i915_private *dev_priv,
 
 	/* 4. Wait for PLL not locked status in DPLL_ENABLE. */
 	if (intel_de_wait_for_clear(dev_priv, CNL_DPLL_ENABLE(id), PLL_LOCK, 5))
-		DRM_ERROR("PLL %d locked\n", id);
+		drm_err(&dev_priv->drm, "PLL %d locked\n", id);
 
 	/*
 	 * 5. If the frequency will result in a change to the voltage
@@ -2132,7 +2148,7 @@ static void cnl_ddi_pll_disable(struct drm_i915_private *dev_priv,
 	/* 7. Wait for DPLL power state disabled in DPLL_ENABLE. */
 	if (intel_de_wait_for_clear(dev_priv, CNL_DPLL_ENABLE(id),
 				    PLL_POWER_STATE, 5))
-		DRM_ERROR("PLL %d Power not disabled\n", id);
+		drm_err(&dev_priv->drm, "PLL %d Power not disabled\n", id);
 }
 
 static bool cnl_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
@@ -2397,24 +2413,28 @@ static bool cnl_get_dpll(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	struct intel_shared_dpll *pll;
 	bool bret;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
 		bret = cnl_ddi_hdmi_pll_dividers(crtc_state);
 		if (!bret) {
-			DRM_DEBUG_KMS("Could not get HDMI pll dividers.\n");
+			drm_dbg_kms(&i915->drm,
+				    "Could not get HDMI pll dividers.\n");
 			return false;
 		}
 	} else if (intel_crtc_has_dp_encoder(crtc_state)) {
 		bret = cnl_ddi_dp_set_dpll_hw_state(crtc_state);
 		if (!bret) {
-			DRM_DEBUG_KMS("Could not set DP dpll HW state.\n");
+			drm_dbg_kms(&i915->drm,
+				    "Could not set DP dpll HW state.\n");
 			return false;
 		}
 	} else {
-		DRM_DEBUG_KMS("Skip DPLL setup for output_types 0x%x\n",
-			      crtc_state->output_types);
+		drm_dbg_kms(&i915->drm,
+			    "Skip DPLL setup for output_types 0x%x\n",
+			    crtc_state->output_types);
 		return false;
 	}
 
@@ -2424,7 +2444,7 @@ static bool cnl_get_dpll(struct intel_atomic_state *state,
 				     BIT(DPLL_ID_SKL_DPLL1) |
 				     BIT(DPLL_ID_SKL_DPLL0));
 	if (!pll) {
-		DRM_DEBUG_KMS("No PLL selected\n");
+		drm_dbg_kms(&i915->drm, "No PLL selected\n");
 		return false;
 	}
 
@@ -2439,10 +2459,10 @@ static bool cnl_get_dpll(struct intel_atomic_state *state,
 static void cnl_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	DRM_DEBUG_KMS("dpll_hw_state: "
-		      "cfgcr0: 0x%x, cfgcr1: 0x%x\n",
-		      hw_state->cfgcr0,
-		      hw_state->cfgcr1);
+	drm_dbg_kms(&dev_priv->drm, "dpll_hw_state: "
+		    "cfgcr0: 0x%x, cfgcr1: 0x%x\n",
+		    hw_state->cfgcr0,
+		    hw_state->cfgcr1);
 }
 
 static const struct intel_shared_dpll_funcs cnl_ddi_pll_funcs = {
@@ -2763,7 +2783,8 @@ static bool icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 
 	if (!icl_mg_pll_find_divisors(clock, is_dp, use_ssc, &dco_khz,
 				      pll_state, is_dkl)) {
-		DRM_DEBUG_KMS("Failed to find divisors for clock %d\n", clock);
+		drm_dbg_kms(&dev_priv->drm,
+			    "Failed to find divisors for clock %d\n", clock);
 		return false;
 	}
 
@@ -2776,8 +2797,9 @@ static bool icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 		}
 
 		if (m2div_int > 255) {
-			DRM_DEBUG_KMS("Failed to find mdiv for clock %d\n",
-				      clock);
+			drm_dbg_kms(&dev_priv->drm,
+				    "Failed to find mdiv for clock %d\n",
+				    clock);
 			return false;
 		}
 	}
@@ -2998,7 +3020,8 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 	unsigned long dpll_mask;
 
 	if (!icl_calc_dpll_state(crtc_state, encoder, &port_dpll->hw_state)) {
-		DRM_DEBUG_KMS("Could not calculate combo PHY PLL state.\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Could not calculate combo PHY PLL state.\n");
 
 		return false;
 	}
@@ -3015,8 +3038,9 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 						&port_dpll->hw_state,
 						dpll_mask);
 	if (!port_dpll->pll) {
-		DRM_DEBUG_KMS("No combo PHY PLL found for [ENCODER:%d:%s]\n",
-			      encoder->base.base.id, encoder->base.name);
+		drm_dbg_kms(&dev_priv->drm,
+			    "No combo PHY PLL found for [ENCODER:%d:%s]\n",
+			    encoder->base.base.id, encoder->base.name);
 		return false;
 	}
 
@@ -3040,7 +3064,8 @@ static bool icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
 	if (!icl_calc_dpll_state(crtc_state, encoder, &port_dpll->hw_state)) {
-		DRM_DEBUG_KMS("Could not calculate TBT PLL state.\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Could not calculate TBT PLL state.\n");
 		return false;
 	}
 
@@ -3048,7 +3073,7 @@ static bool icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 						&port_dpll->hw_state,
 						BIT(DPLL_ID_ICL_TBTPLL));
 	if (!port_dpll->pll) {
-		DRM_DEBUG_KMS("No TBT-ALT PLL found\n");
+		drm_dbg_kms(&dev_priv->drm, "No TBT-ALT PLL found\n");
 		return false;
 	}
 	intel_reference_shared_dpll(state, crtc,
@@ -3057,7 +3082,8 @@ static bool icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 
 	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
 	if (!icl_calc_mg_pll_state(crtc_state, &port_dpll->hw_state)) {
-		DRM_DEBUG_KMS("Could not calculate MG PHY PLL state.\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Could not calculate MG PHY PLL state.\n");
 		goto err_unreference_tbt_pll;
 	}
 
@@ -3067,7 +3093,7 @@ static bool icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 						&port_dpll->hw_state,
 						BIT(dpll_id));
 	if (!port_dpll->pll) {
-		DRM_DEBUG_KMS("No MG PHY PLL found\n");
+		drm_dbg_kms(&dev_priv->drm, "No MG PHY PLL found\n");
 		goto err_unreference_tbt_pll;
 	}
 	intel_reference_shared_dpll(state, crtc,
@@ -3491,7 +3517,8 @@ static void icl_pll_power_enable(struct drm_i915_private *dev_priv,
 	 * immediate.
 	 */
 	if (intel_de_wait_for_set(dev_priv, enable_reg, PLL_POWER_STATE, 1))
-		DRM_ERROR("PLL %d Power not enabled\n", pll->info->id);
+		drm_err(&dev_priv->drm, "PLL %d Power not enabled\n",
+			pll->info->id);
 }
 
 static void icl_pll_enable(struct drm_i915_private *dev_priv,
@@ -3506,7 +3533,7 @@ static void icl_pll_enable(struct drm_i915_private *dev_priv,
 
 	/* Timeout is actually 600us. */
 	if (intel_de_wait_for_set(dev_priv, enable_reg, PLL_LOCK, 1))
-		DRM_ERROR("PLL %d not locked\n", pll->info->id);
+		drm_err(&dev_priv->drm, "PLL %d not locked\n", pll->info->id);
 }
 
 static void combo_pll_enable(struct drm_i915_private *dev_priv,
@@ -3604,7 +3631,7 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
 
 	/* Timeout is actually 1us. */
 	if (intel_de_wait_for_clear(dev_priv, enable_reg, PLL_LOCK, 1))
-		DRM_ERROR("PLL %d locked\n", pll->info->id);
+		drm_err(&dev_priv->drm, "PLL %d locked\n", pll->info->id);
 
 	/* DVFS post sequence would be here. See the comment above. */
 
@@ -3617,7 +3644,8 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
 	 * immediate.
 	 */
 	if (intel_de_wait_for_clear(dev_priv, enable_reg, PLL_POWER_STATE, 1))
-		DRM_ERROR("PLL %d Power not disabled\n", pll->info->id);
+		drm_err(&dev_priv->drm, "PLL %d Power not disabled\n",
+			pll->info->id);
 }
 
 static void combo_pll_disable(struct drm_i915_private *dev_priv,
@@ -3656,23 +3684,24 @@ static void mg_pll_disable(struct drm_i915_private *dev_priv,
 static void icl_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
-	DRM_DEBUG_KMS("dpll_hw_state: cfgcr0: 0x%x, cfgcr1: 0x%x, "
-		      "mg_refclkin_ctl: 0x%x, hg_clktop2_coreclkctl1: 0x%x, "
-		      "mg_clktop2_hsclkctl: 0x%x, mg_pll_div0: 0x%x, "
-		      "mg_pll_div2: 0x%x, mg_pll_lf: 0x%x, "
-		      "mg_pll_frac_lock: 0x%x, mg_pll_ssc: 0x%x, "
-		      "mg_pll_bias: 0x%x, mg_pll_tdc_coldst_bias: 0x%x\n",
-		      hw_state->cfgcr0, hw_state->cfgcr1,
-		      hw_state->mg_refclkin_ctl,
-		      hw_state->mg_clktop2_coreclkctl1,
-		      hw_state->mg_clktop2_hsclkctl,
-		      hw_state->mg_pll_div0,
-		      hw_state->mg_pll_div1,
-		      hw_state->mg_pll_lf,
-		      hw_state->mg_pll_frac_lock,
-		      hw_state->mg_pll_ssc,
-		      hw_state->mg_pll_bias,
-		      hw_state->mg_pll_tdc_coldst_bias);
+	drm_dbg_kms(&dev_priv->drm,
+		    "dpll_hw_state: cfgcr0: 0x%x, cfgcr1: 0x%x, "
+		    "mg_refclkin_ctl: 0x%x, hg_clktop2_coreclkctl1: 0x%x, "
+		    "mg_clktop2_hsclkctl: 0x%x, mg_pll_div0: 0x%x, "
+		    "mg_pll_div2: 0x%x, mg_pll_lf: 0x%x, "
+		    "mg_pll_frac_lock: 0x%x, mg_pll_ssc: 0x%x, "
+		    "mg_pll_bias: 0x%x, mg_pll_tdc_coldst_bias: 0x%x\n",
+		    hw_state->cfgcr0, hw_state->cfgcr1,
+		    hw_state->mg_refclkin_ctl,
+		    hw_state->mg_clktop2_coreclkctl1,
+		    hw_state->mg_clktop2_hsclkctl,
+		    hw_state->mg_pll_div0,
+		    hw_state->mg_pll_div1,
+		    hw_state->mg_pll_lf,
+		    hw_state->mg_pll_frac_lock,
+		    hw_state->mg_pll_ssc,
+		    hw_state->mg_pll_bias,
+		    hw_state->mg_pll_tdc_coldst_bias);
 }
 
 static const struct intel_shared_dpll_funcs combo_pll_funcs = {
@@ -3891,7 +3920,7 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
  * @dev_priv: i915 drm device
  * @hw_state: hw state to be written to the log
  *
- * Write the relevant values in @hw_state to dmesg using DRM_DEBUG_KMS.
+ * Write the relevant values in @hw_state to dmesg using drm_dbg_kms.
  */
 void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
@@ -3902,11 +3931,12 @@ void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
 		/* fallback for platforms that don't use the shared dpll
 		 * infrastructure
 		 */
-		DRM_DEBUG_KMS("dpll_hw_state: dpll: 0x%x, dpll_md: 0x%x, "
-			      "fp0: 0x%x, fp1: 0x%x\n",
-			      hw_state->dpll,
-			      hw_state->dpll_md,
-			      hw_state->fp0,
-			      hw_state->fp1);
+		drm_dbg_kms(&dev_priv->drm,
+			    "dpll_hw_state: dpll: 0x%x, dpll_md: 0x%x, "
+			    "fp0: 0x%x, fp1: 0x%x\n",
+			    hw_state->dpll,
+			    hw_state->dpll_md,
+			    hw_state->fp0,
+			    hw_state->fp1);
 	}
 }
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
