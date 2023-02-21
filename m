Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D46569E16D
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 14:37:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DDA210E180;
	Tue, 21 Feb 2023 13:37:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B38BC10E180
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 13:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676986634; x=1708522634;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ihd19b7Hs514ErfihlFLP7q7oTJzUo3VndMs5XRAGs0=;
 b=TwWmqSRWdcLP+w7MG3fdMNWwOgW2CTlx8hKSGnfPajY7s3rY9bl/+jpQ
 LVnjGl1RYdcAcjE2u4578pDukpe8KJavaT1kpLla3cKYrR61gu8HP+W8+
 bYQooG9C29ZhvoZdV4qi2xuq1LXptY+5z1wxBhI8g+F4/N2u2VpOeSBfL
 S4TPlCrVYUt/yLeQu5LZKikEhS5LErQG9Uw9kBWoDfS9f0VfWRAqEsJez
 9II4Mlt89RXoMx5eKE0KMyr/VWBRp0KpcUp/iQURyjjtRrAzmkiHitGKz
 eUAzW3u6IOkn3ynNgem7sRV9zYMBbQOJnfDRuqA5rac86SWD6J4MOAbzH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="334826607"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="334826607"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 05:37:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="621500640"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="621500640"
Received: from etrunovx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.214.204])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 05:37:13 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 15:36:35 +0200
Message-Id: <20230221133635.3581561-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230221133635.3581561-1-jouni.hogander@intel.com>
References: <20230221133635.3581561-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 2/2] drm/i915/psr: Add proper handling for
 disabling sel fetch for planes
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

Currently we are enabling selective fetch for all planes that are visible.
This is suboptimal as we are all the time fetching for memory for planes
that are not part of selective update.

Fix this by adding proper handling for disabling plane selective fetch:
If plane previously in part of selective update is now not part of update:
Add it into updated planes and let the plane configuration to disable
selective fetch for it.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   | 22 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_psr.c      | 19 ++++++++++++----
 .../drm/i915/display/skl_universal_plane.c    |  8 +++++--
 3 files changed, 34 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 49ab7ebdeb32..ac1c9052fb5a 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -485,22 +485,22 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
-					     const struct intel_crtc_state *crtc_state,
-					     const struct intel_plane_state *plane_state)
+static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
+					    const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
-			  plane_state->ctl);
+
+	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
 }
 
-static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
-					    const struct intel_crtc_state *crtc_state)
+static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
+					     const struct intel_crtc_state *crtc_state,
+					     const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
@@ -508,7 +508,11 @@ static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
+	if (drm_rect_height(&plane_state->psr2_sel_fetch_area) > 0)
+		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
+				  plane_state->ctl);
+	else
+		i9xx_cursor_disable_sel_fetch_arm(plane, crtc_state);
 }
 
 /* TODO: split into noarm+arm pair */
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6e1d4d547804..b3bb0dbc8daf 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1750,15 +1750,24 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 			continue;
 
 		inter = pipe_clip;
-		if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst))
+		sel_fetch_area = &new_plane_state->psr2_sel_fetch_area;
+		if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst)) {
+			sel_fetch_area->y1 = -1;
+			sel_fetch_area->y2 = -1;
+			/*
+			 * if plane sel fetch was previously enabled ->
+			 * disable it
+			 */
+			if (drm_rect_height(&old_plane_state->psr2_sel_fetch_area) > 0)
+				crtc_state->update_planes |= BIT(plane->id);
 			continue;
+		}
 
 		if (!psr2_sel_fetch_plane_state_supported(new_plane_state)) {
 			full_update = true;
 			break;
 		}
 
-		sel_fetch_area = &new_plane_state->psr2_sel_fetch_area;
 		sel_fetch_area->y1 = inter.y1 - new_plane_state->uapi.dst.y1;
 		sel_fetch_area->y2 = inter.y2 - new_plane_state->uapi.dst.y1;
 		crtc_state->update_planes |= BIT(plane->id);
@@ -1771,11 +1780,13 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 			struct intel_plane_state *linked_new_plane_state;
 			struct drm_rect *linked_sel_fetch_area;
 
-			linked_new_plane_state = intel_atomic_get_plane_state(state, linked);
+			linked_new_plane_state =
+				intel_atomic_get_plane_state(state, linked);
 			if (IS_ERR(linked_new_plane_state))
 				return PTR_ERR(linked_new_plane_state);
 
-			linked_sel_fetch_area = &linked_new_plane_state->psr2_sel_fetch_area;
+			linked_sel_fetch_area =
+				&linked_new_plane_state->psr2_sel_fetch_area;
 			linked_sel_fetch_area->y1 = sel_fetch_area->y1;
 			linked_sel_fetch_area->y2 = sel_fetch_area->y2;
 			crtc_state->update_planes |= BIT(linked->id);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index d397bc885c37..05e804bfaeb9 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1327,8 +1327,12 @@ static void icl_plane_update_sel_fetch_arm(struct intel_plane *plane,
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
-			  PLANE_SEL_FETCH_CTL_ENABLE);
+
+	if (drm_rect_height(&plane_state->psr2_sel_fetch_area) > 0)
+		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
+				  PLANE_SEL_FETCH_CTL_ENABLE);
+	else
+		icl_plane_disable_sel_fetch_arm(plane, crtc_state);
 }
 
 static void
-- 
2.34.1

