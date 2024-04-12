Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B60048A35A7
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:27:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1962710F7AE;
	Fri, 12 Apr 2024 18:27:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tk8NFX19";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 506A010F7A8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946459; x=1744482459;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2lgFwamJO//za18il4LO8YNsUpP/LBP+byiFMW1+h+0=;
 b=Tk8NFX19ZFXEvW2JxNZv0rSvf2WHVfqsJ3of5lDELZJZq83aHeKSX0sx
 Muhwk2XXPj/GBfsRPiUn3isUmToSTNw+VZ8/r1BNnTeAaeRkMegrR0uS/
 LYvLXlkpG51TOLP5uJTa7kCwL9oNh2jdfT85FIkMAdcDyX7XaumPg5yn9
 ki9fp2v/5E/gAZmqLnt8rdmWxEJYxAlq8q6pU3VV/LNfn7oYapuJwoQCx
 7GnmZa0u/EgOhELDxONEFBpoevRTcR+YP6trQ6x9WCe0iH7R/Oj26DbaR
 tYnJWmn+q0qSVMHfQxsmBynQ/kpOlWLmIeg9bA+PIOgmsDOdZEOvmZwKv g==;
X-CSE-ConnectionGUID: F9hVuRo1T3+tDJID1uYirQ==
X-CSE-MsgGUID: t0rNx+r4SEGO2ZWXg/xyNg==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560565"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560565"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:39 -0700
X-CSE-ConnectionGUID: JMfpmIfkRnOpfRkNkzkWYg==
X-CSE-MsgGUID: +qRDGIwWQFGd8tsGisQWHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394772"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/18] drm/i915: Inline {i9xx,ilk}_update_pll_dividers()
Date: Fri, 12 Apr 2024 21:26:56 +0300
Message-ID: <20240412182703.19916-12-ville.syrjala@linux.intel.com>
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

Now that *_compute_dpll() are no longer a mess
{i9xx,ilk}_update_pll_dividers() don't serve any real
purpose anymore. Just inline them into the callers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 46 +++++++----------------
 1 file changed, 13 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 0625b9c436c2..43d36ea56798 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -988,26 +988,6 @@ static u32 pnv_dpll_compute_fp(const struct dpll *dpll)
 	return (1 << dpll->n) << 16 | dpll->m2;
 }
 
-static void i9xx_update_pll_dividers(struct intel_crtc_state *crtc_state,
-				     const struct dpll *clock,
-				     const struct dpll *reduced_clock)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	u32 fp, fp2;
-
-	if (IS_PINEVIEW(dev_priv)) {
-		fp = pnv_dpll_compute_fp(clock);
-		fp2 = pnv_dpll_compute_fp(reduced_clock);
-	} else {
-		fp = i9xx_dpll_compute_fp(clock);
-		fp2 = i9xx_dpll_compute_fp(reduced_clock);
-	}
-
-	crtc_state->dpll_hw_state.fp0 = fp;
-	crtc_state->dpll_hw_state.fp1 = fp2;
-}
-
 static u32 i965_dpll_md(const struct intel_crtc_state *crtc_state)
 {
 	return (crtc_state->pixel_multiplier - 1) << DPLL_MD_UDI_MULTIPLIER_SHIFT;
@@ -1090,7 +1070,13 @@ static void i9xx_compute_dpll(struct intel_crtc_state *crtc_state,
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	i9xx_update_pll_dividers(crtc_state, clock, reduced_clock);
+	if (IS_PINEVIEW(dev_priv)) {
+		crtc_state->dpll_hw_state.fp0 = pnv_dpll_compute_fp(clock);
+		crtc_state->dpll_hw_state.fp1 = pnv_dpll_compute_fp(reduced_clock);
+	} else {
+		crtc_state->dpll_hw_state.fp0 = i9xx_dpll_compute_fp(clock);
+		crtc_state->dpll_hw_state.fp1 = i9xx_dpll_compute_fp(reduced_clock);
+	}
 
 	crtc_state->dpll_hw_state.dpll = i9xx_dpll(crtc_state, clock, reduced_clock);
 
@@ -1150,7 +1136,8 @@ static void i8xx_compute_dpll(struct intel_crtc_state *crtc_state,
 			      const struct dpll *clock,
 			      const struct dpll *reduced_clock)
 {
-	i9xx_update_pll_dividers(crtc_state, clock, reduced_clock);
+	crtc_state->dpll_hw_state.fp0 = i9xx_dpll_compute_fp(clock);
+	crtc_state->dpll_hw_state.fp1 = i9xx_dpll_compute_fp(reduced_clock);
 
 	crtc_state->dpll_hw_state.dpll = i8xx_dpll(crtc_state, clock, reduced_clock);
 }
@@ -1271,16 +1258,6 @@ static u32 ilk_dpll_compute_fp(const struct dpll *clock, int factor)
 	return fp;
 }
 
-static void ilk_update_pll_dividers(struct intel_crtc_state *crtc_state,
-				    const struct dpll *clock,
-				    const struct dpll *reduced_clock)
-{
-	int factor = ilk_fb_cb_factor(crtc_state);
-
-	crtc_state->dpll_hw_state.fp0 = ilk_dpll_compute_fp(clock, factor);
-	crtc_state->dpll_hw_state.fp1 = ilk_dpll_compute_fp(reduced_clock, factor);
-}
-
 static u32 ilk_dpll(const struct intel_crtc_state *crtc_state,
 		    const struct dpll *clock,
 		    const struct dpll *reduced_clock)
@@ -1358,7 +1335,10 @@ static void ilk_compute_dpll(struct intel_crtc_state *crtc_state,
 			     const struct dpll *clock,
 			     const struct dpll *reduced_clock)
 {
-	ilk_update_pll_dividers(crtc_state, clock, reduced_clock);
+	int factor = ilk_fb_cb_factor(crtc_state);
+
+	crtc_state->dpll_hw_state.fp0 = ilk_dpll_compute_fp(clock, factor);
+	crtc_state->dpll_hw_state.fp1 = ilk_dpll_compute_fp(reduced_clock, factor);
 
 	crtc_state->dpll_hw_state.dpll = ilk_dpll(crtc_state, clock, reduced_clock);
 }
-- 
2.43.2

