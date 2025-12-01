Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B827C96FDC
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 12:33:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 163C810E3A9;
	Mon,  1 Dec 2025 11:33:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CWKa4G7i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DDFA10E3AB;
 Mon,  1 Dec 2025 11:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764588785; x=1796124785;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/qsFnif9g5ZDb6KrWLW2glLl1NKpJxixevcxMA/Xxqw=;
 b=CWKa4G7iXgLiC/gJeiXaHy4uqkBgLXbD2KtULNr8ahBHnwUDqOAq24EB
 PduyUQNK5t7+XbODzl3sVabn7tbDZGOx9Gl6HspldjdjSC+1b+ySe4+vt
 lYurKk4Bu0KRg0SOjc5LxJg9wAG4tJ/Fq9tttu1Q3V7UrhFLB7KmJIgQH
 5A+EwJpwBe2fNeSsfxjzaIVMtKlgKzvTkBn/qjFahiIigvZ/r6Qve0e2s
 6ge+MPfF6drSCjZEWR6a4zP5d+RYmV2wcK22sDsm0YZggyDxptZKXDEZ/
 T77zuHYxgN8+h4C372YulkLQFIGnj3mapj4YP7c0WoL4W7yi20CafT4/4 A==;
X-CSE-ConnectionGUID: jryoaolLTOSRq/H/rOt/Lg==
X-CSE-MsgGUID: eVhFQ/MISGuU9hxAmMbwAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="66558463"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="66558463"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 03:33:05 -0800
X-CSE-ConnectionGUID: ktcH7ROKSjy87kgkeO3t2w==
X-CSE-MsgGUID: NrCYj6uoS3iJC23kONNibQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="198251896"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.122])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 03:33:04 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/3] drm/i915/psr: Perform full frame update on async flip
Date: Mon,  1 Dec 2025 13:32:47 +0200
Message-ID: <20251201113248.617347-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251201113248.617347-1-jouni.hogander@intel.com>
References: <20251201113248.617347-1-jouni.hogander@intel.com>
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

According to bspec selective fetch is not supported with async flips and
instructing full frame update on async flip.

v2:
  - check also crtc_state->async_flip_planes in
    psr2_sel_fetch_plane_state_supported

