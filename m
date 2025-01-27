Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A948A1DB39
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 18:22:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3DF910E59D;
	Mon, 27 Jan 2025 17:22:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IT0tw1io";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9263B10E597
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 17:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737998547; x=1769534547;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FHBsL37+KbZTzRRYBPZSJvQYH3j+fezDiHO0XbJdsnU=;
 b=IT0tw1ioQ79tFtQ0oAPrs3c37CL8Ew9+B7mMoPmZp7dYhQFApYJXZGO7
 1post1sLOW8+xcxKvRbGXak3Mo15RQr1BNgHP0JZx7AaUSbSDTA3TurLt
 tp8AQ25WwTMFarFjBU9fwWJQXUehSFQqkWw0fz0240C6QG5tWMTk/xI1v
 HcM6CqbjFm3b1iCoq6UGj/bX58C7u57vWu1LfGTaEiB/OC6Cddpt4CXEd
 cNX70lygw+fEdxz/pQ3DVVyyJ04UiNA68b0nilD6Ia6TciHFGg0XiPJty
 LhDgZCKhDH0N9O/ojO1YeVqVpRNbP5mp3ODPw7j4mkHmGghKUCX/ZvF0i g==;
X-CSE-ConnectionGUID: nF+MJasQRUu/56Z8GMX+TA==
X-CSE-MsgGUID: oYg4CYG9RKuB3O+zrLMLCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38501401"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="38501401"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 09:22:27 -0800
X-CSE-ConnectionGUID: QUF2IOwMSvCVSTQDS+axfg==
X-CSE-MsgGUID: FUrSnMidQViIkzgRtrvKmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="108610274"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Jan 2025 09:22:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Jan 2025 19:22:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/11] drm/i915: Relocate intel_atomic_check_planes()
Date: Mon, 27 Jan 2025 19:21:55 +0200
Message-ID: <20250127172156.21928-11-ville.syrjala@linux.intel.com>
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

Move all the intel_atomic_check_planes() machinery into
intel_atomic_plane.c in order to declutter intel_display.c.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 293 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_atomic_plane.h |   3 +
 drivers/gpu/drm/i915/display/intel_display.c  | 292 -----------------
 drivers/gpu/drm/i915/display/intel_display.h  |   2 -
 4 files changed, 296 insertions(+), 294 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 650801cb400c..1fb35f4a7cf4 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -52,6 +52,7 @@
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "skl_scaler.h"
+#include "skl_universal_plane.h"
 #include "skl_watermark.h"
 
 static void intel_plane_state_reset(struct intel_plane_state *plane_state,
@@ -1215,3 +1216,295 @@ void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_sta
 	drm_vblank_work_init(&old_plane_state->unpin_work, old_plane_state->uapi.crtc,
 			     intel_cursor_unpin_work);
 }
