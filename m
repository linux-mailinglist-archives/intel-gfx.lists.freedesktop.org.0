Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C255489E3F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 18:22:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D74310F559;
	Mon, 10 Jan 2022 17:22:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97CD310F074;
 Mon, 10 Jan 2022 17:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641835352; x=1673371352;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NnS2CLpwykxb977zCSnewfK6y4sruyeXbKyoNJUXsCY=;
 b=DCjzeUE1yM3NAJc4qTJTBmewYHGGmyKI1iJ58JWVL7f7PerkOqNXGyXt
 cTgMp84olejQGj9ktyUYD0KYvvLgyD9RS9i+Blftg7g4FdP2Y9XxMSDFX
 OTa0zDdgr3UKBURnmWBYHIK6vCZG9w0O69zs9EEVLLvDMTCD71baXV7gB
 7ZneISEq8vfyhJmlip4eZNZ9Nk8g5ykn6omHYJuJLJaYd7kiZXRvFAAD1
 OvUfB0CtFQcUxrDsGTZT7vDbvLNeeeX6tlBE88nQbVD6S6rETDq4SBGQV
 /RagXBAZoZAOMwKT3JDFOviRC4LzAnCsktgIX9d0bLU1p9b1ZIwo5I3bH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="243471493"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="243471493"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 09:22:32 -0800
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="514743937"
Received: from pheino-mobl.ger.corp.intel.com (HELO thellstr-mobl1.intel.com)
 ([10.249.254.41])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 09:22:30 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 10 Jan 2022 18:22:14 +0100
Message-Id: <20220110172219.107131-2-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220110172219.107131-1-thomas.hellstrom@linux.intel.com>
References: <20220110172219.107131-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 1/6] drm/i915: Initial introduction of vma
 resources
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Introduce vma resources, sort of similar to TTM resources,  needed for
asynchronous bind management. Initially we will use them to hold
completion of unbinding when we capture data from a vma, but they will
be used extensively in upcoming patches for asynchronous vma unbinding.

v6:
- Some documentation updates

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   2 +-
 drivers/gpu/drm/i915/i915_vma.c               |  55 +++++++-
 drivers/gpu/drm/i915/i915_vma.h               |  19 ++-
 drivers/gpu/drm/i915/i915_vma_resource.c      | 124 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_vma_resource.h      |  69 ++++++++++
 drivers/gpu/drm/i915/i915_vma_snapshot.c      |  15 +--
 drivers/gpu/drm/i915/i915_vma_snapshot.h      |   7 +-
 drivers/gpu/drm/i915/i915_vma_types.h         |   5 +
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  99 ++++++++------
 10 files changed, 333 insertions(+), 63 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_vma_resource.c
 create mode 100644 drivers/gpu/drm/i915/i915_vma_resource.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 1b62b9f65196..98433ad74194 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -174,6 +174,7 @@ i915-y += \
 	  i915_trace_points.o \
 	  i915_ttm_buddy_manager.o \
 	  i915_vma.o \
+	  i915_vma_resource.o \
 	  i915_vma_snapshot.o \
 	  intel_wopcm.o
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 9e221ce42707..3e359de0e460 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1424,7 +1424,7 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 			mutex_lock(&vma->vm->mutex);
 			err = i915_vma_bind(target->vma,
 					    target->vma->obj->cache_level,
-					    PIN_GLOBAL, NULL);
+					    PIN_GLOBAL, NULL, NULL);
 			mutex_unlock(&vma->vm->mutex);
 			reloc_cache_remap(&eb->reloc_cache, ev->vma->obj);
 			if (err)
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 81a611b7d36f..05dcbc259b82 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -38,6 +38,7 @@
 #include "i915_sw_fence_work.h"
 #include "i915_trace.h"
 #include "i915_vma.h"
+#include "i915_vma_resource.h"
 
 static struct kmem_cache *slab_vmas;
 
@@ -381,6 +382,8 @@ static int i915_vma_verify_bind_complete(struct i915_vma *vma)
  * @cache_level: mapping cache level
  * @flags: flags like global or local mapping
  * @work: preallocated worker for allocating and binding the PTE
