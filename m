Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7595D4E7389
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 13:32:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2DDE10E324;
	Fri, 25 Mar 2022 12:32:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DE2B10E70B
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 12:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648211540; x=1679747540;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6ZyKVE8lDxoMVuwwZSOruF8gaTAtuxcn6ODe1X74enY=;
 b=ez942OUAfVZVbXTAFF8mN8qekhMs/5b4BRm4i20S2mbMiHlWQdmKrVXx
 Q9PEgDlgdqSEMmjp210ou1SqJxvy4jOcF0NhMf98P1vCcYx0zy1LH65dL
 W5jcw7gjzZldpBDpwSmSVxgBD1W2rkN6P7z/WYXZ0LMvXQ+5JSp7fyZ3P
 L79eUCu8Dq5xcUg5ndJ7/DEI3yERqYKcOkMh++773oRx+nAdmToWsPYi9
 L0Sc6ARYkCCS/+h2vco2VJVcGDgGytliBdwdd+QQ9aUVJJB0Dxv/JKE1g
 00wTV8s2kA6ywIg4oDy7bTHcRaIkhEfTN10Tgtm0c43b2KKAwnD+gBZYP g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="319330507"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="319330507"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 05:32:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="638204094"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by FMSMGA003.fm.intel.com with SMTP; 25 Mar 2022 05:32:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Mar 2022 14:32:17 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Mar 2022 14:31:56 +0200
Message-Id: <20220325123205.22140-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/13] drm/i915: Adjust .crtc_compute_clock()
 calling convention
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

Pass the full atomic state+crtc rather than the redundant
crtc+crtc_state pair. We already need the full atomic state
in the hsw+ codepath anyway.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c    | 83 ++++++++++++--------
 drivers/gpu/drm/i915/display/intel_dpll.h    |  4 +-
 3 files changed, 53 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 57d9b065622f..bb1ababe4577 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5001,7 +5001,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 
 	if (mode_changed && crtc_state->hw.enable &&
 	    !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
-		ret = intel_dpll_crtc_compute_clock(crtc_state);
+		ret = intel_dpll_crtc_compute_clock(state, crtc);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 1bd4a05dff7c..1c05ec167046 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -18,7 +18,8 @@
 #include "vlv_sideband.h"
 
 struct intel_dpll_funcs {
-	int (*crtc_compute_clock)(struct intel_crtc_state *crtc_state);
+	int (*crtc_compute_clock)(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc);
 };
 
 struct intel_limit {
@@ -759,8 +760,8 @@ chv_find_best_dpll(const struct intel_limit *limit,
 bool bxt_find_best_dpll(struct intel_crtc_state *crtc_state,
 			struct dpll *best_clock)
 {
-	int refclk = 100000;
 	const struct intel_limit *limit = &intel_limits_bxt;
+	int refclk = 100000;
 
 	return chv_find_best_dpll(limit, crtc_state,
 				  crtc_state->port_clock, refclk,
@@ -927,12 +928,12 @@ static void i8xx_compute_dpll(struct intel_crtc_state *crtc_state,
 	crtc_state->dpll_hw_state.dpll = dpll;
 }
 
-static int hsw_crtc_compute_clock(struct intel_crtc_state *crtc_state)
+static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_atomic_state *state =
-		to_intel_atomic_state(crtc_state->uapi.state);
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder =
 		intel_get_crtc_new_encoder(state, crtc_state);
 	int ret;
@@ -1070,12 +1071,12 @@ static void ilk_compute_dpll(struct intel_crtc_state *crtc_state,
 	crtc_state->dpll_hw_state.dpll = dpll;
 }
 
-static int ilk_crtc_compute_clock(struct intel_crtc_state *crtc_state)
+static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_atomic_state *state =
-		to_intel_atomic_state(crtc_state->uapi.state);
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit;
 	int refclk = 120000;
 	int ret;
@@ -1167,11 +1168,14 @@ void chv_compute_dpll(struct intel_crtc_state *crtc_state)
 		(crtc_state->pixel_multiplier - 1) << DPLL_MD_UDI_MULTIPLIER_SHIFT;
 }
 
-static int chv_crtc_compute_clock(struct intel_crtc_state *crtc_state)
+static int chv_crtc_compute_clock(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
 {
-	int refclk = 100000;
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit = &intel_limits_chv;
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	int refclk = 100000;
 
 	memset(&crtc_state->dpll_hw_state, 0,
 	       sizeof(crtc_state->dpll_hw_state));
@@ -1188,11 +1192,14 @@ static int chv_crtc_compute_clock(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static int vlv_crtc_compute_clock(struct intel_crtc_state *crtc_state)
+static int vlv_crtc_compute_clock(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
 {
-	int refclk = 100000;
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit = &intel_limits_vlv;
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	int refclk = 100000;
 
 	memset(&crtc_state->dpll_hw_state, 0,
 	       sizeof(crtc_state->dpll_hw_state));
@@ -1209,10 +1216,12 @@ static int vlv_crtc_compute_clock(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static int g4x_crtc_compute_clock(struct intel_crtc_state *crtc_state)
+static int g4x_crtc_compute_clock(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit;
 	int refclk = 96000;
 
@@ -1255,10 +1264,12 @@ static int g4x_crtc_compute_clock(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static int pnv_crtc_compute_clock(struct intel_crtc_state *crtc_state)
+static int pnv_crtc_compute_clock(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit;
 	int refclk = 96000;
 
@@ -1292,10 +1303,12 @@ static int pnv_crtc_compute_clock(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static int i9xx_crtc_compute_clock(struct intel_crtc_state *crtc_state)
+static int i9xx_crtc_compute_clock(struct intel_atomic_state *state,
+				   struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit;
 	int refclk = 96000;
 
@@ -1329,10 +1342,12 @@ static int i9xx_crtc_compute_clock(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static int i8xx_crtc_compute_clock(struct intel_crtc_state *crtc_state)
+static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
+				   struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_limit *limit;
 	int refclk = 48000;
 
@@ -1400,12 +1415,12 @@ static const struct intel_dpll_funcs i8xx_dpll_funcs = {
 	.crtc_compute_clock = i8xx_crtc_compute_clock,
 };
 
-int intel_dpll_crtc_compute_clock(struct intel_crtc_state *crtc_state)
+int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 
-	return i915->dpll_funcs->crtc_compute_clock(crtc_state);
+	return i915->dpll_funcs->crtc_compute_clock(state, crtc);
 }
 
 void
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
index 69b06a9e473e..e9731b2dd01c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll.h
@@ -10,12 +10,14 @@
 
 struct dpll;
 struct drm_i915_private;
+struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 enum pipe;
 
 void intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv);
-int intel_dpll_crtc_compute_clock(struct intel_crtc_state *crtc_state);
+int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc);
 int vlv_calc_dpll_params(int refclk, struct dpll *clock);
 int pnv_calc_dpll_params(int refclk, struct dpll *clock);
 int i9xx_calc_dpll_params(int refclk, struct dpll *clock);
-- 
2.34.1

