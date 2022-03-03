Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C72C4CC5BB
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 20:12:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A32B210EF15;
	Thu,  3 Mar 2022 19:12:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E45C10EF15
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 19:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646334744; x=1677870744;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oPxdaYGNA0b2kbjLPEIDdN/+U4aFWmVVmVZcwiFkwcM=;
 b=E0vlnjveZwMHV+OgTdZRcCKNDheBqVyvMjoAcaovx6TuQAejnuIjTjaQ
 l1XzWGU5fcAO4min5daQgu5G5KW6J1dYgJMg/JW+63+/FwzgTylBcFWfa
 5qrzjTmWW8JWAx4Iqv3phYmLiltXi+gkniqQlXX8GysURH/EJeCoGL3Wg
 wzyqRyw2Y5RooHNTlPyAbKrab1G6nWF5L1U1DIS7ZrfO+rUvGJ1Wn8B9C
 m74bjnZhwl+scgz3MLYIZ7HH87OvCO/eKJ/jCDedDm/dqdL3C1JRn6Kqb
 F9lk7ONEV7FN7yU1Drg98APmsh6ms4lnGreSe/sKvjpdtdi/MxMZA+4De g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="253517382"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="253517382"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 11:12:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="576619084"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 03 Mar 2022 11:12:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Mar 2022 21:12:17 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 21:12:01 +0200
Message-Id: <20220303191207.27931-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
References: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/9] drm/i915: Pre-calculate plane relative
 data rate
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

Handle the plane relative data rate in exactly the same
way as we already handle the real data rate. Ie. pre-calculate
it during intel_plane_atomic_check_with_state(), and assign/clear
it for the Y plane as needed. This should guarantee that the
tracking is 100% consistent, and makes me have to think less
when the same apporach is used by both types of data rate.

We might even want to consider replacing the relative
data rate with the real data rate entirely, but it's not
clear if that will produce less optimal plane ddb
allocations. So for now lets keep using the current approach.

v2: Rebase due to async flip wm optimization

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  64 ++++++
 drivers/gpu/drm/i915/display/intel_display.c  |   5 +
 .../drm/i915/display/intel_display_types.h    |   6 +-
 drivers/gpu/drm/i915/intel_pm.c               | 187 ++++--------------
 4 files changed, 108 insertions(+), 154 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index b0aa65845f90..6ed2bf5b3942 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -193,6 +193,57 @@ unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
 		fb->format->cpp[color_plane];
 }
 
+static bool
+use_min_ddb(const struct intel_crtc_state *crtc_state,
+	    struct intel_plane *plane)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+
+	return DISPLAY_VER(i915) >= 13 &&
+	       crtc_state->uapi.async_flip &&
+	       plane->async_flip;
+}
+
+static unsigned int
+intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
+			       const struct intel_plane_state *plane_state,
+			       int color_plane)
+{
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	int width, height;
+
+	if (plane->id == PLANE_CURSOR)
+		return 0;
+
+	if (!plane_state->uapi.visible)
+		return 0;
+
+	/*
+	 * We calculate extra ddb based on ratio plane rate/total data rate
+	 * in case, in some cases we should not allocate extra ddb for the plane,
+	 * so do not count its data rate, if this is the case.
+	 */
+	if (use_min_ddb(crtc_state, plane))
+		return 0;
+
+	/*
+	 * Src coordinates are already rotated by 270 degrees for
+	 * the 90/270 degree plane rotation cases (to match the
+	 * GTT mapping), hence no need to account for rotation here.
+	 */
+	width = drm_rect_width(&plane_state->uapi.src) >> 16;
+	height = drm_rect_height(&plane_state->uapi.src) >> 16;
+
+	/* UV plane does 1/2 pixel sub-sampling */
+	if (color_plane == 1) {
+		width /= 2;
+		height /= 2;
+	}
+
+	return width * height * fb->format->cpp[color_plane];
+}
+
 int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
 			       struct intel_plane *plane,
 			       bool *need_cdclk_calc)
