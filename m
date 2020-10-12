Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6005228BB14
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:47:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A6E26E4B7;
	Mon, 12 Oct 2020 14:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A34A76E4AB
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:47:10 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 16:46:11 +0200
Message-Id: <20201012144706.555345-7-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
References: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/61] drm/i915: Move HAS_STRUCT_PAGE to
 obj->flags
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

We want to remove the changing of ops structure for attaching
phys pages, so we need to kill off HAS_STRUCT_PAGE from ops->flags,
and put it in the bo.

This will remove a potential race of dereferencing the wrong obj->ops
without ww mutex held.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c           |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_internal.c         |  6 +++---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c             |  4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_mman.c             |  7 +++----
 drivers/gpu/drm/i915/gem/i915_gem_object.c           |  4 +++-
 drivers/gpu/drm/i915/gem/i915_gem_object.h           |  5 +++--
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h     |  8 +++++---
 drivers/gpu/drm/i915/gem/i915_gem_pages.c            |  5 ++---
 drivers/gpu/drm/i915/gem/i915_gem_phys.c             |  2 ++
 drivers/gpu/drm/i915/gem/i915_gem_region.c           |  4 +---
 drivers/gpu/drm/i915/gem/i915_gem_region.h           |  3 +--
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c            |  8 ++++----
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c           |  4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c          |  6 +++---
 drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c |  4 ++--
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c      | 10 +++++-----
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c   | 11 ++++-------
 drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c   | 12 ++++++++++++
 drivers/gpu/drm/i915/gvt/dmabuf.c                    |  2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c        |  2 +-
 drivers/gpu/drm/i915/selftests/mock_region.c         |  4 ++--
 21 files changed, 62 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 0dd477e56573..131ec53d8521 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -259,7 +259,7 @@ struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
 	}
 
 	drm_gem_private_object_init(dev, &obj->base, dma_buf->size);
-	i915_gem_object_init(obj, &i915_gem_object_dmabuf_ops, &lock_class);
+	i915_gem_object_init(obj, &i915_gem_object_dmabuf_ops, &lock_class, 0);
 	obj->base.import_attach = attach;
 	obj->base.resv = dma_buf->resv;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_internal.c b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
