Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6FE2FC27C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 22:43:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4EB889FF9;
	Tue, 19 Jan 2021 21:43:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EBB989FF9
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 21:43:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23643967-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 21:43:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 21:43:36 +0000
Message-Id: <20210119214336.1463-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210119214336.1463-1-chris@chris-wilson.co.uk>
References: <20210119214336.1463-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 6/6] drm/i915/gem: Drop lru bumping on display
 unpinning
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

Simplify the frontbuffer unpin by removing the lock requirement. The LRU
bumping was primarily to protect the GTT from being evicted and from
frontbuffers being eagerly shrunk. Now we protect frontbuffers from the
shrinker, and we avoid accidentally evicting from the GTT, so the
benefit from bumping LRU is no more, and we can save more time by not.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  7 +--
 drivers/gpu/drm/i915/display/intel_overlay.c |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c   | 45 --------------------
 drivers/gpu/drm/i915/gem/i915_gem_object.h   |  1 -
 4 files changed, 4 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 32ff9d201aeb..2bd04e631eaa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1430,7 +1430,7 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 		 */
 		ret = i915_vma_pin_fence(vma);
 		if (ret != 0 && INTEL_GEN(dev_priv) < 4) {
-			i915_gem_object_unpin_from_display_plane(vma);
+			i915_vma_unpin(vma);
 			vma = ERR_PTR(ret);
 			goto err;
 		}
@@ -1448,12 +1448,9 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 
 void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
 {
-	i915_gem_object_lock(vma->obj, NULL);
 	if (flags & PLANE_HAS_FENCE)
 		i915_vma_unpin_fence(vma);
-	i915_gem_object_unpin_from_display_plane(vma);
-	i915_gem_object_unlock(vma->obj);
-
+	i915_vma_unpin(vma);
 	i915_vma_put(vma);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 6be5d8946c69..8edb9b2cdbeb 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -360,7 +360,7 @@ static void intel_overlay_release_old_vma(struct intel_overlay *overlay)
 	intel_frontbuffer_flip_complete(overlay->i915,
 					INTEL_FRONTBUFFER_OVERLAY(overlay->crtc->pipe));
 
-	i915_gem_object_unpin_from_display_plane(vma);
+	i915_vma_unpin(vma);
 	i915_vma_put(vma);
 }
 
@@ -861,7 +861,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 	return 0;
 
 out_unpin:
-	i915_gem_object_unpin_from_display_plane(vma);
+	i915_vma_unpin(vma);
 out_pin_section:
 	atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index a6257314be9c..36f54cedaaeb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -434,48 +434,6 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 	return vma;
 }
 
-static void i915_gem_object_bump_inactive_ggtt(struct drm_i915_gem_object *obj)
-{
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
-	struct i915_vma *vma;
-
-	if (list_empty(&obj->vma.list))
-		return;
-
-	mutex_lock(&i915->ggtt.vm.mutex);
-	spin_lock(&obj->vma.lock);
-	for_each_ggtt_vma(vma, obj) {
-		if (!drm_mm_node_allocated(&vma->node))
-			continue;
-
-		GEM_BUG_ON(vma->vm != &i915->ggtt.vm);
-		list_move_tail(&vma->vm_link, &vma->vm->bound_list);
-	}
-	spin_unlock(&obj->vma.lock);
-	mutex_unlock(&i915->ggtt.vm.mutex);
-
-	if (i915_gem_object_is_shrinkable(obj)) {
-		unsigned long flags;
-
-		spin_lock_irqsave(&i915->mm.obj_lock, flags);
-
-		if (obj->mm.madv == I915_MADV_WILLNEED &&
-		    !atomic_read(&obj->mm.shrink_pin))
-			list_move_tail(&obj->mm.link, &i915->mm.shrink_list);
-
-		spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
-	}
-}
-
-void
-i915_gem_object_unpin_from_display_plane(struct i915_vma *vma)
-{
-	/* Bump the LRU to try and avoid premature eviction whilst flipping  */
-	i915_gem_object_bump_inactive_ggtt(vma->obj);
-
-	i915_vma_unpin(vma);
-}
-
 /**
  * Moves a single object to the CPU read, and possibly write domain.
  * @obj: object to act on
@@ -616,9 +574,6 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
 	else
 		err = i915_gem_object_set_to_cpu_domain(obj, write_domain);
 
-	/* And bump the LRU for this access */
-	i915_gem_object_bump_inactive_ggtt(obj);
-
 	i915_gem_object_unlock(obj);
 
 	if (write_domain)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 0004893450c7..77b2c36b7dac 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -492,7 +492,6 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 				     u32 alignment,
 				     const struct i915_ggtt_view *view,
 				     unsigned int flags);
-void i915_gem_object_unpin_from_display_plane(struct i915_vma *vma);
 
 void i915_gem_object_make_unshrinkable(struct drm_i915_gem_object *obj);
 void i915_gem_object_make_shrinkable(struct drm_i915_gem_object *obj);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
