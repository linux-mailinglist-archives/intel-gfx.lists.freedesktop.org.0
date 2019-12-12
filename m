Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5A011CF36
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 15:05:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7942D6ED7D;
	Thu, 12 Dec 2019 14:05:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55D9F6ED71
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 14:05:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19555651-1500050 
 for multiple; Thu, 12 Dec 2019 14:05:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:04:48 +0000
Message-Id: <20191212140459.1307617-22-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
References: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/33] drm/i915/uc: Use an internal buffer for
 firmware images
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

Since the lifetime of the uc_fw is virtually identical to the current
pinned range, simplify the setup to avoid using a swappable shmem file,
and just use an internal bo. The immediate advantage is in removing the
extra pin/unpin stages during init that are very difficult to balance
along error paths.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_internal.c | 43 +++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_object.h   |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c    | 51 --------------------
 drivers/gpu/drm/i915/gt/uc/intel_guc.c       | 12 ++---
 drivers/gpu/drm/i915/gt/uc/intel_huc.c       | 12 ++---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     | 30 +-----------
 6 files changed, 56 insertions(+), 96 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_internal.c b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
index 9cfb0e41ff06..a8eb0eb27390 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_internal.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_internal.c
@@ -198,3 +198,46 @@ i915_gem_object_create_internal(struct drm_i915_private *i915,
 
 	return obj;
 }
+
+/* Allocate a new GEM object and fill it with the supplied data */
+struct drm_i915_gem_object *
+i915_gem_object_create_from_data(struct drm_i915_private *i915,
+				 const void *data, resource_size_t size)
+{
+	struct drm_i915_gem_object *obj;
+	resource_size_t offset;
+	struct sgt_iter it;
+	struct page *page;
+	int err;
+
+	obj = i915_gem_object_create_internal(i915, round_up(size, PAGE_SIZE));
+	if (IS_ERR(obj))
+		return obj;
+
+	GEM_BUG_ON(obj->write_domain != I915_GEM_DOMAIN_CPU);
+
+	err = i915_gem_object_pin_pages(obj);
+	if (err)
+		goto err;
+
+	offset = 0;
+	for_each_sgt_page(page, it, obj->mm.pages) {
+		int len = min_t(typeof(size), size - offset, PAGE_SIZE);
+		void *ptr;
+
+		ptr = kmap(page);
+
+		memcpy(ptr, data + offset, len);
+		if (!(obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE))
+			drm_clflush_virt_range(ptr, len);
+
+		kunmap(page);
+		offset += len;
+	}
+
+	return obj; /* keep pages pinned */
+
+err:
+	i915_gem_object_put(obj);
+	return ERR_PTR(err);
+}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index a1eb7c0b23ac..994dd654b5c1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -29,8 +29,8 @@ struct drm_i915_gem_object *
 i915_gem_object_create_shmem(struct drm_i915_private *i915,
 			     resource_size_t size);
 struct drm_i915_gem_object *
-i915_gem_object_create_shmem_from_data(struct drm_i915_private *i915,
-				       const void *data, resource_size_t size);
+i915_gem_object_create_from_data(struct drm_i915_private *i915,
+				 const void *data, resource_size_t size);
 
 extern const struct drm_i915_gem_object_ops i915_gem_shmem_ops;
 void __i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 4d69c3fc3439..0f4c8fc38bba 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -533,57 +533,6 @@ i915_gem_object_create_shmem(struct drm_i915_private *i915,
 					     size, 0);
 }
 
