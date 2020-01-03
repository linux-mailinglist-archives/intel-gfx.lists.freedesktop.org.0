Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D26012FD57
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 21:00:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB4EF89DCF;
	Fri,  3 Jan 2020 20:00:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F70A89722
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 20:00:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jan 2020 12:00:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,391,1571727600"; d="scan'208";a="232201166"
Received: from eyonkov-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.22.82])
 by orsmga002.jf.intel.com with ESMTP; 03 Jan 2020 12:00:29 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jan 2020 20:00:28 +0000
Message-Id: <20200103200030.334215-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: make stolen more region centric
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

From: CQ Tang <cq.tang@intel.com>

Signed-off-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/display/intel_fbc.c      |  20 +--
 drivers/gpu/drm/i915/display/intel_fbdev.c    |   4 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   7 +-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    | 128 ++++++++----------
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h    |   7 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |   4 +-
 drivers/gpu/drm/i915/gt/intel_ring.c          |   2 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   4 +-
 drivers/gpu/drm/i915/i915_drv.h               |   6 -
 drivers/gpu/drm/i915/intel_memory_region.h    |   3 +
 10 files changed, 90 insertions(+), 95 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index a1048ece541e..3c4e70da717c 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -420,6 +420,7 @@ static int find_compression_threshold(struct drm_i915_private *dev_priv,
 				      unsigned int size,
 				      unsigned int fb_cpp)
 {
+	struct intel_memory_region *mem = dev_priv->mm.regions[INTEL_REGION_STOLEN];
 	int compression_threshold = 1;
 	int ret;
 	u64 end;
@@ -441,7 +442,7 @@ static int find_compression_threshold(struct drm_i915_private *dev_priv,
 	 */
 
 	/* Try to over-allocate to reduce reallocations and fragmentation. */
-	ret = i915_gem_stolen_insert_node_in_range(dev_priv, node, size <<= 1,
+	ret = i915_gem_stolen_insert_node_in_range(mem, node, size <<= 1,
 						   4096, 0, end);
 	if (ret == 0)
 		return compression_threshold;
@@ -452,7 +453,7 @@ static int find_compression_threshold(struct drm_i915_private *dev_priv,
 	    (fb_cpp == 2 && compression_threshold == 2))
 		return 0;
 
-	ret = i915_gem_stolen_insert_node_in_range(dev_priv, node, size >>= 1,
+	ret = i915_gem_stolen_insert_node_in_range(mem, node, size >>= 1,
 						   4096, 0, end);
 	if (ret && INTEL_GEN(dev_priv) <= 4) {
 		return 0;
@@ -467,6 +468,7 @@ static int find_compression_threshold(struct drm_i915_private *dev_priv,
 static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
 			       unsigned int size, unsigned int fb_cpp)
 {
+	struct intel_memory_region *mem = dev_priv->mm.regions[INTEL_REGION_STOLEN];
 	struct intel_fbc *fbc = &dev_priv->fbc;
 	struct drm_mm_node *uninitialized_var(compressed_llb);
 	int ret;
@@ -493,7 +495,7 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
 		if (!compressed_llb)
 			goto err_fb;
 
-		ret = i915_gem_stolen_insert_node(dev_priv, compressed_llb,
+		ret = i915_gem_stolen_insert_node(mem, compressed_llb,
 						  4096, 4096);
 		if (ret)
 			goto err_fb;
@@ -519,22 +521,23 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
 
 err_fb:
 	kfree(compressed_llb);
-	i915_gem_stolen_remove_node(dev_priv, &fbc->compressed_fb);
+	i915_gem_stolen_remove_node(mem, &fbc->compressed_fb);
 err_llb:
-	if (drm_mm_initialized(&dev_priv->mm.stolen))
+	if (drm_mm_initialized(&mem->stolen))
 		pr_info_once("drm: not enough stolen space for compressed buffer (need %d more bytes), disabling. Hint: you may be able to increase stolen memory size in the BIOS to avoid this.\n", size);
 	return -ENOSPC;
 }
 
 static void __intel_fbc_cleanup_cfb(struct drm_i915_private *dev_priv)
 {
+	struct intel_memory_region *mem = dev_priv->mm.regions[INTEL_REGION_STOLEN];
 	struct intel_fbc *fbc = &dev_priv->fbc;
 
 	if (drm_mm_node_allocated(&fbc->compressed_fb))
-		i915_gem_stolen_remove_node(dev_priv, &fbc->compressed_fb);
+		i915_gem_stolen_remove_node(mem, &fbc->compressed_fb);
 
 	if (fbc->compressed_llb) {
-		i915_gem_stolen_remove_node(dev_priv, fbc->compressed_llb);
+		i915_gem_stolen_remove_node(mem, fbc->compressed_llb);
 		kfree(fbc->compressed_llb);
 	}
 }
@@ -1325,13 +1328,14 @@ static bool need_fbc_vtd_wa(struct drm_i915_private *dev_priv)
  */
 void intel_fbc_init(struct drm_i915_private *dev_priv)
 {
+	struct intel_memory_region *mem = dev_priv->mm.regions[INTEL_REGION_STOLEN];
 	struct intel_fbc *fbc = &dev_priv->fbc;
 
 	INIT_WORK(&fbc->underrun_work, intel_fbc_underrun_work_fn);
 	mutex_init(&fbc->lock);
 	fbc->active = false;
 
-	if (!drm_mm_initialized(&dev_priv->mm.stolen))
+	if (!drm_mm_initialized(&mem->stolen))
 		mkwrite_device_info(dev_priv)->display.has_fbc = false;
 
 	if (need_fbc_vtd_wa(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 1e98e432c9fa..522ea9538c16 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -254,7 +254,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	 * If the object is stolen however, it will be full of whatever
 	 * garbage was left in there.
 	 */
-	if (vma->obj->stolen && !prealloc)
+	if (vma->obj->mm.stolen && !prealloc)
 		memset_io(info->screen_base, 0, info->screen_size);
 
 	/* Use default scratch pixmap (info->pixmap.flags = FB_PIXMAP_SYSTEM) */
@@ -584,7 +584,7 @@ void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous
 	 * full of whatever garbage was left in there.
 	 */
 	if (state == FBINFO_STATE_RUNNING &&
-	    intel_fb_obj(&ifbdev->fb->base)->stolen)
+	    intel_fb_obj(&ifbdev->fb->base)->mm.stolen)
 		memset_io(info->screen_base, 0, info->screen_size);
 
 	drm_fb_helper_set_suspend(&ifbdev->helper, state);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 88e268633fdc..1919994fee33 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -122,8 +122,6 @@ struct drm_i915_gem_object {
 	 */
 	struct list_head lut_list;
 
-	/** Stolen memory for this object, instead of being backed by shmem. */
-	struct drm_mm_node *stolen;
 	union {
 		struct rcu_head rcu;
 		struct llist_node freed;
@@ -201,6 +199,11 @@ struct drm_i915_gem_object {
 		 * List of memory region blocks allocated for this object.
 		 */
 		struct list_head blocks;
+		/**
+		 * The memory region block allocated for this object, if backed
+		 * by stolen memory.
+		 */
+		struct drm_mm_node *stolen;
 		/**
 		 * Element within memory_region->objects or region->purgeable
 		 * if the object is marked as DONTNEED. Access is protected by
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 451f3078d60d..ddb59a2fbbfe 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -26,42 +26,42 @@
  * for is a boon.
  */
 
-int i915_gem_stolen_insert_node_in_range(struct drm_i915_private *i915,
+int i915_gem_stolen_insert_node_in_range(struct intel_memory_region *mem,
 					 struct drm_mm_node *node, u64 size,
 					 unsigned alignment, u64 start, u64 end)
 {
 	int ret;
 
-	if (!drm_mm_initialized(&i915->mm.stolen))
+	if (!drm_mm_initialized(&mem->stolen))
 		return -ENODEV;
 
 	/* WaSkipStolenMemoryFirstPage:bdw+ */
-	if (INTEL_GEN(i915) >= 8 && start < 4096)
+	if (INTEL_GEN(mem->i915) >= 8 && start < 4096)
 		start = 4096;
 
-	mutex_lock(&i915->mm.stolen_lock);
-	ret = drm_mm_insert_node_in_range(&i915->mm.stolen, node,
+	mutex_lock(&mem->mm_lock);
+	ret = drm_mm_insert_node_in_range(&mem->stolen, node,
 					  size, alignment, 0,
 					  start, end, DRM_MM_INSERT_BEST);
-	mutex_unlock(&i915->mm.stolen_lock);
+	mutex_unlock(&mem->mm_lock);
 
 	return ret;
 }
 
-int i915_gem_stolen_insert_node(struct drm_i915_private *i915,
+int i915_gem_stolen_insert_node(struct intel_memory_region *mem,
 				struct drm_mm_node *node, u64 size,
 				unsigned alignment)
 {
-	return i915_gem_stolen_insert_node_in_range(i915, node, size,
+	return i915_gem_stolen_insert_node_in_range(mem, node, size,
 						    alignment, 0, U64_MAX);
 }
 
-void i915_gem_stolen_remove_node(struct drm_i915_private *i915,
+void i915_gem_stolen_remove_node(struct intel_memory_region *mem,
 				 struct drm_mm_node *node)
 {
-	mutex_lock(&i915->mm.stolen_lock);
+	mutex_lock(&mem->mm_lock);
 	drm_mm_remove_node(node);
-	mutex_unlock(&i915->mm.stolen_lock);
+	mutex_unlock(&mem->mm_lock);
 }
 
 static int i915_adjust_stolen(struct drm_i915_private *i915,
@@ -152,12 +152,12 @@ static int i915_adjust_stolen(struct drm_i915_private *i915,
 	return 0;
 }
 
-static void i915_gem_cleanup_stolen(struct drm_i915_private *i915)
+static void i915_gem_cleanup_stolen(struct intel_memory_region *mem)
 {
-	if (!drm_mm_initialized(&i915->mm.stolen))
+	if (!drm_mm_initialized(&mem->stolen))
 		return;
 
-	drm_mm_takedown(&i915->mm.stolen);
+	drm_mm_takedown(&mem->stolen);
 }
 
 static void g4x_get_stolen_reserved(struct drm_i915_private *i915,
@@ -365,14 +365,13 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
 	}
 }
 
-static int i915_gem_init_stolen(struct drm_i915_private *i915)
+static int i915_gem_init_stolen(struct intel_memory_region *mem)
 {
+	struct drm_i915_private *i915 = mem->i915;
 	struct intel_uncore *uncore = &i915->uncore;
 	resource_size_t reserved_base, stolen_top;
 	resource_size_t reserved_total, reserved_size;
 
-	mutex_init(&i915->mm.stolen_lock);
-
 	if (intel_vgpu_active(i915)) {
 		dev_notice(i915->drm.dev,
 			   "%s, disabling use of stolen memory\n",
@@ -387,10 +386,10 @@ static int i915_gem_init_stolen(struct drm_i915_private *i915)
 		return 0;
 	}
 
-	if (resource_size(&intel_graphics_stolen_res) == 0)
+	if (!resource_size(&mem->region))
 		return 0;
 
-	i915->dsm = intel_graphics_stolen_res;
+	i915->dsm = mem->region;
 
 	if (i915_adjust_stolen(i915, &i915->dsm))
 		return 0;
@@ -480,55 +479,44 @@ static int i915_gem_init_stolen(struct drm_i915_private *i915)
 		resource_size(&i915->dsm) - reserved_total;
 
 	/* Basic memrange allocator for stolen space. */
-	drm_mm_init(&i915->mm.stolen, 0, i915->stolen_usable_size);
+	drm_mm_init(&mem->stolen, 0, i915->stolen_usable_size);
 
 	return 0;
 }
 
-static struct sg_table *
-i915_pages_create_for_stolen(struct drm_device *dev,
-			     resource_size_t offset, resource_size_t size)
+static int i915_gem_object_get_pages_stolen(struct drm_i915_gem_object *obj)
 {
-	struct drm_i915_private *i915 = to_i915(dev);
+	struct intel_memory_region *mem = obj->mm.region;
+	resource_size_t offset = obj->mm.stolen->start;
+	resource_size_t size = obj->mm.stolen->size;
 	struct sg_table *st;
 	struct scatterlist *sg;
 
-	GEM_BUG_ON(range_overflows(offset, size, resource_size(&i915->dsm)));
+	GEM_BUG_ON(range_overflows(offset, size, resource_size(&mem->region)));
 
-	/* We hide that we have no struct page backing our stolen object
+	/*
+	 * We hide that we have no struct page backing our stolen object
 	 * by wrapping the contiguous physical allocation with a fake
 	 * dma mapping in a single scatterlist.
 	 */
 
 	st = kmalloc(sizeof(*st), GFP_KERNEL);
-	if (st == NULL)
-		return ERR_PTR(-ENOMEM);
+	if (!st)
+		return -ENOMEM;
 
 	if (sg_alloc_table(st, 1, GFP_KERNEL)) {
 		kfree(st);
-		return ERR_PTR(-ENOMEM);
+		return -ENOMEM;
 	}
 
 	sg = st->sgl;
 	sg->offset = 0;
 	sg->length = size;
 
-	sg_dma_address(sg) = (dma_addr_t)i915->dsm.start + offset;
+	sg_dma_address(sg) = (dma_addr_t)mem->region.start + offset;
 	sg_dma_len(sg) = size;
 
-	return st;
-}
-
-static int i915_gem_object_get_pages_stolen(struct drm_i915_gem_object *obj)
-{
-	struct sg_table *pages =
-		i915_pages_create_for_stolen(obj->base.dev,
-					     obj->stolen->start,
-					     obj->stolen->size);
-	if (IS_ERR(pages))
-		return PTR_ERR(pages);
-
-	__i915_gem_object_set_pages(obj, pages, obj->stolen->size);
+	__i915_gem_object_set_pages(obj, st, size);
 
 	return 0;
 }
@@ -536,23 +524,23 @@ static int i915_gem_object_get_pages_stolen(struct drm_i915_gem_object *obj)
 static void i915_gem_object_put_pages_stolen(struct drm_i915_gem_object *obj,
 					     struct sg_table *pages)
 {
-	/* Should only be called from i915_gem_object_release_stolen() */
-	sg_free_table(pages);
-	kfree(pages);
+       /* Should only be called from i915_gem_object_release_stolen() */
+       sg_free_table(pages);
+       kfree(pages);
 }
 
 static void
 i915_gem_object_release_stolen(struct drm_i915_gem_object *obj)
 {
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
-	struct drm_mm_node *stolen = fetch_and_zero(&obj->stolen);
+	struct intel_memory_region *mem = obj->mm.region;
+	struct drm_mm_node *stolen = fetch_and_zero(&obj->mm.stolen);
 
 	GEM_BUG_ON(!stolen);
 
-	i915_gem_object_release_memory_region(obj);
-
-	i915_gem_stolen_remove_node(i915, stolen);
+	i915_gem_stolen_remove_node(mem, stolen);
 	kfree(stolen);
+
+	i915_gem_object_release_memory_region(obj);
 }
 
 static const struct drm_i915_gem_object_ops i915_gem_object_stolen_ops = {
@@ -563,7 +551,8 @@ static const struct drm_i915_gem_object_ops i915_gem_object_stolen_ops = {
 
 static struct drm_i915_gem_object *
 __i915_gem_object_create_stolen(struct intel_memory_region *mem,
-				struct drm_mm_node *stolen)
+				struct drm_mm_node *stolen,
+				unsigned int flags)
 {
 	static struct lock_class_key lock_class;
 	struct drm_i915_gem_object *obj;
@@ -577,17 +566,17 @@ __i915_gem_object_create_stolen(struct intel_memory_region *mem,
 	drm_gem_private_object_init(&mem->i915->drm, &obj->base, stolen->size);
 	i915_gem_object_init(obj, &i915_gem_object_stolen_ops, &lock_class);
 
-	obj->stolen = stolen;
+	obj->mm.stolen = stolen;
 	obj->read_domains = I915_GEM_DOMAIN_CPU | I915_GEM_DOMAIN_GTT;
 	cache_level = HAS_LLC(mem->i915) ? I915_CACHE_LLC : I915_CACHE_NONE;
 	i915_gem_object_set_cache_coherency(obj, cache_level);
 
+	i915_gem_object_init_memory_region(obj, mem, flags);
+
 	err = i915_gem_object_pin_pages(obj);
 	if (err)
 		goto cleanup;
 
-	i915_gem_object_init_memory_region(obj, mem, 0);
-
 	return obj;
 
 cleanup:
@@ -601,35 +590,35 @@ _i915_gem_object_create_stolen(struct intel_memory_region *mem,
 			       resource_size_t size,
 			       unsigned int flags)
 {
-	struct drm_i915_private *i915 = mem->i915;
 	struct drm_i915_gem_object *obj;
 	struct drm_mm_node *stolen;
 	int ret;
 
-	if (!drm_mm_initialized(&i915->mm.stolen))
+	if (!drm_mm_initialized(&mem->stolen))
 		return ERR_PTR(-ENODEV);
 
-	if (size == 0)
+	if (!size)
 		return ERR_PTR(-EINVAL);
 
 	stolen = kzalloc(sizeof(*stolen), GFP_KERNEL);
 	if (!stolen)
 		return ERR_PTR(-ENOMEM);
 
-	ret = i915_gem_stolen_insert_node(i915, stolen, size, 4096);
+	ret = i915_gem_stolen_insert_node(mem, stolen, size,
+					  mem->min_page_size);
 	if (ret) {
 		obj = ERR_PTR(ret);
 		goto err_free;
 	}
 
-	obj = __i915_gem_object_create_stolen(mem, stolen);
+	obj = __i915_gem_object_create_stolen(mem, stolen, flags);
 	if (IS_ERR(obj))
 		goto err_remove;
 
 	return obj;
 
 err_remove:
-	i915_gem_stolen_remove_node(i915, stolen);
+	i915_gem_stolen_remove_node(mem, stolen);
 err_free:
 	kfree(stolen);
 	return obj;
@@ -651,12 +640,12 @@ static int init_stolen(struct intel_memory_region *mem)
 	 * Initialise stolen early so that we may reserve preallocated
 	 * objects for the BIOS to KMS transition.
 	 */
-	return i915_gem_init_stolen(mem->i915);
+	return i915_gem_init_stolen(mem);
 }
 
 static void release_stolen(struct intel_memory_region *mem)
 {
-	i915_gem_cleanup_stolen(mem->i915);
+	i915_gem_cleanup_stolen(mem);
 }
 
 static const struct intel_memory_region_ops i915_region_stolen_ops = {
@@ -687,7 +676,7 @@ i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *i915,
 	struct i915_vma *vma;
 	int ret;
 
-	if (!drm_mm_initialized(&i915->mm.stolen))
+	if (!drm_mm_initialized(&mem->stolen))
 		return ERR_PTR(-ENODEV);
 
 	DRM_DEBUG_DRIVER("creating preallocated stolen object: stolen_offset=%pa, gtt_offset=%pa, size=%pa\n",
@@ -705,19 +694,20 @@ i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *i915,
 
 	stolen->start = stolen_offset;
 	stolen->size = size;
-	mutex_lock(&i915->mm.stolen_lock);
-	ret = drm_mm_reserve_node(&i915->mm.stolen, stolen);
-	mutex_unlock(&i915->mm.stolen_lock);
+	mutex_lock(&mem->mm_lock);
+	ret = drm_mm_reserve_node(&mem->stolen, stolen);
+	mutex_unlock(&mem->mm_lock);
 	if (ret) {
 		DRM_DEBUG_DRIVER("failed to allocate stolen space\n");
 		kfree(stolen);
 		return ERR_PTR(ret);
 	}
 
-	obj = __i915_gem_object_create_stolen(mem, stolen);
+	obj = __i915_gem_object_create_stolen(mem, stolen,
+					      I915_BO_ALLOC_CONTIGUOUS);
 	if (IS_ERR(obj)) {
 		DRM_DEBUG_DRIVER("failed to allocate stolen object\n");
-		i915_gem_stolen_remove_node(i915, stolen);
+		i915_gem_stolen_remove_node(mem, stolen);
 		kfree(stolen);
 		return obj;
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
index c1040627fbf3..511e8ffcf377 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
@@ -11,15 +11,16 @@
 struct drm_i915_private;
 struct drm_mm_node;
 struct drm_i915_gem_object;
+struct intel_memory_region;
 
-int i915_gem_stolen_insert_node(struct drm_i915_private *dev_priv,
+int i915_gem_stolen_insert_node(struct intel_memory_region *mem,
 				struct drm_mm_node *node, u64 size,
 				unsigned alignment);
-int i915_gem_stolen_insert_node_in_range(struct drm_i915_private *dev_priv,
+int i915_gem_stolen_insert_node_in_range(struct intel_memory_region *mem,
 					 struct drm_mm_node *node, u64 size,
 					 unsigned alignment, u64 start,
 					 u64 end);
-void i915_gem_stolen_remove_node(struct drm_i915_private *dev_priv,
+void i915_gem_stolen_remove_node(struct intel_memory_region *mem,
 				 struct drm_mm_node *node);
 struct intel_memory_region *i915_gem_stolen_setup(struct drm_i915_private *i915);
 struct drm_i915_gem_object *
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 9e303c29d6e3..c370023a7a63 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -325,9 +325,9 @@ static int vlv_rc6_init(struct intel_rc6 *rc6)
 
 	GEM_BUG_ON(range_overflows_t(u64,
 				     i915->dsm.start,
-				     pctx->stolen->start,
+				     pctx->mm.stolen->start,
 				     U32_MAX));
-	pctx_paddr = i915->dsm.start + pctx->stolen->start;
+	pctx_paddr = i915->dsm.start + pctx->mm.stolen->start;
 	intel_uncore_write(uncore, VLV_PCBR, pctx_paddr);
 
 out:
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index 374b28f13ca0..5c442b8bdcb1 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -36,7 +36,7 @@ int intel_ring_pin(struct intel_ring *ring)
 	/* Ring wraparound at offset 0 sometimes hangs. No idea why. */
 	flags |= PIN_OFFSET_BIAS | i915_ggtt_pin_bias(vma);
 
-	if (vma->obj->stolen)
+	if (vma->obj->mm.stolen)
 		flags |= PIN_MAPPABLE;
 	else
 		flags |= PIN_HIGH;
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 0ac98e39eb75..b6e99c4519be 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -213,8 +213,8 @@ describe_obj(struct seq_file *m, struct drm_i915_gem_object *obj)
 	spin_unlock(&obj->vma.lock);
 
 	seq_printf(m, " (pinned x %d)", pin_count);
-	if (obj->stolen)
-		seq_printf(m, " (stolen: %08llx)", obj->stolen->start);
+	if (obj->mm.stolen)
+		seq_printf(m, " (stolen: %08llx)", obj->mm.stolen->start);
 	if (i915_gem_object_is_framebuffer(obj))
 		seq_printf(m, " (fb)");
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2ee9f57d165d..b50d0953a40f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -550,12 +550,6 @@ struct intel_l3_parity {
 };
 
 struct i915_gem_mm {
-	/** Memory allocator for GTT stolen memory */
-	struct drm_mm stolen;
-	/** Protects the usage of the GTT stolen memory allocator. This is
-	 * always the inner lock when overlapping with struct_mutex. */
-	struct mutex stolen_lock;
-
 	/* Protects bound_list/unbound_list and #drm_i915_gem_object.mm.link */
 	spinlock_t obj_lock;
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 7f4bff8f8be1..0c8e35be76a3 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -6,6 +6,7 @@
 #ifndef __INTEL_MEMORY_REGION_H__
 #define __INTEL_MEMORY_REGION_H__
 
+#include <drm/drm_mm.h>
 #include <linux/kref.h>
 #include <linux/ioport.h>
 #include <linux/mutex.h>
@@ -79,6 +80,8 @@ struct intel_memory_region {
 	/* For fake LMEM */
 	struct drm_mm_node fake_mappable;
 
+	/* XXX: filthy midlayers */
+	struct drm_mm stolen;
 	struct i915_buddy_mm mm;
 	struct mutex mm_lock;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
