Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F2054FC45
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 19:36:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17CFC10E4A3;
	Fri, 17 Jun 2022 17:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B923110E117
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 17:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655487404; x=1687023404;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a8KGq1+xWAS4YTLqEcN2VOVXZ01dOW+SqS/Gyugn/Gc=;
 b=AKoGziLb5aD7sOO62Duox0avWVEuw7D2vxETTCgBlE5OGVtARNTHg6F+
 HweYP3Qnf5VyJXJTMYBjcRsyZ8CDYjJuxoKDmeeDmPKa9qQYOkks8cKt0
 V1f5phZ/nFesfsclWjsf3Hvzi0pjuVnW/4grYK5Qd1T0P+i+zGcTnPHrA
 qtYX5aU+0oSC5awMN4eHVbC9CT5aNZspt1M2Pm90O768w31A3hrit1q+6
 cbhP2ukPi//Vu9N1DQPZwIG16Br4t4BvzyFhrnRf7YGxcnwcmhCTaJp0r
 wdSJM2zLWKO0Cxz+TRmoxU1v9dI2XDCyLAVAwVHfPo+0z3T3biY9rQreL A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="259945403"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="259945403"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 09:05:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="688343422"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga002.fm.intel.com with SMTP; 17 Jun 2022 09:05:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jun 2022 19:05:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 19:04:59 +0300
Message-Id: <20220617160510.2082-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
References: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/16] drm/i915: Reassign DPLLs only for
 crtcs going throug .compute_config()
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
Cc: Jani Nikula <jani.nikula@intel.com>
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 17 +----------------
 drivers/gpu/drm/i915/display/intel_dpll.c    |  6 ++----
 2 files changed, 3 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b8c0ede1f7fd..59dd66642c5f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6201,20 +6201,6 @@ intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
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
@@ -7048,6 +7034,7 @@ static int intel_atomic_check(struct drm_device *dev,
 			if (ret)
 				goto fail;
 
+			intel_release_shared_dplls(state, crtc);
 			continue;
 		}
 
@@ -7095,8 +7082,6 @@ static int intel_atomic_check(struct drm_device *dev,
 		ret = intel_modeset_calc_cdclk(state);
 		if (ret)
 			return ret;
-
-		intel_modeset_clear_plls(state);
 	}
 
 	ret = intel_atomic_check_crtcs(state);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 8d095f28fa20..69dc018385db 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1436,11 +1436,9 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
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
2.35.1