+ * @vma_res: pointer to a preallocated vma resource. The resource is either
+ * consumed or freed.
  *
  * DMA addresses are taken from the scatter-gather table of this object (or of
  * this VMA in case of non-default GGTT views) and PTE entries set up.
@@ -389,7 +392,8 @@ static int i915_vma_verify_bind_complete(struct i915_vma *vma)
 int i915_vma_bind(struct i915_vma *vma,
 		  enum i915_cache_level cache_level,
 		  u32 flags,
-		  struct i915_vma_work *work)
+		  struct i915_vma_work *work,
+		  struct i915_vma_resource *vma_res)
 {
 	u32 bind_flags;
 	u32 vma_flags;
@@ -400,11 +404,15 @@ int i915_vma_bind(struct i915_vma *vma,
 
 	if (GEM_DEBUG_WARN_ON(range_overflows(vma->node.start,
 					      vma->node.size,
-					      vma->vm->total)))
+					      vma->vm->total))) {
+		kfree(vma_res);
 		return -ENODEV;
+	}
 
-	if (GEM_DEBUG_WARN_ON(!flags))
+	if (GEM_DEBUG_WARN_ON(!flags)) {
+		kfree(vma_res);
 		return -EINVAL;
+	}
 
 	bind_flags = flags;
 	bind_flags &= I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
@@ -413,11 +421,21 @@ int i915_vma_bind(struct i915_vma *vma,
 	vma_flags &= I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
 
 	bind_flags &= ~vma_flags;
-	if (bind_flags == 0)
+	if (bind_flags == 0) {
+		kfree(vma_res);
 		return 0;
+	}
 
 	GEM_BUG_ON(!atomic_read(&vma->pages_count));
 
+	if (vma->resource || !vma_res) {
+		/* Rebinding with an additional I915_VMA_*_BIND */
+		GEM_WARN_ON(!vma_flags);
+		kfree(vma_res);
+	} else {
+		i915_vma_resource_init(vma_res);
+		vma->resource = vma_res;
+	}
 	trace_i915_vma_bind(vma, bind_flags);
 	if (work && bind_flags & vma->vm->bind_async_flags) {
 		struct dma_fence *prev;
@@ -1280,6 +1298,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 {
 	struct i915_vma_work *work = NULL;
 	struct dma_fence *moving = NULL;
+	struct i915_vma_resource *vma_res = NULL;
 	intel_wakeref_t wakeref = 0;
 	unsigned int bound;
 	int err;
@@ -1334,6 +1353,12 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 		}
 	}
 
+	vma_res = i915_vma_resource_alloc();
+	if (IS_ERR(vma_res)) {
+		err = PTR_ERR(vma_res);
+		goto err_fence;
+	}
+
 	/*
 	 * Differentiate between user/kernel vma inside the aliasing-ppgtt.
 	 *
@@ -1354,7 +1379,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	err = mutex_lock_interruptible_nested(&vma->vm->mutex,
 					      !(flags & PIN_GLOBAL));
 	if (err)
-		goto err_fence;
+		goto err_vma_res;
 
 	/* No more allocations allowed now we hold vm->mutex */
 
@@ -1395,7 +1420,8 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	GEM_BUG_ON(!vma->pages);
 	err = i915_vma_bind(vma,
 			    vma->obj->cache_level,
-			    flags, work);
+			    flags, work, vma_res);
+	vma_res = NULL;
 	if (err)
 		goto err_remove;
 
@@ -1418,6 +1444,8 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	i915_active_release(&vma->active);
 err_unlock:
 	mutex_unlock(&vma->vm->mutex);
+err_vma_res:
+	kfree(vma_res);
 err_fence:
 	if (work)
 		dma_fence_work_commit_imm(&work->base);
@@ -1568,6 +1596,7 @@ void i915_vma_release(struct kref *ref)
 	i915_vm_put(vma->vm);
 
 	i915_active_fini(&vma->active);
+	GEM_WARN_ON(vma->resource);
 	i915_vma_free(vma);
 }
 
