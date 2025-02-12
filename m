Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC54EA32C19
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:43:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E82D10E926;
	Wed, 12 Feb 2025 16:43:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N7bbf+cl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 058C210E924
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2025 16:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378625; x=1770914625;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PHV6YzfpGpl0+qRVOoTFQp/1quoPtKsPHmhk6wqNdL8=;
 b=N7bbf+clGj/ewSteYFfJrHPvIG4069BePBomfUfFzK5RuaDbFXNv69OZ
 LovTAbA2TTDJefC5p43V7RbYyec2L5NSrT3oj3ks/L9uTLAtzsvTnIRHi
 nrHYeHc3J4zhLHj2B7i8AVeBFu1M2h/hTj9eH7/9+o3s9tfhKeKlHTSKQ
 nRmF+NUltkPIiU6O+mh3YZ+EEm9zCpnbS99+N+47O/+BOfj7Y2gPsZ/5/
 rymJVIjPHEGeMUCSqfHuBm/YJnS/NPPkHKY6se1GPuvu3OZSWvZKHPjf1
 exsyGh1u+u8KYjUSwXQqT/w6UBezSrJxN5z4hIi5Qm7Skrksiz6ZRK9GD A==;
X-CSE-ConnectionGUID: 5rhlQhvvQyu/ZTjGSyGGhQ==
X-CSE-MsgGUID: 4eqnyEYdTsylDYnss9wDow==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="62514994"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="62514994"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:43:45 -0800
X-CSE-ConnectionGUID: fg7nUc1lSXqGoYxlfReBHQ==
X-CSE-MsgGUID: /XXoKwm0Txeg/rAk7pawgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113082620"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 08:43:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 18:43:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v2 04/10] drm/i915: s/planar_slave/is_y_plane/
Date: Wed, 12 Feb 2025 18:43:24 +0200
Message-ID: <20250212164330.16891-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250212164330.16891-1-ville.syrjala@linux.intel.com>
References: <20250212164330.16891-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Bspec talks about Y planes, not planar slaves. Switch to using the
same terminology to make life a bit less confusing.

v2: Adjust some comments too (Maarten)

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c   |  4 ++--
 drivers/gpu/drm/i915/display/intel_display.c        | 12 ++++++------
 .../gpu/drm/i915/display/intel_display_debugfs.c    |  6 +++---
 drivers/gpu/drm/i915/display/intel_display_types.h  | 13 +++----------
 drivers/gpu/drm/i915/display/skl_universal_plane.c  |  3 +--
 drivers/gpu/drm/i915/display/skl_watermark.c        |  4 ++--
 6 files changed, 17 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index f26b82b6821a..71263fbf0047 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -841,7 +841,7 @@ void intel_crtc_planes_update_noarm(struct intel_dsb *dsb,
 
 		/* TODO: for mailbox updates this should be skipped */
 		if (new_plane_state->uapi.visible ||
-		    new_plane_state->planar_slave)
+		    new_plane_state->is_y_plane)
 			intel_plane_update_noarm(dsb, plane,
 						 new_crtc_state, new_plane_state);
 	}
@@ -874,7 +874,7 @@ static void skl_crtc_planes_update_arm(struct intel_dsb *dsb,
 		 * would have to be called here as well.
 		 */
 		if (new_plane_state->uapi.visible ||
-		    new_plane_state->planar_slave)
+		    new_plane_state->is_y_plane)
 			intel_plane_update_arm(dsb, plane, new_crtc_state, new_plane_state);
 		else
 			intel_plane_disable_arm(dsb, plane, new_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3b4c7ab35592..df477a00a315 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4425,7 +4425,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 		return 0;
 
 	/*
-	 * Destroy all old plane links and make the slave plane invisible
+	 * Destroy all old plane links and make the Y plane invisible
 	 * in the crtc_state->active_planes mask.
 	 */
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
@@ -4433,7 +4433,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 			continue;
 
 		plane_state->planar_linked_plane = NULL;
-		if (plane_state->planar_slave && !plane_state->uapi.visible) {
+		if (plane_state->is_y_plane && !plane_state->uapi.visible) {
 			crtc_state->enabled_planes &= ~BIT(plane->id);
 			crtc_state->active_planes &= ~BIT(plane->id);
 			crtc_state->update_planes |= BIT(plane->id);
@@ -4441,7 +4441,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 			crtc_state->rel_data_rate[plane->id] = 0;
 		}
 
-		plane_state->planar_slave = false;
+		plane_state->is_y_plane = false;
 	}
 
 	if (!crtc_state->nv12_planes)
@@ -4478,7 +4478,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 
 		plane_state->planar_linked_plane = linked;
 
-		linked_state->planar_slave = true;
+		linked_state->is_y_plane = true;
 		linked_state->planar_linked_plane = plane;
 		crtc_state->enabled_planes |= BIT(linked->id);
 		crtc_state->active_planes |= BIT(linked->id);
@@ -4491,7 +4491,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 			    plane->base.base.id, plane->base.name,
 			    linked->base.base.id, linked->base.name);
 
