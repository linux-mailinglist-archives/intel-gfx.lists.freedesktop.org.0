Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B51051F53B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 09:24:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 702E210EF59;
	Mon,  9 May 2022 07:24:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BEF210F00B
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 07:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652081062; x=1683617062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VlgdfH1KeE9uDBlnmJKEu/hhjQ8q6vYgNQTa4ZcHHVs=;
 b=mxNz5OgEPVrNi/RMLTDoJC598dFo8hravo/EKP2cGYpnA1OPV1TSEoSN
 F1gCxBa2tLc6a5aAU3HdO6oCM1kvmonofzXnA8P6fIr1bDPUVrjiihqi+
 xaqSiVBp6zhVHjFjP2q53Ms1sq8HPB0RVftpAx54RpXwGRAGBMNbyQqPl
 wA4PSc3XrBEYH7KC0sNox5ysr+OFvxgJLeL3KWaM9c7V7afP4b46EwgRy
 T6fGKZ45mWppYBoJ/e3wG52xBYTuW+5FEUpC6X25LzjfXJyeC1IuZkElY
 UYa8ynoc7Do+9pFgk9fR5pY7YxHkb7e6oskqKs3KZmWGUyt9Kwzs/GiVg Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="249503539"
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="249503539"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 00:24:22 -0700
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="710390670"
Received: from jparmijo-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.219.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 00:24:20 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 May 2022 10:24:04 +0300
Message-Id: <20220509072404.1423018-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220509072404.1423018-1-jouni.hogander@intel.com>
References: <20220509072404.1423018-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: Ensure damage clip area is
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
Cc: Mark Pearson <markpearson@lenovo.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Current update area calculation is not handling situation where
e.g. cursor plane is fully or partially outside pipe area.

Fix this by checking damage area against pipe_src area using
drm_rect_intersect.

v2: Set x1 and x2 in damaged_area initialization

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5440
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Tested-by: Mark Pearson <markpearson@lenovo.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8c099d24de86..ecd062a0fea4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1708,7 +1708,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	 */
 	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
 					     new_plane_state, i) {
-		struct drm_rect src, damaged_area = { .y1 = -1 };
+		/* Set damaged_area x1 and x2 for drm_rect_intersect usage */
+		struct drm_rect src, damaged_area = { .x1 = 0, .y1 = -1,
+						      .x2 = INT_MAX };
 		struct drm_atomic_helper_damage_iter iter;
 		struct drm_rect clip;
 
@@ -1735,20 +1737,23 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 			if (old_plane_state->uapi.visible) {
 				damaged_area.y1 = old_plane_state->uapi.dst.y1;
 				damaged_area.y2 = old_plane_state->uapi.dst.y2;
-				clip_area_update(&pipe_clip, &damaged_area);
+				if (drm_rect_intersect(&damaged_area, &crtc_state->pipe_src))
+					clip_area_update(&pipe_clip, &damaged_area);
 			}
 
 			if (new_plane_state->uapi.visible) {
 				damaged_area.y1 = new_plane_state->uapi.dst.y1;
 				damaged_area.y2 = new_plane_state->uapi.dst.y2;
-				clip_area_update(&pipe_clip, &damaged_area);
+				if (drm_rect_intersect(&damaged_area, &crtc_state->pipe_src))
+					clip_area_update(&pipe_clip, &damaged_area);
 			}
 			continue;
 		} else if (new_plane_state->uapi.alpha != old_plane_state->uapi.alpha) {
 			/* If alpha changed mark the whole plane area as damaged */
 			damaged_area.y1 = new_plane_state->uapi.dst.y1;
 			damaged_area.y2 = new_plane_state->uapi.dst.y2;
-			clip_area_update(&pipe_clip, &damaged_area);
+			if (drm_rect_intersect(&damaged_area, &crtc_state->pipe_src))
+				clip_area_update(&pipe_clip, &damaged_area);
 			continue;
 		}
 
@@ -1767,7 +1772,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 
 		damaged_area.y1 += new_plane_state->uapi.dst.y1 - src.y1;
 		damaged_area.y2 += new_plane_state->uapi.dst.y1 - src.y1;
-		clip_area_update(&pipe_clip, &damaged_area);
+
+		if (drm_rect_intersect(&damaged_area, &crtc_state->pipe_src))
+			clip_area_update(&pipe_clip, &damaged_area);
 	}
 
 	if (pipe_clip.y1 == -1)
-- 
2.25.1

