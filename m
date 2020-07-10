Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C2C21B492
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:01:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A7716EC17;
	Fri, 10 Jul 2020 12:01:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BB9A6EC17
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:01:23 +0000 (UTC)
IronPort-SDR: zsTyh8DUCKM7sJLBYAZNN5m0nh/6XQp75lNTgPQiiV3rYXiYzV24WLUHyKXvyqmCovyfNFDTYK
 9dyK2F5KTyWA==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="127777162"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="127777162"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:22 -0700
IronPort-SDR: 010/5HCFrCYLJ3SBWToC2GnAvao7ICVnk4AR2r2/mTyz7r4b89saSVdOSc0rMjEH4WWnphISzq
 SdvUypR69iBg==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458258324"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:16 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:47 +0100
Message-Id: <20200710115757.290984-51-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 50/60] drm/i915: finish memory region support for
 stolen objects.
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
	Lucas De Marchi <lucas.demarchi@intel.com>,
	Chris P Wilson <chris.p.wilson@intel.com>,
	Neel Desai <neel.desai@intel.com>, Balestrieri@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: CQ Tang <cq.tang@intel.com>

Current stolen code has partial memory region support. This patch
finish the rest of code, so object memory are allocated from stolen
memory region.

However, three "global" variables are still kept for the display code
to access, "i915->dsm", "i915->dsm_reserved",
and "i915->stolen_usable_size",

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Cc: Chris P Wilson <chris.p.wilson@intel.com>
Cc: Balestrieri, Francesco <francesco.balestrieri@intel.com>
Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Cc: Venkata S Dhanalakota <venkata.s.dhanalakota@intel.com>
Cc: Neel Desai <neel.desai@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Sudeep Dutt <sudeep.dutt@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: CQ Tang <cq.tang@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c   |  20 ++-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 173 +++++++++++----------
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h |   7 +-
 drivers/gpu/drm/i915/i915_drv.h            |   6 -
 drivers/gpu/drm/i915/intel_memory_region.h |   3 +
 5 files changed, 108 insertions(+), 101 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ef2eb14f6157..9d982b486003 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -429,6 +429,7 @@ static int find_compression_threshold(struct drm_i915_private *dev_priv,
 				      unsigned int size,
 				      unsigned int fb_cpp)
 {
+	struct intel_memory_region *mem = i915_stolen_region(dev_priv);
 	int compression_threshold = 1;
 	int ret;
 	u64 end;
@@ -450,7 +451,7 @@ static int find_compression_threshold(struct drm_i915_private *dev_priv,
 	 */
 
 	/* Try to over-allocate to reduce reallocations and fragmentation. */
-	ret = i915_gem_stolen_insert_node_in_range(dev_priv, node, size <<= 1,
+	ret = i915_gem_stolen_insert_node_in_range(mem, node, size <<= 1,
 						   4096, 0, end);
 	if (ret == 0)
 		return compression_threshold;
@@ -461,7 +462,7 @@ static int find_compression_threshold(struct drm_i915_private *dev_priv,
 	    (fb_cpp == 2 && compression_threshold == 2))
 		return 0;
 
-	ret = i915_gem_stolen_insert_node_in_range(dev_priv, node, size >>= 1,
+	ret = i915_gem_stolen_insert_node_in_range(mem, node, size >>= 1,
 						   4096, 0, end);
 	if (ret && INTEL_GEN(dev_priv) <= 4) {
 		return 0;
@@ -476,6 +477,7 @@ static int find_compression_threshold(struct drm_i915_private *dev_priv,
 static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
 			       unsigned int size, unsigned int fb_cpp)
 {
+	struct intel_memory_region *mem = i915_stolen_region(dev_priv);
 	struct intel_fbc *fbc = &dev_priv->fbc;
 	struct drm_mm_node *uninitialized_var(compressed_llb);
 	int ret;
@@ -505,7 +507,7 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
 		if (!compressed_llb)
 			goto err_fb;
 
-		ret = i915_gem_stolen_insert_node(dev_priv, compressed_llb,
+		ret = i915_gem_stolen_insert_node(mem, compressed_llb,
 						  4096, 4096);
 		if (ret)
 			goto err_fb;
@@ -532,15 +534,16 @@ static int intel_fbc_alloc_cfb(struct drm_i915_private *dev_priv,
 
 err_fb:
 	kfree(compressed_llb);
-	i915_gem_stolen_remove_node(dev_priv, &fbc->compressed_fb);
+	i915_gem_stolen_remove_node(mem, &fbc->compressed_fb);
 err_llb:
-	if (drm_mm_initialized(&dev_priv->mm.stolen))
+	if (drm_mm_initialized(&mem->stolen))
 		drm_info_once(&dev_priv->drm, "not enough stolen space for compressed buffer (need %d more bytes), disabling. Hint: you may be able to increase stolen memory size in the BIOS to avoid this.\n", size);
 	return -ENOSPC;
 }
 
 static void __intel_fbc_cleanup_cfb(struct drm_i915_private *dev_priv)
 {
+	struct intel_memory_region *mem = i915_stolen_region(dev_priv);
 	struct intel_fbc *fbc = &dev_priv->fbc;
 
 	if (WARN_ON(intel_fbc_hw_is_active(dev_priv)))
@@ -550,11 +553,11 @@ static void __intel_fbc_cleanup_cfb(struct drm_i915_private *dev_priv)
 		return;
 
 	if (fbc->compressed_llb) {
-		i915_gem_stolen_remove_node(dev_priv, fbc->compressed_llb);
+		i915_gem_stolen_remove_node(mem, fbc->compressed_llb);
 		kfree(fbc->compressed_llb);
 	}
 
-	i915_gem_stolen_remove_node(dev_priv, &fbc->compressed_fb);
+	i915_gem_stolen_remove_node(mem, &fbc->compressed_fb);
 }
 
 void intel_fbc_cleanup_cfb(struct drm_i915_private *dev_priv)
@@ -1425,12 +1428,13 @@ static bool need_fbc_vtd_wa(struct drm_i915_private *dev_priv)
 void intel_fbc_init(struct drm_i915_private *dev_priv)
 {
 	struct intel_fbc *fbc = &dev_priv->fbc;
+	struct intel_memory_region *mem = i915_stolen_region(dev_priv);
 
 	INIT_WORK(&fbc->underrun_work, intel_fbc_underrun_work_fn);
 	mutex_init(&fbc->lock);
 	fbc->active = false;
 
-	if (!drm_mm_initialized(&dev_priv->mm.stolen))
+	if (!mem || !drm_mm_initialized(&mem->stolen))
 		mkwrite_device_info(dev_priv)->display.has_fbc = false;
 
 	if (need_fbc_vtd_wa(dev_priv))
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 6704877fbda8..fee5ff1a1863 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -27,42 +27,42 @@
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
@@ -157,12 +157,12 @@ static int i915_adjust_stolen(struct drm_i915_private *i915,
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
@@ -372,14 +372,13 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
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
 		drm_notice(&i915->drm,
 			   "%s, disabling use of stolen memory\n",
@@ -394,10 +393,10 @@ static int i915_gem_init_stolen(struct drm_i915_private *i915)
 		return 0;
 	}
 
-	if (resource_size(&intel_graphics_stolen_res) == 0)
+	if (resource_size(&mem->region) == 0)
 		return 0;
 
-	i915->dsm = intel_graphics_stolen_res;
+	i915->dsm = mem->region;
 
 	if (i915_adjust_stolen(i915, &i915->dsm))
 		return 0;
@@ -490,20 +489,20 @@ static int i915_gem_init_stolen(struct drm_i915_private *i915)
 		resource_size(&i915->dsm) - reserved_total;
 
 	/* Basic memrange allocator for stolen space. */
-	drm_mm_init(&i915->mm.stolen, 0, i915->stolen_usable_size);
+	drm_mm_init(&mem->stolen, 0, i915->stolen_usable_size);
 
 	return 0;
 }
 
 static struct sg_table *
-i915_pages_create_for_stolen(struct drm_device *dev,
+i915_pages_create_for_stolen(struct drm_i915_gem_object *obj,
 			     resource_size_t offset, resource_size_t size)
 {
-	struct drm_i915_private *i915 = to_i915(dev);
+	struct intel_memory_region *mem = obj->mm.region;
 	struct sg_table *st;
 	struct scatterlist *sg;
 
-	GEM_BUG_ON(range_overflows(offset, size, resource_size(&i915->dsm)));
+	GEM_BUG_ON(range_overflows(offset, size, resource_size(&mem->region)));
 
 	/* We hide that we have no struct page backing our stolen object
 	 * by wrapping the contiguous physical allocation with a fake
@@ -523,7 +522,7 @@ i915_pages_create_for_stolen(struct drm_device *dev,
 	sg->offset = 0;
 	sg->length = size;
 
-	sg_dma_address(sg) = (dma_addr_t)i915->dsm.start + offset;
+	sg_dma_address(sg) = (dma_addr_t)mem->region.start + offset;
 	sg_dma_len(sg) = size;
 
 	return st;
@@ -532,7 +531,7 @@ i915_pages_create_for_stolen(struct drm_device *dev,
 static int i915_gem_object_get_pages_stolen(struct drm_i915_gem_object *obj)
 {
 	struct sg_table *pages =
-		i915_pages_create_for_stolen(obj->base.dev,
+		i915_pages_create_for_stolen(obj,
 					     obj->stolen->start,
 					     obj->stolen->size);
 	if (IS_ERR(pages))
@@ -546,104 +545,102 @@ static int i915_gem_object_get_pages_stolen(struct drm_i915_gem_object *obj)
 static void i915_gem_object_put_pages_stolen(struct drm_i915_gem_object *obj,
 					     struct sg_table *pages)
 {
-	/* Should only be called from i915_gem_object_release_stolen() */
-	sg_free_table(pages);
-	kfree(pages);
-}
-
-static void
-i915_gem_object_release_stolen(struct drm_i915_gem_object *obj)
-{
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct intel_memory_region *mem = obj->mm.region;
 	struct drm_mm_node *stolen = fetch_and_zero(&obj->stolen);
 
+	GEM_BUG_ON(!mem);
 	GEM_BUG_ON(!stolen);
 
-	i915_gem_object_release_memory_region(obj);
-
-	i915_gem_stolen_remove_node(i915, stolen);
+	i915_gem_stolen_remove_node(mem, stolen);
 	kfree(stolen);
+
+	sg_free_table(pages);
+	kfree(pages);
 }
 
 static const struct drm_i915_gem_object_ops i915_gem_object_stolen_ops = {
 	.name = "i915_gem_object_stolen",
 	.get_pages = i915_gem_object_get_pages_stolen,
 	.put_pages = i915_gem_object_put_pages_stolen,
-	.release = i915_gem_object_release_stolen,
+	.release = i915_gem_object_release_memory_region,
 };
 
 static struct drm_i915_gem_object *
 __i915_gem_object_create_stolen(struct intel_memory_region *mem,
-				struct drm_mm_node *stolen)
+			       resource_size_t size,
+			       unsigned int flags)
 {
 	static struct lock_class_key lock_class;
+	struct drm_i915_private *i915 = mem->i915;
 	struct drm_i915_gem_object *obj;
-	unsigned int cache_level;
-	int err = -ENOMEM;
+
+	if (!drm_mm_initialized(&mem->stolen))
+		return ERR_PTR(-ENODEV);
+
+	if (size == 0)
+		return ERR_PTR(-EINVAL);
 
 	obj = i915_gem_object_alloc();
 	if (!obj)
-		goto err;
+		return ERR_PTR(-ENOMEM);
 
-	drm_gem_private_object_init(&mem->i915->drm, &obj->base, stolen->size);
+	drm_gem_private_object_init(&i915->drm, &obj->base, size);
 	i915_gem_object_init(obj, &i915_gem_object_stolen_ops, &lock_class);
 
-	obj->stolen = stolen;
 	obj->read_domains = I915_GEM_DOMAIN_CPU | I915_GEM_DOMAIN_GTT;
-	cache_level = HAS_LLC(mem->i915) ? I915_CACHE_LLC : I915_CACHE_NONE;
-	i915_gem_object_set_cache_coherency(obj, cache_level);
-
-	err = i915_gem_object_pin_pages(obj);
-	if (err)
-		goto cleanup;
+	obj->cache_level = HAS_LLC(i915) ? I915_CACHE_LLC : I915_CACHE_NONE;
 
-	i915_gem_object_init_memory_region(obj, mem, 0);
+	i915_gem_object_init_memory_region(obj, mem, flags);
 
 	return obj;
-
-cleanup:
-	i915_gem_object_free(obj);
-err:
-	return ERR_PTR(err);
 }
 
 static struct drm_i915_gem_object *
-_i915_gem_object_create_stolen(struct intel_memory_region *mem,
-			       resource_size_t size,
-			       unsigned int flags)
+i915_gem_object_create_stolen_region(struct intel_memory_region *mem,
+				     resource_size_t size,
+				     unsigned int flags)
 {
-	struct drm_i915_private *i915 = mem->i915;
-	struct drm_i915_gem_object *obj;
+	struct drm_i915_gem_object *obj, *err;
 	struct drm_mm_node *stolen;
 	int ret;
 
-	if (!drm_mm_initialized(&i915->mm.stolen))
-		return ERR_PTR(-ENODEV);
-
-	if (size == 0)
-		return ERR_PTR(-EINVAL);
-
 	stolen = kzalloc(sizeof(*stolen), GFP_KERNEL);
 	if (!stolen)
 		return ERR_PTR(-ENOMEM);
 
-	ret = i915_gem_stolen_insert_node(i915, stolen, size, 4096);
+	ret = i915_gem_stolen_insert_node(mem, stolen, size,
+					  mem->min_page_size);
 	if (ret) {
-		obj = ERR_PTR(ret);
+		err = ERR_PTR(ret);
 		goto err_free;
 	}
 
-	obj = __i915_gem_object_create_stolen(mem, stolen);
-	if (IS_ERR(obj))
+	obj = __i915_gem_object_create_stolen(mem, size,
+					      I915_BO_ALLOC_CONTIGUOUS);
+	if (IS_ERR(obj)) {
+		err = obj;
 		goto err_remove;
+	}
+
+	/* must set before pin pages */
+	obj->stolen = stolen;
+
+	/* if pinning fails, caller needs to free stolen */
+	ret = i915_gem_object_pin_pages(obj);
+	if (ret) {
+		err = ERR_PTR(ret);
+		goto free_obj;
+	}
 
 	return obj;
 
+free_obj:
+	i915_gem_object_put(obj);
 err_remove:
-	i915_gem_stolen_remove_node(i915, stolen);
+	i915_gem_stolen_remove_node(mem, stolen);
 err_free:
 	kfree(stolen);
-	return obj;
+	return err;
 }
 
 struct intel_memory_region *i915_stolen_region(struct drm_i915_private *i915)
@@ -670,18 +667,18 @@ static int init_stolen(struct intel_memory_region *mem)
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
 	.init = init_stolen,
 	.release = release_stolen,
-	.create_object = _i915_gem_object_create_stolen,
+	.create_object = i915_gem_object_create_stolen_region,
 };
 
 struct intel_memory_region *i915_gem_stolen_setup(struct drm_i915_private *i915)
@@ -703,9 +700,6 @@ i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *i915,
 	struct drm_mm_node *stolen;
 	int ret;
 
-	if (!drm_mm_initialized(&i915->mm.stolen))
-		return ERR_PTR(-ENODEV);
-
 	drm_dbg(&i915->drm,
 		"creating preallocated stolen object: stolen_offset=%pa, size=%pa\n",
 		&stolen_offset, &size);
@@ -722,23 +716,34 @@ i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *i915,
 
 	stolen->start = stolen_offset;
 	stolen->size = size;
-	mutex_lock(&i915->mm.stolen_lock);
-	ret = drm_mm_reserve_node(&i915->mm.stolen, stolen);
-	mutex_unlock(&i915->mm.stolen_lock);
+	mutex_lock(&mem->mm_lock);
+	ret = drm_mm_reserve_node(&mem->stolen, stolen);
+	mutex_unlock(&mem->mm_lock);
 	if (ret) {
 		obj = ERR_PTR(ret);
 		goto err_free;
 	}
 
-	obj = __i915_gem_object_create_stolen(mem, stolen);
+	obj = __i915_gem_object_create_stolen(mem, size,
+					      I915_BO_ALLOC_CONTIGUOUS);
 	if (IS_ERR(obj))
 		goto err_stolen;
 
+	/* must set before pin pages */
+	obj->stolen = stolen;
+
+	ret = i915_gem_object_pin_pages(obj);
+	if (ret) {
+		obj = ERR_PTR(ret);
+		i915_gem_object_put(obj);
+		goto err_stolen;
+	}
+
 	i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
 	return obj;
 
 err_stolen:
-	i915_gem_stolen_remove_node(i915, stolen);
+	i915_gem_stolen_remove_node(mem, stolen);
 err_free:
 	kfree(stolen);
 	return obj;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.h b/drivers/gpu/drm/i915/gem/i915_gem_stolen.h
index a19110a1b75a..5f266f6524b7 100644
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
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 7f668a49b03d..6755658edf4e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -560,12 +560,6 @@ struct intel_l3_parity {
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
index 334ef0e3a792..a08cbae18979 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -6,6 +6,7 @@
 #ifndef __INTEL_MEMORY_REGION_H__
 #define __INTEL_MEMORY_REGION_H__
 
+#include <drm/drm_mm.h>
 #include <linux/kref.h>
 #include <linux/ioport.h>
 #include <linux/mutex.h>
@@ -77,6 +78,8 @@ struct intel_memory_region {
 	/* For fake LMEM */
 	struct drm_mm_node fake_mappable;
 
+	struct drm_mm stolen;
+
 	struct i915_buddy_mm mm;
 	struct mutex mm_lock;
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
