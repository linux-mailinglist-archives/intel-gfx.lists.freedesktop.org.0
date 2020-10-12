Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0686A28BB19
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:47:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 756236E4D4;
	Mon, 12 Oct 2020 14:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5629F6E49C
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:47:12 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 16:46:26 +0200
Message-Id: <20201012144706.555345-22-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
References: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 21/61] drm/i915: Pass ww ctx to
 intel_pin_to_display_plane
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

Instead of multiple lockings, lock the object once,
and perform the ww dance around attach_phys and pin_pages.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 69 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_display.h  |  2 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  | 34 +++++++--
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    | 30 ++------
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_phys.c      | 10 +--
 .../drm/i915/gem/selftests/i915_gem_phys.c    |  2 +
 8 files changed, 86 insertions(+), 64 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a7e3f61c5777..db57f093b5a9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2232,6 +2232,7 @@ static bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)
 
 struct i915_vma *
 intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
+			   bool phys_cursor,
 			   const struct i915_ggtt_view *view,
 			   bool uses_fence,
 			   unsigned long *out_flags)
@@ -2240,14 +2241,19 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
 	intel_wakeref_t wakeref;
+	struct i915_gem_ww_ctx ww;
 	struct i915_vma *vma;
 	unsigned int pinctl;
 	u32 alignment;
+	int ret;
 
 	if (drm_WARN_ON(dev, !i915_gem_object_is_framebuffer(obj)))
 		return ERR_PTR(-EINVAL);
 
-	alignment = intel_surf_alignment(fb, 0);
+	if (phys_cursor)
+		alignment = intel_cursor_alignment(dev_priv);
+	else
+		alignment = intel_surf_alignment(fb, 0);
 	if (drm_WARN_ON(dev, alignment && !is_power_of_2(alignment)))
 		return ERR_PTR(-EINVAL);
 
@@ -2282,14 +2288,26 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 	if (HAS_GMCH(dev_priv))
 		pinctl |= PIN_MAPPABLE;
 
-	vma = i915_gem_object_pin_to_display_plane(obj,
-						   alignment, view, pinctl);
-	if (IS_ERR(vma))
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	ret = i915_gem_object_lock(obj, &ww);
+	if (!ret && phys_cursor)
+		ret = i915_gem_object_attach_phys(obj, alignment);
+	if (!ret)
+		ret = i915_gem_object_pin_pages(obj);
+	if (ret)
 		goto err;
 