@@ -314,6 +365,8 @@ void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 	crtc_state->c8_planes &= ~BIT(plane->id);
 	crtc_state->data_rate[plane->id] = 0;
 	crtc_state->data_rate_y[plane->id] = 0;
+	crtc_state->rel_data_rate[plane->id] = 0;
+	crtc_state->rel_data_rate_y[plane->id] = 0;
 	crtc_state->min_cdclk[plane->id] = 0;
 
 	plane_state->uapi.visible = false;
@@ -545,9 +598,20 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 			intel_plane_data_rate(new_crtc_state, new_plane_state, 0);
 		new_crtc_state->data_rate[plane->id] =
 			intel_plane_data_rate(new_crtc_state, new_plane_state, 1);
+
+		new_crtc_state->rel_data_rate_y[plane->id] =
+			intel_plane_relative_data_rate(new_crtc_state,
+						       new_plane_state, 0);
+		new_crtc_state->rel_data_rate[plane->id] =
+			intel_plane_relative_data_rate(new_crtc_state,
+						       new_plane_state, 1);
 	} else if (new_plane_state->uapi.visible) {
 		new_crtc_state->data_rate[plane->id] =
 			intel_plane_data_rate(new_crtc_state, new_plane_state, 0);
+
+		new_crtc_state->rel_data_rate[plane->id] =
+			intel_plane_relative_data_rate(new_crtc_state,
+						       new_plane_state, 0);
 	}
 
 	return intel_plane_atomic_calc_changes(old_crtc_state, new_crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5e3174dde876..45f05a9ea03e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -786,6 +786,8 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	fixup_plane_bitmasks(crtc_state);
 	crtc_state->data_rate[plane->id] = 0;
 	crtc_state->data_rate_y[plane->id] = 0;
+	crtc_state->rel_data_rate[plane->id] = 0;
+	crtc_state->rel_data_rate_y[plane->id] = 0;
 	crtc_state->min_cdclk[plane->id] = 0;
 
 	if ((crtc_state->active_planes & ~BIT(PLANE_CURSOR)) == 0 &&
@@ -4764,6 +4766,7 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 			crtc_state->active_planes &= ~BIT(plane->id);
 			crtc_state->update_planes |= BIT(plane->id);
 			crtc_state->data_rate[plane->id] = 0;
+			crtc_state->rel_data_rate[plane->id] = 0;
 		}
 
 		plane_state->planar_slave = false;
@@ -4810,6 +4813,8 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 		crtc_state->update_planes |= BIT(linked->id);
 		crtc_state->data_rate[linked->id] =
 			crtc_state->data_rate_y[plane->id];
+		crtc_state->rel_data_rate[linked->id] =
+			crtc_state->rel_data_rate_y[plane->id];
 		drm_dbg_kms(&dev_priv->drm, "Using %s as Y plane for %s\n",
 			    linked->base.name, plane->base.name);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ad48509119ff..fb4a8dfd07dd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1135,9 +1135,9 @@ struct intel_crtc_state {
 	/* for planar Y */
 	u32 data_rate_y[I915_MAX_PLANES];
 
-	/* FIXME unify with data_rate[] */
-	u64 plane_data_rate[I915_MAX_PLANES];
-	u64 uv_plane_data_rate[I915_MAX_PLANES];
+	/* FIXME unify with data_rate[]? */
+	u64 rel_data_rate[I915_MAX_PLANES];
+	u64 rel_data_rate_y[I915_MAX_PLANES];
 
 	/* Gamma mode programmed on the pipe */
 	u32 gamma_mode;
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 191ef54a2f00..d292a9e65e3f 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4899,17 +4899,6 @@ static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc, u8 active_pipes, bool
 	return active_pipes & BIT(pipe) ? BIT(DBUF_S1) : 0;
 }
 
-static bool
-use_min_ddb(const struct intel_crtc_state *crtc_state,
-	    struct intel_plane *plane)
-{
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
-
-	return DISPLAY_VER(i915) >= 13 &&
-	       crtc_state->uapi.async_flip &&
-	       plane->async_flip;
-}
-
 static bool
 use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
 		     struct intel_plane *plane)
