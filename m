Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 532F541D37B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 08:35:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46BD76E311;
	Thu, 30 Sep 2021 06:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9629D6E303;
 Thu, 30 Sep 2021 06:35:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="204598112"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="204598112"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 23:35:34 -0700
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="555466690"
Received: from huynhhai-mobl1.ccr.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.243])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 23:35:32 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: maarten.lankhorst@linux.intel.com, matthew.auld@intel.com,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Thu, 30 Sep 2021 08:35:21 +0200
Message-Id: <20210930063521.566982-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/ttm: Rework object initialization
 slightly
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We may end up in i915_ttm_bo_destroy() in an error path before the
object is fully initialized. In that case it's not correct to call
__i915_gem_free_object(), because that function
a) Assumes the gem object refcount is 0, which it isn't.
b) frees the placements which are owned by the caller until the
init_object() region ops returns successfully. Fix this by providing
a lightweight cleanup function __i915_gem_object_fini() which is also
called by __i915_gem_free_object().

While doing this, also make sure we call dma_resv_fini() as part of
ordinary object destruction and not from the RCU callback that frees
the object. This will help track down bugs where the object is incorrectly
locked from an RCU lookup.

Finally, make sure the object isn't put on the region list until it's
either locked or fully initialized in order to block list processing of
partially initialized objects.

v2:
- The TTM object backend memory was freed before the gem pages were
  put. Separate this functionality into __i915_gem_object_pages_fini()
  and call it from the TTM delete_mem_notify() callback.

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com> #v1
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c | 45 ++++++++++++++++++----
 drivers/gpu/drm/i915/gem/i915_gem_object.h |  5 +++
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c    | 36 ++++++++++-------
 3 files changed, 65 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 6fb9afb65034..3ea2702600ae 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -89,6 +89,22 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
 	mutex_init(&obj->mm.get_dma_page.lock);
 }
 
+/**
+ * i915_gem_object_fini - Clean up a GEM object initialization
+ * @obj: The gem object to cleanup
+ *
+ * This function cleans up gem object fields that are set up by
+ * drm_gem_private_object_init() and i915_gem_object_init().
+ * It's primarily intended as a helper for backends that need to
+ * clean up the gem object in separate steps.
+ */
+void __i915_gem_object_fini(struct drm_i915_gem_object *obj)
+{
+	mutex_destroy(&obj->mm.get_page.lock);
+	mutex_destroy(&obj->mm.get_dma_page.lock);
+	dma_resv_fini(&obj->base._resv);
+}
+
 /**
  * Mark up the object's coherency levels for a given cache_level
  * @obj: #drm_i915_gem_object
@@ -174,7 +190,6 @@ void __i915_gem_free_object_rcu(struct rcu_head *head)
 		container_of(head, typeof(*obj), rcu);
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 
-	dma_resv_fini(&obj->base._resv);
 	i915_gem_object_free(obj);
 
 	GEM_BUG_ON(!atomic_read(&i915->mm.free_count));
@@ -204,10 +219,17 @@ static void __i915_gem_object_free_mmaps(struct drm_i915_gem_object *obj)
 	}
 }
 
-void __i915_gem_free_object(struct drm_i915_gem_object *obj)
+/**
+ * __i915_gem_object_pages_fini - Clean up pages use of a gem object
+ * @obj: The gem object to clean up
+ *
+ * This function cleans up usage of the object mm.pages member. It
+ * is intended for backends that need to clean up a gem object in
+ * separate steps and needs to be called when the object is idle before
+ * the object's backing memory is freed.
+ */
+void __i915_gem_object_pages_fini(struct drm_i915_gem_object *obj)
 {
-	trace_i915_gem_object_destroy(obj);
-
 	if (!list_empty(&obj->vma.list)) {
 		struct i915_vma *vma;
 
@@ -231,13 +253,19 @@ void __i915_gem_free_object(struct drm_i915_gem_object *obj)
 		spin_unlock(&obj->vma.lock);
 	}
 
+	atomic_set(&obj->mm.pages_pin_count, 0);
+	__i915_gem_object_put_pages(obj);
+	GEM_BUG_ON(i915_gem_object_has_pages(obj));
+}
+
+void __i915_gem_free_object(struct drm_i915_gem_object *obj)
+{
+	trace_i915_gem_object_destroy(obj);
+
 	__i915_gem_object_free_mmaps(obj);
 
 	GEM_BUG_ON(!list_empty(&obj->lut_list));
 
-	atomic_set(&obj->mm.pages_pin_count, 0);
-	__i915_gem_object_put_pages(obj);
-	GEM_BUG_ON(i915_gem_object_has_pages(obj));
 	bitmap_free(obj->bit_17);
 
 	if (obj->base.import_attach)
@@ -253,6 +281,8 @@ void __i915_gem_free_object(struct drm_i915_gem_object *obj)
 
 	if (obj->shares_resv_from)
 		i915_vm_resv_put(obj->shares_resv_from);
+
+	__i915_gem_object_fini(obj);
 }
 
 static void __i915_gem_free_objects(struct drm_i915_private *i915,
@@ -266,6 +296,7 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
 			obj->ops->delayed_free(obj);
 			continue;
 		}
