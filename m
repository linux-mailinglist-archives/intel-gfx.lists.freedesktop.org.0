Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6C515182D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 10:49:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48FE56EE17;
	Tue,  4 Feb 2020 09:49:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B06386EE17
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 09:49:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20109218-1500050 
 for multiple; Tue, 04 Feb 2020 09:49:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 09:48:02 +0000
Message-Id: <20200204094801.877288-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200204094801.877288-1-chris@chris-wilson.co.uk>
References: <20200204094801.877288-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: Be explicit in handling
 the preallocated vma
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As only the display codes tries to pin its preallocated framebuffer into
an exact location in the GGTT, remove the convenience function and make
the pin management explicit in the display code. Then throughout the
display management, we track the framebuffer and its plane->vma; with
less single purpose code and ready for first class i915_vma.

In doing so, this should fix the BUG_ON(vma->pages) on fi-kbl-soraka.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
Ville, you mentioned you had a plan... This should prevent an oops during
boot for kbl-soraka, so it would be nice :)
-Chris
---
 drivers/gpu/drm/i915/display/intel_display.c  | 141 +++++++++++-------
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  82 ++--------
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h    |   1 -
 drivers/gpu/drm/i915/gt/intel_rc6.c           |   1 -
 5 files changed, 102 insertions(+), 124 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b07971204492..c3695317d74a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3389,6 +3389,68 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
 	}
 }
 
+static struct i915_vma *
+initial_plane_vma(struct drm_i915_private *i915,
+		  struct intel_initial_plane_config *plane_config)
+{
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	u32 base, size;
+
+	if (plane_config->size == 0)
+		return NULL;
+
+	base = round_down(plane_config->base,
+			  I915_GTT_MIN_ALIGNMENT);
+	size = round_up(plane_config->base + plane_config->size,
+			I915_GTT_MIN_ALIGNMENT);
+	size -= base;
+
+	/*
+	 * If the FB is too big, just don't use it since fbdev is not very
+	 * important and we should probably use that space with FBC or other
+	 * features.
+	 */
+	if (size * 2 > i915->stolen_usable_size)
+		return NULL;
+
+	obj = i915_gem_object_create_stolen_for_preallocated(i915, base, size);
+	if (IS_ERR(obj))
+		return NULL;
+
+	switch (plane_config->tiling) {
+	case I915_TILING_NONE:
+		break;
+	case I915_TILING_X:
+	case I915_TILING_Y:
+		obj->tiling_and_stride =
+			plane_config->fb->base.pitches[0] |
+			plane_config->tiling;
+		break;
+	default:
+		MISSING_CASE(plane_config->tiling);
+		goto err_obj;
+	}
+
+	vma = i915_vma_instance(obj, &i915->ggtt.vm, NULL);
+	if (IS_ERR(vma))
+		goto err_obj;
+
+	if (i915_vma_pin(vma, 0, 0,
+			 PIN_GLOBAL | PIN_MAPPABLE | PIN_OFFSET_FIXED | base))
+		goto err_obj;
+
+	if (i915_gem_object_is_tiled(obj) &&
+	    !i915_vma_is_map_and_fenceable(vma))
+		goto err_obj;
+
+	return vma;
+
+err_obj:
+	i915_gem_object_put(obj);
+	return NULL;
+}
+
 static bool
 intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 			      struct intel_initial_plane_config *plane_config)
@@ -3397,22 +3459,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_mode_fb_cmd2 mode_cmd = { 0 };
 	struct drm_framebuffer *fb = &plane_config->fb->base;
-	u32 base_aligned = round_down(plane_config->base, PAGE_SIZE);
-	u32 size_aligned = round_up(plane_config->base + plane_config->size,
-				    PAGE_SIZE);
-	struct drm_i915_gem_object *obj;
-	bool ret = false;
-
-	size_aligned -= base_aligned;
-
-	if (plane_config->size == 0)
-		return false;
-
-	/* If the FB is too big, just don't use it since fbdev is not very
-	 * important and we should probably use that space with FBC or other
-	 * features. */
-	if (size_aligned * 2 > dev_priv->stolen_usable_size)
-		return false;
+	struct i915_vma *vma;
 
 	switch (fb->modifier) {
 	case DRM_FORMAT_MOD_LINEAR:
@@ -3426,25 +3473,10 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 		return false;
 	}
 
-	obj = i915_gem_object_create_stolen_for_preallocated(dev_priv,
-							     base_aligned,
-							     base_aligned,
-							     size_aligned);
-	if (IS_ERR(obj))
+	vma = initial_plane_vma(dev_priv, plane_config);
+	if (!vma)
 		return false;
 