Bspec: 55229
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 72 ++++++++++++++----------
 1 file changed, 41 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 08bca4573974..c99d875bbf16 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2728,13 +2728,20 @@ intel_psr2_sel_fetch_et_alignment(struct intel_atomic_state *state,
  * Plane scaling and rotation is not supported by selective fetch and both
  * properties can change without a modeset, so need to be check at every
  * atomic commit.
+ *
+ * If plane was having async flip previously we can't use selective
+ * fetch as we don't know if the flip is completed.
  */
-static bool psr2_sel_fetch_plane_state_supported(const struct intel_plane_state *plane_state)
+static bool psr2_sel_fetch_plane_state_supported(const struct intel_crtc_state *old_crtc_state,
+						 const struct intel_plane_state *plane_state)
 {
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+
 	if (plane_state->uapi.dst.y1 < 0 ||
 	    plane_state->uapi.dst.x1 < 0 ||
 	    plane_state->scaler_id >= 0 ||
-	    plane_state->uapi.rotation != DRM_MODE_ROTATE_0)
+	    plane_state->uapi.rotation != DRM_MODE_ROTATE_0 ||
+	    old_crtc_state->async_flip_planes & plane->id)
 		return false;
 
 	return true;
@@ -2749,7 +2756,8 @@ static bool psr2_sel_fetch_plane_state_supported(const struct intel_plane_state
  */
 static bool psr2_sel_fetch_pipe_state_supported(const struct intel_crtc_state *crtc_state)
 {
-	if (crtc_state->scaler_state.scaler_id >= 0)
+	if (crtc_state->scaler_state.scaler_id >= 0 ||
+	    crtc_state->uapi.async_flip)
 		return false;
 
 	return true;
@@ -2808,24 +2816,25 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_crtc_state *new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_crtc_state *old_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_plane_state *new_plane_state, *old_plane_state;
 	struct intel_plane *plane;
 	bool full_update = false, cursor_in_su_area = false;
 	int i, ret;
 
-	if (!crtc_state->enable_psr2_sel_fetch)
+	if (!new_crtc_state->enable_psr2_sel_fetch)
 		return 0;
 
-	if (!psr2_sel_fetch_pipe_state_supported(crtc_state)) {
+	if (!psr2_sel_fetch_pipe_state_supported(new_crtc_state)) {
 		full_update = true;
 		goto skip_sel_fetch_set_loop;
 	}
 
-	crtc_state->psr2_su_area.x1 = 0;
-	crtc_state->psr2_su_area.y1 = -1;
-	crtc_state->psr2_su_area.x2 = drm_rect_width(&crtc_state->pipe_src);
-	crtc_state->psr2_su_area.y2 = -1;
+	new_crtc_state->psr2_su_area.x1 = 0;
+	new_crtc_state->psr2_su_area.y1 = -1;
+	new_crtc_state->psr2_su_area.x2 = drm_rect_width(&new_crtc_state->pipe_src);
+	new_crtc_state->psr2_su_area.y2 = -1;
 
 	/*
 	 * Calculate minimal selective fetch area of each plane and calculate
@@ -2838,14 +2847,14 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		struct drm_rect src, damaged_area = { .x1 = 0, .y1 = -1,
 						      .x2 = INT_MAX };
 
-		if (new_plane_state->uapi.crtc != crtc_state->uapi.crtc)
+		if (new_plane_state->uapi.crtc != new_crtc_state->uapi.crtc)
 			continue;
 
 		if (!new_plane_state->uapi.visible &&
 		    !old_plane_state->uapi.visible)
 			continue;
 
-		if (!psr2_sel_fetch_plane_state_supported(new_plane_state)) {
+		if (!psr2_sel_fetch_plane_state_supported(old_crtc_state, new_plane_state)) {
 			full_update = true;
 			break;
 		}
@@ -2861,23 +2870,23 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 			if (old_plane_state->uapi.visible) {
 				damaged_area.y1 = old_plane_state->uapi.dst.y1;
 				damaged_area.y2 = old_plane_state->uapi.dst.y2;
-				clip_area_update(&crtc_state->psr2_su_area, &damaged_area,
-						 &crtc_state->pipe_src);
+				clip_area_update(&new_crtc_state->psr2_su_area, &damaged_area,
+						 &new_crtc_state->pipe_src);
 			}
 
 			if (new_plane_state->uapi.visible) {
 				damaged_area.y1 = new_plane_state->uapi.dst.y1;
 				damaged_area.y2 = new_plane_state->uapi.dst.y2;
-				clip_area_update(&crtc_state->psr2_su_area, &damaged_area,
-						 &crtc_state->pipe_src);
+				clip_area_update(&new_crtc_state->psr2_su_area, &damaged_area,
+						 &new_crtc_state->pipe_src);
 			}
 			continue;
 		} else if (new_plane_state->uapi.alpha != old_plane_state->uapi.alpha) {
 			/* If alpha changed mark the whole plane area as damaged */
 			damaged_area.y1 = new_plane_state->uapi.dst.y1;
 			damaged_area.y2 = new_plane_state->uapi.dst.y2;
-			clip_area_update(&crtc_state->psr2_su_area, &damaged_area,
-					 &crtc_state->pipe_src);
+			clip_area_update(&new_crtc_state->psr2_su_area, &damaged_area,
+					 &new_crtc_state->pipe_src);
 			continue;
 		}
 
@@ -2893,7 +2902,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		damaged_area.x1 += new_plane_state->uapi.dst.x1 - src.x1;
 		damaged_area.x2 += new_plane_state->uapi.dst.x1 - src.x1;
 
-		clip_area_update(&crtc_state->psr2_su_area, &damaged_area, &crtc_state->pipe_src);
+		clip_area_update(&new_crtc_state->psr2_su_area, &damaged_area,
+				 &new_crtc_state->pipe_src);
 	}
 
 	/*
@@ -2902,7 +2912,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	 * should identify cases where this happens and fix the area
 	 * calculation for those.
 	 */
-	if (crtc_state->psr2_su_area.y1 == -1) {
+	if (new_crtc_state->psr2_su_area.y1 == -1) {
 		drm_info_once(display->drm,
 			      "Selective fetch area calculation failed in pipe %c\n",
 			      pipe_name(crtc->pipe));
@@ -2912,7 +2922,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	if (full_update)
 		goto skip_sel_fetch_set_loop;
 
-	intel_psr_apply_su_area_workarounds(crtc_state);
+	intel_psr_apply_su_area_workarounds(new_crtc_state);
 
 	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
 	if (ret)
@@ -2926,7 +2936,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	 */
 	intel_psr2_sel_fetch_et_alignment(state, crtc, &cursor_in_su_area);
 
-	intel_psr2_sel_fetch_pipe_alignment(crtc_state);
+	intel_psr2_sel_fetch_pipe_alignment(new_crtc_state);
 
 	/*
 	 * Now that we have the pipe damaged area check if it intersect with
@@ -2937,11 +2947,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		struct drm_rect *sel_fetch_area, inter;
 		struct intel_plane *linked = new_plane_state->planar_linked_plane;
 
-		if (new_plane_state->uapi.crtc != crtc_state->uapi.crtc ||
+		if (new_plane_state->uapi.crtc != new_crtc_state->uapi.crtc ||
 		    !new_plane_state->uapi.visible)
 			continue;
 
-		inter = crtc_state->psr2_su_area;
+		inter = new_crtc_state->psr2_su_area;
 		sel_fetch_area = &new_plane_state->psr2_sel_fetch_area;
 		if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst)) {
 			sel_fetch_area->y1 = -1;
@@ -2951,12 +2961,12 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 			 * disable it
 			 */
 			if (drm_rect_height(&old_plane_state->psr2_sel_fetch_area) > 0)
-				crtc_state->update_planes |= BIT(plane->id);
+				new_crtc_state->update_planes |= BIT(plane->id);
 
 			continue;
 		}
 
-		if (!psr2_sel_fetch_plane_state_supported(new_plane_state)) {
+		if (!psr2_sel_fetch_plane_state_supported(old_crtc_state, new_plane_state)) {
 			full_update = true;
 			break;
 		}
@@ -2964,7 +2974,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		sel_fetch_area = &new_plane_state->psr2_sel_fetch_area;
 		sel_fetch_area->y1 = inter.y1 - new_plane_state->uapi.dst.y1;
 		sel_fetch_area->y2 = inter.y2 - new_plane_state->uapi.dst.y1;
-		crtc_state->update_planes |= BIT(plane->id);
+		new_crtc_state->update_planes |= BIT(plane->id);
 
 		/*
 		 * Sel_fetch_area is calculated for UV plane. Use
@@ -2981,14 +2991,14 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 			linked_sel_fetch_area = &linked_new_plane_state->psr2_sel_fetch_area;
 			linked_sel_fetch_area->y1 = sel_fetch_area->y1;
 			linked_sel_fetch_area->y2 = sel_fetch_area->y2;
-			crtc_state->update_planes |= BIT(linked->id);
+			new_crtc_state->update_planes |= BIT(linked->id);
 		}
 	}
 
 skip_sel_fetch_set_loop:
-	psr2_man_trk_ctl_calc(crtc_state, full_update);
-	crtc_state->pipe_srcsz_early_tpt =
-		psr2_pipe_srcsz_early_tpt_calc(crtc_state, full_update);
+	psr2_man_trk_ctl_calc(new_crtc_state, full_update);
+	old_crtc_state->pipe_srcsz_early_tpt =
+		psr2_pipe_srcsz_early_tpt_calc(new_crtc_state, full_update);
 	return 0;
 }
 
-- 
2.43.0

