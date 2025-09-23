Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6D2B96FF4
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D932210E66E;
	Tue, 23 Sep 2025 17:20:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kGUOWFTw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A829310E66F;
 Tue, 23 Sep 2025 17:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648036; x=1790184036;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g6fTxQudh8UbBgGO6GjRuX/dIU3QYKgNt+CHv7eEyy4=;
 b=kGUOWFTw2B+oRyi0fhmAe4tE7rzEdd+Ae3uMaTaEuezi/Bn/0/KLUk4q
 uOBYJ8ikiHNXB3aEAxlEb7ecAd4fTS+KsI+WgXK/AVJEi/sz15zv5acpi
 6tSZV2cOI7EAX2JqLfB+WTXC4aOkgpdEPDkQRU2tpvLn/UGhhYB+sG/sS
 6Q0VvfQuRQg6azlVeegsYv6PljqoNOxwnAV3+L/fYoVaOBarZwgQzJBPx
 25rLxtK/epGdSelvq8ebNgfZ0y421XFpvmQH2G27tGTgFJv5XdJNbud1U
 Ira2HCQ0OARas+Sy0LjjB1Q5MtoX3lVDyXmyeyTT18TL/Ddc8JmmF/vvt g==;
X-CSE-ConnectionGUID: yQtSIIpZS6ye8eQT98W+NA==
X-CSE-MsgGUID: oLDMny4TQnCW5ljVk82zlg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="78375395"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="78375395"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:36 -0700
X-CSE-ConnectionGUID: eIiYn9sQTHqaRt7vZ2llyQ==
X-CSE-MsgGUID: dNRYqMT4QnGkxmxwQGTP4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207747877"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:35 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 12/20] drm/i915/cdclk: Do intel_cdclk_update_crtc_min_cdclk()
 per-pipe
Date: Tue, 23 Sep 2025 20:19:34 +0300
Message-ID: <20250923171943.7319-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
References: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently we call intel_cdclk_update_crtc_min_cdclk() per-plane.
That is rather wasteful, and also won't account for any of the
other per-pipe min_cdclk restrictions from
intel_crtc_compute_min_cdclk(). Change the behaviour to do
do the comparison per-crtc instead, and use the final min cdclk
as computed by intel_crtc_compute_min_cdclk().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 40 +++++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_cdclk.h |  4 ---
 drivers/gpu/drm/i915/display/intel_plane.c | 19 ++--------
 drivers/gpu/drm/i915/display/intel_plane.h |  5 ++-
 4 files changed, 36 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 4d649d893567..b26443311e23 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2836,10 +2836,10 @@ static int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_stat
 	return min_cdclk;
 }
 
-int intel_cdclk_update_crtc_min_cdclk(struct intel_atomic_state *state,
-				      struct intel_crtc *crtc,
-				      int old_min_cdclk, int new_min_cdclk,
-				      bool *need_cdclk_calc)
+static int intel_cdclk_update_crtc_min_cdclk(struct intel_atomic_state *state,
+					     struct intel_crtc *crtc,
+					     int old_min_cdclk, int new_min_cdclk,
+					     bool *need_cdclk_calc)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_cdclk_state *cdclk_state;
@@ -3280,6 +3280,27 @@ static int intel_cdclk_modeset_checks(struct intel_atomic_state *state,
 	return 0;
 }
 
+static int intel_crtcs_calc_min_cdclk(struct intel_atomic_state *state,
+				      bool *need_cdclk_calc)
+{
+	const struct intel_crtc_state *old_crtc_state;
+	const struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc *crtc;
+	int i, ret;
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		ret = intel_cdclk_update_crtc_min_cdclk(state, crtc,
+							intel_crtc_compute_min_cdclk(old_crtc_state),
+							intel_crtc_compute_min_cdclk(new_crtc_state),
+							need_cdclk_calc);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 			     bool *need_cdclk_calc)
 {
@@ -3299,11 +3320,12 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 	 * planes are part of the state. We can now compute the minimum cdclk
 	 * for each plane.
 	 */
-	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		ret = intel_plane_calc_min_cdclk(state, plane, need_cdclk_calc);
-		if (ret)
-			return ret;
-	}
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i)
+		intel_plane_calc_min_cdclk(state, plane);
+
+	ret = intel_crtcs_calc_min_cdclk(state, need_cdclk_calc);
+	if (ret)
+		return ret;
 
 	ret = intel_bw_calc_min_cdclk(state, need_cdclk_calc);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 25d45c8f059d..0e67c75ca569 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -51,10 +51,6 @@ void intel_cdclk_crtc_disable_noatomic(struct intel_crtc *crtc);
 int intel_cdclk_update_bw_min_cdclk(struct intel_atomic_state *state,
 				    int old_min_cdclk, int new_min_cdclk,
 				    bool *need_cdclk_calc);
-int intel_cdclk_update_crtc_min_cdclk(struct intel_atomic_state *state,
-				      struct intel_crtc *crtc,
-				      int old_min_cdclk, int new_min_cdclk,
-				      bool *need_cdclk_calc);
 
 #define to_intel_cdclk_state(global_state) \
 	container_of_const((global_state), struct intel_cdclk_state, base)
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 864e2db207fa..871c654d6d1d 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -292,34 +292,21 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 				   rel_data_rate);
 }
 
-int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
-			       struct intel_plane *plane,
-			       bool *need_cdclk_calc)
+void intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
+				struct intel_plane *plane)
 {
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	struct intel_crtc *crtc = to_intel_crtc(plane_state->hw.crtc);
-	const struct intel_crtc_state *old_crtc_state;
 	struct intel_crtc_state *new_crtc_state;
-	int ret;
 
 	if (!plane_state->uapi.visible || !plane->min_cdclk)
-		return 0;
+		return;
 
-	old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
 	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 
 	new_crtc_state->min_cdclk[plane->id] =
 		plane->min_cdclk(new_crtc_state, plane_state);
-
-	ret = intel_cdclk_update_crtc_min_cdclk(state, crtc,
-						old_crtc_state->min_cdclk[plane->id],
-						new_crtc_state->min_cdclk[plane->id],
-						need_cdclk_calc);
-	if (ret)
-		return ret;
-
-	return 0;
 }
 
 static void intel_plane_clear_hw_state(struct intel_plane_state *plane_state)
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 8af41ccc0a69..c6bef1b3471d 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -69,9 +69,8 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 					struct intel_crtc_state *crtc_state,
 					const struct intel_plane_state *old_plane_state,
 					struct intel_plane_state *intel_state);
-int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
-			       struct intel_plane *plane,
-			       bool *need_cdclk_calc);
+void intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
+				struct intel_plane *plane);
 int intel_plane_check_clipping(struct intel_plane_state *plane_state,
 			       struct intel_crtc_state *crtc_state,
 			       int min_scale, int max_scale,
-- 
2.49.1