@@ -1716,6 +1745,8 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 
 void __i915_vma_evict(struct i915_vma *vma)
 {
+	struct dma_fence *unbind_fence;
+
 	GEM_BUG_ON(i915_vma_is_pinned(vma));
 
 	if (i915_vma_is_map_and_fenceable(vma)) {
@@ -1753,8 +1784,20 @@ void __i915_vma_evict(struct i915_vma *vma)
 	atomic_and(~(I915_VMA_BIND_MASK | I915_VMA_ERROR | I915_VMA_GGTT_WRITE),
 		   &vma->flags);
 
+	unbind_fence = i915_vma_resource_unbind(vma->resource);
+	i915_vma_resource_put(vma->resource);
+	vma->resource = NULL;
+
 	i915_vma_detach(vma);
 	vma_unbind_pages(vma);
+
+	/*
+	 * This uninterruptible wait under the vm mutex is currently
+	 * only ever blocking while the vma is being captured from.
+	 * With async unbinding, this wait here will be removed.
+	 */
+	dma_fence_wait(unbind_fence, false);
+	dma_fence_put(unbind_fence);
 }
 
 int __i915_vma_unbind(struct i915_vma *vma)
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 32719431b3df..de0f3e44cdfa 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -37,6 +37,7 @@
 
 #include "i915_active.h"
 #include "i915_request.h"
+#include "i915_vma_resource.h"
 #include "i915_vma_types.h"
 
 struct i915_vma *
@@ -204,7 +205,8 @@ struct i915_vma_work *i915_vma_work(void);
 int i915_vma_bind(struct i915_vma *vma,
 		  enum i915_cache_level cache_level,
 		  u32 flags,
-		  struct i915_vma_work *work);
+		  struct i915_vma_work *work,
+		  struct i915_vma_resource *vma_res);
 
 bool i915_gem_valid_gtt_space(struct i915_vma *vma, unsigned long color);
 bool i915_vma_misplaced(const struct i915_vma *vma,
@@ -428,6 +430,21 @@ static inline int i915_vma_sync(struct i915_vma *vma)
 	return i915_active_wait(&vma->active);
 }
 
+/**
+ * i915_vma_get_current_resource - Get the current resource of the vma
+ * @vma: The vma to get the current resource from.
+ *
+ * It's illegal to call this function if the vma is not bound.
+ *
+ * Return: A refcounted pointer to the current vma resource
+ * of the vma, assuming the vma is bound.
+ */
+static inline struct i915_vma_resource *
+i915_vma_get_current_resource(struct i915_vma *vma)
+{
+	return i915_vma_resource_get(vma->resource);
+}
+
 void i915_vma_module_exit(void);
 int i915_vma_module_init(void);
 
