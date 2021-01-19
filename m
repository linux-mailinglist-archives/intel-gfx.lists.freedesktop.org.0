Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3CC2FB9BE
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 15:49:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F03A6E3F0;
	Tue, 19 Jan 2021 14:49:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F4B6E3F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 14:49:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23640082-1500050 
 for multiple; Tue, 19 Jan 2021 14:49:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 14:49:10 +0000
Message-Id: <20210119144912.12653-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210119144912.12653-1-chris@chris-wilson.co.uk>
References: <20210119144912.12653-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/gem: Use shrinkable status for
 unknown swizzle quirks
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
 drivers/gpu/drm/i915/gem/i915_gem_object.h    | 18 ++++++++++++++++++
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  7 +------
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 19 +++++++++++--------
 drivers/gpu/drm/i915/gem/i915_gem_phys.c      |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    | 12 ++++++------
 drivers/gpu/drm/i915/i915_gem.c               | 12 ++++++------
 .../gpu/drm/i915/selftests/i915_gem_evict.c   | 10 +++++-----
 7 files changed, 48 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 3603b702a14e..6e28159a883d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -187,6 +187,24 @@ i915_gem_object_set_volatile(struct drm_i915_gem_object *obj)
 	obj->flags |= I915_BO_ALLOC_VOLATILE;
 }
 
+static inline bool
+i915_gem_object_has_tiling_quirk(struct drm_i915_gem_object *obj)
+{
+	return test_bit(I915_TILING_QUIRK_BIT, &obj->flags);
+}
+
+static inline void
+i915_gem_object_set_tiling_quirk(struct drm_i915_gem_object *obj)
+{
+	set_bit(I915_TILING_QUIRK_BIT, &obj->flags);
+}
+
+static inline void
+i915_gem_object_clear_tiling_quirk(struct drm_i915_gem_object *obj)
+{
+	clear_bit(I915_TILING_QUIRK_BIT, &obj->flags);
+}
+
 static inline bool
 i915_gem_object_type_has(const struct drm_i915_gem_object *obj,
 			 unsigned long flags)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index b01b4b307ee7..273694592596 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -165,6 +165,7 @@ struct drm_i915_gem_object {
 #define I915_BO_ALLOC_VOLATILE   BIT(1)
 #define I915_BO_ALLOC_FLAGS (I915_BO_ALLOC_CONTIGUOUS | I915_BO_ALLOC_VOLATILE)
 #define I915_BO_READONLY         BIT(2)
+#define I915_TILING_QUIRK_BIT    3 /* unknown swizzling; do not release! */
 
 	/*
 	 * Is the object to be mapped as read-only to the GPU
@@ -273,12 +274,6 @@ struct drm_i915_gem_object {
 		 * pages were last acquired.
 		 */
 		bool dirty:1;
-
-		/**
-		 * This is set if the object has been pinned due to unknown
-		 * swizzling.
-		 */
-		bool quirked:1;
 	} mm;
 
 	/** Record of address bit 17 of each page at last unbind. */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 3db3c667c486..43028f3539a6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -16,6 +16,7 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	unsigned long supported = INTEL_INFO(i915)->page_sizes;
+	bool shrinkable;
 	int i;
 
 	lockdep_assert_held(&obj->mm.lock);
@@ -38,13 +39,6 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 
 	obj->mm.pages = pages;
 
-	if (i915_gem_object_is_tiled(obj) &&
-	    i915->quirks & QUIRK_PIN_SWIZZLED_PAGES) {
-		GEM_BUG_ON(obj->mm.quirked);
-		__i915_gem_object_pin_pages(obj);
-		obj->mm.quirked = true;
-	}
-
 	GEM_BUG_ON(!sg_page_sizes);
 	obj->mm.page_sizes.phys = sg_page_sizes;
 
@@ -63,7 +57,16 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 	}
 	GEM_BUG_ON(!HAS_PAGE_SIZES(i915, obj->mm.page_sizes.sg));
 