+
+static void link_nv12_planes(struct intel_crtc_state *crtc_state,
+			     struct intel_plane_state *uv_plane_state,
+			     struct intel_plane_state *y_plane_state)
+{
+	struct intel_plane *uv_plane = to_intel_plane(uv_plane_state->uapi.plane);
+	struct intel_plane *y_plane = to_intel_plane(y_plane_state->uapi.plane);
+	struct drm_i915_private *dev_priv = to_i915(uv_plane->base.dev);
+
+	uv_plane_state->planar_linked_plane = y_plane;
+
+	y_plane_state->is_y_plane = true;
+	y_plane_state->planar_linked_plane = uv_plane;
+
+	crtc_state->enabled_planes |= BIT(y_plane->id);
+	crtc_state->active_planes |= BIT(y_plane->id);
+	crtc_state->update_planes |= BIT(y_plane->id);
+	crtc_state->data_rate[y_plane->id] = crtc_state->data_rate_y[uv_plane->id];
+	crtc_state->rel_data_rate[y_plane->id] = crtc_state->rel_data_rate_y[uv_plane->id];
+
+	drm_dbg_kms(&dev_priv->drm, "Using %s as Y plane for %s\n",
+		    y_plane->base.name, uv_plane->base.name);
+
+	/* Copy parameters to Y plane */
+	intel_plane_copy_hw_state(y_plane_state, uv_plane_state);
+	y_plane_state->uapi.src = uv_plane_state->uapi.src;
+	y_plane_state->uapi.dst = uv_plane_state->uapi.dst;
+
+	y_plane_state->ctl = uv_plane_state->ctl;
+	y_plane_state->color_ctl = uv_plane_state->color_ctl;
+	y_plane_state->view = uv_plane_state->view;
+	y_plane_state->decrypt = uv_plane_state->decrypt;
+
+	icl_link_nv12_planes(uv_plane_state, y_plane_state);
+}
+
+static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
+			      struct intel_plane_state *plane_state)
+{
+	struct intel_display *display = to_intel_display(plane_state);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+
+	plane_state->planar_linked_plane = NULL;
+
+	if (!plane_state->is_y_plane)
+		return;
+
+	drm_WARN_ON(display->drm, plane_state->uapi.visible);
+
+	plane_state->is_y_plane = false;
+
+	crtc_state->enabled_planes &= ~BIT(plane->id);
+	crtc_state->active_planes &= ~BIT(plane->id);
+	crtc_state->update_planes |= BIT(plane->id);
+	crtc_state->data_rate[plane->id] = 0;
+	crtc_state->rel_data_rate[plane->id] = 0;
+}
+
+static int icl_check_nv12_planes(struct intel_atomic_state *state,
+				 struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_plane_state *plane_state;
+	struct intel_plane *plane;
+	int i;
+
+	if (DISPLAY_VER(dev_priv) < 11)
+		return 0;
+
+	/*
+	 * Destroy all old plane links and make the slave plane invisible
+	 * in the crtc_state->active_planes mask.
+	 */
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+		if (plane->pipe != crtc->pipe)
+			continue;
+
+		if (plane_state->planar_linked_plane)
+			unlink_nv12_plane(crtc_state, plane_state);
+	}
+
+	if (!crtc_state->nv12_planes)
+		return 0;
+
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+		struct intel_plane_state *y_plane_state = NULL;
+		struct intel_plane *y_plane;
+
+		if (plane->pipe != crtc->pipe)
+			continue;
+
+		if ((crtc_state->nv12_planes & BIT(plane->id)) == 0)
+			continue;
+
+		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, y_plane) {
+			if (!icl_is_nv12_y_plane(dev_priv, y_plane->id))
+				continue;
+
+			if (crtc_state->active_planes & BIT(y_plane->id))
+				continue;
+
+			y_plane_state = intel_atomic_get_plane_state(state, y_plane);
+			if (IS_ERR(y_plane_state))
+				return PTR_ERR(y_plane_state);
+
+			break;
+		}
+
+		if (!y_plane_state) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "Need %d free Y planes for planar YUV\n",
+				    hweight8(crtc_state->nv12_planes));
+
+			return -EINVAL;
+		}
+
+		link_nv12_planes(crtc_state, plane_state, y_plane_state);
+	}
+
+	return 0;
+}
+
+static int intel_crtc_add_planes_to_state(struct intel_atomic_state *state,
+					  struct intel_crtc *crtc,
+					  u8 plane_ids_mask)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_plane *plane;
+
+	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
+		struct intel_plane_state *plane_state;
+
+		if ((plane_ids_mask & BIT(plane->id)) == 0)
+			continue;
+
+		plane_state = intel_atomic_get_plane_state(state, plane);
+		if (IS_ERR(plane_state))
+			return PTR_ERR(plane_state);
+	}
+
+	return 0;
+}
+
+int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
+				     struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	return intel_crtc_add_planes_to_state(state, crtc,
+					      old_crtc_state->enabled_planes |
+					      new_crtc_state->enabled_planes);
+}
+
+static bool active_planes_affects_min_cdclk(struct drm_i915_private *dev_priv)
+{
+	/* See {hsw,vlv,ivb}_plane_ratio() */
+	return IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv) ||
+		IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
+		IS_IVYBRIDGE(dev_priv);
+}
+
+static u8 intel_joiner_affected_planes(struct intel_atomic_state *state,
+				       u8 joined_pipes)
+{
+	const struct intel_plane_state *plane_state;
+	struct intel_plane *plane;
+	u8 affected_planes = 0;
+	int i;
+
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+		struct intel_plane *linked = plane_state->planar_linked_plane;
+
+		if ((joined_pipes & BIT(plane->pipe)) == 0)
+			continue;
+
+		affected_planes |= BIT(plane->id);
+		if (linked)
+			affected_planes |= BIT(linked->id);
+	}
+
+	return affected_planes;
+}
+
+static int intel_joiner_add_affected_planes(struct intel_atomic_state *state,
+					    u8 joined_pipes)
+{
+	u8 prev_affected_planes, affected_planes = 0;
+
+	/*
+	 * We want all the joined pipes to have the same
+	 * set of planes in the atomic state, to make sure
+	 * state copying always works correctly, and the
+	 * UV<->Y plane linkage is always up to date.
+	 * Keep pulling planes in until we've determined
+	 * the full set of affected plane. A bit complicated
+	 * on account of each pipe being capable of selecting
+	 * their own Y planes independently of the other pipes,
+	 * and the selection being done from the set of
+	 * inactive planes.
+	 */
+	do {
+		struct intel_crtc *crtc;
+
+		for_each_intel_crtc_in_pipe_mask(state->base.dev, crtc, joined_pipes) {
+			int ret;
+
+			ret = intel_crtc_add_planes_to_state(state, crtc, affected_planes);
+			if (ret)
+				return ret;
+		}
+
+		prev_affected_planes = affected_planes;
+		affected_planes = intel_joiner_affected_planes(state, joined_pipes);
+	} while (affected_planes != prev_affected_planes);
+
+	return 0;
+}
+
+static int intel_add_affected_planes(struct intel_atomic_state *state)
+{
+	const struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	int i;
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		int ret;
+
+		ret = intel_joiner_add_affected_planes(state, intel_crtc_joined_pipe_mask(crtc_state));
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+int intel_atomic_check_planes(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
+	struct intel_plane_state __maybe_unused *plane_state;
+	struct intel_plane *plane;
+	struct intel_crtc *crtc;
+	int i, ret;
+
+	ret = intel_add_affected_planes(state);
+	if (ret)
+		return ret;
+
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+		ret = intel_plane_atomic_check(state, plane);
+		if (ret) {
+			drm_dbg_atomic(&dev_priv->drm,
+				       "[PLANE:%d:%s] atomic driver check failed\n",
+				       plane->base.base.id, plane->base.name);
+			return ret;
+		}
+	}
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		u8 old_active_planes, new_active_planes;
+
+		ret = icl_check_nv12_planes(state, crtc);
+		if (ret)
+			return ret;
+
+		/*
+		 * On some platforms the number of active planes affects
+		 * the planes' minimum cdclk calculation. Add such planes
+		 * to the state before we compute the minimum cdclk.
+		 */
+		if (!active_planes_affects_min_cdclk(dev_priv))
+			continue;
+
+		old_active_planes = old_crtc_state->active_planes & ~BIT(PLANE_CURSOR);
+		new_active_planes = new_crtc_state->active_planes & ~BIT(PLANE_CURSOR);
+
+		if (hweight8(old_active_planes) == hweight8(new_active_planes))
+			continue;
+
+		ret = intel_crtc_add_planes_to_state(state, crtc, new_active_planes);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index fb87b3353ab0..9dc0b8468c2e 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -81,5 +81,8 @@ void intel_plane_helper_add(struct intel_plane *plane);
 bool intel_plane_needs_physical(struct intel_plane *plane);
 void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_state,
 					 struct intel_plane_state *new_plane_state);
