Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9746552312
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:52:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFC2410ED89;
	Mon, 20 Jun 2022 17:52:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2612310ED89
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655747552; x=1687283552;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i2rtFEZhiq4d0R3Fk7KqLV7Gy9laPOw71BJE2gNnJvo=;
 b=jytDZ1aoB5MaJ6PYXXKXM19KJw1yX8ndLEU3zoWuXjRbb8vXahZM2x6a
 eZxsEYC0TDYIeT3eCGmAETX8ZnsQi4GrRDgtBj+WJr23PIOziBGfH/Vsv
 T49RSx2w9sN3H4ubcmfCGnQfgruGuBilb24Weldu4BiVQYzisVp6BJ3KN
 NbvQCt8qgWRqlIl7NpJd3P8OVx+E5n+98DmCd1qKsUMt1M4BQ/H3q1Sah
 XuEqWaU3dISqUpDDCPuobDwSMuOiYsnfZHeq2CCrYrjuL+ssE+iu0op3Q
 4Hl0LxH3navsOkhpFcvFIx8X8qX4CpEm3j0rNAwSp7bcdWWyGJ9qZn1O9 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="260382192"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="260382192"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:52:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="584757200"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga002.jf.intel.com with SMTP; 20 Jun 2022 10:52:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 20:52:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 20:51:59 +0300
Message-Id: <20220620175210.28788-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
References: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 06/17] drm/i915: Reassign DPLLs only for
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
index 25dd47835cfe..e484c7492754 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6055,20 +6055,6 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
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
@@ -6902,6 +6888,7 @@ static int intel_atomic_check(struct drm_device *dev,
 			if (ret)
 				goto fail;
 
+			intel_release_shared_dplls(state, crtc);
 			continue;
 		}
 
@@ -6949,8 +6936,6 @@ static int intel_atomic_check(struct drm_device *dev,
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

