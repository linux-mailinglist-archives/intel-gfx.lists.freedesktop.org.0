Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAD14E7394
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 13:32:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB3AE10E70B;
	Fri, 25 Mar 2022 12:32:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A432410E8F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 12:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648211566; x=1679747566;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zdtvYzeYYAGv+v0ndbqfllaov9eGW33GmUnS2LlsNpM=;
 b=D14qb42p+pZ9xLjilDk5hphjW/fxMqai9uP/eGqzxNo9FyBYAb0gsW6p
 Fs6HKGhaxW+5YM7uyx5UB2xQzu6S4Z7sM86R4lmhiSQZg3xoDVv77vi+C
 d+BtbfwCmxDIVlIl5m5zwKsd4WEbxSkdkohvreV9RXDoFPEu0GvHKjGHC
 2ZbED7OlHqULPAyXPxVDQg1GQuCkQxyAm+624NbtW3Q8wM3iv+pBWZBA5
 s1+zex/99+an8iZt3Pz7mndVHDy1xBAd5wnlKkvpyrq74F6zILOwoPMQe
 1HIK88HCm6n/CF1bQtEfifDifgpfUadnTzGc68N2YcXgiT3E4dAZxyseG A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="257451481"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="257451481"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 05:32:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="516532842"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga002.jf.intel.com with SMTP; 25 Mar 2022 05:32:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Mar 2022 14:32:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Mar 2022 14:32:05 +0200
Message-Id: <20220325123205.22140-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/13] drm/i915: Reassign DPLLs only for crtcs
 going throug .compute_config()
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

Only reassign the pipe's DPLL if it's going through a full
.compute_config() cycle. If OTOH it's just getting modeset
eg. in order to change cdclk there doesn't seem much point in
picking a new DPLL for it.

This should also prevent .get_dplls() from seeing a funky port_clock
for DP even in cases where the readout produces a non-standard
clock and we (for some reason) have decided to not fully recompute
the state to remedy the situation.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 17 +----------------
 drivers/gpu/drm/i915/display/intel_dpll.c    |  6 ++----
 2 files changed, 3 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f6db0bd2da6f..41442a1635d9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7050,20 +7050,6 @@ intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-static void intel_modeset_clear_plls(struct intel_atomic_state *state)
-{
-	struct intel_crtc_state *new_crtc_state;
-	struct intel_crtc *crtc;
-	int i;
-
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
-		if (!intel_crtc_needs_modeset(new_crtc_state))
-			continue;
-
-		intel_release_shared_dplls(state, crtc);
-	}
-}
-
 /*
  * This implements the workaround described in the "notes" section of the mode
  * set sequence documentation. When going from no pipes or single pipe to
@@ -7897,6 +7883,7 @@ static int intel_atomic_check(struct drm_device *dev,
 			if (ret)
 				goto fail;
 
+			intel_release_shared_dplls(state, crtc);
 			continue;
 		}
 
@@ -7944,8 +7931,6 @@ static int intel_atomic_check(struct drm_device *dev,
 		ret = intel_modeset_calc_cdclk(state);
 		if (ret)
 			return ret;
-
-		intel_modeset_clear_plls(state);
 	}
 
 	ret = intel_atomic_check_crtcs(state);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index cbb444a2ba9d..23b3171bd0d6 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1443,11 +1443,9 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	int ret;
 
 	drm_WARN_ON(&i915->drm, !intel_crtc_needs_modeset(crtc_state));
+	drm_WARN_ON(&i915->drm, !crtc_state->hw.enable && crtc_state->shared_dpll);
 
-	if (drm_WARN_ON(&i915->drm, crtc_state->shared_dpll))
-		return 0;
-
-	if (!crtc_state->hw.enable)
+	if (!crtc_state->hw.enable || crtc_state->shared_dpll)
 		return 0;
 
 	if (!i915->dpll_funcs->crtc_get_shared_dpll)
-- 
2.34.1

