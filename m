Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D9EA194E1
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 16:18:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5583010E714;
	Wed, 22 Jan 2025 15:18:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cVcz7awi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EC9110E712;
 Wed, 22 Jan 2025 15:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737559087; x=1769095087;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RRIlbpj4iMS0EA8amJ5n0RRK9XvQ03+MLS+KftxnRaU=;
 b=cVcz7awiqW5Gg1rIS3uZiUENNC+0whR1iOt/D4nXmyGtkzrrfSeu3Nyt
 j10dZ8oH5cgYF6BD3D4xOFys68P9JR1lkXGlTC7Mu+pnhRAuaLWkbKBHR
 vmBsIeSq0267TR6FPnDfYmfeFC/f03d+m2qAtsJAoyNQB+e3AEnrGosM2
 sTJ0Tilhx+LK1mRwrJrooPjwvR5iCRWHrXglNEY5irA3lxTPZA820tjoZ
 rl5CMvMAtgs/oUXHbUG3WO0dLb7SmTShAVwxvxr0jDSDyeb32OjMaPvis
 MVRF7KkkqrA1g8WDpL3MgcdYeYy8Xxw30Vw+cyHyyu+CvYuFkhQJbV43S Q==;
X-CSE-ConnectionGUID: G9UsCBf0Tp2+rTe+owyHgg==
X-CSE-MsgGUID: Y7nNM2/kS4egXWSarplhlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="40841193"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="40841193"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 07:18:07 -0800
X-CSE-ConnectionGUID: kwtV1IqqR9GFImZLBgRSRA==
X-CSE-MsgGUID: R38z3KoXTw6vXYecatK/lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="107274694"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Jan 2025 07:18:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jan 2025 17:18:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/5] drm/i915: Calculate the VT-d guard size in the display
 code
Date: Wed, 22 Jan 2025 17:17:53 +0200
Message-ID: <20250122151755.6928-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250122151755.6928-1-ville.syrjala@linux.intel.com>
References: <20250122151755.6928-1-ville.syrjala@linux.intel.com>
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

Currently i915_gem_object_pin_to_display_plane() uses
i915_gem_object_get_tile_row_size() to calculate the tile row
size for the VT-d guard w/a. That's not really proper since
i915_gem_object_get_tile_row_size() only works for fenced BOs,
nor does it take rotation into account.

Remedy the situation by calculating the VT-d guard size in the
display code where we have more information readily available.
Although the default guard size (168 PTEs now) should cover
the more typical fb size use cases anyway, and only very large
Y/Yf-tiled framebuffers might have tile row size that exceeds it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c       | 33 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h       |  3 ++
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 12 ++++++-
 drivers/gpu/drm/i915/display/intel_fb_pin.h   |  1 +
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  2 ++
 drivers/gpu/drm/i915/display/intel_overlay.c  |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    | 15 ++-------
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  2 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  1 +
 drivers/gpu/drm/xe/display/xe_plane_initial.c |  2 +-
 10 files changed, 57 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 9f7f1b9f3275..ea8c8a99c5c7 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1761,6 +1761,39 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
 	return 0;
 }
 
+unsigned int intel_fb_view_vtd_guard(const struct drm_framebuffer *fb,
+				     const struct intel_fb_view *view,
+				     unsigned int rotation)
+{
+	struct drm_i915_private *i915 = to_i915(fb->dev);
+	unsigned int vtd_guard;
+	int color_plane;
+
+	if (!intel_scanout_needs_vtd_wa(i915))
+		return 0;
+
+	vtd_guard = 168;
+
+	for (color_plane = 0; color_plane < fb->format->num_planes; color_plane++) {
+		unsigned int stride, tile;
+
+		if (intel_fb_is_ccs_aux_plane(fb, color_plane) ||
+		    is_gen12_ccs_cc_plane(fb, color_plane))
+			continue;
+
+		stride = view->color_plane[color_plane].mapping_stride;
+
+		if (drm_rotation_90_or_270(rotation))
+			tile = intel_tile_height(fb, color_plane);
+		else
+			tile = intel_tile_width_bytes(fb, color_plane);
+
+		vtd_guard = max(vtd_guard, DIV_ROUND_UP(stride, tile));
+	}
+
+	return vtd_guard;
+}
+
 static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *i915 =
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index d78993e5eb62..026e9f7f98f7 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -83,6 +83,9 @@ bool intel_fb_supports_90_270_rotation(const struct intel_framebuffer *fb);
 int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *fb);
 void intel_fb_fill_view(const struct intel_framebuffer *fb, unsigned int rotation,
 			struct intel_fb_view *view);
+unsigned int intel_fb_view_vtd_guard(const struct drm_framebuffer *fb,
+				     const struct intel_fb_view *view,
+				     unsigned int rotation);
 int intel_plane_compute_gtt(struct intel_plane_state *plane_state);
 
 int intel_framebuffer_init(struct intel_framebuffer *ifb,
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 2b9ad46eaef7..204e7e3e48ca 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -107,6 +107,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 		     const struct i915_gtt_view *view,
 		     unsigned int alignment,
 		     unsigned int phys_alignment,
+		     unsigned int vtd_guard,
 		     bool uses_fence,
 		     unsigned long *out_flags)
 {
@@ -162,7 +163,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 		goto err;
 
 	vma = i915_gem_object_pin_to_display_plane(obj, &ww, alignment,
-						   view, pinctl);
+						   vtd_guard, view, pinctl);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
 		goto err_unpin;
