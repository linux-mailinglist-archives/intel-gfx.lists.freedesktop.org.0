Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F9AAB7EAA
	for <lists+intel-gfx@lfdr.de>; Thu, 15 May 2025 09:18:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51B2E10E78A;
	Thu, 15 May 2025 07:18:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W+fg1R0s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACAD910E788;
 Thu, 15 May 2025 07:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747293530; x=1778829530;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d5XlVUENAZskNP9r/NM7t4HP1xGCOgsd/EFJbn5NVz4=;
 b=W+fg1R0sXqohdVgEau8pA3jQJfmaUKSqtViWO1+zdSgtCULxYTg1gqnn
 HLKZrwHNuwYRBFnRChkOHCBIebbfO4IKYEPmVpeJmNYWAbjLUquZsWgEp
 HOB2i+1T4EEO/4dOeDU/nUjda6276gJE9Tt0fBH6NMVYqREMehXrH+iMc
 D+V4ZOiIkCTuBqPv4gELYgDHwbestHWha7K7tG8s24cs8PqSNwA/YTFHR
 VtM1RTqSMw6WG1rhtxdTv+Kl3kRxwwFsny6zuRdW+aZ11UzGhHgeZy+ph
 kt6c49jBQj+Cf8M6sIar6IHnXrx59JkgTX30nFYxUB8r2X4Ws55K7fyTb g==;
X-CSE-ConnectionGUID: gk7QXqCXTXi59R9ucGLQ8A==
X-CSE-MsgGUID: SumwKWvYSjm0XKZ9sSfs3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="48901359"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="48901359"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 00:18:50 -0700
X-CSE-ConnectionGUID: n+VhvWVzSYa/HN/2ZpM/lw==
X-CSE-MsgGUID: jW3o4inEQxKm10ZeKjnLZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="142290371"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa003.fm.intel.com with ESMTP; 15 May 2025 00:18:47 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 08/14] drm/i915/dpll: Rename crtc_get_shared_dpll
Date: Thu, 15 May 2025 12:47:55 +0530
Message-Id: <20250515071801.2221120-9-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250515071801.2221120-1-suraj.kandpal@intel.com>
References: <20250515071801.2221120-1-suraj.kandpal@intel.com>
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
Also having shared dpll stuff also in intel_dpll.c is just confusing.

--v2
-Change naming to dpll_global to keep consistency with rest of the
naming

--v3
-Just use intel_dpll [Jani]

--v4
-Modify commit message [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c    | 24 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_dpll.h    |  4 ++--
 3 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 39ecd5e85416..3935508488e7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4225,7 +4225,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		crtc_state->update_wm_post = true;
 
 	if (intel_crtc_needs_modeset(crtc_state)) {
-		ret = intel_dpll_crtc_get_shared_dpll(state, crtc);
+		ret = intel_dpll_crtc_get_dpll(state, crtc);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index db67e92505d2..e25411c4171c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -27,8 +27,8 @@
 struct intel_dpll_global_funcs {
 	int (*crtc_compute_clock)(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
-	int (*crtc_get_shared_dpll)(struct intel_atomic_state *state,
-				    struct intel_crtc *crtc);
+	int (*crtc_get_dpll)(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc);
 };
 
 struct intel_limit {
@@ -1176,8 +1176,8 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
-static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
-				    struct intel_crtc *crtc)
+static int hsw_crtc_get_dpll(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
@@ -1404,8 +1404,8 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 	return ret;
 }
 
-static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
-				    struct intel_crtc *crtc)
+static int ilk_crtc_get_dpll(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -1700,12 +1700,12 @@ static const struct intel_dpll_global_funcs dg2_dpll_funcs = {
 
 static const struct intel_dpll_global_funcs hsw_dpll_funcs = {
 	.crtc_compute_clock = hsw_crtc_compute_clock,
-	.crtc_get_shared_dpll = hsw_crtc_get_shared_dpll,
+	.crtc_get_dpll = hsw_crtc_get_dpll,
 };
 
 static const struct intel_dpll_global_funcs ilk_dpll_funcs = {
 	.crtc_compute_clock = ilk_crtc_compute_clock,
-	.crtc_get_shared_dpll = ilk_crtc_get_shared_dpll,
+	.crtc_get_dpll = ilk_crtc_get_dpll,
 };
 
 static const struct intel_dpll_global_funcs chv_dpll_funcs = {
@@ -1758,8 +1758,8 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
-int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
-				    struct intel_crtc *crtc)
+int intel_dpll_crtc_get_dpll(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
@@ -1772,10 +1772,10 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	if (!crtc_state->hw.enable || crtc_state->intel_dpll)
 		return 0;
 
-	if (!display->funcs.dpll->crtc_get_shared_dpll)
+	if (!display->funcs.dpll->crtc_get_dpll)
 		return 0;
 
-	ret = display->funcs.dpll->crtc_get_shared_dpll(state, crtc);
+	ret = display->funcs.dpll->crtc_get_dpll(state, crtc);
 	if (ret) {
 		drm_dbg_kms(display->drm, "[CRTC:%d:%s] Couldn't get a shared DPLL\n",
 			    crtc->base.base.id, crtc->base.name);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
index 280e90a57c87..3444a2dd3166 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll.h
@@ -19,8 +19,8 @@ struct intel_dpll_hw_state;
 void intel_dpll_init_clock_hook(struct intel_display *display);
 int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
-int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
-				    struct intel_crtc *crtc);
+int intel_dpll_crtc_get_dpll(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc);
 int i9xx_calc_dpll_params(int refclk, struct dpll *clock);
 u32 i9xx_dpll_compute_fp(const struct dpll *dpll);
 void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
-- 
2.34.1

