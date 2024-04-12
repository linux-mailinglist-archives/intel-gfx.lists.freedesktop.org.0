Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 283A38A35A1
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:27:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 173CE10F7A9;
	Fri, 12 Apr 2024 18:27:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OrNtzLjb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56EEC10F7A7
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946441; x=1744482441;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hIM33Unkr14ASOqf1TwTZXBnzscijUrB0I/5+8rS540=;
 b=OrNtzLjbqF+kvF0CxZv2raOvgeNNtKxeEMkKKS0JNfRQeuYi58YeB+xD
 DgiqkfzxYsnQIlTnBKzLLLY+gOaApf6ZPB7018y9kDEpXEPUf0qQ7w643
 q49jdEz8i0n00WTDHfdQBFxQzgw3Y4qiHWgsFvS0D6C/celjJAdxUJp+E
 eaqlNTMFwR3luV8knYsifoOL2FyhSp17edh99NDFegZHqMWi5ZFTXY7GK
 IzeLbakKEB0vbFfg+ileZ9oEZY4AiCKuwCqhvGH1EeyMkXkVN6MbYa4md
 w5Q8vwE8p3AMpIABm4iZVebB9haNj5+AXV7w7Ty3wFKk3AejU3uwD+gIs w==;
X-CSE-ConnectionGUID: 86A2rDg+Ra+AMAryygBcmA==
X-CSE-MsgGUID: PPeFDBdqQs+tZthtQuzIBQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560518"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560518"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:21 -0700
X-CSE-ConnectionGUID: zY6juaWQQg2bwKEusvG6lQ==
X-CSE-MsgGUID: hLGx3cmhQX+rTDcYTm1Rtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394568"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/18] drm/i915: Extract ilk_fb_cb_factor()
Date: Fri, 12 Apr 2024 21:26:50 +0300
Message-ID: <20240412182703.19916-6-ville.syrjala@linux.intel.com>
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

Pull the code to calculate PCH DPLL tuning factor
into its own function. Helps declutter ilk_update_pll_dividers().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 32 ++++++++++++-----------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 3038655377ea..3278ca7a3be0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1192,6 +1192,22 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
+static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
+	    ((intel_panel_use_ssc(i915) && i915->display.vbt.lvds_ssc_freq == 100000) ||
+	     (HAS_PCH_IBX(i915) && intel_is_dual_link_lvds(i915))))
+		return 25;
+
+	if (crtc_state->sdvo_tv_clock)
+		return 20;
+
+	return 21;
+}
+
 static bool ilk_needs_fb_cb_tune(const struct dpll *dpll, int factor)
 {
 	return dpll->m < factor * dpll->n;
@@ -1201,22 +1217,8 @@ static void ilk_update_pll_dividers(struct intel_crtc_state *crtc_state,
 				    const struct dpll *clock,
 				    const struct dpll *reduced_clock)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	int factor = ilk_fb_cb_factor(crtc_state);
 	u32 fp, fp2;
-	int factor;
-
-	/* Enable autotuning of the PLL clock (if permissible) */
-	factor = 21;
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
-		if ((intel_panel_use_ssc(dev_priv) &&
-		     dev_priv->display.vbt.lvds_ssc_freq == 100000) ||
-		    (HAS_PCH_IBX(dev_priv) &&
-		     intel_is_dual_link_lvds(dev_priv)))
-			factor = 25;
-	} else if (crtc_state->sdvo_tv_clock) {
-		factor = 20;
-	}
 
 	fp = i9xx_dpll_compute_fp(clock);
 	if (ilk_needs_fb_cb_tune(clock, factor))
-- 
2.43.2

