Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F13D54922A1
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 10:24:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25712112A3C;
	Tue, 18 Jan 2022 09:24:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4CB7112A40
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 09:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642497863; x=1674033863;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Ldxk3EiN7sneErY1HMZwStBUK53cvb0tmBzoKFlIzq4=;
 b=CpWice2yMf1uMuIrkLpiHqGuQsqKEFToqFjPElBzLkn5n8tV2uPVhqfF
 gN7+Jj5J9tGx6WsnNhrIJbzq3mfMqeS8+Oh30i9GJ0PELCcFVoBUpTwFw
 1sntVckpUBA0gtwS6B44ziARs30WXlYrTE0CpUeGTqOQaDtVQ06YuHMx3
 q/2+yvK7D+2O1KK7uspd0IE1va7MxaEGhABKR9Gk9uWy4HvEILQN+plIa
 /mzijyescoKxvDkt9+knYRtTgMr7HAHre0u5SG/kvkZhRanGqY7Mhfeiy
 ADgbNoExkakxfFKZ7nYPWbuXt9uLY4Rp0JC8a7seblX/Y+39iS0Bm1p95 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="244732573"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="244732573"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 01:24:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="517695333"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga007.jf.intel.com with SMTP; 18 Jan 2022 01:24:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jan 2022 11:24:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 11:23:48 +0200
Message-Id: <20220118092354.11631-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/15] drm/i915: Pre-calculate plane relative
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  37 ++++
 drivers/gpu/drm/i915/display/intel_display.c  |   5 +
 .../drm/i915/display/intel_display_types.h    |   6 +-
 drivers/gpu/drm/i915/intel_pm.c               | 170 ++++--------------
 4 files changed, 80 insertions(+), 138 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index cd18155830d4..a61344dcfb94 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -192,6 +192,33 @@ unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
 		fb->format->cpp[color_plane];
 }
 
+static unsigned int
+intel_plane_relative_data_rate(const struct intel_plane_state *plane_state,
+			       int color_plane)
+{
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	int width, height;
+
+	if (!plane_state->uapi.visible)
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
@@ -312,6 +339,8 @@ void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 	crtc_state->c8_planes &= ~BIT(plane->id);
 	crtc_state->data_rate[plane->id] = 0;
 	crtc_state->data_rate_y[plane->id] = 0;
+	crtc_state->rel_data_rate[plane->id] = 0;
+	crtc_state->rel_data_rate_y[plane->id] = 0;
 	crtc_state->min_cdclk[plane->id] = 0;
 
 	plane_state->uapi.visible = false;
@@ -360,9 +389,17 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 			intel_plane_data_rate(new_crtc_state, new_plane_state, 0);
 		new_crtc_state->data_rate[plane->id] =
 			intel_plane_data_rate(new_crtc_state, new_plane_state, 1);
+
+		new_crtc_state->rel_data_rate_y[plane->id] =
+			intel_plane_relative_data_rate(new_plane_state, 0);
+		new_crtc_state->rel_data_rate[plane->id] =
+			intel_plane_relative_data_rate(new_plane_state, 1);
 	} else if (new_plane_state->uapi.visible) {
 		new_crtc_state->data_rate[plane->id] =
 			intel_plane_data_rate(new_crtc_state, new_plane_state, 0);
+
+		new_crtc_state->rel_data_rate[plane->id] =
+			intel_plane_relative_data_rate(new_plane_state, 0);
 	}
 
 	return intel_plane_atomic_calc_changes(old_crtc_state, new_crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 39dd2e7383e0..8f3034713c56 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -762,6 +762,8 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	fixup_plane_bitmasks(crtc_state);
 	crtc_state->data_rate[plane->id] = 0;
 	crtc_state->data_rate_y[plane->id] = 0;
+	crtc_state->rel_data_rate[plane->id] = 0;
+	crtc_state->rel_data_rate_y[plane->id] = 0;
 	crtc_state->min_cdclk[plane->id] = 0;
 
 	if (plane->id == PLANE_PRIMARY)
@@ -5112,6 +5114,7 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 			crtc_state->active_planes &= ~BIT(plane->id);
 			crtc_state->update_planes |= BIT(plane->id);
 			crtc_state->data_rate[plane->id] = 0;
+			crtc_state->rel_data_rate[plane->id] = 0;
 		}
 
 		plane_state->planar_slave = false;
@@ -5158,6 +5161,8 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 		crtc_state->update_planes |= BIT(linked->id);
 		crtc_state->data_rate[linked->id] =
 			crtc_state->data_rate_y[plane->id];
+		crtc_state->rel_data_rate[linked->id] =
+			crtc_state->rel_data_rate_y[plane->id];
 		drm_dbg_kms(&dev_priv->drm, "Using %s as Y plane for %s\n",
 			    linked->base.name, plane->base.name);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7e147e110059..871485af14d4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1153,9 +1153,9 @@ struct intel_crtc_state {
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
index 8a115b4c9e71..134584c77697 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4862,126 +4862,24 @@ static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc, u8 active_pipes)
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
@@ -5096,11 +4994,6 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
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
@@ -5111,6 +5004,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[PLANE_CURSOR],
 			   alloc->end - iter.total[PLANE_CURSOR], alloc->end);
 
+	iter.data_rate = skl_total_relative_data_rate(crtc_state);
 	if (iter.data_rate == 0)
 		return 0;
 
@@ -5171,16 +5065,19 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 		if (iter.data_rate == 0)
 			break;
 
-		iter.total[plane_id] =
-			skl_allocate_plane_ddb(&iter, &wm->wm[level],
-					       crtc_state->plane_data_rate[plane_id]);
-
-		if (iter.data_rate == 0)
-			break;
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
 
@@ -5200,15 +5097,18 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
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
2.32.0

