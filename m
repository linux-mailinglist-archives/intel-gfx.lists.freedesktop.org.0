Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F575510738
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 20:37:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8B1410E2DA;
	Tue, 26 Apr 2022 18:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 811C810E2DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 18:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650998252; x=1682534252;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Q5S3r7w2s7jebNjjfif9zZ9v4IH6naNsxuE7Rznxjok=;
 b=l4SgaKGek1dYKTyFWwYNrS8s9YvsoknRXcDpdsJeZdWMWRBR9Rfb/qKS
 wg0vYjNJHZyFq6t/IDpzETCNoJz0u+Yvf7MCYejpGEhyM4XDWeBa4cpUA
 1NfcH2KhHmoXtv9uQovEGheGHGRioSv7rMocVeEJua1UWceF10mgtoOTO
 eZIIdzzBVeOq+qU89wv3JBIVFGFfVIVvJ5TJEN5t7VrVHEG8lXZgxPxA7
 KgOW6b5CBJy+XweNVMZdciNOfiJ8gEt4VkSBlwsS2h/OW586dHhy9s1xY
 n3wHVmOPm7oI00KieE0q3g3thz/VV1iwsqB7jtZl+SfZ71GjyTbwxEfN9 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="263278007"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="263278007"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 11:37:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="564713568"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga007.fm.intel.com with SMTP; 26 Apr 2022 11:37:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 21:37:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 21:37:17 +0300
Message-Id: <20220426183717.27099-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426183717.27099-1-ville.syrjala@linux.intel.com>
References: <20220426183717.27099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915: Reassign DPLLs only for crtcs
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
index 5e50e0d56088..7d488d320762 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6955,20 +6955,6 @@ intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
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
@@ -7802,6 +7788,7 @@ static int intel_atomic_check(struct drm_device *dev,
 			if (ret)
 				goto fail;
 
+			intel_release_shared_dplls(state, crtc);
 			continue;
 		}
 
@@ -7849,8 +7836,6 @@ static int intel_atomic_check(struct drm_device *dev,
 		ret = intel_modeset_calc_cdclk(state);
 		if (ret)
 			return ret;
-
-		intel_modeset_clear_plls(state);
 	}
 
 	ret = intel_atomic_check_crtcs(state);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 2b3f72550e5a..afd30c6cc34c 100644
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