@@ -244,6 +245,14 @@ intel_plane_fb_min_phys_alignment(const struct intel_plane_state *plane_state)
 	return plane->min_alignment(plane, fb, 0);
 }
 
+static unsigned int
+intel_plane_fb_vtd_guard(const struct intel_plane_state *plane_state)
+{
+	return intel_fb_view_vtd_guard(plane_state->hw.fb,
+				       &plane_state->view,
+				       plane_state->hw.rotation);
+}
+
 int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 		       const struct intel_plane_state *old_plane_state)
 {
@@ -256,6 +265,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 		vma = intel_fb_pin_to_ggtt(&fb->base, &plane_state->view.gtt,
 					   intel_plane_fb_min_alignment(plane_state),
 					   intel_plane_fb_min_phys_alignment(plane_state),
+					   intel_plane_fb_vtd_guard(plane_state),
 					   intel_plane_uses_fence(plane_state),
 					   &plane_state->flags);
 		if (IS_ERR(vma))
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
index 0fc6d9044638..01770dbba2e0 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
@@ -18,6 +18,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 		     const struct i915_gtt_view *view,
 		     unsigned int alignment,
 		     unsigned int phys_alignment,
+		     unsigned int vtd_guard,
 		     bool uses_fence,
 		     unsigned long *out_flags);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 6c0808133397..833cded53d37 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -228,6 +228,8 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	 */
 	vma = intel_fb_pin_to_ggtt(&fb->base, &view,
 				   fb->min_alignment, 0,
+				   intel_fb_view_vtd_guard(&fb->base, &fb->normal_view,
+							   DRM_MODE_ROTATE_0),
 				   false, &flags);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index ca30fff61876..e519a021ea39 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -772,7 +772,7 @@ static struct i915_vma *intel_overlay_pin_fb(struct drm_i915_gem_object *new_bo)
 retry:
 	ret = i915_gem_object_lock(new_bo, &ww);
 	if (!ret) {
-		vma = i915_gem_object_pin_to_display_plane(new_bo, &ww, 0,
+		vma = i915_gem_object_pin_to_display_plane(new_bo, &ww, 0, 0,
 							   NULL, PIN_MAPPABLE);
 		ret = PTR_ERR_OR_ZERO(vma);
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 3770828f2eaf..cd865149b068 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -18,8 +18,6 @@
 #include "i915_gem_object_frontbuffer.h"
 #include "i915_vma.h"
 
-#define VTD_GUARD (168u * I915_GTT_PAGE_SIZE) /* 168 or tile-row PTE padding */
-
 static bool gpu_write_needs_clflush(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
@@ -424,7 +422,7 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
 struct i915_vma *
 i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 				     struct i915_gem_ww_ctx *ww,
-				     u32 alignment,
+				     u32 alignment, unsigned int guard,
 				     const struct i915_gtt_view *view,
 				     unsigned int flags)
 {
@@ -453,15 +451,8 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 		return ERR_PTR(ret);
 
 	/* VT-d may overfetch before/after the vma, so pad with scratch */
-	if (intel_scanout_needs_vtd_wa(i915)) {
-		unsigned int guard = VTD_GUARD;
-
-		if (i915_gem_object_is_tiled(obj))
-			guard = max(guard,
-				    i915_gem_object_get_tile_row_size(obj));
-
-		flags |= PIN_OFFSET_GUARD | guard;
-	}
+	if (guard)
+		flags |= PIN_OFFSET_GUARD | (guard * I915_GTT_PAGE_SIZE);
 
 	/*
 	 * As the user may map the buffer once pinned in the display plane
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index bb713e096db2..a5f34542135c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -776,7 +776,7 @@ i915_gem_object_set_to_cpu_domain(struct drm_i915_gem_object *obj, bool write);
 struct i915_vma * __must_check
 i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 				     struct i915_gem_ww_ctx *ww,
-				     u32 alignment,
+				     u32 alignment, unsigned int guard,
 				     const struct i915_gtt_view *view,
 				     unsigned int flags);
 
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 25ce032bb293..11a6b996d739 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -369,6 +369,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 		     const struct i915_gtt_view *view,
 		     unsigned int alignment,
 		     unsigned int phys_alignment,
+		     unsigned int vtd_guard,
 		     bool uses_fence,
 		     unsigned long *out_flags)
 {
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 2a2f250fa495..25c80dd6d386 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -215,7 +215,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 			   plane_state->uapi.rotation, &plane_state->view);
 
 	vma = intel_fb_pin_to_ggtt(fb, &plane_state->view.gtt,
-				   0, 0, false, &plane_state->flags);
+				   0, 0, 0, false, &plane_state->flags);
 	if (IS_ERR(vma))
 		goto nofb;
 
-- 
2.45.2

