Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37678A436FB
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 09:09:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D134710E5A7;
	Tue, 25 Feb 2025 08:09:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D/cw4npf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9558510E5A7;
 Tue, 25 Feb 2025 08:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740470988; x=1772006988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CRw+5e4wMIY68FQ/JmtEzb7OdDSMTMHcT9ReAqBkgAE=;
 b=D/cw4npfMGpsUKvmF6ubJ4h1Wp2caX65arVCJ2R7mThW9DJaU/41H7TZ
 bSzRtzhOMsfj//E2XYYlDv6/Yvvgi4LEVLPwq8hH3Y6qDAjimT6vbgJGq
 3c/qjMmPzHdevd2J2KczktowvMqadQDxvsxnT3a3xo63ryLtajV4iafGQ
 CFvUzcXbNmBcIwO8cTbdpxRLFEb3ihiMsdoXW/bSCta2IBcGs4FVgBBfY
 zkwK9K0jXj2X+ARJcwSuuUt5tyWWPV+wuhCrjGf6KfeqUUq+4lCiRRJCe
 VL+QZTNOZXmfTiSjxw++qEsFJnu5tmW3fdpQ25VmYuRta4LV+X5f/Og69 w==;
X-CSE-ConnectionGUID: nfuymi6cQMSE8fH+5DnMbQ==
X-CSE-MsgGUID: 261NGK3VSCSVQdxORSSMRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="66634547"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="66634547"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:09:47 -0800
X-CSE-ConnectionGUID: QFFqWLAURNa+dgVr7AV/fQ==
X-CSE-MsgGUID: rqcyPoySQlO9ZVJFBUvDcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="116519374"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 25 Feb 2025 00:09:45 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, mika.kahola@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 06/11] drm/i915/dpll: Rename crtc_get_shared_dpll
Date: Tue, 25 Feb 2025 13:39:22 +0530
Message-Id: <20250225080927.157437-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250225080927.157437-1-suraj.kandpal@intel.com>
References: <20250225080927.157437-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Rename crtc_get_shared_dpll to take into the individual PLL framework
which came in at DISPLAY_VER >= 14.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c    | 16 ++++++++--------
 drivers/gpu/drm/i915/display/intel_dpll.h    |  2 +-
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 36e365cdb33f..8f6f787a911d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4387,7 +4387,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		crtc_state->update_wm_post = true;
 
 	if (intel_crtc_needs_modeset(crtc_state)) {
-		ret = intel_dpll_crtc_get_shared_dpll(state, crtc);
+		ret = intel_dpll_crtc_get_global_dpll(state, crtc);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 78cdbd54a5ba..3653839d531d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -27,7 +27,7 @@
 struct intel_dpll_funcs {
 	int (*crtc_compute_clock)(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
-	int (*crtc_get_shared_dpll)(struct intel_atomic_state *state,
+	int (*crtc_get_global_dpll)(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc);
 };
 
@@ -1183,7 +1183,7 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
-static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
+static int hsw_crtc_get_global_dpll(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
@@ -1416,7 +1416,7 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 	return ret;
 }
 
-static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
+static int ilk_crtc_get_global_dpll(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *crtc_state =
@@ -1716,12 +1716,12 @@ static const struct intel_dpll_funcs dg2_dpll_funcs = {
 
 static const struct intel_dpll_funcs hsw_dpll_funcs = {
 	.crtc_compute_clock = hsw_crtc_compute_clock,
-	.crtc_get_shared_dpll = hsw_crtc_get_shared_dpll,
+	.crtc_get_global_dpll = hsw_crtc_get_global_dpll,
 };
 
 static const struct intel_dpll_funcs ilk_dpll_funcs = {
 	.crtc_compute_clock = ilk_crtc_compute_clock,
-	.crtc_get_shared_dpll = ilk_crtc_get_shared_dpll,
+	.crtc_get_global_dpll = ilk_crtc_get_global_dpll,
 };
 
 static const struct intel_dpll_funcs chv_dpll_funcs = {
@@ -1774,7 +1774,7 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
-int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
+int intel_dpll_crtc_get_global_dpll(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
@@ -1788,10 +1788,10 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	if (!crtc_state->hw.enable || crtc_state->global_dpll)
 		return 0;
 
-	if (!i915->display.funcs.dpll->crtc_get_shared_dpll)
+	if (!i915->display.funcs.dpll->crtc_get_global_dpll)
 		return 0;
 
-	ret = i915->display.funcs.dpll->crtc_get_shared_dpll(state, crtc);
+	ret = i915->display.funcs.dpll->crtc_get_global_dpll(state, crtc);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] Couldn't get a shared DPLL\n",
 			    crtc->base.base.id, crtc->base.name);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
index 21d06cbd2ce7..b3ab01a2cb5c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll.h
@@ -20,7 +20,7 @@ enum pipe;
 void intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv);
 int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
-int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
+int intel_dpll_crtc_get_global_dpll(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc);
 int i9xx_calc_dpll_params(int refclk, struct dpll *clock);
 u32 i9xx_dpll_compute_fp(const struct dpll *dpll);
-- 
2.34.1

