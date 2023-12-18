Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DCC8179B0
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:30:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E655D10E2D0;
	Mon, 18 Dec 2023 18:30:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C36710E2A6
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702924224; x=1734460224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I+A5fe0C/5nDCD21Ny8968vZjpG9OOb0EAulmacXAYY=;
 b=fdGVSpb/tOvdKHsRCgsB3xuXLY53Qo5HiWBv/+vqLcY8nk3ZN2qPqt5D
 Ii6QyqD/b8u5lUXI9XD6IzrXir6nVNziVB92BZoFCpa2Md+qQt+G3nLe4
 kFE1qWD0OgAa4jWikyG+2Erh8u2rpeH+Mcbt6ypuWy682uel0WeURnyYq
 I6eDvr/LTLTqFToex8CE4BMZxjFDRtN1dC88VuL6Oekkyg0FdaiUv7qYu
 3WlVJdN/bW++vdMxTR/PfOT2SQEv4FEZz9181mFcWX2fVrb9JnPwoYM5o
 FsbYS/V9PCX63TU4n012BHcBZIN/9x2/oBv+MLhZJ/dfiLb3JiPzxS+6z A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="392714120"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="392714120"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 09:50:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="779176582"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="779176582"
Received: from etrunovx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.35.24])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 09:50:22 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/7] drm/i915/psr: Carry su area in crtc_state
Date: Mon, 18 Dec 2023 19:50:00 +0200
Message-Id: <20231218175004.52875-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218175004.52875-1-jouni.hogander@intel.com>
References: <20231218175004.52875-1-jouni.hogander@intel.com>
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

Su_area is needed when configuring CUR_POS_ERLY_TPT and
PIPE_SRC_SZ_ERLY_TPT. Store it into intel_crtc_state->psr2_su_area.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 62 ++++++++++---------
 2 files changed, 36 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 341d80c2b9de..05dd8decd610 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1404,6 +1404,8 @@ struct intel_crtc_state {
 
 	u32 psr2_man_track_ctl;
 
+	struct drm_rect psr2_su_area;
+
 	/* Variable Refresh Rate state */
 	struct {
 		bool enable, in_range;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8a350b9e33cd..67f68c26a312 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1941,7 +1941,7 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
 }
 
 static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
-				  struct drm_rect *clip, bool full_update)
+				  bool full_update)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -1956,17 +1956,21 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 		goto exit;
 	}
 
-	if (clip->y1 == -1)
+	if (crtc_state->psr2_su_area.y1 == -1)
 		goto exit;
 
 	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14) {
-		val |= ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(clip->y1);
-		val |= ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(clip->y2 - 1);
+		val |= ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(crtc_state->psr2_su_area.y1);
+		val |= ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(crtc_state->psr2_su_area.y2 - 1);
 	} else {
-		drm_WARN_ON(crtc_state->uapi.crtc->dev, clip->y1 % 4 || clip->y2 % 4);
+		drm_WARN_ON(crtc_state->uapi.crtc->dev,
+			    crtc_state->psr2_su_area.y1 % 4 ||
+			    crtc_state->psr2_su_area.y2 % 4);
 
-		val |= PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(clip->y1 / 4 + 1);
-		val |= PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(clip->y2 / 4 + 1);
+		val |= PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(
+			crtc_state->psr2_su_area.y1 / 4 + 1);
+		val |= PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(
+			crtc_state->psr2_su_area.y2 / 4 + 1);
 	}
 exit:
 	crtc_state->psr2_man_track_ctl = val;
@@ -1992,8 +1996,7 @@ static void clip_area_update(struct drm_rect *overlap_damage_area,
 		overlap_damage_area->y2 = damage_area->y2;
 }
 
-static void intel_psr2_sel_fetch_pipe_alignment(const struct intel_crtc_state *crtc_state,
-						struct drm_rect *pipe_clip)
+static void intel_psr2_sel_fetch_pipe_alignment(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
@@ -2006,9 +2009,10 @@ static void intel_psr2_sel_fetch_pipe_alignment(const struct intel_crtc_state *c
 	else
 		y_alignment = crtc_state->su_y_granularity;
 
-	pipe_clip->y1 -= pipe_clip->y1 % y_alignment;
-	if (pipe_clip->y2 % y_alignment)
-		pipe_clip->y2 = ((pipe_clip->y2 / y_alignment) + 1) * y_alignment;
+	crtc_state->psr2_su_area.y1 -= crtc_state->psr2_su_area.y1 % y_alignment;
+	if (crtc_state->psr2_su_area.y2 % y_alignment)
+		crtc_state->psr2_su_area.y2 = ((crtc_state->psr2_su_area.y2 /
+						y_alignment) + 1) * y_alignment;
 }
 
 /*
@@ -2017,8 +2021,7 @@ static void intel_psr2_sel_fetch_pipe_alignment(const struct intel_crtc_state *c
  */
 static void
 intel_psr2_sel_fetch_et_alignment(struct intel_crtc_state *crtc_state,
-				  struct intel_plane_state *cursor_state,
-				  struct drm_rect *pipe_clip)
+				  struct intel_plane_state *cursor_state)
 {
 	struct drm_rect inter;
 
@@ -2026,11 +2029,11 @@ intel_psr2_sel_fetch_et_alignment(struct intel_crtc_state *crtc_state,
 	    !cursor_state->uapi.visible)
 		return;
 
-	inter = *pipe_clip;
+	inter = crtc_state->psr2_su_area;
 	if (!drm_rect_intersect(&inter, &cursor_state->uapi.dst))
 		return;
 
-	clip_area_update(pipe_clip, &cursor_state->uapi.dst,
+	clip_area_update(&crtc_state->psr2_su_area, &cursor_state->uapi.dst,
 			 &crtc_state->pipe_src);
 }
 
@@ -2074,7 +2077,6 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
-	struct drm_rect pipe_clip = { .x1 = 0, .y1 = -1, .x2 = INT_MAX, .y2 = -1 };
 	struct intel_plane_state *new_plane_state, *old_plane_state,
 		*cursor_plane_state = NULL;
 	struct intel_plane *plane;
@@ -2089,6 +2091,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		goto skip_sel_fetch_set_loop;
 	}
 