diff --git a/drivers/gpu/drm/i915/i915_vma_resource.c b/drivers/gpu/drm/i915/i915_vma_resource.c
new file mode 100644
index 000000000000..0b4eaafe47d7
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_vma_resource.c
@@ -0,0 +1,124 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+#include <linux/slab.h>
+
+#include "i915_vma_resource.h"
+
+/* Callbacks for the unbind dma-fence. */
+static const char *get_driver_name(struct dma_fence *fence)
+{
+	return "vma unbind fence";
+}
+
+static const char *get_timeline_name(struct dma_fence *fence)
+{
+	return "unbound";
+}
+
+static struct dma_fence_ops unbind_fence_ops = {
+	.get_driver_name = get_driver_name,
+	.get_timeline_name = get_timeline_name,
+};
+
+/**
+ * i915_vma_resource_init - Initialize a vma resource.
+ * @vma_res: The vma resource to initialize
+ *
+ * Initializes a vma resource allocated using i915_vma_resource_alloc().
+ * The reason for having separate allocate and initialize function is that
+ * initialization may need to be performed from under a lock where
+ * allocation is not allowed.
+ */
+void i915_vma_resource_init(struct i915_vma_resource *vma_res)
+{
+	spin_lock_init(&vma_res->lock);
+	dma_fence_init(&vma_res->unbind_fence, &unbind_fence_ops,
+		       &vma_res->lock, 0, 0);
+	refcount_set(&vma_res->hold_count, 1);
+}
+
+/**
+ * i915_vma_resource_alloc - Allocate a vma resource
+ *
+ * Return: A pointer to a cleared struct i915_vma_resource or
+ * a -ENOMEM error pointer if allocation fails.
+ */
+struct i915_vma_resource *i915_vma_resource_alloc(void)
+{
+	struct i915_vma_resource *vma_res =
+		kzalloc(sizeof(*vma_res), GFP_KERNEL);
+
+	return vma_res ? vma_res : ERR_PTR(-ENOMEM);
+}
+
+static void __i915_vma_resource_unhold(struct i915_vma_resource *vma_res)
+{
+	if (refcount_dec_and_test(&vma_res->hold_count))
+		dma_fence_signal(&vma_res->unbind_fence);
+}
+
+/**
+ * i915_vma_resource_unhold - Unhold the signaling of the vma resource unbind
+ * fence.
+ * @vma_res: The vma resource.
+ * @lockdep_cookie: The lockdep cookie returned from i915_vma_resource_hold.
+ *
+ * The function may leave a dma_fence critical section.
+ */
+void i915_vma_resource_unhold(struct i915_vma_resource *vma_res,
+			      bool lockdep_cookie)
+{
+	dma_fence_end_signalling(lockdep_cookie);
+
+	if (IS_ENABLED(CONFIG_PROVE_LOCKING)) {
+		unsigned long irq_flags;
+
+		/* Inefficient open-coded might_lock_irqsave() */
+		spin_lock_irqsave(&vma_res->lock, irq_flags);
+		spin_unlock_irqrestore(&vma_res->lock, irq_flags);
+	}
+
+	__i915_vma_resource_unhold(vma_res);
+}
+
+/**
+ * i915_vma_resource_hold - Hold the signaling of the vma resource unbind fence.
+ * @vma_res: The vma resource.
+ * @lockdep_cookie: Pointer to a bool serving as a lockdep cooke that should
+ * be given as an argument to the pairing i915_vma_resource_unhold.
+ *
+ * If returning true, the function enters a dma_fence signalling critical
+ * section if not in one already.
+ *
+ * Return: true if holding successful, false if not.
+ */
+bool i915_vma_resource_hold(struct i915_vma_resource *vma_res,
+			    bool *lockdep_cookie)
+{
+	bool held = refcount_inc_not_zero(&vma_res->hold_count);
+
+	if (held)
+		*lockdep_cookie = dma_fence_begin_signalling();
+
+	return held;
+}
+
+/**
+ * i915_vma_resource_unbind - Unbind a vma resource
+ * @vma_res: The vma resource to unbind.
+ *
+ * At this point this function does little more than publish a fence that
+ * signals immediately unless signaling is held back.
+ *
+ * Return: A refcounted pointer to a dma-fence that signals when unbinding is
+ * complete.
+ */
+struct dma_fence *
+i915_vma_resource_unbind(struct i915_vma_resource *vma_res)
+{
+	__i915_vma_resource_unhold(vma_res);
+	dma_fence_get(&vma_res->unbind_fence);
+	return &vma_res->unbind_fence;
+}
diff --git a/drivers/gpu/drm/i915/i915_vma_resource.h b/drivers/gpu/drm/i915/i915_vma_resource.h
new file mode 100644
index 000000000000..3353d32ceda8
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_vma_resource.h
@@ -0,0 +1,69 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __I915_VMA_RESOURCE_H__
+#define __I915_VMA_RESOURCE_H__
+
+#include <linux/dma-fence.h>
+#include <linux/refcount.h>
+
+/**
+ * struct i915_vma_resource - Snapshotted unbind information.
+ * @unbind_fence: Fence to mark unbinding complete. Note that this fence
+ * is not considered published until unbind is scheduled, and as such it
+ * is illegal to access this fence before scheduled unbind other than
+ * for refcounting.
+ * @lock: The @unbind_fence lock.
+ * @hold_count: Number of holders blocking the fence from finishing.
+ * The vma itself is keeping a hold, which is released when unbind
+ * is scheduled.
+ *
+ * The lifetime of a struct i915_vma_resource is from a binding request to
+ * the actual possible asynchronous unbind has completed.
+ */
+struct i915_vma_resource {
+	struct dma_fence unbind_fence;
+	/* See above for description of the lock. */
+	spinlock_t lock;
+	refcount_t hold_count;
+};
+
+bool i915_vma_resource_hold(struct i915_vma_resource *vma_res,
+			    bool *lockdep_cookie);
+
+void i915_vma_resource_unhold(struct i915_vma_resource *vma_res,
+			      bool lockdep_cookie);
+
+struct i915_vma_resource *i915_vma_resource_alloc(void);
+
+struct dma_fence *i915_vma_resource_unbind(struct i915_vma_resource *vma_res);
+
+/**
+ * i915_vma_resource_get - Take a reference on a vma resource
+ * @vma_res: The vma resource on which to take a reference.
+ *
+ * Return: The @vma_res pointer
+ */
+static inline struct i915_vma_resource
+*i915_vma_resource_get(struct i915_vma_resource *vma_res)
+{
+	dma_fence_get(&vma_res->unbind_fence);
+	return vma_res;
+}
+
+/**
+ * i915_vma_resource_put - Release a reference to a struct i915_vma_resource
+ * @vma_res: The resource
+ */
+static inline void i915_vma_resource_put(struct i915_vma_resource *vma_res)
+{
+	dma_fence_put(&vma_res->unbind_fence);
+}
+
+#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
+void i915_vma_resource_init(struct i915_vma_resource *vma_res);
+#endif
+
+#endif
diff --git a/drivers/gpu/drm/i915/i915_vma_snapshot.c b/drivers/gpu/drm/i915/i915_vma_snapshot.c
index 2949ceea9884..f7333c7a2f5e 100644
--- a/drivers/gpu/drm/i915/i915_vma_snapshot.c
+++ b/drivers/gpu/drm/i915/i915_vma_snapshot.c
@@ -3,6 +3,7 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include "i915_vma_resource.h"
 #include "i915_vma_snapshot.h"
 #include "i915_vma_types.h"
 #include "i915_vma.h"
