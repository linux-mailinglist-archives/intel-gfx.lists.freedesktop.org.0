Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E298179B5
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:30:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A35810E2A8;
	Mon, 18 Dec 2023 18:30:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FEB410E36C
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702924224; x=1734460224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ouVJ2VJOPIF42rsprk6e+2EcV1sF2ID8M6C8gg32YUo=;
 b=GeuwoT0mXLr6O3bYgDQiG22IFhj5t2n2UXAKmQ6giw/FOvEPOOl8Vigo
 RpdGCoUAeT47Vc/bed3xSpSywHq5YZjU/AVFiy15TyEM7LoYCWGk164n9
 bHjuzATQ3f2rKyLdni8UcxstAi9nd2Y3N/nklC6aB2qH6Xd/GhU3mvGrA
 qW/80syxWf+O144J8Oa/JzDFlQEPGoSG0GSCbqiC+JyaD9PFzl5BrvH93
 En10XnDgFr1yA+cPP7iX5ooH/9NC1NI9ixTPeW6DNQSOhUZMm2wJD++O8
 pchgME21tGVjGcwoc8MHBHup6pxmplrAdUdbDHAP/hDFn+oAVRkNmpSWj w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="392714116"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="392714116"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 09:50:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="779176576"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="779176576"
Received: from etrunovx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.35.24])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 09:50:20 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/7] drm/i915/psr: Extend SU area to cover cursor fully if
 needed
Date: Mon, 18 Dec 2023 19:49:59 +0200
Message-Id: <20231218175004.52875-3-jouni.hogander@intel.com>
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

In case early transport is enabled SU area needs to be extended
to cover cursor area fully when cursor is in SU area.

Bspec: 68927

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 38 +++++++++++++++++++++++-
 1 file changed, 37 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b6e2e70e1290..8a350b9e33cd 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2011,6 +2011,29 @@ static void intel_psr2_sel_fetch_pipe_alignment(const struct intel_crtc_state *c
 		pipe_clip->y2 = ((pipe_clip->y2 / y_alignment) + 1) * y_alignment;
 }
 
+/*
+ * When early transport is in use we need to extend SU area to cover
+ * cursor fully when cursor is in SU area.
+ */
+static void
+intel_psr2_sel_fetch_et_alignment(struct intel_crtc_state *crtc_state,
+				  struct intel_plane_state *cursor_state,
+				  struct drm_rect *pipe_clip)
+{
+	struct drm_rect inter;
+
+	if (!crtc_state->enable_psr2_su_region_et ||
+	    !cursor_state->uapi.visible)
+		return;
+
+	inter = *pipe_clip;
+	if (!drm_rect_intersect(&inter, &cursor_state->uapi.dst))
+		return;
+
+	clip_area_update(pipe_clip, &cursor_state->uapi.dst,
+			 &crtc_state->pipe_src);
+}
+
 /*
  * TODO: Not clear how to handle planes with negative position,
  * also planes are not updated if they have a negative X
@@ -2052,7 +2075,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_rect pipe_clip = { .x1 = 0, .y1 = -1, .x2 = INT_MAX, .y2 = -1 };
-	struct intel_plane_state *new_plane_state, *old_plane_state;
+	struct intel_plane_state *new_plane_state, *old_plane_state,
+		*cursor_plane_state = NULL;
 	struct intel_plane *plane;
 	bool full_update = false;
 	int i, ret;
@@ -2132,6 +2156,13 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		damaged_area.x2 += new_plane_state->uapi.dst.x1 - src.x1;
 
 		clip_area_update(&pipe_clip, &damaged_area, &crtc_state->pipe_src);
+
+		/*
+		 * Cursor plane new state is stored to adjust su area to cover
+		 * cursor are fully.
+		 */
+		if (plane->id == PLANE_CURSOR)
+			cursor_plane_state = new_plane_state;
 	}
 
 	/*
@@ -2160,6 +2191,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	/* Adjust su area to cover cursor fully as necessary */
+	if (cursor_plane_state)
+		intel_psr2_sel_fetch_et_alignment(crtc_state, cursor_plane_state,
+						  &pipe_clip);
+
 	intel_psr2_sel_fetch_pipe_alignment(crtc_state, &pipe_clip);
 
 	/*
-- 
2.34.1