-	if (i915_gem_object_is_shrinkable(obj)) {
+	shrinkable = i915_gem_object_is_shrinkable(obj);
+
+	if (i915_gem_object_is_tiled(obj) &&
+	    i915->quirks & QUIRK_PIN_SWIZZLED_PAGES) {
+		GEM_BUG_ON(i915_gem_object_has_tiling_quirk(obj));
+		i915_gem_object_set_tiling_quirk(obj);
+		shrinkable = false;
+	}
+
+	if (shrinkable) {
 		struct list_head *list;
 		unsigned long flags;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 3bb65a1b1d93..3c0b157e2a35 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -227,7 +227,7 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 		goto err_unlock;
 	}
 
-	if (obj->mm.quirked) {
+	if (i915_gem_object_has_tiling_quirk(obj)) {
 		err = -EFAULT;
 		goto err_unlock;
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index ffcaee74a249..b4f720ed80cd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -270,14 +270,14 @@ i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
 	    obj->mm.madv == I915_MADV_WILLNEED &&
 	    i915->quirks & QUIRK_PIN_SWIZZLED_PAGES) {
 		if (tiling == I915_TILING_NONE) {
-			GEM_BUG_ON(!obj->mm.quirked);
-			__i915_gem_object_unpin_pages(obj);
-			obj->mm.quirked = false;
+			GEM_BUG_ON(!i915_gem_object_has_tiling_quirk(obj));
+			i915_gem_object_make_shrinkable(obj);
+			i915_gem_object_clear_tiling_quirk(obj);
 		}
 		if (!i915_gem_object_is_tiled(obj)) {
-			GEM_BUG_ON(obj->mm.quirked);
-			__i915_gem_object_pin_pages(obj);
-			obj->mm.quirked = true;
+			GEM_BUG_ON(i915_gem_object_has_tiling_quirk(obj));
+			i915_gem_object_make_unshrinkable(obj);
+			i915_gem_object_set_tiling_quirk(obj);
 		}
 	}
 	mutex_unlock(&obj->mm.lock);
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index d3a287bf56c5..9a534c4023ef 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -957,14 +957,14 @@ i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
 	    i915_gem_object_is_tiled(obj) &&
 	    i915->quirks & QUIRK_PIN_SWIZZLED_PAGES) {
 		if (obj->mm.madv == I915_MADV_WILLNEED) {
-			GEM_BUG_ON(!obj->mm.quirked);
-			__i915_gem_object_unpin_pages(obj);
-			obj->mm.quirked = false;
+			GEM_BUG_ON(!i915_gem_object_has_tiling_quirk(obj));
+			i915_gem_object_make_shrinkable(obj);
+			i915_gem_object_set_tiling_quirk(obj);
 		}
 		if (args->madv == I915_MADV_WILLNEED) {
-			GEM_BUG_ON(obj->mm.quirked);
-			__i915_gem_object_pin_pages(obj);
-			obj->mm.quirked = true;
+			GEM_BUG_ON(i915_gem_object_has_tiling_quirk(obj));
+			i915_gem_object_clear_tiling_quirk(obj);
+			i915_gem_object_make_unshrinkable(obj);
 		}
 	}
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
index 3512bb8433cf..f99bb0113726 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
@@ -38,8 +38,8 @@ static void quirk_add(struct drm_i915_gem_object *obj,
 		      struct list_head *objects)
 {
 	/* quirk is only for live tiled objects, use it to declare ownership */
-	GEM_BUG_ON(obj->mm.quirked);
-	obj->mm.quirked = true;
+	GEM_BUG_ON(i915_gem_object_has_tiling_quirk(obj));
+	i915_gem_object_set_tiling_quirk(obj);
 	list_add(&obj->st_link, objects);
 }
 
@@ -85,7 +85,7 @@ static void unpin_ggtt(struct i915_ggtt *ggtt)
 	struct i915_vma *vma;
 
 	list_for_each_entry(vma, &ggtt->vm.bound_list, vm_link)
-		if (vma->obj->mm.quirked)
+		if (i915_gem_object_has_tiling_quirk(vma->obj))
 			i915_vma_unpin(vma);
 }
 
@@ -94,8 +94,8 @@ static void cleanup_objects(struct i915_ggtt *ggtt, struct list_head *list)
 	struct drm_i915_gem_object *obj, *on;
 
 	list_for_each_entry_safe(obj, on, list, st_link) {
-		GEM_BUG_ON(!obj->mm.quirked);
-		obj->mm.quirked = false;
+		GEM_BUG_ON(!i915_gem_object_has_tiling_quirk(obj));
+		i915_gem_object_set_tiling_quirk(obj);
 		i915_gem_object_put(obj);
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