@@ -35,7 +36,7 @@ void i915_vma_snapshot_init(struct i915_vma_snapshot *vsnap,
 		vsnap->pages_rsgt = i915_refct_sgt_get(vma->obj->mm.rsgt);
 	vsnap->mr = vma->obj->mm.region;
 	kref_init(&vsnap->kref);
-	vsnap->vma_resource = &vma->active;
+	vsnap->vma_resource = i915_vma_get_current_resource(vma);
 	vsnap->onstack = false;
 	vsnap->present = true;
 }
@@ -62,6 +63,7 @@ static void vma_snapshot_release(struct kref *ref)
 		container_of(ref, typeof(*vsnap), kref);
 
 	vsnap->present = false;
+	i915_vma_resource_put(vsnap->vma_resource);
 	if (vsnap->pages_rsgt)
 		i915_refct_sgt_put(vsnap->pages_rsgt);
 	if (!vsnap->onstack)
@@ -109,12 +111,7 @@ void i915_vma_snapshot_put_onstack(struct i915_vma_snapshot *vsnap)
 bool i915_vma_snapshot_resource_pin(struct i915_vma_snapshot *vsnap,
 				    bool *lockdep_cookie)
 {
-	bool pinned = i915_active_acquire_if_busy(vsnap->vma_resource);
-
-	if (pinned)
-		*lockdep_cookie = dma_fence_begin_signalling();
-
-	return pinned;
+	return i915_vma_resource_hold(vsnap->vma_resource, lockdep_cookie);
 }
 
 /**
@@ -128,7 +125,5 @@ bool i915_vma_snapshot_resource_pin(struct i915_vma_snapshot *vsnap,
 void i915_vma_snapshot_resource_unpin(struct i915_vma_snapshot *vsnap,
 				      bool lockdep_cookie)
 {
-	dma_fence_end_signalling(lockdep_cookie);
-
-	return i915_active_release(vsnap->vma_resource);
+	i915_vma_resource_unhold(vsnap->vma_resource, lockdep_cookie);
 }
diff --git a/drivers/gpu/drm/i915/i915_vma_snapshot.h b/drivers/gpu/drm/i915/i915_vma_snapshot.h
index 940581df4622..e74588dd676b 100644
--- a/drivers/gpu/drm/i915/i915_vma_snapshot.h
+++ b/drivers/gpu/drm/i915/i915_vma_snapshot.h
@@ -31,10 +31,7 @@ struct sg_table;
  * @pages_rsgt: The refcounted sg_table holding the reference for @pages if any.
  * @mr: The memory region pointed for the pages bound.
  * @kref: Reference for this structure.
- * @vma_resource: FIXME: A means to keep the unbind fence from signaling.
- * Temporarily while we have only sync unbinds, and still use the vma
- * active, we use that. With async unbinding we need a signaling refcount
- * for the unbind fence.
+ * @vma_resource: Pointer to the vma resource representing the vma binding.
  * @page_sizes: The vma GTT page sizes information.
  * @onstack: Whether the structure shouldn't be freed on final put.
  * @present: Whether the structure is present and initialized.
@@ -49,7 +46,7 @@ struct i915_vma_snapshot {
 	struct i915_refct_sgt *pages_rsgt;
 	struct intel_memory_region *mr;
 	struct kref kref;
-	struct i915_active *vma_resource;
+	struct i915_vma_resource *vma_resource;
 	u32 page_sizes;
 	bool onstack:1;
 	bool present:1;
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index ca575e129ced..ac1928d1dc11 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -95,6 +95,8 @@ enum i915_cache_level;
  *
  */
 
