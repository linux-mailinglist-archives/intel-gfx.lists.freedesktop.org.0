Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFB951D0E9
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 07:51:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F4A10E25F;
	Fri,  6 May 2022 05:51:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7177410E25F
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 05:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651816277; x=1683352277;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BZP+hLTI8fCTkYBqt4sq9KCs4nixOUo55MMGTZRJ6jI=;
 b=oKXtPxN0HG3BlL6N8pA7V8UOpuwcHvEWVMuBX2GJ95hHe7fb2dSyUupZ
 Y00quMsUoIFZ/WD7lO22qnCi6Sc74dbscKrxvdxFIZ/6KmcQpb7Kam7o+
 +o4AHnTeDEosJZZQXM4QzMGRDaqeaDL6xr1POp7HIvSxoHFb7/0YrUJ4+
 vVT7v6Bv9ZcLf3DX8iI3IOgddUcIxTsLQR6D8EPmZIoDxKGbStJasV+KV
 9Gn9Q1FoR/80rxS6x4m2xRvBDWpVrO4q11mLM8QxeutuFEdNwPRxQE759
 vLebgVye5owKOT1UKwrTs9pGvlRbERv2zJlV6D7bgAqig+dkUTZ6GkB+j g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="293567217"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="293567217"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 22:51:17 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="585788742"
Received: from hoturkar-mobl.gar.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.34.121])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 22:51:13 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 May 2022 08:48:34 +0300
Message-Id: <20220506054834.2822650-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506054834.2822650-1-jouni.hogander@intel.com>
References: <20220506054834.2822650-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Ensure damage clip area is within
 pipe area
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

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5440
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Tested-by: Mark Pearson <markpearson@lenovo.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8c099d24de86..5229ba89a079 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1724,6 +1724,10 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 			break;
 		}
 
+		/* Set x1 and x2 for drm_rect_intersect usage */
+		damaged_area.x1 = 0;
+		damaged_area.x2 = INT_MAX;
+
 		/*
 		 * If visibility or plane moved, mark the whole plane area as
 		 * damaged as it needs to be complete redraw in the new and old
@@ -1735,20 +1739,23 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
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
 
@@ -1767,7 +1774,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 
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

