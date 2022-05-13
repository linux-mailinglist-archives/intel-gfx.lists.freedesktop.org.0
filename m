Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 010D35261E3
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 14:30:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4199A10FAA4;
	Fri, 13 May 2022 12:30:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C852810FAA4
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 12:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652445051; x=1683981051;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hxzszqo0+0GYDFdeVf7kAaPMss8fmZRgx+jwbutYDvg=;
 b=JSqctW6t0UQfdR9z0VsfKttsrDgogGznd9c53WJqCsdv95TRQNysuC3g
 /xtiAVcM53mUrLWXLNRNjR/G7WJbTc5UUoSgdr6sFUr7ome0hOZFpFdlK
 VObYVJYemlDHn+iwitvgTnseHDdMBAaUG4C0DLp+tX8kMwGIrA57lM1ZJ
 UY1wdLIteAvcLGwUcc0d9G57hOwgQRR8Z8aDo56elEXN6w5KZ/8KDNMfZ
 jgT+TOwKNthez4B3mTC6gj6zJ6kuontENnqiKQokmDc+Er5Oj1uDcyHfL
 gL8YOd0xkSAq2mqzPTrw10Klkjzwi/wF/jOaMUcO8Dhr16mfI/gCYztEm A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="333328362"
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="333328362"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 05:30:51 -0700
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="595200738"
Received: from dvkewale-mobl1.gar.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.33.181])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 05:30:50 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 May 2022 15:30:27 +0300
Message-Id: <20220513123027.655313-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220513123027.655313-1-jouni.hogander@intel.com>
References: <20220513123027.655313-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915: Ensure damage clip area is
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
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1f031ebc1456..18058252037d 100644
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