+struct i915_vma_resource;
+
 struct intel_remapped_plane_info {
 	/* in gtt pages */
 	u32 offset:31;
@@ -291,6 +293,9 @@ struct i915_vma {
 	struct list_head evict_link;
 
 	struct list_head closed_link;
+
+	/** The async vma resource. Protected by the vm_mutex */
+	struct i915_vma_resource *resource;
 };
 
 #endif
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 357ced0b88e7..19d4defad95c 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -32,6 +32,7 @@
 
 #include "i915_random.h"
 #include "i915_selftest.h"
+#include "i915_vma_resource.h"
 
 #include "mock_drm.h"
 #include "mock_gem_device.h"
@@ -1336,6 +1337,33 @@ static int igt_mock_drunk(void *arg)
 	return exercise_mock(ggtt->vm.i915, drunk_hole);
 }
 
+static int reserve_gtt_with_resource(struct i915_vma *vma, u64 offset)
+{
+	struct i915_address_space *vm = vma->vm;
+	struct i915_vma_resource *vma_res;
+	struct drm_i915_gem_object *obj = vma->obj;
+	int err;
+
+	vma_res = i915_vma_resource_alloc();
+	if (IS_ERR(vma_res))
+		return PTR_ERR(vma_res);
+
+	mutex_lock(&vm->mutex);
+	err = i915_gem_gtt_reserve(vm, &vma->node, obj->base.size,
+				   offset,
+				   obj->cache_level,
+				   0);
+	if (!err) {
+		i915_vma_resource_init(vma_res);
+		vma->resource = vma_res;
+	} else {
+		kfree(vma_res);
+	}
+	mutex_unlock(&vm->mutex);
+
+	return err;
+}
+
 static int igt_gtt_reserve(void *arg)
 {
 	struct i915_ggtt *ggtt = arg;
@@ -1370,20 +1398,13 @@ static int igt_gtt_reserve(void *arg)
 		}
 
 		list_add(&obj->st_link, &objects);
-
 		vma = i915_vma_instance(obj, &ggtt->vm, NULL);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
 			goto out;
 		}
 
-		mutex_lock(&ggtt->vm.mutex);
-		err = i915_gem_gtt_reserve(&ggtt->vm, &vma->node,
-					   obj->base.size,
-					   total,
-					   obj->cache_level,
-					   0);
-		mutex_unlock(&ggtt->vm.mutex);
+		err = reserve_gtt_with_resource(vma, total);
 		if (err) {
 			pr_err("i915_gem_gtt_reserve (pass 1) failed at %llu/%llu with err=%d\n",
 			       total, ggtt->vm.total, err);
@@ -1429,13 +1450,7 @@ static int igt_gtt_reserve(void *arg)
 			goto out;
 		}
 