+int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
+				     struct intel_crtc *crtc);
+int intel_atomic_check_planes(struct intel_atomic_state *state);
 
 #endif /* __INTEL_ATOMIC_PLANE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 36611b290dff..04341e512780 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4401,129 +4401,6 @@ static bool check_single_encoder_cloning(struct intel_atomic_state *state,
 	return true;
 }
 
-static void link_nv12_planes(struct intel_crtc_state *crtc_state,
-			     struct intel_plane_state *uv_plane_state,
-			     struct intel_plane_state *y_plane_state)
-{
-	struct intel_plane *uv_plane = to_intel_plane(uv_plane_state->uapi.plane);
-	struct intel_plane *y_plane = to_intel_plane(y_plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(uv_plane->base.dev);
-
-	uv_plane_state->planar_linked_plane = y_plane;
-
-	y_plane_state->is_y_plane = true;
-	y_plane_state->planar_linked_plane = uv_plane;
-
-	crtc_state->enabled_planes |= BIT(y_plane->id);
-	crtc_state->active_planes |= BIT(y_plane->id);
-	crtc_state->update_planes |= BIT(y_plane->id);
-	crtc_state->data_rate[y_plane->id] = crtc_state->data_rate_y[uv_plane->id];
-	crtc_state->rel_data_rate[y_plane->id] = crtc_state->rel_data_rate_y[uv_plane->id];
-
-	drm_dbg_kms(&dev_priv->drm, "Using %s as Y plane for %s\n",
-		    y_plane->base.name, uv_plane->base.name);
-
-	/* Copy parameters to Y plane */
-	intel_plane_copy_hw_state(y_plane_state, uv_plane_state);
-	y_plane_state->uapi.src = uv_plane_state->uapi.src;
-	y_plane_state->uapi.dst = uv_plane_state->uapi.dst;
-
-	y_plane_state->ctl = uv_plane_state->ctl;
-	y_plane_state->color_ctl = uv_plane_state->color_ctl;
-	y_plane_state->view = uv_plane_state->view;
-	y_plane_state->decrypt = uv_plane_state->decrypt;
-
-	icl_link_nv12_planes(uv_plane_state, y_plane_state);
-}
-
-static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
-			      struct intel_plane_state *plane_state)
-{
-	struct intel_display *display = to_intel_display(plane_state);
-	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-
-	plane_state->planar_linked_plane = NULL;
-
-	if (!plane_state->is_y_plane)
-		return;
-
-	drm_WARN_ON(display->drm, plane_state->uapi.visible);
-
-	plane_state->is_y_plane = false;
-
-	crtc_state->enabled_planes &= ~BIT(plane->id);
-	crtc_state->active_planes &= ~BIT(plane->id);
-	crtc_state->update_planes |= BIT(plane->id);
-	crtc_state->data_rate[plane->id] = 0;
-	crtc_state->rel_data_rate[plane->id] = 0;
-}
-
-static int icl_check_nv12_planes(struct intel_atomic_state *state,
-				 struct intel_crtc *crtc)
-{
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_plane_state *plane_state;
-	struct intel_plane *plane;
-	int i;
-
-	if (DISPLAY_VER(dev_priv) < 11)
-		return 0;
-
-	/*
-	 * Destroy all old plane links and make the slave plane invisible
-	 * in the crtc_state->active_planes mask.
-	 */
-	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		if (plane->pipe != crtc->pipe)
-			continue;
-
-		if (plane_state->planar_linked_plane)
-			unlink_nv12_plane(crtc_state, plane_state);
-	}
-
-	if (!crtc_state->nv12_planes)
-		return 0;
-
-	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		struct intel_plane_state *y_plane_state = NULL;
-		struct intel_plane *y_plane;
-
-		if (plane->pipe != crtc->pipe)
-			continue;
-
-		if ((crtc_state->nv12_planes & BIT(plane->id)) == 0)
-			continue;
-
-		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, y_plane) {
-			if (!icl_is_nv12_y_plane(dev_priv, y_plane->id))
-				continue;
-
-			if (crtc_state->active_planes & BIT(y_plane->id))
-				continue;
-
-			y_plane_state = intel_atomic_get_plane_state(state, y_plane);
-			if (IS_ERR(y_plane_state))
-				return PTR_ERR(y_plane_state);
-
-			break;
-		}
-
-		if (!y_plane_state) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "Need %d free Y planes for planar YUV\n",
-				    hweight8(crtc_state->nv12_planes));
-
-			return -EINVAL;
-		}
-
-		link_nv12_planes(crtc_state, plane_state, y_plane_state);
-	}
-
-	return 0;
-}
-
 static u16 hsw_linetime_wm(const struct intel_crtc_state *crtc_state)
 {
 	const struct drm_display_mode *pipe_mode =
@@ -6121,175 +5998,6 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 		new_crtc_state->update_pipe = true;
 }
 
