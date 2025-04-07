Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1123A7D770
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 10:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5271210E3C6;
	Mon,  7 Apr 2025 08:17:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IHsBzo00";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EEF110E3C3;
 Mon,  7 Apr 2025 08:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744013831; x=1775549831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U9p5Yp7YVy9tix8rQmKGKbMKzaa9RyR25jqEMTAcuRU=;
 b=IHsBzo00IaDg2DiUusSjnuwbYUkWhddZJsHzfMwiC+VKZWJNxU1fYEry
 tBNL+mOHPaAAjO3o71T1nnzjF2UiSR05pPkYqURMiRclLSXgrjFjbQupW
 jUr/NteQcy6gl2afS1rwlN5z7fYmCz8dKzPZ2oo39SFPVt7hQtIEkyr6G
 lx8WdmXtmnS+DGU+FO661gvLOF683egBkj87sbm95ZM0RMwMmhoJ+a2z1
 02t8N9x1Y3IL491sJgUc+ybzzLLT1DVzHLhRIJpbwXSyrDsKAlnFji3Tf
 VKDAbaKtS+am6e6+XuM6vSqE34q35ojwKVZ4uITJySpPfgeQJKa0O8yL1 Q==;
X-CSE-ConnectionGUID: GQV7SkjISF2F0/Zkur4q8g==
X-CSE-MsgGUID: B6387liiQEG4uKZ6Fcfo0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="56755777"
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="56755777"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 01:17:10 -0700
X-CSE-ConnectionGUID: tIGS8Mx+TNytzY8HdpwA6g==
X-CSE-MsgGUID: XGq535w5T9SmcsqsDyuBlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="127728031"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 07 Apr 2025 01:17:08 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 08/18] drm/i915/dpll: Rename crtc_get_shared_dpll
Date: Mon,  7 Apr 2025 13:46:44 +0530
Message-Id: <20250407081654.2013680-9-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250407081654.2013680-1-suraj.kandpal@intel.com>
References: <20250407081654.2013680-1-suraj.kandpal@intel.com>
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

--v2
-Change naming to dpll_global to keep consistency with rest of the
naming

--v3
-Just use intel_dpll [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c    | 24 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_dpll.h    |  4 ++--
 3 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 52979c288501..96b823f4ea5a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4222,7 +4222,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		crtc_state->update_wm_post = true;
 
 	if (intel_crtc_needs_modeset(crtc_state)) {
-		ret = intel_dpll_crtc_get_shared_dpll(state, crtc);
+		ret = intel_dpll_crtc_get_dpll(state, crtc);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index e4a40f2fd921..80f230c61888 100644
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
@@ -1177,8 +1177,8 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
-static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
-				    struct intel_crtc *crtc)
+static int hsw_crtc_get_dpll(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
@@ -1407,8 +1407,8 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 	return ret;
 }
 
-static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
-				    struct intel_crtc *crtc)
+static int ilk_crtc_get_dpll(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -1703,12 +1703,12 @@ static const struct intel_dpll_global_funcs dg2_dpll_funcs = {
 
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
@@ -1761,8 +1761,8 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
-int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
-				    struct intel_crtc *crtc)
+int intel_dpll_crtc_get_dpll(struct intel_atomic_state *state,
+			     struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
@@ -1775,10 +1775,10 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
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

