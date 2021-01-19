Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 666962FB9C2
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 15:49:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B4AF6E827;
	Tue, 19 Jan 2021 14:49:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F299C6E329
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 14:49:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23640081-1500050 
 for multiple; Tue, 19 Jan 2021 14:49:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 14:49:09 +0000
Message-Id: <20210119144912.12653-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210119144912.12653-1-chris@chris-wilson.co.uk>
References: <20210119144912.12653-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/gem: Move stolen node into GEM
 object union
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c       | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_object.h       | 2 ++
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_phys.c         | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c        | 5 +++++
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c       | 5 +++++
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h       | 2 ++
 drivers/gpu/drm/i915/gt/intel_ring.c             | 2 +-
 drivers/gpu/drm/i915/gt/shmem_utils.c            | 2 +-
 drivers/gpu/drm/i915/i915_debugfs.c              | 2 +-
 10 files changed, 22 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 842c04e63214..84f853f113b9 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -256,7 +256,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	 * If the object is stolen however, it will be full of whatever
 	 * garbage was left in there.
 	 */
-	if (vma->obj->stolen && !prealloc)
+	if (!i915_gem_object_is_shmem(vma->obj) && !prealloc)
 		memset_io(info->screen_base, 0, info->screen_size);
 
 	/* Use default scratch pixmap (info->pixmap.flags = FB_PIXMAP_SYSTEM) */
@@ -595,7 +595,7 @@ void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous
 	 * full of whatever garbage was left in there.
 	 */
 	if (state == FBINFO_STATE_RUNNING &&
-	    intel_fb_obj(&ifbdev->fb->base)->stolen)
+	    !i915_gem_object_is_shmem(intel_fb_obj(&ifbdev->fb->base)))
 		memset_io(info->screen_base, 0, info->screen_size);
 
 	drm_fb_helper_set_suspend(&ifbdev->helper, state);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index be14486f63a7..3603b702a14e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -540,4 +540,6 @@ i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
 		__i915_gem_object_invalidate_frontbuffer(obj, origin);
 }
 
+bool i915_gem_object_is_shmem(const struct drm_i915_gem_object *obj);
+
 #endif
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index e2d9b7e1e152..b01b4b307ee7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -142,8 +142,6 @@ struct drm_i915_gem_object {
 	 */
 	struct list_head obj_link;
 
-	/** Stolen memory for this object, instead of being backed by shmem. */
-	struct drm_mm_node *stolen;
 	union {
 		struct rcu_head rcu;
 		struct llist_node freed;
@@ -295,6 +293,8 @@ struct drm_i915_gem_object {
 			struct work_struct *work;
 		} userptr;
 
+		struct drm_mm_node *stolen;
+
 		unsigned long scratch;
 		u64 encode;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 3a4dfe2ef1da..3bb65a1b1d93 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -213,7 +213,7 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 	if (obj->ops == &i915_gem_phys_ops)
 		return 0;
 
-	if (obj->ops != &i915_gem_shmem_ops)
+	if (!i915_gem_object_is_shmem(obj))
 		return -EINVAL;
 
 	err = i915_gem_object_unbind(obj, I915_GEM_OBJECT_UNBIND_ACTIVE);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 722e02164c3e..cf83c208688c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -612,3 +612,8 @@ struct intel_memory_region *i915_gem_shmem_setup(struct drm_i915_private *i915)
 					  PAGE_SIZE, 0,
 					  &shmem_region_ops);
 }
+
+bool i915_gem_object_is_shmem(const struct drm_i915_gem_object *obj)
+{
+	return obj->ops == &i915_gem_shmem_ops;
+}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index b221492531ef..551935348ad8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -781,3 +781,8 @@ i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *i915,
 	kfree(stolen);
 	return obj;
 }
+
+bool i915_gem_object_is_stolen(const struct drm_i915_gem_object *obj)
+{
+	return obj->ops == &i915_gem_object_stolen_ops;
+}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
index 61e028063f9f..b03489706796 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
@@ -30,6 +30,8 @@ i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *dev_priv
 					       resource_size_t stolen_offset,
 					       resource_size_t size);
 
+bool i915_gem_object_is_stolen(const struct drm_i915_gem_object *obj);
+
 #define I915_GEM_STOLEN_BIAS SZ_128K
 
 #endif /* __I915_GEM_STOLEN_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index 06385550450c..78d1360caa0f 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -42,7 +42,7 @@ int intel_ring_pin(struct intel_ring *ring, struct i915_gem_ww_ctx *ww)
 	/* Ring wraparound at offset 0 sometimes hangs. No idea why. */
 	flags = PIN_OFFSET_BIAS | i915_ggtt_pin_bias(vma);
 
-	if (vma->obj->stolen)
+	if (i915_gem_object_is_stolen(vma->obj))
 		flags |= PIN_MAPPABLE;
 	else
 		flags |= PIN_HIGH;
diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
index 5982b62f913d..a4d8fc9e2374 100644
--- a/drivers/gpu/drm/i915/gt/shmem_utils.c
+++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
@@ -33,7 +33,7 @@ struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
 	struct file *file;
 	void *ptr;
 
-	if (obj->ops == &i915_gem_shmem_ops) {
+	if (i915_gem_object_is_shmem(obj)) {
 		file = obj->base.filp;
 		atomic_long_inc(&file->f_count);
 		return file;
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index de8e0e44cfb6..ec5a32d0eeca 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -210,7 +210,7 @@ i915_debugfs_describe_obj(struct seq_file *m, struct drm_i915_gem_object *obj)
 	spin_unlock(&obj->vma.lock);
 
 	seq_printf(m, " (pinned x %d)", pin_count);
-	if (obj->stolen)
+	if (i915_gem_object_is_stolen(obj))
 		seq_printf(m, " (stolen: %08llx)", obj->stolen->start);
 	if (i915_gem_object_is_framebuffer(obj))
 		seq_printf(m, " (fb)");
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