-static int intel_crtc_add_planes_to_state(struct intel_atomic_state *state,
-					  struct intel_crtc *crtc,
-					  u8 plane_ids_mask)
-{
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	struct intel_plane *plane;
-
-	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
-		struct intel_plane_state *plane_state;
-
-		if ((plane_ids_mask & BIT(plane->id)) == 0)
-			continue;
-
-		plane_state = intel_atomic_get_plane_state(state, plane);
-		if (IS_ERR(plane_state))
-			return PTR_ERR(plane_state);
-	}
-
-	return 0;
-}
-
-int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
-				     struct intel_crtc *crtc)
-{
-	const struct intel_crtc_state *old_crtc_state =
-		intel_atomic_get_old_crtc_state(state, crtc);
-	const struct intel_crtc_state *new_crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-
-	return intel_crtc_add_planes_to_state(state, crtc,
-					      old_crtc_state->enabled_planes |
-					      new_crtc_state->enabled_planes);
-}
-
-static bool active_planes_affects_min_cdclk(struct drm_i915_private *dev_priv)
-{
-	/* See {hsw,vlv,ivb}_plane_ratio() */
-	return IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv) ||
-		IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
-		IS_IVYBRIDGE(dev_priv);
-}
-
-static u8 intel_joiner_affected_planes(struct intel_atomic_state *state,
-				       u8 joined_pipes)
-{
-	const struct intel_plane_state *plane_state;
-	struct intel_plane *plane;
-	u8 affected_planes = 0;
-	int i;
-
-	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		struct intel_plane *linked = plane_state->planar_linked_plane;
-
-		if ((joined_pipes & BIT(plane->pipe)) == 0)
-			continue;
-
-		affected_planes |= BIT(plane->id);
-		if (linked)
-			affected_planes |= BIT(linked->id);
-	}
-
-	return affected_planes;
-}
-
-static int intel_joiner_add_affected_planes(struct intel_atomic_state *state,
-					    u8 joined_pipes)
-{
-	u8 prev_affected_planes, affected_planes = 0;
-
-	/*
-	 * We want all the joined pipes to have the same
-	 * set of planes in the atomic state, to make sure
-	 * state copying always works correctly, and the
-	 * UV<->Y plane linkage is always up to date.
-	 * Keep pulling planes in until we've determined
-	 * the full set of affected plane. A bit complicated
-	 * on account of each pipe being capable of selecting
-	 * their own Y planes independently of the other pipes,
-	 * and the selection being done from the set of
-	 * inactive planes.
-	 */
-	do {
-		struct intel_crtc *crtc;
-
-		for_each_intel_crtc_in_pipe_mask(state->base.dev, crtc, joined_pipes) {
-			int ret;
-
-			ret = intel_crtc_add_planes_to_state(state, crtc, affected_planes);
-			if (ret)
-				return ret;
-		}
-
-		prev_affected_planes = affected_planes;
-		affected_planes = intel_joiner_affected_planes(state, joined_pipes);
-	} while (affected_planes != prev_affected_planes);
-
-	return 0;
-}
-
-static int intel_add_affected_planes(struct intel_atomic_state *state)
-{
-	const struct intel_crtc_state *crtc_state;
-	struct intel_crtc *crtc;
-	int i;
-
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		int ret;
-
-		ret = intel_joiner_add_affected_planes(state, intel_crtc_joined_pipe_mask(crtc_state));
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-
-static int intel_atomic_check_planes(struct intel_atomic_state *state)
-{
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
-	struct intel_plane_state __maybe_unused *plane_state;
-	struct intel_plane *plane;
-	struct intel_crtc *crtc;
-	int i, ret;
-
-	ret = intel_add_affected_planes(state);
-	if (ret)
-		return ret;
-
-	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		ret = intel_plane_atomic_check(state, plane);
-		if (ret) {
-			drm_dbg_atomic(&dev_priv->drm,
-				       "[PLANE:%d:%s] atomic driver check failed\n",
-				       plane->base.base.id, plane->base.name);
-			return ret;
-		}
-	}
-
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
-		u8 old_active_planes, new_active_planes;
-
-		ret = icl_check_nv12_planes(state, crtc);
-		if (ret)
-			return ret;
-
-		/*
-		 * On some platforms the number of active planes affects
-		 * the planes' minimum cdclk calculation. Add such planes
-		 * to the state before we compute the minimum cdclk.
-		 */
-		if (!active_planes_affects_min_cdclk(dev_priv))
-			continue;
-
-		old_active_planes = old_crtc_state->active_planes & ~BIT(PLANE_CURSOR);
-		new_active_planes = new_crtc_state->active_planes & ~BIT(PLANE_CURSOR);
-
-		if (hweight8(old_active_planes) == hweight8(new_active_planes))
-			continue;
-
-		ret = intel_crtc_add_planes_to_state(state, crtc, new_active_planes);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-
 static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
 {
 	struct intel_crtc_state __maybe_unused *crtc_state;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 49a246feb1ae..f3b29c0abb22 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -413,8 +413,6 @@ enum phy_fia {
 				       i)
 
 int intel_atomic_check(struct drm_device *dev, struct drm_atomic_state *state);
-int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
-				     struct intel_crtc *crtc);
 u8 intel_calc_active_pipes(struct intel_atomic_state *state,
 			   u8 active_pipes);
 void intel_link_compute_m_n(u16 bpp, int nlanes,
-- 
2.45.3