@@ -4922,134 +4911,24 @@ use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
 }
 
 static u64
-skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
-			     const struct intel_plane_state *plane_state,
-			     int color_plane)
+skl_total_relative_data_rate(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	const struct drm_framebuffer *fb = plane_state->hw.fb;
-	int width, height;
-
-	if (!plane_state->uapi.visible)
-		return 0;
-
-	if (plane->id == PLANE_CURSOR)
-		return 0;
-
-	/*
-	 * We calculate extra ddb based on ratio plane rate/total data rate
-	 * in case, in some cases we should not allocate extra ddb for the plane,
-	 * so do not count its data rate, if this is the case.
-	 */
-	if (use_min_ddb(crtc_state, plane))
-		return 0;
-
-	if (color_plane == 1 &&
-	    !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
-		return 0;
-
-	/*
-	 * Src coordinates are already rotated by 270 degrees for
-	 * the 90/270 degree plane rotation cases (to match the
-	 * GTT mapping), hence no need to account for rotation here.
-	 */
-	width = drm_rect_width(&plane_state->uapi.src) >> 16;
-	height = drm_rect_height(&plane_state->uapi.src) >> 16;
-
-	/* UV plane does 1/2 pixel sub-sampling */
-	if (color_plane == 1) {
-		width /= 2;
-		height /= 2;
-	}
-
-	return width * height * fb->format->cpp[color_plane];
-}
-
-static u64
-skl_get_total_relative_data_rate(struct intel_atomic_state *state,
-				 struct intel_crtc *crtc)
-{
-	struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	const struct intel_plane_state *plane_state;
-	struct intel_plane *plane;
-	u64 total_data_rate = 0;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum plane_id plane_id;
-	int i;
-
-	/* Calculate and cache data rate for each plane */
-	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		if (plane->pipe != crtc->pipe)
-			continue;
-
-		plane_id = plane->id;
-
-		/* packed/y */
-		crtc_state->plane_data_rate[plane_id] =
-			skl_plane_relative_data_rate(crtc_state, plane_state, 0);
-
-		/* uv-plane */
-		crtc_state->uv_plane_data_rate[plane_id] =
-			skl_plane_relative_data_rate(crtc_state, plane_state, 1);
-	}
+	u64 data_rate = 0;
 
 	for_each_plane_id_on_crtc(crtc, plane_id) {
-		total_data_rate += crtc_state->plane_data_rate[plane_id];
-		total_data_rate += crtc_state->uv_plane_data_rate[plane_id];
-	}
-
-	return total_data_rate;
-}
-
-static u64
-icl_get_total_relative_data_rate(struct intel_atomic_state *state,
-				 struct intel_crtc *crtc)
-{
-	struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	const struct intel_plane_state *plane_state;
-	struct intel_plane *plane;
-	u64 total_data_rate = 0;
-	enum plane_id plane_id;
-	int i;
-
-	/* Calculate and cache data rate for each plane */
-	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		if (plane->pipe != crtc->pipe)
+		if (plane_id == PLANE_CURSOR)
 			continue;
 
-		plane_id = plane->id;
+		data_rate += crtc_state->rel_data_rate[plane_id];
 
-		if (!plane_state->planar_linked_plane) {
-			crtc_state->plane_data_rate[plane_id] =
-				skl_plane_relative_data_rate(crtc_state, plane_state, 0);
-		} else {
-			enum plane_id y_plane_id;
-
-			/*
-			 * The slave plane might not iterate in
-			 * intel_atomic_crtc_state_for_each_plane_state(),
-			 * and needs the master plane state which may be
-			 * NULL if we try get_new_plane_state(), so we
-			 * always calculate from the master.
-			 */
-			if (plane_state->planar_slave)
-				continue;
-
-			/* Y plane rate is calculated on the slave */
-			y_plane_id = plane_state->planar_linked_plane->id;
-			crtc_state->plane_data_rate[y_plane_id] =
-				skl_plane_relative_data_rate(crtc_state, plane_state, 0);
-
-			crtc_state->plane_data_rate[plane_id] =
-				skl_plane_relative_data_rate(crtc_state, plane_state, 1);
-		}
+		if (DISPLAY_VER(i915) < 11)
+			data_rate += crtc_state->rel_data_rate_y[plane_id];
 	}
 