-	switch (plane_config->tiling) {
-	case I915_TILING_NONE:
-		break;
-	case I915_TILING_X:
-	case I915_TILING_Y:
-		obj->tiling_and_stride = fb->pitches[0] | plane_config->tiling;
-		break;
-	default:
-		MISSING_CASE(plane_config->tiling);
-		goto out;
-	}
-
 	mode_cmd.pixel_format = fb->format->format;
 	mode_cmd.width = fb->width;
 	mode_cmd.height = fb->height;
@@ -3452,17 +3484,18 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 	mode_cmd.modifier[0] = fb->modifier;
 	mode_cmd.flags = DRM_MODE_FB_MODIFIERS;
 
-	if (intel_framebuffer_init(to_intel_framebuffer(fb), obj, &mode_cmd)) {
+	if (intel_framebuffer_init(to_intel_framebuffer(fb),
+				   vma->obj, &mode_cmd)) {
 		drm_dbg_kms(&dev_priv->drm, "intel fb init failed\n");
-		goto out;
+		goto err_vma;
 	}
 
+	plane_config->vma = vma;
+	return true;
 
-	drm_dbg_kms(&dev_priv->drm, "initial plane fb obj %p\n", obj);
-	ret = true;
-out:
-	i915_gem_object_put(obj);
-	return ret;
+err_vma:
+	i915_vma_put(vma);
+	return false;
 }
 
 static void
@@ -3561,12 +3594,14 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 	struct intel_plane_state *intel_state =
 		to_intel_plane_state(plane_state);
 	struct drm_framebuffer *fb;
+	struct i915_vma *vma;
 
 	if (!plane_config->fb)
 		return;
 
 	if (intel_alloc_initial_plane_obj(intel_crtc, plane_config)) {
 		fb = &plane_config->fb->base;
+		vma = plane_config->vma;
 		goto valid_fb;
 	}
 
@@ -3589,6 +3624,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 
 		if (intel_plane_ggtt_offset(state) == plane_config->base) {
 			fb = state->hw.fb;
+			vma = state->vma;
 			goto valid_fb;
 		}
 	}
@@ -3611,21 +3647,11 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 	intel_state->color_plane[0].stride =
 		intel_fb_pitch(fb, 0, intel_state->hw.rotation);
 
-	intel_state->vma =
-		intel_pin_and_fence_fb_obj(fb,
-					   &intel_state->view,
-					   intel_plane_uses_fence(intel_state),
-					   &intel_state->flags);
-	if (IS_ERR(intel_state->vma)) {
-		drm_err(&dev_priv->drm,
-			"failed to pin boot fb on pipe %d: %li\n",
-			intel_crtc->pipe, PTR_ERR(intel_state->vma));
-
-		intel_state->vma = NULL;
-		return;
-	}
-
-	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
+	__i915_vma_pin(vma);
+	intel_state->vma = i915_vma_get(vma);
+	if (intel_plane_uses_fence(intel_state) && i915_vma_pin_fence(vma) == 0)
+		if (vma->fence)
+			intel_state->flags |= PLANE_HAS_FENCE;
 
 	plane_state->src_x = 0;
 	plane_state->src_y = 0;
@@ -3649,6 +3675,8 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 	plane_state->crtc = &intel_crtc->base;
 	intel_plane_copy_uapi_to_hw_state(intel_state, intel_state);
 
+	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
+
 	atomic_or(to_intel_plane(primary)->frontbuffer_bit,
 		  &to_intel_frontbuffer(fb)->bits);
 }
@@ -17863,6 +17891,9 @@ static void plane_config_fini(struct intel_initial_plane_config *plane_config)
 		else
 			kfree(fb);
 	}
