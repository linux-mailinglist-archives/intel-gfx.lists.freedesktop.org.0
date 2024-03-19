Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 641E487FDA1
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 13:33:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B5D110FA52;
	Tue, 19 Mar 2024 12:33:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZESLeIIG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EB8C10E085
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 12:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710851625; x=1742387625;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nvuPYmonzprggjAtOLsf+dDH/hW2cCEPlkO3vbn24TI=;
 b=ZESLeIIG+7ro8bn+otuzlLONvdahAfs7NZPSjz0ctG2dva0SNbtUwREN
 9JnZhO9N/IJo+tWcL1mogAL0y9whXVHvd6znwqIA2/dTrFloYN+jAt3DI
 hSyGEJC9h+UXjq01JDj/UZt0nZBLeOfWZ3R3IIHgmUedHEP1P5K2n12w1
 +6A1/xRghZJGw4sfL62CcizQ1wx7p3fhtvrbyLiYGT+dHyFqYLIOM++dv
 cHMbZggO9eCd90fmb8Fm7ity0jcxXIkMeRat2LYmT7WFv62yKLgg65omo
 B1l/JjPGsXzhdKejt/S8TRDKNtSnq8y6fSv8Uf4Nm9bqqyeThGb5D/pwa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="5894298"
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; 
   d="scan'208";a="5894298"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 05:33:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; d="scan'208";a="18437973"
Received: from jlaghzal-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.53.224])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 05:33:44 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/5] drm/i915/display/intel_psr: Fix
 intel_psr2_sel_fetch_et_alignment usage
Date: Tue, 19 Mar 2024 14:33:25 +0200
Message-Id: <20240319123327.1661097-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240319123327.1661097-1-jouni.hogander@intel.com>
References: <20240319123327.1661097-1-jouni.hogander@intel.com>
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

Currently we are not aligning selective update area to cover cursor fully
when cursor is not updated by itself but still in the selective update
area. Fix this by checking cursor separately after
drm_atomic_add_affected_planes.

Bspec: 68927

Fixes: 1bff93b8bc27 ("drm/i915/psr: Extend SU area to cover cursor fully if needed")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 55 ++++++++++++++----------
 1 file changed, 33 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 961f92d10241..e1a9399aa503 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2140,21 +2140,36 @@ static void intel_psr2_sel_fetch_pipe_alignment(struct intel_crtc_state *crtc_st
  * cursor fully when cursor is in SU area.
  */
 static void
-intel_psr2_sel_fetch_et_alignment(struct intel_crtc_state *crtc_state,
-				  struct intel_plane_state *cursor_state)
+intel_psr2_sel_fetch_et_alignment(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
 {
-	struct drm_rect inter;
+	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_plane_state *new_plane_state;
+	struct intel_plane *plane;
+	int i;
 
-	if (!crtc_state->enable_psr2_su_region_et ||
-	    !cursor_state->uapi.visible)
+	if (!crtc_state->enable_psr2_su_region_et)
 		return;
 
-	inter = crtc_state->psr2_su_area;
-	if (!drm_rect_intersect(&inter, &cursor_state->uapi.dst))
-		return;
+	for_each_new_intel_plane_in_state(state, plane, new_plane_state, i) {
+		struct drm_rect inter;
 
-	clip_area_update(&crtc_state->psr2_su_area, &cursor_state->uapi.dst,
-			 &crtc_state->pipe_src);
+		if (new_plane_state->uapi.crtc != crtc_state->uapi.crtc)
+			continue;
+
+		if (plane->id != PLANE_CURSOR)
+			continue;
+
+		if (!new_plane_state->uapi.visible)
+			continue;
+
+		inter = crtc_state->psr2_su_area;
+		if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst))
+			continue;
+
+		clip_area_update(&crtc_state->psr2_su_area, &new_plane_state->uapi.dst,
+				 &crtc_state->pipe_src);
+	}
 }
 
 /*
@@ -2197,8 +2212,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_plane_state *new_plane_state, *old_plane_state,
-		*cursor_plane_state = NULL;
+	struct intel_plane_state *new_plane_state, *old_plane_state;
 	struct intel_plane *plane;
 	bool full_update = false;
 	int i, ret;
@@ -2283,13 +2297,6 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		damaged_area.x2 += new_plane_state->uapi.dst.x1 - src.x1;
 
 		clip_area_update(&crtc_state->psr2_su_area, &damaged_area, &crtc_state->pipe_src);
-
-		/*
-		 * Cursor plane new state is stored to adjust su area to cover
-		 * cursor are fully.
-		 */
-		if (plane->id == PLANE_CURSOR)
-			cursor_plane_state = new_plane_state;
 	}
 
 	/*
@@ -2318,9 +2325,13 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	/* Adjust su area to cover cursor fully as necessary */
-	if (cursor_plane_state)
-		intel_psr2_sel_fetch_et_alignment(crtc_state, cursor_plane_state);
+	/*
+	 * Adjust su area to cover cursor fully as necessary (early
+	 * transport). This needs to be done after
+	 * drm_atomic_add_affected_planes to ensure visible cursor is added into
+	 * affected planes even when cursor is not updated by itself.
+	 */
+	intel_psr2_sel_fetch_et_alignment(state, crtc);
 
 	intel_psr2_sel_fetch_pipe_alignment(crtc_state);
 
-- 
2.34.1

