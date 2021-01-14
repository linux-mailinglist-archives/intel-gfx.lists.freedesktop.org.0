Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF63D2F6972
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 19:24:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2C196E047;
	Thu, 14 Jan 2021 18:24:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 587F289D84
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 18:24:31 +0000 (UTC)
IronPort-SDR: jKg1fVbHPomOFwwHkGG38Fc9MMdzFxzzGGaYrrW77mzdPsntykjAgwguSAlgOqiNPRuuVz+M5C
 VM5sMsAQFbCw==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="174913087"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="174913087"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 10:24:17 -0800
IronPort-SDR: 6HYKYv2UnuFowvpvhELiHdMfmOd/THRP4feLFU7teqzAP7mzFhsQ2QztaKTiGClQWDlD438QIG
 Xt1D9LRV+9Iw==
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="353999257"
Received: from spdoyle-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.7.121])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 10:24:16 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 18:24:02 +0000
Message-Id: <20210114182402.840247-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210114182402.840247-1-matthew.auld@intel.com>
References: <20210114182402.840247-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/region: convert object_create into
 object_init
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

Give more flexibility to the caller, if they already have an allocated
object, in case they wish to apply some transformation to the object
prior to handing it over to the region specific initialisation step,
like in gem_create_ext where we would like to first apply the extensions
to the object.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c     | 15 ++---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.h     |  8 +--
 drivers/gpu/drm/i915/gem/i915_gem_region.c   | 16 ++++-
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c    | 23 +++----
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c   | 65 ++++++++++----------
 drivers/gpu/drm/i915/gt/intel_region_lmem.c  |  2 +-
 drivers/gpu/drm/i915/intel_memory_region.h   |  8 +--
 drivers/gpu/drm/i915/selftests/mock_region.c | 19 +++---
 8 files changed, 72 insertions(+), 84 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
index 932ee21e6609..194f35342710 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
@@ -31,18 +31,13 @@ i915_gem_object_create_lmem(struct drm_i915_private *i915,
 					     size, flags);
 }
 