+	crtc_state->psr2_su_area.x1 = 0;
+	crtc_state->psr2_su_area.y1 = -1;
+	crtc_state->psr2_su_area.x2 = INT_MAX;
+	crtc_state->psr2_su_area.y2 = -1;
+
 	/*
 	 * Calculate minimal selective fetch area of each plane and calculate
 	 * the pipe damaged area.
@@ -2123,14 +2130,14 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 			if (old_plane_state->uapi.visible) {
 				damaged_area.y1 = old_plane_state->uapi.dst.y1;
 				damaged_area.y2 = old_plane_state->uapi.dst.y2;
-				clip_area_update(&pipe_clip, &damaged_area,
+				clip_area_update(&crtc_state->psr2_su_area, &damaged_area,
 						 &crtc_state->pipe_src);
 			}
 
 			if (new_plane_state->uapi.visible) {
 				damaged_area.y1 = new_plane_state->uapi.dst.y1;
 				damaged_area.y2 = new_plane_state->uapi.dst.y2;
-				clip_area_update(&pipe_clip, &damaged_area,
+				clip_area_update(&crtc_state->psr2_su_area, &damaged_area,
 						 &crtc_state->pipe_src);
 			}
 			continue;
@@ -2138,7 +2145,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 			/* If alpha changed mark the whole plane area as damaged */
 			damaged_area.y1 = new_plane_state->uapi.dst.y1;
 			damaged_area.y2 = new_plane_state->uapi.dst.y2;
-			clip_area_update(&pipe_clip, &damaged_area,
+			clip_area_update(&crtc_state->psr2_su_area, &damaged_area,
 					 &crtc_state->pipe_src);
 			continue;
 		}
@@ -2155,7 +2162,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		damaged_area.x1 += new_plane_state->uapi.dst.x1 - src.x1;
 		damaged_area.x2 += new_plane_state->uapi.dst.x1 - src.x1;
 
-		clip_area_update(&pipe_clip, &damaged_area, &crtc_state->pipe_src);
+		clip_area_update(&crtc_state->psr2_su_area, &damaged_area, &crtc_state->pipe_src);
 
 		/*
 		 * Cursor plane new state is stored to adjust su area to cover
@@ -2171,7 +2178,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	 * should identify cases where this happens and fix the area
 	 * calculation for those.
 	 */
-	if (pipe_clip.y1 == -1) {
+	if (crtc_state->psr2_su_area.y1 == -1) {
 		drm_info_once(&dev_priv->drm,
 			      "Selective fetch area calculation failed in pipe %c\n",
 			      pipe_name(crtc->pipe));
@@ -2185,7 +2192,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	if ((IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
 	     IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
 	    crtc_state->splitter.enable)
-		pipe_clip.y1 = 0;
+		crtc_state->psr2_su_area.y1 = 0;
 
 	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
 	if (ret)
@@ -2193,10 +2200,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 
 	/* Adjust su area to cover cursor fully as necessary */
 	if (cursor_plane_state)
-		intel_psr2_sel_fetch_et_alignment(crtc_state, cursor_plane_state,
-						  &pipe_clip);
+		intel_psr2_sel_fetch_et_alignment(crtc_state, cursor_plane_state);
 
-	intel_psr2_sel_fetch_pipe_alignment(crtc_state, &pipe_clip);
+	intel_psr2_sel_fetch_pipe_alignment(crtc_state);
 
 	/*
 	 * Now that we have the pipe damaged area check if it intersect with
@@ -2211,7 +2217,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		    !new_plane_state->uapi.visible)
 			continue;
 
-		inter = pipe_clip;
+		inter = crtc_state->psr2_su_area;
 		sel_fetch_area = &new_plane_state->psr2_sel_fetch_area;
 		if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst)) {
 			sel_fetch_area->y1 = -1;
@@ -2256,7 +2262,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	}
 
 skip_sel_fetch_set_loop:
-	psr2_man_trk_ctl_calc(crtc_state, &pipe_clip, full_update);
+	psr2_man_trk_ctl_calc(crtc_state, full_update);
 	return 0;
 }
 
-- 
2.34.1