-		/* Copy parameters to slave plane */
+		/* Copy parameters to Y plane */
 		linked_state->ctl = plane_state->ctl | PLANE_CTL_YUV420_Y_PLANE;
 		linked_state->color_ctl = plane_state->color_ctl;
 		linked_state->view = plane_state->view;
@@ -5825,7 +5825,7 @@ intel_verify_planes(struct intel_atomic_state *state)
 
 	for_each_new_intel_plane_in_state(state, plane,
 					  plane_state, i)
-		assert_plane(plane, plane_state->planar_slave ||
+		assert_plane(plane, plane_state->is_y_plane ||
 			     plane_state->uapi.visible);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index a646560f4f5b..9de7e512c0ab 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -330,8 +330,8 @@ static const char *plane_visibility(const struct intel_plane_state *plane_state)
 	if (plane_state->uapi.visible)
 		return "visible";
 
-	if (plane_state->planar_slave)
-		return "planar-slave";
+	if (plane_state->is_y_plane)
+		return "Y plane";
 
 	return "hidden";
 }
@@ -364,7 +364,7 @@ static void intel_plane_uapi_info(struct seq_file *m, struct intel_plane *plane)
 	if (plane_state->planar_linked_plane)
 		seq_printf(m, "\t\tplanar: Linked to [PLANE:%d:%s] as a %s\n",
 			   plane_state->planar_linked_plane->base.base.id, plane_state->planar_linked_plane->base.name,
-			   plane_state->planar_slave ? "slave" : "master");
+			   plane_state->is_y_plane ? "Y plane" : "UV plane");
 }
 
 static void intel_plane_hw_info(struct seq_file *m, struct intel_plane *plane)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6a82c6ade549..6c1c88ed0ba6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -640,6 +640,9 @@ struct intel_plane_state {
 	/* Plane state to display black pixels when pxp is borked */
 	bool force_black;
 
+	/* Acting as Y plane for another UV plane? */
+	bool is_y_plane;
+
 	/* plane control register */
 	u32 ctl;
 
@@ -679,16 +682,6 @@ struct intel_plane_state {
 	 */
 	struct intel_plane *planar_linked_plane;
 
-	/*
-	 * planar_slave:
-	 * If set don't update use the linked plane's state for updating
-	 * this plane during atomic commit with the update_slave() callback.
-	 *
-	 * It's also used by the watermark code to ignore wm calculations on
-	 * this plane. They're calculated by the linked plane's wm code.
-	 */
-	u32 planar_slave;
-
 	struct drm_intel_sprite_colorkey ckey;
 
 	struct drm_rect psr2_sel_fetch_area;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index eb85d3d6cdc3..4b8732ae65aa 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1375,8 +1375,7 @@ static void icl_plane_csc_load_black(struct intel_dsb *dsb,
 
 static int icl_plane_color_plane(const struct intel_plane_state *plane_state)
 {
-	/* Program the UV plane on planar master */
-	if (plane_state->planar_linked_plane && !plane_state->planar_slave)
+	if (plane_state->planar_linked_plane && !plane_state->is_y_plane)
 		return 1;
 	else
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 9e97fc703903..10a1daad28eb 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2260,8 +2260,8 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
 	struct skl_plane_wm *wm = &crtc_state->wm.skl.raw.planes[plane_id];
 	int ret;
 
-	/* Watermarks calculated in master */
-	if (plane_state->planar_slave)
+	/* Watermarks calculated on UV plane */
+	if (plane_state->is_y_plane)
 		return 0;
 
 	memset(wm, 0, sizeof(*wm));
-- 
2.45.3