-struct drm_i915_gem_object *
-__i915_gem_lmem_object_create(struct intel_memory_region *mem,
-			      resource_size_t size,
-			      unsigned int flags)
+int __i915_gem_lmem_object_init(struct intel_memory_region *mem,
+				struct drm_i915_gem_object *obj,
+				resource_size_t size,
+				unsigned int flags)
 {
 	static struct lock_class_key lock_class;
 	struct drm_i915_private *i915 = mem->i915;
-	struct drm_i915_gem_object *obj;
-
-	obj = i915_gem_object_alloc();
-	if (!obj)
-		return ERR_PTR(-ENOMEM);
 
 	drm_gem_private_object_init(&i915->drm, &obj->base, size);
 	i915_gem_object_init(obj, &i915_gem_lmem_obj_ops, &lock_class);
@@ -53,5 +48,5 @@ __i915_gem_lmem_object_create(struct intel_memory_region *mem,
 
 	i915_gem_object_init_memory_region(obj, mem, flags);
 
-	return obj;
+	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
index fc3f15580fe3..036d53c01de9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
@@ -21,9 +21,9 @@ i915_gem_object_create_lmem(struct drm_i915_private *i915,
 			    resource_size_t size,
 			    unsigned int flags);
 
-struct drm_i915_gem_object *
-__i915_gem_lmem_object_create(struct intel_memory_region *mem,
-			      resource_size_t size,
-			      unsigned int flags);
+int __i915_gem_lmem_object_init(struct intel_memory_region *mem,
+				struct drm_i915_gem_object *obj,
+				resource_size_t size,
+				unsigned int flags);
 
 #endif /* !__I915_GEM_LMEM_H */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
index 835bd01f2e5d..4834a0b272f4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
@@ -143,6 +143,7 @@ i915_gem_object_create_region(struct intel_memory_region *mem,
 			      unsigned int flags)
 {
 	struct drm_i915_gem_object *obj;
+	int err;
 
 	/*
 	 * NB: Our use of resource_size_t for the size stems from using struct
@@ -160,6 +161,10 @@ i915_gem_object_create_region(struct intel_memory_region *mem,
 	GEM_BUG_ON(!size);
 	GEM_BUG_ON(!IS_ALIGNED(size, I915_GTT_MIN_ALIGNMENT));
 
+	obj = i915_gem_object_alloc();
+	if (!obj)
+		return ERR_PTR(-ENOMEM);
+
 	/*
 	 * XXX: There is a prevalence of the assumption that we fit the
 	 * object's page count inside a 32bit _signed_ variable. Let's document
@@ -173,9 +178,14 @@ i915_gem_object_create_region(struct intel_memory_region *mem,
 	if (overflows_type(size, obj->base.size))
 		return ERR_PTR(-E2BIG);
 
-	obj = mem->ops->create_object(mem, size, flags);
-	if (!IS_ERR(obj))
-		trace_i915_gem_object_create(obj);
+	err = mem->ops->init_object(mem, obj, size, flags);
+	if (err)
+		goto err_object_free;
 
+	trace_i915_gem_object_create(obj);
 	return obj;
+
+err_object_free:
+	i915_gem_object_free(obj);
+	return ERR_PTR(err);
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 75e8b71c18b9..722e02164c3e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -464,26 +464,21 @@ static int __create_shmem(struct drm_i915_private *i915,
 	return 0;
 }
 
-static struct drm_i915_gem_object *
-create_shmem(struct intel_memory_region *mem,
-	     resource_size_t size,
-	     unsigned int flags)
+static int shmem_object_init(struct intel_memory_region *mem,
+			     struct drm_i915_gem_object *obj,
+			     resource_size_t size,
+			     unsigned int flags)
 {
 	static struct lock_class_key lock_class;
 	struct drm_i915_private *i915 = mem->i915;
-	struct drm_i915_gem_object *obj;
 	struct address_space *mapping;
 	unsigned int cache_level;
 	gfp_t mask;
 	int ret;
 
-	obj = i915_gem_object_alloc();
-	if (!obj)
-		return ERR_PTR(-ENOMEM);
-
 	ret = __create_shmem(i915, &obj->base, size);
 	if (ret)
-		goto fail;
+		return ret;
 
 	mask = GFP_HIGHUSER | __GFP_RECLAIMABLE;
 	if (IS_I965GM(i915) || IS_I965G(i915)) {
@@ -522,11 +517,7 @@ create_shmem(struct intel_memory_region *mem,
 
 	i915_gem_object_init_memory_region(obj, mem, 0);
 
-	return obj;
-
-fail:
-	i915_gem_object_free(obj);
-	return ERR_PTR(ret);
+	return 0;
 }
 
 struct drm_i915_gem_object *
@@ -611,7 +602,7 @@ static void release_shmem(struct intel_memory_region *mem)
 static const struct intel_memory_region_ops shmem_region_ops = {
 	.init = init_shmem,
 	.release = release_shmem,
-	.create_object = create_shmem,
+	.init_object = shmem_object_init,
 };
 
 struct intel_memory_region *i915_gem_shmem_setup(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 41b9fbf4dbcc..27d95bddbf4d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -621,18 +621,13 @@ static const struct drm_i915_gem_object_ops i915_gem_object_stolen_ops = {
 	.release = i915_gem_object_release_stolen,
 };
 
-static struct drm_i915_gem_object *
-__i915_gem_object_create_stolen(struct intel_memory_region *mem,
-				struct drm_mm_node *stolen)
+int __i915_gem_object_create_stolen(struct intel_memory_region *mem,
+				    struct drm_i915_gem_object *obj,
+				    struct drm_mm_node *stolen)
 {
 	static struct lock_class_key lock_class;
-	struct drm_i915_gem_object *obj;
 	unsigned int cache_level;
-	int err = -ENOMEM;
-
-	obj = i915_gem_object_alloc();
-	if (!obj)
-		goto err;
+	int err;
 
 	drm_gem_private_object_init(&mem->i915->drm, &obj->base, stolen->size);
 	i915_gem_object_init(obj, &i915_gem_object_stolen_ops, &lock_class);
@@ -644,55 +639,47 @@ __i915_gem_object_create_stolen(struct intel_memory_region *mem,
 
 	err = i915_gem_object_pin_pages(obj);
 	if (err)
-		goto cleanup;
+		return err;
 
 	i915_gem_object_init_memory_region(obj, mem, 0);
 
-	return obj;
-
-cleanup:
-	i915_gem_object_free(obj);
-err:
-	return ERR_PTR(err);
+	return 0;
 }
 
-static struct drm_i915_gem_object *
-_i915_gem_object_create_stolen(struct intel_memory_region *mem,
-			       resource_size_t size,
-			       unsigned int flags)
+int _i915_gem_object_stolen_init(struct intel_memory_region *mem,
+				 struct drm_i915_gem_object *obj,
+				 resource_size_t size,
+				 unsigned int flags)
 {
 	struct drm_i915_private *i915 = mem->i915;
-	struct drm_i915_gem_object *obj;
 	struct drm_mm_node *stolen;
 	int ret;
 
 	if (!drm_mm_initialized(&i915->mm.stolen))
-		return ERR_PTR(-ENODEV);
+		return -ENODEV;
 
 	if (size == 0)
-		return ERR_PTR(-EINVAL);
+		return -EINVAL;
 
 	stolen = kzalloc(sizeof(*stolen), GFP_KERNEL);
 	if (!stolen)
-		return ERR_PTR(-ENOMEM);
+		return -ENOMEM;
 
 	ret = i915_gem_stolen_insert_node(i915, stolen, size, 4096);
-	if (ret) {
-		obj = ERR_PTR(ret);
+	if (ret)
 		goto err_free;
-	}
 
-	obj = __i915_gem_object_create_stolen(mem, stolen);
-	if (IS_ERR(obj))
+	ret = __i915_gem_object_create_stolen(mem, obj, stolen);
+	if (ret)
 		goto err_remove;
 
-	return obj;
+	return 0;
 
 err_remove:
 	i915_gem_stolen_remove_node(i915, stolen);
 err_free:
 	kfree(stolen);
-	return obj;
+	return ret;
 }
 
 struct drm_i915_gem_object *
@@ -722,7 +709,7 @@ static void release_stolen(struct intel_memory_region *mem)
 static const struct intel_memory_region_ops i915_region_stolen_ops = {
 	.init = init_stolen,
 	.release = release_stolen,
-	.create_object = _i915_gem_object_create_stolen,
+	.init_object = _i915_gem_object_stolen_init,
 };
 
 struct intel_memory_region *i915_gem_stolen_setup(struct drm_i915_private *i915)
@@ -771,13 +758,23 @@ i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *i915,
 		goto err_free;
 	}
 
-	obj = __i915_gem_object_create_stolen(mem, stolen);
-	if (IS_ERR(obj))
+	obj = i915_gem_object_alloc();
+	if (!obj) {
+		obj = ERR_PTR(-ENOMEM);
 		goto err_stolen;
+	}
+
+	ret = __i915_gem_object_create_stolen(mem, obj, stolen);
+	if (ret) {
+		obj = ERR_PTR(ret);
+		goto err_object_free;
+	}
 
 	i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
 	return obj;
 
+err_object_free:
+	i915_gem_object_free(obj);
 err_stolen:
 	i915_gem_stolen_remove_node(i915, stolen);
 err_free:
diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 83992312a34b..60393ce5614d 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -98,7 +98,7 @@ region_lmem_init(struct intel_memory_region *mem)
 static const struct intel_memory_region_ops intel_region_lmem_ops = {
 	.init = region_lmem_init,
 	.release = region_lmem_release,
-	.create_object = __i915_gem_lmem_object_create,
+	.init_object = __i915_gem_lmem_object_init,
 };
 
 struct intel_memory_region *
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 6590d55df6cb..6ffc0673f005 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -57,10 +57,10 @@ struct intel_memory_region_ops {
 	int (*init)(struct intel_memory_region *mem);
 	void (*release)(struct intel_memory_region *mem);
 
-	struct drm_i915_gem_object *
-	(*create_object)(struct intel_memory_region *mem,
-			 resource_size_t size,
-			 unsigned int flags);
+	int (*init_object)(struct intel_memory_region *mem,
+			   struct drm_i915_gem_object *obj,
+			   resource_size_t size,
+			   unsigned int flags);
 };
 
 struct intel_memory_region {
diff --git a/drivers/gpu/drm/i915/selftests/mock_region.c b/drivers/gpu/drm/i915/selftests/mock_region.c
index 979d96f27c43..3c6021415274 100644
--- a/drivers/gpu/drm/i915/selftests/mock_region.c
+++ b/drivers/gpu/drm/i915/selftests/mock_region.c
@@ -15,21 +15,16 @@ static const struct drm_i915_gem_object_ops mock_region_obj_ops = {
 	.release = i915_gem_object_release_memory_region,
 };
 
-static struct drm_i915_gem_object *
-mock_object_create(struct intel_memory_region *mem,
-		   resource_size_t size,
-		   unsigned int flags)
+static int mock_object_init(struct intel_memory_region *mem,
+			    struct drm_i915_gem_object *obj,
+			    resource_size_t size,
+			    unsigned int flags)
 {
 	static struct lock_class_key lock_class;
 	struct drm_i915_private *i915 = mem->i915;
-	struct drm_i915_gem_object *obj;
 
 	if (size > mem->mm.size)
-		return ERR_PTR(-E2BIG);
-
-	obj = i915_gem_object_alloc();
-	if (!obj)
-		return ERR_PTR(-ENOMEM);
+		return -E2BIG;
 
 	drm_gem_private_object_init(&i915->drm, &obj->base, size);
 	i915_gem_object_init(obj, &mock_region_obj_ops, &lock_class);
@@ -40,13 +35,13 @@ mock_object_create(struct intel_memory_region *mem,
 
 	i915_gem_object_init_memory_region(obj, mem, flags);
 
-	return obj;
+	return 0;
 }
 
 static const struct intel_memory_region_ops mock_region_ops = {
 	.init = intel_memory_region_init_buddy,
 	.release = intel_memory_region_release_buddy,
-	.create_object = mock_object_create,
+	.init_object = mock_object_init,
 };
 
 struct intel_memory_region *
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