-	for_each_plane_id_on_crtc(crtc, plane_id)
-		total_data_rate += crtc_state->plane_data_rate[plane_id];
-
-	return total_data_rate;
+	return data_rate;
 }
 
 const struct skl_wm_level *
@@ -5167,11 +5046,6 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	if (!crtc_state->hw.active)
 		return 0;
 
-	if (DISPLAY_VER(dev_priv) >= 11)
-		iter.data_rate = icl_get_total_relative_data_rate(state, crtc);
-	else
-		iter.data_rate = skl_get_total_relative_data_rate(state, crtc);
-
 	iter.size = skl_ddb_entry_size(alloc);
 	if (iter.size == 0)
 		return 0;
@@ -5182,6 +5056,8 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[PLANE_CURSOR],
 			   alloc->end - iter.total[PLANE_CURSOR], alloc->end);
 
+	iter.data_rate = skl_total_relative_data_rate(crtc_state);
+
 	/*
 	 * Find the highest watermark level for which we can satisfy the block
 	 * requirement of active planes.
@@ -5236,13 +5112,19 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 		if (plane_id == PLANE_CURSOR)
 			continue;
 
-		iter.total[plane_id] =
-			skl_allocate_plane_ddb(&iter, &wm->wm[level],
-					       crtc_state->plane_data_rate[plane_id]);
-
-		iter.uv_total[plane_id] =
-			skl_allocate_plane_ddb(&iter, &wm->uv_wm[level],
-					       crtc_state->uv_plane_data_rate[plane_id]);
+		if (DISPLAY_VER(dev_priv) < 11 &&
+		    crtc_state->nv12_planes & BIT(plane_id)) {
+			iter.total[plane_id] =
+				skl_allocate_plane_ddb(&iter, &wm->wm[level],
+						       crtc_state->rel_data_rate_y[plane_id]);
+			iter.uv_total[plane_id] =
+				skl_allocate_plane_ddb(&iter, &wm->uv_wm[level],
+						       crtc_state->rel_data_rate[plane_id]);
+		} else {
+			iter.total[plane_id] =
+				skl_allocate_plane_ddb(&iter, &wm->wm[level],
+						       crtc_state->rel_data_rate[plane_id]);
+		}
 	}
 	drm_WARN_ON(&dev_priv->drm, iter.size != 0 || iter.data_rate != 0);
 
@@ -5262,15 +5144,18 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 			    DISPLAY_VER(dev_priv) >= 11 && iter.uv_total[plane_id]);
 
 		/* Leave disabled planes at (0,0) */
-		if (iter.total[plane_id])
-			iter.start = skl_ddb_entry_init(ddb, iter.start,
-							iter.start + iter.total[plane_id]);
-
-		if (iter.uv_total[plane_id]) {
-			/* hardware wants these swapped */
-			*ddb_y = *ddb;
-			iter.start = skl_ddb_entry_init(ddb, iter.start,
-							iter.start + iter.uv_total[plane_id]);
+		if (DISPLAY_VER(dev_priv) < 11 &&
+		    crtc_state->nv12_planes & BIT(plane_id)) {
+			if (iter.total[plane_id])
+				iter.start = skl_ddb_entry_init(ddb_y, iter.start,
+								iter.start + iter.total[plane_id]);
+			if (iter.uv_total[plane_id])
+				iter.start = skl_ddb_entry_init(ddb, iter.start,
+								iter.start + iter.uv_total[plane_id]);
+		} else {
+			if (iter.total[plane_id])
+				iter.start = skl_ddb_entry_init(ddb, iter.start,
+								iter.start + iter.total[plane_id]);
 		}
 	}
 
-- 
2.34.1

