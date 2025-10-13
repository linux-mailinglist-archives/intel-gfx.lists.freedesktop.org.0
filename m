Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7AEBD609C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 22:13:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 188F210E528;
	Mon, 13 Oct 2025 20:12:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dNVn2VF5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9723810E525;
 Mon, 13 Oct 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760386373; x=1791922373;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aintlyC1ONuKIQjZIe5SOqhbAJCmDPUgUnO2ZhuDkUc=;
 b=dNVn2VF59omAIrQEOWvz7MG4PF93A5T3dziB76kN90m7GpPXdEa/B0dA
 yvEvHJIu824upFIFPpRMfc7sww+ZixT5MqjjK/2b3DcGhW/MqpoPQSCjy
 v1OWwr9iqDCX2BrbmjrRMChS7ORG33vwXPfJAhqhDKWNqdOlChKllPnQn
 /GQw98cF9vywPsfLOdIgO7tgiP2YgvGbYOq1GN0SIjyzx0JzGdlfAQKcG
 ASHjmmt89Iio/zlGwcq/TEbqpMthci+OCY+cjQb9gsBhz8uP3Y23OoYJr
 nYPiueIAx18nEEe+EgxwUYcxQcBMdDn7B3WifWnLegMxMKJz2VOdv/SsP g==;
X-CSE-ConnectionGUID: otaYReQvS6+8y22wc3Uo1Q==
X-CSE-MsgGUID: LcvyBIJhS3q3CCUqbfNcKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="65159158"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="65159158"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:12:53 -0700
X-CSE-ConnectionGUID: YiP34ccVT5+BME1lig2tCw==
X-CSE-MsgGUID: XsttyPOYRgG3WFwsqx+FAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="181250705"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.105])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:12:53 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/9] drm/i915/bw: Relocate intel_bw_crtc_min_cdclk()
Date: Mon, 13 Oct 2025 23:12:30 +0300
Message-ID: <20251013201236.30084-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
References: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
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

intel_bw_crtc_min_cdclk() (aka. the thing that deals with what bspec
calls "Maximum Pipe Read Bandwidth") doesn't really have anything to
do with the rest of intel_bw.c (which is all about SAGV/QGV and
memory bandwidth). Move it into intel_crtc.c (for the lack of a better
place).

And I don't really want to call intel_bw.c functions from intel_crtc.c,
so move out intel_bw_crtc_data_rate() as well. And when we move that we
pretty much have to move intel_bw_crtc_num_active_planes() as well since
the two are meant to be used as a pair (they both implement the same
"ignore the cursor" logic).

And in an effort to keep the namespaces at least semi-sensible we
flip the intel_bw_crtc_ prefix into intel_crtc_bw_.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c    | 56 +++-------------------
 drivers/gpu/drm/i915/display/intel_bw.h    |  1 -
 drivers/gpu/drm/i915/display/intel_cdclk.c |  3 +-
 drivers/gpu/drm/i915/display/intel_crtc.c  | 44 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_crtc.h  |  4 ++
 5 files changed, 55 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index d03da1ed4541..92a060e02cf3 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -827,50 +827,6 @@ void intel_bw_init_hw(struct intel_display *display)
 		icl_get_bw_info(display, dram_info, &icl_sa_info);
 }
 
