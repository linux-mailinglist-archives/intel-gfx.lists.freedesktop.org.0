Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BB752642F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 16:28:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B05010E06E;
	Fri, 13 May 2022 14:28:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 054C710E06E
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 14:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652452120; x=1683988120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1mAGfn7Wz/zglOLpkP62x7Y6GKsjgeFvi4x04Eu4dDI=;
 b=MpDBkg3MZ8w+N/RRGTZuA0FEEfc+lzAaMYCyKahtiHlsSa1q8wzit5q+
 hY/K+Bxa6+AELN/9jo1uiXsRhPq0PA4qxTAMf8UM1nVFh1cMUzlXkBWi2
 6gklqB9YiutLsISs9NWtf8/02o/GoxyZNK4+/BN38obM6DNESQWQiNKIC
 3zgrHu8i2uD62vEAz4s44bfufnx0XFNExDf2Awtr1Oi7seQkEOS3PaXIL
 D0OVMUzUz8jNRuXzqu+s14AygXFnNz4hDXOu6qs4/u309GqRryKeN8sQo
 VPfVXZ3Gh5eJQXHwoPxIx828i20wiQ9dVV8Ejepm7J7xYDgFt/lAd2v1n A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10346"; a="270450187"
X-IronPort-AV: E=Sophos;i="5.91,223,1647327600"; d="scan'208";a="270450187"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 07:28:39 -0700
X-IronPort-AV: E=Sophos;i="5.91,223,1647327600"; d="scan'208";a="543277402"
Received: from dvkewale-mobl1.gar.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.33.181])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 07:28:38 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 May 2022 17:28:11 +0300
Message-Id: <20220513142811.779331-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220513142811.779331-1-jouni.hogander@intel.com>
References: <20220513142811.779331-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/2] drm/i915: Ensure damage clip area is
 within pipe area
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

Current update area calculation is not handling situation where
e.g. cursor plane is fully or partially outside pipe area.

Fix this by checking damage area against pipe_src area using
drm_rect_intersect.

v2: Set x1 and x2 in damaged_area initialization
v3: Move drm_rect_intersect into clip_area_update
v4: draw_area -> pipe_src

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5440
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index fecdaaeac39e..36356893c7ca 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1618,8 +1618,12 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 }
 
 static void clip_area_update(struct drm_rect *overlap_damage_area,
-			     struct drm_rect *damage_area)
+			     struct drm_rect *damage_area,
+			     struct drm_rect *pipe_src)
 {
+	if (!drm_rect_intersect(damage_area, pipe_src))
+		return;
+
 	if (overlap_damage_area->y1 == -1) {
 		overlap_damage_area->y1 = damage_area->y1;
 		overlap_damage_area->y2 = damage_area->y2;
@@ -1709,7 +1713,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	 */
 	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
 					     new_plane_state, i) {
-		struct drm_rect src, damaged_area = { .y1 = -1 };
+		struct drm_rect src, damaged_area = { .x1 = 0, .y1 = -1,
+						      .x2 = INT_MAX };
 		struct drm_atomic_helper_damage_iter iter;
 		struct drm_rect clip;
 
@@ -1736,20 +1741,23 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 			if (old_plane_state->uapi.visible) {
 				damaged_area.y1 = old_plane_state->uapi.dst.y1;
 				damaged_area.y2 = old_plane_state->uapi.dst.y2;
-				clip_area_update(&pipe_clip, &damaged_area);
+				clip_area_update(&pipe_clip, &damaged_area,
+						 &crtc_state->pipe_src);
 			}
 
 			if (new_plane_state->uapi.visible) {
 				damaged_area.y1 = new_plane_state->uapi.dst.y1;
 				damaged_area.y2 = new_plane_state->uapi.dst.y2;
-				clip_area_update(&pipe_clip, &damaged_area);
+				clip_area_update(&pipe_clip, &damaged_area,
+						 &crtc_state->pipe_src);
 			}
 			continue;
 		} else if (new_plane_state->uapi.alpha != old_plane_state->uapi.alpha) {
 			/* If alpha changed mark the whole plane area as damaged */
 			damaged_area.y1 = new_plane_state->uapi.dst.y1;
 			damaged_area.y2 = new_plane_state->uapi.dst.y2;
-			clip_area_update(&pipe_clip, &damaged_area);
+			clip_area_update(&pipe_clip, &damaged_area,
+					 &crtc_state->pipe_src);
 			continue;
 		}
 
@@ -1760,7 +1768,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 						   &new_plane_state->uapi);
 		drm_atomic_for_each_plane_damage(&iter, &clip) {
 			if (drm_rect_intersect(&clip, &src))
-				clip_area_update(&damaged_area, &clip);
+				clip_area_update(&damaged_area, &clip,
+						 &crtc_state->pipe_src);
 		}
 
 		if (damaged_area.y1 == -1)
@@ -1768,7 +1777,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 
 		damaged_area.y1 += new_plane_state->uapi.dst.y1 - src.y1;
 		damaged_area.y2 += new_plane_state->uapi.dst.y1 - src.y1;
-		clip_area_update(&pipe_clip, &damaged_area);
+		clip_area_update(&pipe_clip, &damaged_area, &crtc_state->pipe_src);
 	}
 
 	/*
-- 
2.25.1

