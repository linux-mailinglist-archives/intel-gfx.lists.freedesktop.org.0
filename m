Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 692704E738F
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 13:32:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9E0210E70C;
	Fri, 25 Mar 2022 12:32:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8041410E677
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 12:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648211554; x=1679747554;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=j7Ai2F+ManssR8DbvCIQhTpX66Lngk059pFQphx3b6c=;
 b=ETMi6Vp3NawswjC5tU4ltSIfzOHz6DazoGjpvd2WoOqRWIsOT2SbpFfw
 YVMBH9I3M1dn7KD74IyNlJjzHxIu8u51wcxFe/Kw7RXuvG2ZZdWQpNDoy
 4cxRANwmZBjJV38JqW24s1crzK3fo+fT+gxDljxXF8s3klLaFrnI/Ecnq
 yXYp3y0TIdJTWmCI+zmZ+WWZOMAada/Fnp2N+4RAbL6HbL4Ac5mRHr8IR
 1z7SWguWze16z0WlHvZ3ffNDSfzcr+Dk6t/CdiM/kWUNK70mjXkq7SvNq
 DgbYf1/3jnCeYufLc72av8sJxokUK560eJ1rUaF633WHejA5eXn3hLyTX g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="345060224"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="345060224"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 05:32:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="561819681"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga008.jf.intel.com with SMTP; 25 Mar 2022 05:32:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Mar 2022 14:32:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Mar 2022 14:32:01 +0200
Message-Id: <20220325123205.22140-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/13] drm/i915: Add crtc .crtc_get_shared_dpll()
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

Start splitting the .compute_crtc_clock() into two parts; one
part does the computation, the second part does the shared dpll
assignment. I want to move the actual computation part much earlier
into the compute_config() phase.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  4 ++
 drivers/gpu/drm/i915/display/intel_dpll.c    | 54 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll.h    |  2 +
 3 files changed, 59 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7c68bc07c925..1b7bc764498c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5003,6 +5003,10 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		ret = intel_dpll_crtc_compute_clock(state, crtc);
 		if (ret)
 			return ret;
+
+		ret = intel_dpll_crtc_get_shared_dpll(state, crtc);
+		if (ret)
+			return ret;
 	}
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index bc59efe18e89..2ee7255f3c36 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -20,6 +20,8 @@
 struct intel_dpll_funcs {
 	int (*crtc_compute_clock)(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
+	int (*crtc_get_shared_dpll)(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc);
 };
 
 struct intel_limit {
@@ -930,6 +932,12 @@ static void i8xx_compute_dpll(struct intel_crtc_state *crtc_state,
 
 static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
+{
+	return 0;
+}
+
+static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
@@ -964,6 +972,12 @@ static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
 	return intel_mpllb_calc_state(crtc_state, encoder);
 }
 
+static int dg2_crtc_get_shared_dpll(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc)
+{
+	return 0;
+}
+
 static bool ilk_needs_fb_cb_tune(const struct dpll *dpll, int factor)
 {
 	return dpll->m < factor * dpll->n;
@@ -1087,7 +1101,6 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit;
 	int refclk = 120000;
-	int ret;
 
 	/* CPU eDP is the only output that doesn't need a PCH PLL of its own. */
 	if (!crtc_state->has_pch_encoder)
@@ -1127,6 +1140,21 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
 			 &crtc_state->dpll);
 
+	return 0;
+}
+
+static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	int ret;
+
+	/* CPU eDP is the only output that doesn't need a PCH PLL of its own. */
+	if (!crtc_state->has_pch_encoder)
+		return 0;
+
 	ret = intel_reserve_shared_dplls(state, crtc, NULL);
 	if (ret) {
 		drm_dbg_kms(&dev_priv->drm,
@@ -1372,14 +1400,17 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 
 static const struct intel_dpll_funcs dg2_dpll_funcs = {
 	.crtc_compute_clock = dg2_crtc_compute_clock,
+	.crtc_get_shared_dpll = dg2_crtc_get_shared_dpll,
 };
 
 static const struct intel_dpll_funcs hsw_dpll_funcs = {
 	.crtc_compute_clock = hsw_crtc_compute_clock,
+	.crtc_get_shared_dpll = hsw_crtc_get_shared_dpll,
 };
 
 static const struct intel_dpll_funcs ilk_dpll_funcs = {
 	.crtc_compute_clock = ilk_crtc_compute_clock,
+	.crtc_get_shared_dpll = ilk_crtc_get_shared_dpll,
 };
 
 static const struct intel_dpll_funcs chv_dpll_funcs = {
@@ -1427,6 +1458,27 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 	return i915->dpll_funcs->crtc_compute_clock(state, crtc);
 }
 
+int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	drm_WARN_ON(&i915->drm, !intel_crtc_needs_modeset(crtc_state));
+
+	if (drm_WARN_ON(&i915->drm, crtc_state->shared_dpll))
+		return 0;
+
+	if (!crtc_state->hw.enable)
+		return 0;
+
+	if (!i915->dpll_funcs->crtc_get_shared_dpll)
+		return 0;
+
+	return i915->dpll_funcs->crtc_get_shared_dpll(state, crtc);
+}
+
 void
 intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
index e9731b2dd01c..bbc30542f29f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll.h
@@ -18,6 +18,8 @@ enum pipe;
 void intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv);
 int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
+int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc);
 int vlv_calc_dpll_params(int refclk, struct dpll *clock);
 int pnv_calc_dpll_params(int refclk, struct dpll *clock);
 int i9xx_calc_dpll_params(int refclk, struct dpll *clock);
-- 
2.34.1