-static unsigned int intel_bw_crtc_num_active_planes(const struct intel_crtc_state *crtc_state)
-{
-	/*
-	 * We assume cursors are small enough
-	 * to not cause bandwidth problems.
-	 */
-	return hweight8(crtc_state->active_planes & ~BIT(PLANE_CURSOR));
-}
-
-static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	unsigned int data_rate = 0;
-	enum plane_id plane_id;
-
-	for_each_plane_id_on_crtc(crtc, plane_id) {
-		/*
-		 * We assume cursors are small enough
-		 * to not cause bandwidth problems.
-		 */
-		if (plane_id == PLANE_CURSOR)
-			continue;
-
-		data_rate += crtc_state->data_rate[plane_id];
-
-		if (DISPLAY_VER(display) < 11)
-			data_rate += crtc_state->data_rate_y[plane_id];
-	}
-
-	return data_rate;
-}
-
-/* "Maximum Pipe Read Bandwidth" */
-int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-
-	if (DISPLAY_VER(display) < 12)
-		return 0;
-
-	return DIV_ROUND_UP_ULL(mul_u32_u32(intel_bw_crtc_data_rate(crtc_state), 10), 512);
-}
-
 static unsigned int intel_bw_num_active_planes(struct intel_display *display,
 					       const struct intel_bw_state *bw_state)
 {
@@ -1264,13 +1220,13 @@ static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *chan
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		unsigned int old_data_rate =
-			intel_bw_crtc_data_rate(old_crtc_state);
+			intel_crtc_bw_data_rate(old_crtc_state);
 		unsigned int new_data_rate =
-			intel_bw_crtc_data_rate(new_crtc_state);
+			intel_crtc_bw_data_rate(new_crtc_state);
 		unsigned int old_active_planes =
-			intel_bw_crtc_num_active_planes(old_crtc_state);
+			intel_crtc_bw_num_active_planes(old_crtc_state);
 		unsigned int new_active_planes =
-			intel_bw_crtc_num_active_planes(new_crtc_state);
+			intel_crtc_bw_num_active_planes(new_crtc_state);
 		struct intel_bw_state *new_bw_state;
 
 		/*
@@ -1426,9 +1382,9 @@ static void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	bw_state->data_rate[crtc->pipe] =
-		intel_bw_crtc_data_rate(crtc_state);
+		intel_crtc_bw_data_rate(crtc_state);
 	bw_state->num_active_planes[crtc->pipe] =
-		intel_bw_crtc_num_active_planes(crtc_state);
+		intel_crtc_bw_num_active_planes(crtc_state);
 
 	drm_dbg_kms(display->drm, "pipe %c data rate %u num active planes %u\n",
 		    pipe_name(crtc->pipe),
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 051e163f2f15..99b447388245 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -29,7 +29,6 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state);
 void intel_bw_init_hw(struct intel_display *display);
 int intel_bw_init(struct intel_display *display);
 int intel_bw_atomic_check(struct intel_atomic_state *state);
-int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_state);
 void intel_bw_update_hw_state(struct intel_display *display);
 void intel_bw_crtc_disable_noatomic(struct intel_crtc *crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 23b9e100d824..80a6c98eea5d 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -35,7 +35,6 @@
 #include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
-#include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_crtc.h"
 #include "intel_dbuf_bw.h"
@@ -2838,7 +2837,7 @@ static int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_stat
 		return 0;
 
 	min_cdclk = intel_pixel_rate_to_cdclk(crtc_state);
-	min_cdclk = max(min_cdclk, intel_bw_crtc_min_cdclk(crtc_state));
+	min_cdclk = max(min_cdclk, intel_crtc_bw_min_cdclk(crtc_state));
 	min_cdclk = max(min_cdclk, hsw_ips_min_cdclk(crtc_state));
 	min_cdclk = max(min_cdclk, intel_audio_min_cdclk(crtc_state));
 	min_cdclk = max(min_cdclk, vlv_dsi_min_cdclk(crtc_state));
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 7b39c3a5887c..d300ba1dcd2c 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -795,3 +795,47 @@ bool intel_any_crtc_active_changed(struct intel_atomic_state *state)
 
 	return false;
 }
+
+unsigned int intel_crtc_bw_num_active_planes(const struct intel_crtc_state *crtc_state)
+{
+	/*
+	 * We assume cursors are small enough
+	 * to not cause bandwidth problems.
+	 */
+	return hweight8(crtc_state->active_planes & ~BIT(PLANE_CURSOR));
+}
+
+unsigned int intel_crtc_bw_data_rate(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	unsigned int data_rate = 0;
+	enum plane_id plane_id;
+
+	for_each_plane_id_on_crtc(crtc, plane_id) {
+		/*
+		 * We assume cursors are small enough
+		 * to not cause bandwidth problems.
+		 */
+		if (plane_id == PLANE_CURSOR)
+			continue;
+
+		data_rate += crtc_state->data_rate[plane_id];
+
+		if (DISPLAY_VER(display) < 11)
+			data_rate += crtc_state->data_rate_y[plane_id];
+	}
+
+	return data_rate;
+}
+
+/* "Maximum Pipe Read Bandwidth" */
+int intel_crtc_bw_min_cdclk(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (DISPLAY_VER(display) < 12)
+		return 0;
+
+	return DIV_ROUND_UP_ULL(mul_u32_u32(intel_crtc_bw_data_rate(crtc_state), 10), 512);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index cee09e7cd3dc..07917e8a9ae3 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -65,4 +65,8 @@ bool intel_any_crtc_active_changed(struct intel_atomic_state *state);
 bool intel_crtc_active_changed(const struct intel_crtc_state *old_crtc_state,
 			       const struct intel_crtc_state *new_crtc_state);
 
+unsigned int intel_crtc_bw_num_active_planes(const struct intel_crtc_state *crtc_state);
+unsigned int intel_crtc_bw_data_rate(const struct intel_crtc_state *crtc_state);
+int intel_crtc_bw_min_cdclk(const struct intel_crtc_state *crtc_state);
+
 #endif
-- 
2.49.1