-		mutex_lock(&ggtt->vm.mutex);
-		err = i915_gem_gtt_reserve(&ggtt->vm, &vma->node,
-					   obj->base.size,
-					   total,
-					   obj->cache_level,
-					   0);
-		mutex_unlock(&ggtt->vm.mutex);
+		err = reserve_gtt_with_resource(vma, total);
 		if (err) {
 			pr_err("i915_gem_gtt_reserve (pass 2) failed at %llu/%llu with err=%d\n",
 			       total, ggtt->vm.total, err);
@@ -1476,13 +1491,7 @@ static int igt_gtt_reserve(void *arg)
 					   2 * I915_GTT_PAGE_SIZE,
 					   I915_GTT_MIN_ALIGNMENT);
 
-		mutex_lock(&ggtt->vm.mutex);
-		err = i915_gem_gtt_reserve(&ggtt->vm, &vma->node,
-					   obj->base.size,
-					   offset,
-					   obj->cache_level,
-					   0);
-		mutex_unlock(&ggtt->vm.mutex);
+		err = reserve_gtt_with_resource(vma, offset);
 		if (err) {
 			pr_err("i915_gem_gtt_reserve (pass 3) failed at %llu/%llu with err=%d\n",
 			       total, ggtt->vm.total, err);
@@ -1509,6 +1518,31 @@ static int igt_gtt_reserve(void *arg)
 	return err;
 }
 
+static int insert_gtt_with_resource(struct i915_vma *vma)
+{
+	struct i915_address_space *vm = vma->vm;
+	struct i915_vma_resource *vma_res;
+	struct drm_i915_gem_object *obj = vma->obj;
+	int err;
+
+	vma_res = i915_vma_resource_alloc();
+	if (IS_ERR(vma_res))
+		return PTR_ERR(vma_res);
+
+	mutex_lock(&vm->mutex);
+	err = i915_gem_gtt_insert(vm, &vma->node, obj->base.size, 0,
+				  obj->cache_level, 0, vm->total, 0);
+	if (!err) {
+		i915_vma_resource_init(vma_res);
+		vma->resource = vma_res;
+	} else {
+		kfree(vma_res);
+	}
+	mutex_unlock(&vm->mutex);
+
+	return err;
+}
+
 static int igt_gtt_insert(void *arg)
 {
 	struct i915_ggtt *ggtt = arg;
@@ -1593,12 +1627,7 @@ static int igt_gtt_insert(void *arg)
 			goto out;
 		}
 
-		mutex_lock(&ggtt->vm.mutex);
-		err = i915_gem_gtt_insert(&ggtt->vm, &vma->node,
-					  obj->base.size, 0, obj->cache_level,
-					  0, ggtt->vm.total,
-					  0);
-		mutex_unlock(&ggtt->vm.mutex);
+		err = insert_gtt_with_resource(vma);
 		if (err == -ENOSPC) {
 			/* maxed out the GGTT space */
 			i915_gem_object_put(obj);
@@ -1653,12 +1682,7 @@ static int igt_gtt_insert(void *arg)
 			goto out;
 		}
 
-		mutex_lock(&ggtt->vm.mutex);
-		err = i915_gem_gtt_insert(&ggtt->vm, &vma->node,
-					  obj->base.size, 0, obj->cache_level,
-					  0, ggtt->vm.total,
-					  0);
-		mutex_unlock(&ggtt->vm.mutex);
+		err = insert_gtt_with_resource(vma);
 		if (err) {
 			pr_err("i915_gem_gtt_insert (pass 2) failed at %llu/%llu with err=%d\n",
 			       total, ggtt->vm.total, err);
@@ -1702,12 +1726,7 @@ static int igt_gtt_insert(void *arg)
 			goto out;
 		}
 
-		mutex_lock(&ggtt->vm.mutex);
-		err = i915_gem_gtt_insert(&ggtt->vm, &vma->node,
-					  obj->base.size, 0, obj->cache_level,
-					  0, ggtt->vm.total,
-					  0);
-		mutex_unlock(&ggtt->vm.mutex);
+		err = insert_gtt_with_resource(vma);
 		if (err) {
 			pr_err("i915_gem_gtt_insert (pass 3) failed at %llu/%llu with err=%d\n",
 			       total, ggtt->vm.total, err);
-- 
2.31.1

