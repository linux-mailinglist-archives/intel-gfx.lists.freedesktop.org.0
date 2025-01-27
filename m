Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF01A1DB31
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 18:22:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5728C10E587;
	Mon, 27 Jan 2025 17:22:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ed+/LTeE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EACC610E591
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 17:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737998531; x=1769534531;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=dxdlTmfKWKJxHLaGLQ3XU+h9iZLxMLc25w6vxn3M6TE=;
 b=ed+/LTeE0UtGdzd0h3Kyt7c8Hqauc9Q7uP/JLGhAZF1kXz62dblW145G
 yKL+gFkdHZqYNUwFHhKddeQavilcAJeBRpfOtMFjefYS3bOHlxSYI6M5i
 nPA+FCWaz7FroRwSNlvVyWdicDNxL3Q32eKob1yk+iKhHhumbyK9/qs2X
 wc/9y0Ig2X1LVhZl2HnNkuuk7So4GyfRiMmv6l3jvdTNjkkwuqCvGviRq
 9l72zd3glIEQbOa+F6omoPjCiyq1229HlSjIwdRC0Ye+I0/p8A5AEMT73
 RQH5HVXxVSObxhnUAK+cR4bZ0sYGuoP9+KNyO/k3DUFvKqgFXwE1AEyjM Q==;
X-CSE-ConnectionGUID: O1CQMPzaRDiiEo+BF3vEvQ==
X-CSE-MsgGUID: /Y4XHuRoTQuei7cX8DF41A==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38501385"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="38501385"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 09:22:10 -0800
X-CSE-ConnectionGUID: AVeLgwKFTBu3qtNlHo0pBw==
X-CSE-MsgGUID: 41xdCfdCS9uGVQ75ILEWTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="108610203"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Jan 2025 09:22:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Jan 2025 19:22:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/11] drm/i915: s/planar_slave/is_y_plane/
Date: Mon, 27 Jan 2025 19:21:49 +0200
Message-ID: <20250127172156.21928-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
References: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
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
same erminology to make life a bit less confusing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c   |  4 ++--
 drivers/gpu/drm/i915/display/intel_display.c        |  8 ++++----
 .../gpu/drm/i915/display/intel_display_debugfs.c    |  6 +++---
 drivers/gpu/drm/i915/display/intel_display_types.h  | 13 +++----------
 drivers/gpu/drm/i915/display/skl_universal_plane.c  |  3 +--
 drivers/gpu/drm/i915/display/skl_watermark.c        |  4 ++--
 6 files changed, 15 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index b7af33c5dd3f..650801cb400c 100644
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
index 68ae8770dc4f..875597007461 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4424,7 +4424,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 			continue;
 
 		plane_state->planar_linked_plane = NULL;
-		if (plane_state->planar_slave && !plane_state->uapi.visible) {
+		if (plane_state->is_y_plane && !plane_state->uapi.visible) {
 			crtc_state->enabled_planes &= ~BIT(plane->id);
 			crtc_state->active_planes &= ~BIT(plane->id);
 			crtc_state->update_planes |= BIT(plane->id);
@@ -4432,7 +4432,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 			crtc_state->rel_data_rate[plane->id] = 0;
 		}
 
-		plane_state->planar_slave = false;
+		plane_state->is_y_plane = false;
 	}
 
 	if (!crtc_state->nv12_planes)
@@ -4469,7 +4469,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 
 		plane_state->planar_linked_plane = linked;
 
-		linked_state->planar_slave = true;
+		linked_state->is_y_plane = true;
 		linked_state->planar_linked_plane = plane;
 		crtc_state->enabled_planes |= BIT(linked->id);
 		crtc_state->active_planes |= BIT(linked->id);
@@ -5812,7 +5812,7 @@ intel_verify_planes(struct intel_atomic_state *state)
 
 	for_each_new_intel_plane_in_state(state, plane,
 					  plane_state, i)
-		assert_plane(plane, plane_state->planar_slave ||
+		assert_plane(plane, plane_state->is_y_plane ||
 			     plane_state->uapi.visible);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 926f09c35084..95484eec3b0a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -365,8 +365,8 @@ static const char *plane_visibility(const struct intel_plane_state *plane_state)
 	if (plane_state->uapi.visible)
 		return "visible";
 
-	if (plane_state->planar_slave)
-		return "planar-slave";
+	if (plane_state->is_y_plane)
+		return "Y plane";
 
 	return "hidden";
 }
@@ -399,7 +399,7 @@ static void intel_plane_uapi_info(struct seq_file *m, struct intel_plane *plane)
 	if (plane_state->planar_linked_plane)
 		seq_printf(m, "\t\tplanar: Linked to [PLANE:%d:%s] as a %s\n",
 			   plane_state->planar_linked_plane->base.base.id, plane_state->planar_linked_plane->base.name,
-			   plane_state->planar_slave ? "slave" : "master");
+			   plane_state->is_y_plane ? "Y plane" : "UV plane");
 }
 
 static void intel_plane_hw_info(struct seq_file *m, struct intel_plane *plane)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index cb51b7936f93..5785c7b6bc39 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -638,6 +638,9 @@ struct intel_plane_state {
 	/* Plane state to display black pixels when pxp is borked */
 	bool force_black;
 
+	/* Acting as Y plane for another UV plane? */
+	bool is_y_plane;
+
 	/* plane control register */
 	u32 ctl;
 
@@ -677,16 +680,6 @@ struct intel_plane_state {
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
index 301ad3a22c4c..d5e5b76c5b38 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1380,8 +1380,7 @@ static void icl_plane_csc_load_black(struct intel_dsb *dsb,
 
 static int icl_plane_color_plane(const struct intel_plane_state *plane_state)
 {
-	/* Program the UV plane on planar master */
-	if (plane_state->planar_linked_plane && !plane_state->planar_slave)
+	if (plane_state->planar_linked_plane && !plane_state->is_y_plane)
 		return 1;
 	else
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 45fe4aaeb450..5ab8e8433dfd 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2259,8 +2259,8 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
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

