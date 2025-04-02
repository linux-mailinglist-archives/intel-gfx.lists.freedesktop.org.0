Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AADA789F5
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 10:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B03D10E6EB;
	Wed,  2 Apr 2025 08:32:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PTV0GJWm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE9EF10E6EB;
 Wed,  2 Apr 2025 08:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743582736; x=1775118736;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b1fCHdtZ2KNFkYWvZt1FSD/NFQgvjo+NEzIYZ6O8atY=;
 b=PTV0GJWmYSuM0qUjFB1C5OfKsMt8fcryp+22YBVCHOMbZpp5VAZK0GHG
 oSYxJt22nWE464C9NVg2GWt3u+E2oTyLTepQFQW4o36zUWkuy85m4BKAc
 M/UUrdqssiAF3UwmykOu+w75O7FCCYD2Vf1fiU6+ej8G4qBEFDRxvML0v
 GmGNcKA00ksAvd4a1dSwfcHwnoEgyn97BEd0W2SASy1JiENXHuI+Zk08c
 lxCDH/SO12odU56SRqaftDOivO+DMvm+tkC420N8hwm8XKgynsYNkEsm+
 iKIcNIm3fKvNwCwebin9LqYU7QN/2IOQd7Rv99GOl/7jPgr1N+o4+9liU g==;
X-CSE-ConnectionGUID: FEAbmrU9Que21XPec6I0Iw==
X-CSE-MsgGUID: aZtcv4LHQsqxQTliafXYew==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44828688"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="44828688"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 01:32:16 -0700
X-CSE-ConnectionGUID: ILr/TmWoTDmsybWJwAS1IQ==
X-CSE-MsgGUID: z5/CZW4BT7eqsevZR+B2Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="126612368"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2025 01:32:13 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 06/16] drm/i915/dpll: Rename crtc_get_shared_dpll
Date: Wed,  2 Apr 2025 14:01:54 +0530
Message-Id: <20250402083204.1523470-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250402083204.1523470-1-suraj.kandpal@intel.com>
References: <20250402083204.1523470-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c    | 16 ++++++++--------
 drivers/gpu/drm/i915/display/intel_dpll.h    |  2 +-
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 904b9544515b..0c77fb02c565 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4222,7 +4222,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		crtc_state->update_wm_post = true;
 
 	if (intel_crtc_needs_modeset(crtc_state)) {
-		ret = intel_dpll_crtc_get_shared_dpll(state, crtc);
+		ret = intel_dpll_crtc_get_dpll_global(state, crtc);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 04fb76a399ab..eac588566d7c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -27,7 +27,7 @@
 struct intel_dpll_funcs {
 	int (*crtc_compute_clock)(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
-	int (*crtc_get_shared_dpll)(struct intel_atomic_state *state,
+	int (*crtc_get_dpll_global)(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc);
 };
 
@@ -1177,7 +1177,7 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
-static int hsw_crtc_get_shared_dpll(struct intel_atomic_state *state,
+static int hsw_crtc_get_dpll_global(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
@@ -1407,7 +1407,7 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 	return ret;
 }
 
-static int ilk_crtc_get_shared_dpll(struct intel_atomic_state *state,
+static int ilk_crtc_get_dpll_global(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *crtc_state =
@@ -1703,12 +1703,12 @@ static const struct intel_dpll_funcs dg2_dpll_funcs = {
 
 static const struct intel_dpll_funcs hsw_dpll_funcs = {
 	.crtc_compute_clock = hsw_crtc_compute_clock,
-	.crtc_get_shared_dpll = hsw_crtc_get_shared_dpll,
+	.crtc_get_dpll_global = hsw_crtc_get_dpll_global,
 };
 
 static const struct intel_dpll_funcs ilk_dpll_funcs = {
 	.crtc_compute_clock = ilk_crtc_compute_clock,
-	.crtc_get_shared_dpll = ilk_crtc_get_shared_dpll,
+	.crtc_get_dpll_global = ilk_crtc_get_dpll_global,
 };
 
 static const struct intel_dpll_funcs chv_dpll_funcs = {
@@ -1761,7 +1761,7 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
-int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
+int intel_dpll_crtc_get_dpll_global(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
@@ -1775,10 +1775,10 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	if (!crtc_state->hw.enable || crtc_state->dpll_global)
 		return 0;
 
-	if (!display->funcs.dpll->crtc_get_shared_dpll)
+	if (!display->funcs.dpll->crtc_get_dpll_global)
 		return 0;
 
-	ret = display->funcs.dpll->crtc_get_shared_dpll(state, crtc);
+	ret = display->funcs.dpll->crtc_get_dpll_global(state, crtc);
 	if (ret) {
 		drm_dbg_kms(display->drm, "[CRTC:%d:%s] Couldn't get a shared DPLL\n",
 			    crtc->base.base.id, crtc->base.name);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
index 280e90a57c87..81c9249f293b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll.h
@@ -19,7 +19,7 @@ struct intel_dpll_hw_state;
 void intel_dpll_init_clock_hook(struct intel_display *display);
 int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
-int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
+int intel_dpll_crtc_get_dpll_global(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc);
 int i9xx_calc_dpll_params(int refclk, struct dpll *clock);
 u32 i9xx_dpll_compute_fp(const struct dpll *dpll);
-- 
2.34.1