+		__i915_gem_object_pages_fini(obj);
 		__i915_gem_free_object(obj);
 
 		/* But keep the pointer alive for RCU-protected lookups */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 3043fcbd31bd..7f9f2e5ba0ec 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -58,6 +58,9 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
 			  const struct drm_i915_gem_object_ops *ops,
 			  struct lock_class_key *key,
 			  unsigned alloc_flags);
+
+void __i915_gem_object_fini(struct drm_i915_gem_object *obj);
+
 struct drm_i915_gem_object *
 i915_gem_object_create_shmem(struct drm_i915_private *i915,
 			     resource_size_t size);
@@ -582,6 +585,8 @@ bool i915_gem_object_is_shmem(const struct drm_i915_gem_object *obj);
 
 void __i915_gem_free_object_rcu(struct rcu_head *head);
 
+void __i915_gem_object_pages_fini(struct drm_i915_gem_object *obj);
+
 void __i915_gem_free_object(struct drm_i915_gem_object *obj);
 
 bool i915_gem_object_evictable(struct drm_i915_gem_object *obj);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index b94497989995..a0ab5c44627b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -367,8 +367,10 @@ static void i915_ttm_delete_mem_notify(struct ttm_buffer_object *bo)
 {
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
 
-	if (likely(obj))
+	if (likely(obj)) {
+		__i915_gem_object_pages_fini(obj);
 		i915_ttm_free_cached_io_st(obj);
+	}
 }
 
 static struct intel_memory_region *
@@ -813,12 +815,9 @@ static void i915_ttm_adjust_lru(struct drm_i915_gem_object *obj)
  */
 static void i915_ttm_delayed_free(struct drm_i915_gem_object *obj)
 {
-	if (obj->ttm.created) {
-		ttm_bo_put(i915_gem_to_ttm(obj));
-	} else {
-		__i915_gem_free_object(obj);
-		call_rcu(&obj->rcu, __i915_gem_free_object_rcu);
-	}
+	GEM_BUG_ON(!obj->ttm.created);
+
+	ttm_bo_put(i915_gem_to_ttm(obj));
 }
 
 static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
@@ -898,16 +897,19 @@ void i915_ttm_bo_destroy(struct ttm_buffer_object *bo)
 {
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
 
-	i915_ttm_backup_free(obj);
-
-	/* This releases all gem object bindings to the backend. */
-	__i915_gem_free_object(obj);
-
 	i915_gem_object_release_memory_region(obj);
 	mutex_destroy(&obj->ttm.get_io_page.lock);
 
-	if (obj->ttm.created)
+	if (obj->ttm.created) {
+		i915_ttm_backup_free(obj);
+
+		/* This releases all gem object bindings to the backend. */
+		__i915_gem_free_object(obj);
+
 		call_rcu(&obj->rcu, __i915_gem_free_object_rcu);
+	} else {
+		__i915_gem_object_fini(obj);
+	}
 }
 
 /**
@@ -936,7 +938,11 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
 
 	drm_gem_private_object_init(&i915->drm, &obj->base, size);
 	i915_gem_object_init(obj, &i915_gem_ttm_obj_ops, &lock_class, flags);
-	i915_gem_object_init_memory_region(obj, mem);
+
+	/* Don't put on a region list until we're either locked or fully initialized. */
+	obj->mm.region = intel_memory_region_get(mem);
+	INIT_LIST_HEAD(&obj->mm.region_link);
+
 	i915_gem_object_make_unshrinkable(obj);
 	INIT_RADIX_TREE(&obj->ttm.get_io_page.radix, GFP_KERNEL | __GFP_NOWARN);
 	mutex_init(&obj->ttm.get_io_page.lock);
@@ -963,6 +969,8 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
 		return i915_ttm_err_to_gem(ret);
 
 	obj->ttm.created = true;
+	i915_gem_object_release_memory_region(obj);
+	i915_gem_object_init_memory_region(obj, mem);
 	i915_ttm_adjust_domains_after_move(obj);
 	i915_ttm_adjust_gem_after_move(obj);
 	i915_gem_object_unlock(obj);
-- 
2.31.1

