Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F30BB7F0D76
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Nov 2023 09:26:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74B8010E1EF;
	Mon, 20 Nov 2023 08:26:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07A2310E1EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 08:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700468788; x=1732004788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oBkN+lp+ToP4NZlsJz6M3NXXeaG17tWtQE9cIyZbeSg=;
 b=b95jWBVV11wasWj45EnM1o1Nm9fTvbobTMwXkXAjgdlHGnC0h3gVmdSa
 eR5R0LKP65VfG/Sm1VMV/xicS+mgRTeGdpqRnj5sCB7XW3F9CpLCC5vId
 lsCVg46qy4+qQdMEaK4Vp1ogAUd+VI6Jc7M/+QawYboqvqwouXwR8rFqo
 chleAIThLyPmb4NBSgaj1uHTRyZNOW2zGTzgg+2WpiWHokQ0aDPO3/UXI
 tbFo9qPMUkoTHIrlPkLl3KUMJsosX9zqXjEeQnCRli1oLGTNtefjX03GU
 fEAKKpFybuTUffO/M4ROIKJ0PMcPyhxwxnYQyey2C2OI7dB37faAPCaAI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="4750882"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; 
   d="scan'208";a="4750882"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 00:26:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="883787734"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="883787734"
Received: from dbailonh-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.57.59])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 00:26:26 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Nov 2023 10:26:06 +0200
Message-Id: <20231120082606.3156488-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231120082606.3156488-1-jouni.hogander@intel.com>
References: <20231120082606.3156488-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/psr: Add proper handling for
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
This is suboptimal as we might be fetching for memory for planes that are
not part of selective update.

Fix this by adding proper handling for disabling plane selective fetch:
If plane previously part of selective update is now not part of update:
Add it into updated planes and let the plane configuration to disable
selective fetch for it.

v3: Checkpatch warnings fixed
v2:
  - Add setting sel_fetch_area->y1/y2 to -1
  - Remove setting again local sel_fetch_area variable

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   | 21 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_psr.c      | 13 +++++++++++-
 .../drm/i915/display/skl_universal_plane.c    |  7 +++++--
 3 files changed, 29 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index c025cafda7d9..a515ae2831f8 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -485,22 +485,21 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
-					     const struct intel_crtc_state *crtc_state,
-					     const struct intel_plane_state *plane_state)
+static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
+					      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
-			  plane_state->ctl);
+	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
 }
 
-static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
-					      const struct intel_crtc_state *crtc_state)
+static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
+					     const struct intel_crtc_state *crtc_state,
+					     const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
@@ -508,7 +507,11 @@ static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
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
index 87eb1535ba98..239365c666e2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2173,8 +2173,19 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
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
+
 			continue;
+		}
 
 		if (!psr2_sel_fetch_plane_state_supported(new_plane_state)) {
 			full_update = true;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 7cafa75c0802..9b8386e7e19c 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1336,8 +1336,11 @@ static void icl_plane_update_sel_fetch_arm(struct intel_plane *plane,
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
-			  PLANE_SEL_FETCH_CTL_ENABLE);
+	if (drm_rect_height(&plane_state->psr2_sel_fetch_area) > 0)
+		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
+				  PLANE_SEL_FETCH_CTL_ENABLE);
+	else
+		icl_plane_disable_sel_fetch_arm(plane, crtc_state);
 }
 
 static void
-- 
2.34.1