-	if (uses_fence && i915_vma_is_map_and_fenceable(vma)) {
-		int ret;
+	if (!ret) {
+		vma = i915_gem_object_pin_to_display_plane(obj, &ww, alignment,
+							   view, pinctl);
+		if (IS_ERR(vma)) {
+			ret = PTR_ERR(vma);
+			goto err_unpin;
+		}
+	}
 
+	if (uses_fence && i915_vma_is_map_and_fenceable(vma)) {
 		/*
 		 * Install a fence for tiled scan-out. Pre-i965 always needs a
 		 * fence, whereas 965+ only requires a fence if using
@@ -2310,16 +2328,28 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 		ret = i915_vma_pin_fence(vma);
 		if (ret != 0 && INTEL_GEN(dev_priv) < 4) {
 			i915_gem_object_unpin_from_display_plane(vma);
-			vma = ERR_PTR(ret);
-			goto err;
+			goto err_unpin;
 		}
+		ret = 0;
 
-		if (ret == 0 && vma->fence)
+		if (vma->fence)
 			*out_flags |= PLANE_HAS_FENCE;
 	}
 
 	i915_vma_get(vma);
+
+err_unpin:
+	i915_gem_object_unpin_pages(obj);
 err:
+	if (ret == -EDEADLK) {
+		ret = i915_gem_ww_ctx_backoff(&ww);
+		if (!ret)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+	if (ret)
+		vma = ERR_PTR(ret);
+
 	atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
 	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 	return vma;
@@ -16136,19 +16166,11 @@ static int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct i915_vma *vma;
+	bool phys_cursor =
+		plane->id == PLANE_CURSOR &&
+		INTEL_INFO(dev_priv)->display.cursor_needs_physical;
 
-	if (plane->id == PLANE_CURSOR &&
-	    INTEL_INFO(dev_priv)->display.cursor_needs_physical) {
-		struct drm_i915_gem_object *obj = intel_fb_obj(fb);
-		const int align = intel_cursor_alignment(dev_priv);
-		int err;
-
-		err = i915_gem_object_attach_phys(obj, align);
-		if (err)
-			return err;
-	}
-
-	vma = intel_pin_and_fence_fb_obj(fb,
+	vma = intel_pin_and_fence_fb_obj(fb, phys_cursor,
 					 &plane_state->view,
 					 intel_plane_uses_fence(plane_state),
 					 &plane_state->flags);
@@ -16244,13 +16266,8 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 	if (!obj)
 		return 0;
 
-	ret = i915_gem_object_pin_pages(obj);
-	if (ret)
-		return ret;
 
 	ret = intel_plane_pin_fb(new_plane_state);
-
-	i915_gem_object_unpin_pages(obj);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index d10b7c8cde3f..03058d69d15d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -551,7 +551,7 @@ void intel_release_load_detect_pipe(struct drm_connector *connector,
 				    struct intel_load_detect_pipe *old,
 				    struct drm_modeset_acquire_ctx *ctx);
 struct i915_vma *
-intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
+intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb, bool phys_cursor,
 			   const struct i915_ggtt_view *view,
 			   bool uses_fence,
 			   unsigned long *out_flags);
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 842c04e63214..bdf44e923cc0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -211,7 +211,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	 * This also validates that any existing fb inherited from the
 	 * BIOS is suitable for own access.
 	 */
-	vma = intel_pin_and_fence_fb_obj(&ifbdev->fb->base,
+	vma = intel_pin_and_fence_fb_obj(&ifbdev->fb->base, false,
 					 &view, false, &flags);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 52b4f6193b4c..9cf634cc7084 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -755,6 +755,32 @@ static u32 overlay_cmd_reg(struct drm_intel_overlay_put_image *params)
 	return cmd;
 }
 
+static struct i915_vma *intel_overlay_pin_fb(struct drm_i915_gem_object *new_bo)
+{
+	struct i915_gem_ww_ctx ww;
+	struct i915_vma *vma;
+	int ret;
+
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	ret = i915_gem_object_lock(new_bo, &ww);
+	if (!ret) {
+		vma = i915_gem_object_pin_to_display_plane(new_bo, &ww, 0,
+							   NULL, PIN_MAPPABLE);
+		ret = PTR_ERR_OR_ZERO(vma);
+	}
+	if (ret == -EDEADLK) {
+		ret = i915_gem_ww_ctx_backoff(&ww);
+		if (!ret)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return vma;
+}
+
 static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 				      struct drm_i915_gem_object *new_bo,
 				      struct drm_intel_overlay_put_image *params)
@@ -776,12 +802,10 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 
 	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
 
-	vma = i915_gem_object_pin_to_display_plane(new_bo,
-						   0, NULL, PIN_MAPPABLE);
-	if (IS_ERR(vma)) {
-		ret = PTR_ERR(vma);
+	vma = intel_overlay_pin_fb(new_bo);
+	if (IS_ERR(vma))
 		goto out_pin_section;
-	}
+
 	i915_gem_object_flush_frontbuffer(new_bo, ORIGIN_DIRTYFB);
 
 	if (!overlay->active) {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 43c22648b074..9adced5a6843 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -313,12 +313,12 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
  */
 struct i915_vma *
 i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
+				     struct i915_gem_ww_ctx *ww,
 				     u32 alignment,
 				     const struct i915_ggtt_view *view,
 				     unsigned int flags)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
-	struct i915_gem_ww_ctx ww;
 	struct i915_vma *vma;
 	int ret;
 
@@ -326,11 +326,6 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 	if (HAS_LMEM(i915) && !i915_gem_object_is_lmem(obj))
 		return ERR_PTR(-EINVAL);
 
-	i915_gem_ww_ctx_init(&ww, true);
-retry:
-	ret = i915_gem_object_lock(obj, &ww);
-	if (ret)
-		goto err;
 	/*
 	 * The display engine is not coherent with the LLC cache on gen6.  As
 	 * a result, we make sure that the pinning that is about to occur is
@@ -345,7 +340,7 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 					      HAS_WT(i915) ?
 					      I915_CACHE_WT : I915_CACHE_NONE);
 	if (ret)
-		goto err;
+		return ERR_PTR(ret);
 
 	/*
 	 * As the user may map the buffer once pinned in the display plane
@@ -358,32 +353,19 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 	vma = ERR_PTR(-ENOSPC);
 	if ((flags & PIN_MAPPABLE) == 0 &&
 	    (!view || view->type == I915_GGTT_VIEW_NORMAL))
-		vma = i915_gem_object_ggtt_pin_ww(obj, &ww, view, 0, alignment,
+		vma = i915_gem_object_ggtt_pin_ww(obj, ww, view, 0, alignment,
 						  flags | PIN_MAPPABLE |
 						  PIN_NONBLOCK);
 	if (IS_ERR(vma) && vma != ERR_PTR(-EDEADLK))
-		vma = i915_gem_object_ggtt_pin_ww(obj, &ww, view, 0,
+		vma = i915_gem_object_ggtt_pin_ww(obj, ww, view, 0,
 						  alignment, flags);
-	if (IS_ERR(vma)) {
-		ret = PTR_ERR(vma);
-		goto err;
-	}
+	if (IS_ERR(vma))
+		return vma;
 
 	vma->display_alignment = max_t(u64, vma->display_alignment, alignment);
 
 	i915_gem_object_flush_if_display_locked(obj);
 
-err:
-	if (ret == -EDEADLK) {
-		ret = i915_gem_ww_ctx_backoff(&ww);
-		if (!ret)
-			goto retry;
-	}
-	i915_gem_ww_ctx_fini(&ww);
-
-	if (ret)
-		return ERR_PTR(ret);
-
 	return vma;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index b7d15a3db10e..d3086a59b5ad 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -466,6 +466,7 @@ int __must_check
 i915_gem_object_set_to_cpu_domain(struct drm_i915_gem_object *obj, bool write);
 struct i915_vma * __must_check
 i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
+				     struct i915_gem_ww_ctx *ww,
 				     u32 alignment,
 				     const struct i915_ggtt_view *view,
 				     unsigned int flags);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 4322e35cfe48..15d8f8d52cbe 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -169,6 +169,8 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 {
 	int err;
 
+	assert_object_held(obj);
+
 	if (align > obj->base.size)
 		return -EINVAL;
 
@@ -182,13 +184,9 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 	if (err)
 		return err;
 
-	err = i915_gem_object_lock_interruptible(obj, NULL);
-	if (err)
-		return err;
-
 	err = mutex_lock_interruptible(&obj->mm.lock);
 	if (err)
-		goto err_unlock;
+		return err;
 
 	if (unlikely(!i915_gem_object_has_struct_page(obj)))
 		goto out;
@@ -219,8 +217,6 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 
 out:
 	mutex_unlock(&obj->mm.lock);
-err_unlock:
-	i915_gem_object_unlock(obj);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
index 0cfa082047fe..3a6ce87f8b52 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
@@ -31,7 +31,9 @@ static int mock_phys_object(void *arg)
 		goto out_obj;
 	}
 
+	i915_gem_object_lock(obj, NULL);
 	err = i915_gem_object_attach_phys(obj, PAGE_SIZE);
+	i915_gem_object_unlock(obj);
 	if (err) {
 		pr_err("i915_gem_object_attach_phys failed, err=%d\n", err);
 		goto out_obj;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