+
+	if (plane_config->vma)
+		i915_vma_put(plane_config->vma);
 }
 
 int intel_modeset_init(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7c6133a9c51b..7ae0bc8b80d1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -592,6 +592,7 @@ struct intel_plane_state {
 
 struct intel_initial_plane_config {
 	struct intel_framebuffer *fb;
+	struct i915_vma *vma;
 	unsigned int tiling;
 	int size;
 	u32 base;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index b47e7109be6a..491cfbaaa330 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -686,28 +686,24 @@ struct intel_memory_region *i915_gem_stolen_setup(struct drm_i915_private *i915)
 struct drm_i915_gem_object *
 i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *i915,
 					       resource_size_t stolen_offset,
-					       resource_size_t gtt_offset,
 					       resource_size_t size)
 {
 	struct intel_memory_region *mem = i915->mm.regions[INTEL_REGION_STOLEN];
-	struct i915_ggtt *ggtt = &i915->ggtt;
 	struct drm_i915_gem_object *obj;
 	struct drm_mm_node *stolen;
-	struct i915_vma *vma;
 	int ret;
 
 	if (!drm_mm_initialized(&i915->mm.stolen))
 		return ERR_PTR(-ENODEV);
 
 	drm_dbg(&i915->drm,
-		"creating preallocated stolen object: stolen_offset=%pa, gtt_offset=%pa, size=%pa\n",
-		&stolen_offset, &gtt_offset, &size);
+		"creating preallocated stolen object: stolen_offset=%pa, size=%pa\n",
+		&stolen_offset, &size);
 
 	/* KISS and expect everything to be page-aligned */
-	if (drm_WARN_ON(&i915->drm, size == 0) ||
-	    drm_WARN_ON(&i915->drm, !IS_ALIGNED(size, I915_GTT_PAGE_SIZE)) ||
-	    drm_WARN_ON(&i915->drm,
-			!IS_ALIGNED(stolen_offset, I915_GTT_MIN_ALIGNMENT)))
+	if (GEM_WARN_ON(size == 0) ||
+	    GEM_WARN_ON(!IS_ALIGNED(size, I915_GTT_PAGE_SIZE)) ||
+	    GEM_WARN_ON(!IS_ALIGNED(stolen_offset, I915_GTT_MIN_ALIGNMENT)))
 		return ERR_PTR(-EINVAL);
 
 	stolen = kzalloc(sizeof(*stolen), GFP_KERNEL);
@@ -720,68 +716,20 @@ i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *i915,
 	ret = drm_mm_reserve_node(&i915->mm.stolen, stolen);
 	mutex_unlock(&i915->mm.stolen_lock);
 	if (ret) {
-		drm_dbg(&i915->drm, "failed to allocate stolen space\n");
-		kfree(stolen);
-		return ERR_PTR(ret);
+		obj = ERR_PTR(ret);
+		goto err_free;
 	}
 
 	obj = __i915_gem_object_create_stolen(mem, stolen);
-	if (IS_ERR(obj)) {
-		drm_dbg(&i915->drm, "failed to allocate stolen object\n");
-		i915_gem_stolen_remove_node(i915, stolen);
-		kfree(stolen);
-		return obj;
-	}
-
-	/* Some objects just need physical mem from stolen space */
-	if (gtt_offset == I915_GTT_OFFSET_NONE)
-		return obj;
-
-	ret = i915_gem_object_pin_pages(obj);
-	if (ret)
-		goto err;
-
-	vma = i915_vma_instance(obj, &ggtt->vm, NULL);
-	if (IS_ERR(vma)) {
-		ret = PTR_ERR(vma);
-		goto err_pages;
-	}
-
-	/* To simplify the initialisation sequence between KMS and GTT,
-	 * we allow construction of the stolen object prior to
-	 * setting up the GTT space. The actual reservation will occur
-	 * later.
-	 */
-	mutex_lock(&ggtt->vm.mutex);
-	ret = i915_gem_gtt_reserve(&ggtt->vm, &vma->node,
-				   size, gtt_offset, obj->cache_level,
-				   0);
-	if (ret) {
-		drm_dbg(&i915->drm, "failed to allocate stolen GTT space\n");
-		mutex_unlock(&ggtt->vm.mutex);
-		goto err_pages;
-	}
-
-	GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
-
-	GEM_BUG_ON(vma->pages);
-	vma->pages = obj->mm.pages;
-	atomic_set(&vma->pages_count, I915_VMA_PAGES_ACTIVE);
-
-	set_bit(I915_VMA_GLOBAL_BIND_BIT, __i915_vma_flags(vma));
-	__i915_vma_set_map_and_fenceable(vma);
-
-	list_add_tail(&vma->vm_link, &ggtt->vm.bound_list);
-	mutex_unlock(&ggtt->vm.mutex);
-
-	GEM_BUG_ON(i915_gem_object_is_shrinkable(obj));
-	atomic_inc(&obj->bind_count);
+	if (IS_ERR(obj))
+		goto err_stolen;
 
+	i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
 	return obj;
 
-err_pages:
-	i915_gem_object_unpin_pages(obj);
-err:
-	i915_gem_object_put(obj);
-	return ERR_PTR(ret);
+err_stolen:
+	i915_gem_stolen_remove_node(i915, stolen);
+err_free:
+	kfree(stolen);
+	return obj;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
index c1040627fbf3..e15c0adad8af 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
@@ -28,7 +28,6 @@ i915_gem_object_create_stolen(struct drm_i915_private *dev_priv,
 struct drm_i915_gem_object *
 i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *dev_priv,
 					       resource_size_t stolen_offset,
-					       resource_size_t gtt_offset,
 					       resource_size_t size);
 
 #endif /* __I915_GEM_STOLEN_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 01a99fdbb3c4..cc0882ee2a80 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -299,7 +299,6 @@ static int vlv_rc6_init(struct intel_rc6 *rc6)
 		pcbr_offset = (pcbr & ~4095) - i915->dsm.start;
 		pctx = i915_gem_object_create_stolen_for_preallocated(i915,
 								      pcbr_offset,
-								      I915_GTT_OFFSET_NONE,
 								      pctx_size);
 		if (IS_ERR(pctx))
 			return PTR_ERR(pctx);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
