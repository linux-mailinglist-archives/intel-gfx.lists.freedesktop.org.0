Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E12A32C21
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:44:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A70E610E92E;
	Wed, 12 Feb 2025 16:44:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HS2As9F7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A99A510E92E
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2025 16:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378644; x=1770914644;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RbmpImVwKBmq/1p0AzU3gwSGjCiyeEdmMaYThRYWgnM=;
 b=HS2As9F78VKAGBaA8rNaccwtsMeevEmcBQqwHHLW7Jf88wH6b1YDswOM
 p2aReSYi7j3z7WZVbSc8J2ONJ8P//ZsQqaYDokmcCcZ8cucc8lVzN1kyM
 tK9etnyHX1svk7T79ZmkofocJfpbjiyF6m6FwAArhR0tfPyKFsH2zTqBZ
 ZvUy7oihVMoEK7/fxjsAv2JNANw4LZUNybFe/TjmmpI9n5xk1+r/d6LUg
 DQfC+r6+sOOVwhmWh/UpDO2xjygcB4YhEUozo+at82mst0SDwUFQo/Cqf
 ApbXBhP+vIS8qd8xweUmQjaAAmQO776v3aSUlClArLKVAbuYhEsKyF9V2 A==;
X-CSE-ConnectionGUID: yK9VjE1SRU+fcib8iTJk9g==
X-CSE-MsgGUID: hlG2++4bTc6NzVX7YRqKvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="62515027"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="62515027"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:44:03 -0800
X-CSE-ConnectionGUID: 4X5QIfjzQvGdqUxveZ8JRQ==
X-CSE-MsgGUID: nF8XExsOR+e09NIPOQ0Jfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113082681"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 08:44:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 18:43:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v2 10/10] drm/i915: Relocate intel_atomic_check_planes()
Date: Wed, 12 Feb 2025 18:43:30 +0200
Message-ID: <20250212164330.16891-11-ville.syrjala@linux.intel.com>
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

Move all the intel_atomic_check_planes() machinery into
intel_atomic_plane.c in order to declutter intel_display.c.

v2: Rebase due to intel_display changes

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 296 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_atomic_plane.h |   3 +
 drivers/gpu/drm/i915/display/intel_display.c  | 295 -----------------
 drivers/gpu/drm/i915/display/intel_display.h  |   2 -
 4 files changed, 299 insertions(+), 297 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 71263fbf0047..f58169763835 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -52,6 +52,7 @@
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "skl_scaler.h"
+#include "skl_universal_plane.h"
 #include "skl_watermark.h"
 
 static void intel_plane_state_reset(struct intel_plane_state *plane_state,
@@ -1223,3 +1224,298 @@ void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_sta
 	drm_vblank_work_init(&old_plane_state->unpin_work, old_plane_state->uapi.crtc,
 			     intel_cursor_unpin_work);
 }
+
+static void link_nv12_planes(struct intel_crtc_state *crtc_state,
+			     struct intel_plane_state *uv_plane_state,
+			     struct intel_plane_state *y_plane_state)
+{
+	struct intel_display *display = to_intel_display(uv_plane_state);
+	struct intel_plane *uv_plane = to_intel_plane(uv_plane_state->uapi.plane);
+	struct intel_plane *y_plane = to_intel_plane(y_plane_state->uapi.plane);
+
+	drm_dbg_kms(display->drm, "UV plane [PLANE:%d:%s] using Y plane [PLANE:%d:%s]\n",
+		    uv_plane->base.base.id, uv_plane->base.name,
+		    y_plane->base.base.id, y_plane->base.name);
+
+	uv_plane_state->planar_linked_plane = y_plane;
+
+	y_plane_state->is_y_plane = true;
+	y_plane_state->planar_linked_plane = uv_plane;
+
+	crtc_state->enabled_planes |= BIT(y_plane->id);
+	crtc_state->active_planes |= BIT(y_plane->id);
+	crtc_state->update_planes |= BIT(y_plane->id);
+
+	crtc_state->data_rate[y_plane->id] = crtc_state->data_rate_y[uv_plane->id];
+	crtc_state->rel_data_rate[y_plane->id] = crtc_state->rel_data_rate_y[uv_plane->id];
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
+	struct intel_display *display = to_intel_display(state);
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
+	 * Destroy all old plane links and make the Y plane invisible
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
+			if (!icl_is_nv12_y_plane(display, y_plane->id))
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
+				    "[CRTC:%d:%s] need %d free Y planes for planar YUV\n",
+				    crtc->base.base.id, crtc->base.name,
+				    hweight8(crtc_state->nv12_planes));
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
+	 * the full set of affected planes. A bit complicated
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
index 9c7a8203f135..a5f95750d6f3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4409,132 +4409,6 @@ static bool check_single_encoder_cloning(struct intel_atomic_state *state,
 	return true;
 }
 
-static void link_nv12_planes(struct intel_crtc_state *crtc_state,
-			     struct intel_plane_state *uv_plane_state,
-			     struct intel_plane_state *y_plane_state)
-{
-	struct intel_display *display = to_intel_display(uv_plane_state);
-	struct intel_plane *uv_plane = to_intel_plane(uv_plane_state->uapi.plane);
-	struct intel_plane *y_plane = to_intel_plane(y_plane_state->uapi.plane);
-
-	drm_dbg_kms(display->drm, "UV plane [PLANE:%d:%s] using Y plane [PLANE:%d:%s]\n",
-		    uv_plane->base.base.id, uv_plane->base.name,
-		    y_plane->base.base.id, y_plane->base.name);
-
-	uv_plane_state->planar_linked_plane = y_plane;
-
-	y_plane_state->is_y_plane = true;
-	y_plane_state->planar_linked_plane = uv_plane;
-
-	crtc_state->enabled_planes |= BIT(y_plane->id);
-	crtc_state->active_planes |= BIT(y_plane->id);
-	crtc_state->update_planes |= BIT(y_plane->id);
-
-	crtc_state->data_rate[y_plane->id] = crtc_state->data_rate_y[uv_plane->id];
-	crtc_state->rel_data_rate[y_plane->id] = crtc_state->rel_data_rate_y[uv_plane->id];
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
-	struct intel_display *display = to_intel_display(state);
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
-	 * Destroy all old plane links and make the Y plane invisible
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
-			if (!icl_is_nv12_y_plane(display, y_plane->id))
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
-				    "[CRTC:%d:%s] need %d free Y planes for planar YUV\n",
-				    crtc->base.base.id, crtc->base.name,
-				    hweight8(crtc_state->nv12_planes));
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
@@ -6135,175 +6009,6 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
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
-	 * the full set of affected planes. A bit complicated
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
index e594492bade7..b550a0faa745 100644
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