-/* Allocate a new GEM object and fill it with the supplied data */
-struct drm_i915_gem_object *
-i915_gem_object_create_shmem_from_data(struct drm_i915_private *dev_priv,
-				       const void *data, resource_size_t size)
-{
-	struct drm_i915_gem_object *obj;
-	struct file *file;
-	resource_size_t offset;
-	int err;
-
-	obj = i915_gem_object_create_shmem(dev_priv, round_up(size, PAGE_SIZE));
-	if (IS_ERR(obj))
-		return obj;
-
-	GEM_BUG_ON(obj->write_domain != I915_GEM_DOMAIN_CPU);
-
-	file = obj->base.filp;
-	offset = 0;
-	do {
-		unsigned int len = min_t(typeof(size), size, PAGE_SIZE);
-		struct page *page;
-		void *pgdata, *vaddr;
-
-		err = pagecache_write_begin(file, file->f_mapping,
-					    offset, len, 0,
-					    &page, &pgdata);
-		if (err < 0)
-			goto fail;
-
-		vaddr = kmap(page);
-		memcpy(vaddr, data, len);
-		kunmap(page);
-
-		err = pagecache_write_end(file, file->f_mapping,
-					  offset, len, len,
-					  page, pgdata);
-		if (err < 0)
-			goto fail;
-
-		size -= len;
-		data += len;
-		offset += len;
-	} while (size);
-
-	return obj;
-
-fail:
-	i915_gem_object_put(obj);
-	return ERR_PTR(err);
-}
-
 static int init_shmem(struct intel_memory_region *mem)
 {
 	int err;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 922a19635d20..b5639548b8fc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -334,13 +334,14 @@ int intel_guc_init(struct intel_guc *guc)
 	struct intel_gt *gt = guc_to_gt(guc);
 	int ret;
 
-	ret = intel_uc_fw_init(&guc->fw);
-	if (ret)
-		goto err_fetch;
+	/* This should happen before the load! */
+	GEM_BUG_ON(intel_uc_fw_is_loaded(&guc->fw));
+	if (!intel_uc_fw_is_available(&guc->fw))
+		return -ENOEXEC;
 
 	ret = intel_guc_log_create(&guc->log);
 	if (ret)
-		goto err_fw;
+		goto err_fetch;
 
 	ret = intel_guc_ads_create(guc);
 	if (ret)
@@ -375,8 +376,6 @@ int intel_guc_init(struct intel_guc *guc)
 	intel_guc_ads_destroy(guc);
 err_log:
 	intel_guc_log_destroy(&guc->log);
-err_fw:
-	intel_uc_fw_fini(&guc->fw);
 err_fetch:
 	intel_uc_fw_cleanup_fetch(&guc->fw);
 	DRM_DEV_DEBUG_DRIVER(gt->i915->drm.dev, "failed with %d\n", ret);
@@ -399,7 +398,6 @@ void intel_guc_fini(struct intel_guc *guc)
 
 	intel_guc_ads_destroy(guc);
 	intel_guc_log_destroy(&guc->log);
-	intel_uc_fw_fini(&guc->fw);
 	intel_uc_fw_cleanup_fetch(&guc->fw);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index 32a069841c14..f0b555fb6dd2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -108,9 +108,10 @@ int intel_huc_init(struct intel_huc *huc)
 	struct drm_i915_private *i915 = huc_to_gt(huc)->i915;
 	int err;
 
-	err = intel_uc_fw_init(&huc->fw);
-	if (err)
-		goto out;
+	/* This should happen before the load! */
+	GEM_BUG_ON(intel_uc_fw_is_loaded(&huc->fw));
+	if (!intel_uc_fw_is_available(&huc->fw))
+		return -ENOEXEC;
 
 	/*
 	 * HuC firmware image is outside GuC accessible range.
@@ -119,12 +120,10 @@ int intel_huc_init(struct intel_huc *huc)
 	 */
 	err = intel_huc_rsa_data_create(huc);
 	if (err)
-		goto out_fini;
+		goto out;
 
 	return 0;
 
-out_fini:
-	intel_uc_fw_fini(&huc->fw);
 out:
 	intel_uc_fw_cleanup_fetch(&huc->fw);
 	DRM_DEV_DEBUG_DRIVER(i915->drm.dev, "failed with %d\n", err);
@@ -137,7 +136,6 @@ void intel_huc_fini(struct intel_huc *huc)
 		return;
 
 	intel_huc_rsa_data_destroy(huc);
-	intel_uc_fw_fini(&huc->fw);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 4d02e06480e5..f19636d4bed7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -364,7 +364,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 		}
 	}
 
-	obj = i915_gem_object_create_shmem_from_data(i915, fw->data, fw->size);
+	obj = i915_gem_object_create_from_data(i915, fw->data, fw->size);
 	if (IS_ERR(obj)) {
 		err = PTR_ERR(obj);
 		goto fail;
@@ -524,34 +524,6 @@ int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
 	return err;
 }
 
-int intel_uc_fw_init(struct intel_uc_fw *uc_fw)
-{
-	int err;
-
-	/* this should happen before the load! */
-	GEM_BUG_ON(intel_uc_fw_is_loaded(uc_fw));
-
-	if (!intel_uc_fw_is_available(uc_fw))
-		return -ENOEXEC;
-
-	err = i915_gem_object_pin_pages(uc_fw->obj);
-	if (err) {
-		DRM_DEBUG_DRIVER("%s fw pin-pages err=%d\n",
-				 intel_uc_fw_type_repr(uc_fw->type), err);
-		intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_FAIL);
-	}
-
-	return err;
-}
-
-void intel_uc_fw_fini(struct intel_uc_fw *uc_fw)
-{
-	if (!intel_uc_fw_is_available(uc_fw))
-		return;
-
-	i915_gem_object_unpin_pages(uc_fw->obj);
-}
-
 /**
  * intel_uc_fw_cleanup_fetch - cleanup uC firmware
  * @uc_fw: uC firmware
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