index ad22f42541bd..21cc40897ca8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_internal.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
@@ -138,8 +138,7 @@ static void i915_gem_object_put_pages_internal(struct drm_i915_gem_object *obj,
 
 static const struct drm_i915_gem_object_ops i915_gem_object_internal_ops = {
 	.name = "i915_gem_object_internal",
-	.flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE |
-		 I915_GEM_OBJECT_IS_SHRINKABLE,
+	.flags = I915_GEM_OBJECT_IS_SHRINKABLE,
 	.get_pages = i915_gem_object_get_pages_internal,
 	.put_pages = i915_gem_object_put_pages_internal,
 };
@@ -178,7 +177,8 @@ i915_gem_object_create_internal(struct drm_i915_private *i915,
 		return ERR_PTR(-ENOMEM);
 
 	drm_gem_private_object_init(&i915->drm, &obj->base, size);
-	i915_gem_object_init(obj, &i915_gem_object_internal_ops, &lock_class);
+	i915_gem_object_init(obj, &i915_gem_object_internal_ops, &lock_class,
+			     I915_BO_ALLOC_STRUCT_PAGE);
 
 	/*
 	 * Mark the object as volatile, such that the pages are marked as
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
index 932ee21e6609..e953965f8263 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
@@ -45,13 +45,13 @@ __i915_gem_lmem_object_create(struct intel_memory_region *mem,
 		return ERR_PTR(-ENOMEM);
 
 	drm_gem_private_object_init(&i915->drm, &obj->base, size);
-	i915_gem_object_init(obj, &i915_gem_lmem_obj_ops, &lock_class);
+	i915_gem_object_init(obj, &i915_gem_lmem_obj_ops, &lock_class, flags);
 
 	obj->read_domains = I915_GEM_DOMAIN_WC | I915_GEM_DOMAIN_GTT;
 
 	i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
 
-	i915_gem_object_init_memory_region(obj, mem, flags);
+	i915_gem_object_init_memory_region(obj, mem);
 
 	return obj;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 3d69e51f3e4d..5aa037ca3a41 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -251,7 +251,7 @@ static vm_fault_t vm_fault_cpu(struct vm_fault *vmf)
 		goto out;
 
 	iomap = -1;
-	if (!i915_gem_object_type_has(obj, I915_GEM_OBJECT_HAS_STRUCT_PAGE)) {
+	if (!i915_gem_object_has_struct_page(obj)) {
 		iomap = obj->mm.region->iomap.base;
 		iomap -= obj->mm.region->region.start;
 	}
@@ -653,9 +653,8 @@ __assign_mmap_offset(struct drm_file *file,
 	}
 
 	if (mmap_type != I915_MMAP_TYPE_GTT &&
-	    !i915_gem_object_type_has(obj,
-				      I915_GEM_OBJECT_HAS_STRUCT_PAGE |
-				      I915_GEM_OBJECT_HAS_IOMEM)) {
+	    !i915_gem_object_has_struct_page(obj) &&
+	    !i915_gem_object_type_has(obj, I915_GEM_OBJECT_HAS_IOMEM)) {
 		err = -ENODEV;
 		goto out;
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 00d24000b5e8..1393988bd5af 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -60,7 +60,7 @@ void i915_gem_object_free(struct drm_i915_gem_object *obj)
 
 void i915_gem_object_init(struct drm_i915_gem_object *obj,
 			  const struct drm_i915_gem_object_ops *ops,
-			  struct lock_class_key *key)
+			  struct lock_class_key *key, unsigned flags)
 {
 	__mutex_init(&obj->mm.lock, ops->name ?: "obj->mm.lock", key);
 
@@ -78,6 +78,8 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
 	init_rcu_head(&obj->rcu);
 
 	obj->ops = ops;
+	GEM_BUG_ON(flags & ~I915_BO_ALLOC_FLAGS);
+	obj->flags = flags;
 
 	obj->mm.madv = I915_MADV_WILLNEED;
 	INIT_RADIX_TREE(&obj->mm.get_page.radix, GFP_KERNEL | __GFP_NOWARN);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 99b18ba0c48d..04c29ed93632 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -23,7 +23,8 @@ void i915_gem_object_free(struct drm_i915_gem_object *obj);
 
 void i915_gem_object_init(struct drm_i915_gem_object *obj,
 			  const struct drm_i915_gem_object_ops *ops,
-			  struct lock_class_key *key);
+			  struct lock_class_key *key,
+			  unsigned alloc_flags);
 struct drm_i915_gem_object *
 i915_gem_object_create_shmem(struct drm_i915_private *i915,
 			     resource_size_t size);
@@ -197,7 +198,7 @@ i915_gem_object_type_has(const struct drm_i915_gem_object *obj,
 static inline bool
 i915_gem_object_has_struct_page(const struct drm_i915_gem_object *obj)
 {
-	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_HAS_STRUCT_PAGE);
+	return obj->flags & I915_BO_ALLOC_STRUCT_PAGE;
 }
 
 static inline bool
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index fedfebf13344..dcdff134ccc2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -30,7 +30,6 @@ struct i915_lut_handle {
 
 struct drm_i915_gem_object_ops {
 	unsigned int flags;
-#define I915_GEM_OBJECT_HAS_STRUCT_PAGE	BIT(0)
 #define I915_GEM_OBJECT_HAS_IOMEM	BIT(1)
 #define I915_GEM_OBJECT_IS_SHRINKABLE	BIT(2)
 #define I915_GEM_OBJECT_IS_PROXY	BIT(3)
@@ -163,8 +162,11 @@ struct drm_i915_gem_object {
 	unsigned long flags;
 #define I915_BO_ALLOC_CONTIGUOUS BIT(0)
 #define I915_BO_ALLOC_VOLATILE   BIT(1)
-#define I915_BO_ALLOC_FLAGS (I915_BO_ALLOC_CONTIGUOUS | I915_BO_ALLOC_VOLATILE)
-#define I915_BO_READONLY         BIT(2)
+#define I915_BO_ALLOC_STRUCT_PAGE BIT(2)
+#define I915_BO_ALLOC_FLAGS (I915_BO_ALLOC_CONTIGUOUS | \
+			     I915_BO_ALLOC_VOLATILE | \
+			     I915_BO_ALLOC_STRUCT_PAGE)
+#define I915_BO_READONLY         BIT(3)
 
 	/*
 	 * Is the object to be mapped as read-only to the GPU
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 2e89ba5133eb..1c646d5f802b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -346,13 +346,12 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 			      enum i915_map_type type)
 {
 	enum i915_map_type has_type;
-	unsigned int flags;
 	bool pinned;
 	void *ptr;
 	int err;
 
-	flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE | I915_GEM_OBJECT_HAS_IOMEM;
-	if (!i915_gem_object_type_has(obj, flags))
+	if (!i915_gem_object_has_struct_page(obj) &&
+	    !i915_gem_object_type_has(obj, I915_GEM_OBJECT_HAS_IOMEM))
 		return ERR_PTR(-ENXIO);
 
 	err = mutex_lock_interruptible_nested(&obj->mm.lock, I915_MM_GET_PAGES);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 28147aab47b9..3b92156b494d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -185,6 +185,7 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 	pages = __i915_gem_object_unset_pages(obj);
 
 	obj->ops = &i915_gem_phys_ops;
+	obj->flags &= ~I915_BO_ALLOC_STRUCT_PAGE;
 
 	err = ____i915_gem_object_get_pages(obj);
 	if (err)
@@ -203,6 +204,7 @@ int i915_gem_object_attach_phys(struct drm_i915_gem_object *obj, int align)
 
 err_xfer:
 	obj->ops = &i915_gem_shmem_ops;
+	obj->flags |= I915_BO_ALLOC_STRUCT_PAGE;
 	if (!IS_ERR_OR_NULL(pages)) {
 		unsigned int sg_page_sizes = i915_sg_page_sizes(pages->sgl);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
index 1515384d7e0e..6a96741253b3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
@@ -102,13 +102,11 @@ i915_gem_object_get_pages_buddy(struct drm_i915_gem_object *obj)
 }
 
 void i915_gem_object_init_memory_region(struct drm_i915_gem_object *obj,
-					struct intel_memory_region *mem,
-					unsigned long flags)
+					struct intel_memory_region *mem)
 {
 	INIT_LIST_HEAD(&obj->mm.blocks);
 	obj->mm.region = intel_memory_region_get(mem);
 
-	obj->flags |= flags;
 	if (obj->base.size <= mem->min_page_size)
 		obj->flags |= I915_BO_ALLOC_CONTIGUOUS;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.h b/drivers/gpu/drm/i915/gem/i915_gem_region.h
index f2ff6f8bff74..ebddc86d78f7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_region.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_region.h
@@ -17,8 +17,7 @@ void i915_gem_object_put_pages_buddy(struct drm_i915_gem_object *obj,
 				     struct sg_table *pages);
 
 void i915_gem_object_init_memory_region(struct drm_i915_gem_object *obj,
-					struct intel_memory_region *mem,
-					unsigned long flags);
+					struct intel_memory_region *mem);
 void i915_gem_object_release_memory_region(struct drm_i915_gem_object *obj);
 
 struct drm_i915_gem_object *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 38113d3c0138..1ad4713589da 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -430,8 +430,7 @@ static void shmem_release(struct drm_i915_gem_object *obj)
 
 const struct drm_i915_gem_object_ops i915_gem_shmem_ops = {
 	.name = "i915_gem_object_shmem",
-	.flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE |
-		 I915_GEM_OBJECT_IS_SHRINKABLE,
+	.flags = I915_GEM_OBJECT_IS_SHRINKABLE,
 
 	.get_pages = shmem_get_pages,
 	.put_pages = shmem_put_pages,
@@ -496,7 +495,8 @@ create_shmem(struct intel_memory_region *mem,
 	mapping_set_gfp_mask(mapping, mask);
 	GEM_BUG_ON(!(mapping_gfp_mask(mapping) & __GFP_RECLAIM));
 
-	i915_gem_object_init(obj, &i915_gem_shmem_ops, &lock_class);
+	i915_gem_object_init(obj, &i915_gem_shmem_ops, &lock_class,
+			     I915_BO_ALLOC_STRUCT_PAGE);
 
 	obj->write_domain = I915_GEM_DOMAIN_CPU;
 	obj->read_domains = I915_GEM_DOMAIN_CPU;
@@ -520,7 +520,7 @@ create_shmem(struct intel_memory_region *mem,
 
 	i915_gem_object_set_cache_coherency(obj, cache_level);
 
-	i915_gem_object_init_memory_region(obj, mem, 0);
+	i915_gem_object_init_memory_region(obj, mem);
 
 	return obj;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 0be5e8683337..9a9242b5a99f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -586,7 +586,7 @@ __i915_gem_object_create_stolen(struct intel_memory_region *mem,
 		goto err;
 
 	drm_gem_private_object_init(&mem->i915->drm, &obj->base, stolen->size);
-	i915_gem_object_init(obj, &i915_gem_object_stolen_ops, &lock_class);
+	i915_gem_object_init(obj, &i915_gem_object_stolen_ops, &lock_class, 0);
 
 	obj->stolen = stolen;
 	obj->read_domains = I915_GEM_DOMAIN_CPU | I915_GEM_DOMAIN_GTT;
@@ -597,7 +597,7 @@ __i915_gem_object_create_stolen(struct intel_memory_region *mem,
 	if (err)
 		goto cleanup;
 
-	i915_gem_object_init_memory_region(obj, mem, 0);
+	i915_gem_object_init_memory_region(obj, mem);
 
 	return obj;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 12b30075134a..22008948be58 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -702,8 +702,7 @@ i915_gem_userptr_dmabuf_export(struct drm_i915_gem_object *obj)
 
 static const struct drm_i915_gem_object_ops i915_gem_userptr_ops = {
 	.name = "i915_gem_object_userptr",
-	.flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE |
-		 I915_GEM_OBJECT_IS_SHRINKABLE |
+	.flags = I915_GEM_OBJECT_IS_SHRINKABLE |
 		 I915_GEM_OBJECT_NO_MMAP |
 		 I915_GEM_OBJECT_ASYNC_CANCEL,
 	.get_pages = i915_gem_userptr_get_pages,
@@ -810,7 +809,8 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 		return -ENOMEM;
 
 	drm_gem_private_object_init(dev, &obj->base, args->user_size);
-	i915_gem_object_init(obj, &i915_gem_userptr_ops, &lock_class);
+	i915_gem_object_init(obj, &i915_gem_userptr_ops, &lock_class,
+			     I915_BO_ALLOC_STRUCT_PAGE);
 	obj->read_domains = I915_GEM_DOMAIN_CPU;
 	obj->write_domain = I915_GEM_DOMAIN_CPU;
 	i915_gem_object_set_cache_coherency(obj, I915_CACHE_LLC);
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
index a768ec61e966..dfad86d74dd0 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
@@ -89,7 +89,6 @@ static void huge_put_pages(struct drm_i915_gem_object *obj,
 
 static const struct drm_i915_gem_object_ops huge_ops = {
 	.name = "huge-gem",
-	.flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE,
 	.get_pages = huge_get_pages,
 	.put_pages = huge_put_pages,
 };
@@ -115,7 +114,8 @@ huge_gem_object(struct drm_i915_private *i915,
 		return ERR_PTR(-ENOMEM);
 
 	drm_gem_private_object_init(&i915->drm, &obj->base, dma_size);
-	i915_gem_object_init(obj, &huge_ops, &lock_class);
+	i915_gem_object_init(obj, &huge_ops, &lock_class,
+			     I915_BO_ALLOC_STRUCT_PAGE);
 
 	obj->read_domains = I915_GEM_DOMAIN_CPU;
 	obj->write_domain = I915_GEM_DOMAIN_CPU;
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 1f35e71429b4..a7d5f7785f32 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -140,8 +140,7 @@ static void put_huge_pages(struct drm_i915_gem_object *obj,
 
 static const struct drm_i915_gem_object_ops huge_page_ops = {
 	.name = "huge-gem",
-	.flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE |
-		 I915_GEM_OBJECT_IS_SHRINKABLE,
+	.flags = I915_GEM_OBJECT_IS_SHRINKABLE,
 	.get_pages = get_huge_pages,
 	.put_pages = put_huge_pages,
 };
@@ -168,7 +167,8 @@ huge_pages_object(struct drm_i915_private *i915,
 		return ERR_PTR(-ENOMEM);
 
 	drm_gem_private_object_init(&i915->drm, &obj->base, size);
-	i915_gem_object_init(obj, &huge_page_ops, &lock_class);
+	i915_gem_object_init(obj, &huge_page_ops, &lock_class,
+			     I915_BO_ALLOC_STRUCT_PAGE);
 
 	i915_gem_object_set_volatile(obj);
 
@@ -319,9 +319,9 @@ fake_huge_pages_object(struct drm_i915_private *i915, u64 size, bool single)
 	drm_gem_private_object_init(&i915->drm, &obj->base, size);
 
 	if (single)
-		i915_gem_object_init(obj, &fake_ops_single, &lock_class);
+		i915_gem_object_init(obj, &fake_ops_single, &lock_class, 0);
 	else
-		i915_gem_object_init(obj, &fake_ops, &lock_class);
+		i915_gem_object_init(obj, &fake_ops, &lock_class, 0);
 
 	i915_gem_object_set_volatile(obj);
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index d27d87a678c8..3ac7628f3bc4 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -834,9 +834,8 @@ static bool can_mmap(struct drm_i915_gem_object *obj, enum i915_mmap_type type)
 		return false;
 
 	if (type != I915_MMAP_TYPE_GTT &&
-	    !i915_gem_object_type_has(obj,
-				      I915_GEM_OBJECT_HAS_STRUCT_PAGE |
-				      I915_GEM_OBJECT_HAS_IOMEM))
+	    !i915_gem_object_has_struct_page(obj) &&
+	    !i915_gem_object_type_has(obj, I915_GEM_OBJECT_HAS_IOMEM))
 		return false;
 
 	return true;
@@ -976,10 +975,8 @@ static const char *repr_mmap_type(enum i915_mmap_type type)
 
 static bool can_access(const struct drm_i915_gem_object *obj)
 {
-	unsigned int flags =
-		I915_GEM_OBJECT_HAS_STRUCT_PAGE | I915_GEM_OBJECT_HAS_IOMEM;
-
-	return i915_gem_object_type_has(obj, flags);
+	return i915_gem_object_has_struct_page(obj) ||
+	       i915_gem_object_type_has(obj, I915_GEM_OBJECT_HAS_IOMEM);
 }
 
 static int __igt_mmap_access(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
index 8cee68c6a6dc..fb6a17701310 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_phys.c
@@ -25,12 +25,24 @@ static int mock_phys_object(void *arg)
 		goto out;
 	}
 
+	if (!i915_gem_object_has_struct_page(obj)) {
+		err = -EINVAL;
+		pr_err("shmem has no struct page\n");
+		goto out_obj;
+	}
+
 	err = i915_gem_object_attach_phys(obj, PAGE_SIZE);
 	if (err) {
 		pr_err("i915_gem_object_attach_phys failed, err=%d\n", err);
 		goto out_obj;
 	}
 
+	if (i915_gem_object_has_struct_page(obj)) {
+		err = -EINVAL;
+		pr_err("shmem has a struct page\n");
+		goto out_obj;
+	}
+
 	if (obj->ops != &i915_gem_phys_ops) {
 		pr_err("i915_gem_object_attach_phys did not create a phys object\n");
 		err = -EINVAL;
diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.c b/drivers/gpu/drm/i915/gvt/dmabuf.c
index c3eb3838fe88..d4f883f35b95 100644
--- a/drivers/gpu/drm/i915/gvt/dmabuf.c
+++ b/drivers/gpu/drm/i915/gvt/dmabuf.c
@@ -218,7 +218,7 @@ static struct drm_i915_gem_object *vgpu_create_gem(struct drm_device *dev,
 
 	drm_gem_private_object_init(dev, &obj->base,
 		roundup(info->size, PAGE_SIZE));
-	i915_gem_object_init(obj, &intel_vgpu_gem_ops, &lock_class);
+	i915_gem_object_init(obj, &intel_vgpu_gem_ops, &lock_class, 0);
 	i915_gem_object_set_readonly(obj);
 
 	obj->read_domains = I915_GEM_DOMAIN_GTT;
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index c53a222e3dec..2cfe99c79034 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -120,7 +120,7 @@ fake_dma_object(struct drm_i915_private *i915, u64 size)
 		goto err;
 
 	drm_gem_private_object_init(&i915->drm, &obj->base, size);
-	i915_gem_object_init(obj, &fake_ops, &lock_class);
+	i915_gem_object_init(obj, &fake_ops, &lock_class, 0);
 
 	i915_gem_object_set_volatile(obj);
 
diff --git a/drivers/gpu/drm/i915/selftests/mock_region.c b/drivers/gpu/drm/i915/selftests/mock_region.c
index 09660f5a0a4c..2a15e525d5b9 100644
--- a/drivers/gpu/drm/i915/selftests/mock_region.c
+++ b/drivers/gpu/drm/i915/selftests/mock_region.c
@@ -32,13 +32,13 @@ mock_object_create(struct intel_memory_region *mem,
 		return ERR_PTR(-ENOMEM);
 
 	drm_gem_private_object_init(&i915->drm, &obj->base, size);
-	i915_gem_object_init(obj, &mock_region_obj_ops, &lock_class);
+	i915_gem_object_init(obj, &mock_region_obj_ops, &lock_class, flags);
 
 	obj->read_domains = I915_GEM_DOMAIN_CPU | I915_GEM_DOMAIN_GTT;
 
 	i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
 
-	i915_gem_object_init_memory_region(obj, mem, flags);
+	i915_gem_object_init_memory_region(obj, mem);
 
 	return obj;
 }
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
