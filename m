Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 619106714DA
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 08:17:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A00F310E6D4;
	Wed, 18 Jan 2023 07:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAA6F10E6B4;
 Wed, 18 Jan 2023 07:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674026176; x=1705562176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+Afro/9Mk4mffmQsSJrUwfkSsW8+jGbiEQPqsAJojAY=;
 b=eDo6guHi28KGGi/hxUgxlbA82BKR+PemAZyvwW92sPeWHSwsOyP3DVc0
 zwMK9Q4gXfqgmzx+8kyxb82mu1Wt+rH5jNBP7ymvyF9AGHbHNZn0KWGNO
 5oJojnqZKv0rwGsWg4NWJXjbr6bIm08RGz5JejzIlbcSrXVshHRD5sHCD
 v7IPDNtx6J4LEZlBrcN47wVcf07lkcoG13inSq17LPTLskKMFMunbUPRl
 aW26eIReUDJui4HV2YjoOzCJ7U9WpUX0IvBvdKbvxsA5ET/Erulc4QBtl
 y7keRa1bjZK3jNISLv1Uao2GLHx6VUEQBqA9ei7h5n89Ohjmqg8qjHF69 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="308482074"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="308482074"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 23:16:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="661610018"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="661610018"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 23:16:15 -0800
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 17 Jan 2023 23:16:03 -0800
Message-Id: <20230118071609.17572-18-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20230118071609.17572-1-niranjana.vishwanathapura@intel.com>
References: <20230118071609.17572-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 17/23] drm/i915/vm_bind: userptr dma-resv
 changes
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
Cc: paulo.r.zanoni@intel.com, jani.nikula@intel.com, thomas.hellstrom@intel.com,
 matthew.auld@intel.com, daniel.vetter@intel.com, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For persistent (vm_bind) vmas of userptr BOs, handle the user
page pinning by using the i915_gem_object_userptr_submit_init()
/done() functions

v2: Do not double add vma to vm->userptr_invalidated_list
v3: Initialize vma->userptr_invalidated_link

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer3.c   | 84 ++++++++++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   | 19 +++++
 .../drm/i915/gem/i915_gem_vm_bind_object.c    | 15 ++++
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  2 +
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  4 +
 drivers/gpu/drm/i915/i915_vma.c               |  1 +
 drivers/gpu/drm/i915/i915_vma_types.h         |  2 +
 7 files changed, 125 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c
index 913b1f8bda9f..a1aee477e2df 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c
@@ -20,6 +20,7 @@
 #include "i915_gem_vm_bind.h"
 #include "i915_trace.h"
 
+#define __EXEC3_USERPTR_USED		BIT_ULL(34)
 #define __EXEC3_HAS_PIN			BIT_ULL(33)
 #define __EXEC3_ENGINE_PINNED		BIT_ULL(32)
 #define __EXEC3_INTERNAL_FLAGS		(~0ull << 32)
@@ -144,7 +145,22 @@ static void eb_scoop_unbound_vma_all(struct i915_address_space *vm)
 {
 	struct i915_vma *vma, *vn;
 
-	/**
+#ifdef CONFIG_MMU_NOTIFIER
+	/*
+	 * Move all invalidated userptr vmas back into vm_bind_list so that
+	 * they are looked up and revalidated.
+	 */
+	spin_lock(&vm->userptr_invalidated_lock);
+	list_for_each_entry_safe(vma, vn, &vm->userptr_invalidated_list,
+				 userptr_invalidated_link) {
+		list_del_init(&vma->userptr_invalidated_link);
+		if (!list_empty(&vma->vm_bind_link))
+			list_move_tail(&vma->vm_bind_link, &vm->vm_bind_list);
+	}
+	spin_unlock(&vm->userptr_invalidated_lock);
+#endif
+
+	/*
 	 * Move all unbound vmas back into vm_bind_list so that they are
 	 * revalidated.
 	 */
@@ -157,10 +173,47 @@ static void eb_scoop_unbound_vma_all(struct i915_address_space *vm)
 	spin_unlock(&vm->vm_rebind_lock);
 }
 
+static int eb_lookup_persistent_userptr_vmas(struct i915_execbuffer *eb)
+{
+	struct i915_address_space *vm = eb->context->vm;
+	struct i915_vma *last_vma = NULL;
+	struct i915_vma *vma;
+	int err;
+
+	lockdep_assert_held(&vm->vm_bind_lock);
+
+	list_for_each_entry(vma, &vm->vm_bind_list, vm_bind_link) {
+		if (!i915_gem_object_is_userptr(vma->obj))
+			continue;
+
+		err = i915_gem_object_userptr_submit_init(vma->obj);
+		if (err)
+			return err;
+
+		/*
+		 * The above submit_init() call does the object unbind and
+		 * hence adds vma into vm_rebind_list. Remove it from that
+		 * list as it is already scooped for revalidation.
+		 */
+		spin_lock(&vm->vm_rebind_lock);
+		if (!list_empty(&vma->vm_rebind_link))
+			list_del_init(&vma->vm_rebind_link);
+		spin_unlock(&vm->vm_rebind_lock);
+
+		last_vma = vma;
+	}
+
+	if (last_vma)
+		eb->args->flags |= __EXEC3_USERPTR_USED;
+
+	return 0;
+}
+
 static int eb_lookup_vma_all(struct i915_execbuffer *eb)
 {
 	struct i915_vma *vma;
 	unsigned int i;
+	int err = 0;
 
 	for (i = 0; i < eb->num_batches; i++) {
 		vma = eb_find_vma(eb->context->vm, eb->batch_addresses[i]);
@@ -172,6 +225,10 @@ static int eb_lookup_vma_all(struct i915_execbuffer *eb)
 
 	eb_scoop_unbound_vma_all(eb->context->vm);
 
+	err = eb_lookup_persistent_userptr_vmas(eb);
+	if (err)
+		return err;
+
 	return 0;
 }
 
@@ -344,6 +401,29 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 		}
 	}
 
+#ifdef CONFIG_MMU_NOTIFIER
+	/* Check for further userptr invalidations */
+	spin_lock(&vm->userptr_invalidated_lock);
+	if (!list_empty(&vm->userptr_invalidated_list))
+		err = -EAGAIN;
+	spin_unlock(&vm->userptr_invalidated_lock);
+
+	if (!err && (eb->args->flags & __EXEC3_USERPTR_USED)) {
+		read_lock(&eb->i915->mm.notifier_lock);
+		list_for_each_entry(vma, &vm->vm_bind_list, vm_bind_link) {
+			if (!i915_gem_object_is_userptr(vma->obj))
+				continue;
+
+			err = i915_gem_object_userptr_submit_done(vma->obj);
+			if (err)
+				break;
+		}
+		read_unlock(&eb->i915->mm.notifier_lock);
+	}
+#endif
+	if (unlikely(err))
+		goto err_skip;
+
 	/* Unconditionally flush any chipset caches (for streaming writes). */
 	intel_gt_chipset_flush(eb->gt);
 
@@ -692,7 +772,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (err)
 		goto err_validate;
 
-	/**
+	/*
 	 * No object unbinds possible once the objects are locked. So,
 	 * check for any unbinds here, which needs to be scooped up.
 	 *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 9348b1804d53..5ce75d533b45 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -63,6 +63,7 @@ static bool i915_gem_userptr_invalidate(struct mmu_interval_notifier *mni,
 {
 	struct drm_i915_gem_object *obj = container_of(mni, struct drm_i915_gem_object, userptr.notifier);
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct i915_vma *vma;
 	long r;
 
 	if (!mmu_notifier_range_blockable(range))
@@ -85,6 +86,24 @@ static bool i915_gem_userptr_invalidate(struct mmu_interval_notifier *mni,
 	if (current->flags & PF_EXITING)
 		return true;
 
+	/**
+	 * Add persistent vmas into userptr_invalidated list for relookup
+	 * and revalidation.
+	 */
+	spin_lock(&obj->vma.lock);
+	list_for_each_entry(vma, &obj->vma.list, obj_link) {
+		if (!i915_vma_is_persistent(vma))
+			continue;
+
+		spin_lock(&vma->vm->userptr_invalidated_lock);
+		if (list_empty(&vma->userptr_invalidated_link) &&
+		    !i915_vma_is_purged(vma))
+			list_add_tail(&vma->userptr_invalidated_link,
+				      &vma->vm->userptr_invalidated_list);
+		spin_unlock(&vma->vm->userptr_invalidated_lock);
+	}
+	spin_unlock(&obj->vma.lock);
+
 	/* we will unbind on next submission, still have userptr pins */
 	r = dma_resv_wait_timeout(obj->base.resv, DMA_RESV_USAGE_BOOKKEEP, false,
 				  MAX_SCHEDULE_TIMEOUT);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
index fd1d82ce99e6..1cc0b8a4e0e7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
@@ -306,6 +306,12 @@ static int i915_gem_vm_bind_obj(struct i915_address_space *vm,
 		goto put_obj;
 	}
 
+	if (i915_gem_object_is_userptr(obj)) {
+		ret = i915_gem_object_userptr_submit_init(obj);
+		if (ret)
+			goto put_obj;
+	}
+
 	ret = mutex_lock_interruptible(&vm->vm_bind_lock);
 	if (ret)
 		goto put_obj;
@@ -335,6 +341,15 @@ static int i915_gem_vm_bind_obj(struct i915_address_space *vm,
 		if (ret)
 			continue;
 
+#ifdef CONFIG_MMU_NOTIFIER
+		if (i915_gem_object_is_userptr(obj)) {
+			read_lock(&vm->i915->mm.notifier_lock);
+			ret = i915_gem_object_userptr_submit_done(obj);
+			read_unlock(&vm->i915->mm.notifier_lock);
+			if (ret)
+				continue;
+		}
+#endif
 		/* If out fence is not requested, wait for bind to complete */
 		if (!(va->fence.flags & I915_TIMELINE_FENCE_SIGNAL)) {
 			ret = i915_vma_wait_for_bind(vma);
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 4f91857dca46..7045b2114df6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -293,6 +293,8 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	INIT_LIST_HEAD(&vm->non_priv_vm_bind_list);
 	INIT_LIST_HEAD(&vm->vm_rebind_list);
 	spin_lock_init(&vm->vm_rebind_lock);
+	spin_lock_init(&vm->userptr_invalidated_lock);
+	INIT_LIST_HEAD(&vm->userptr_invalidated_list);
 }
 
 void *__px_vaddr(struct drm_i915_gem_object *p)
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index dbe6792df3e5..620b4e020a9f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -270,6 +270,10 @@ struct i915_address_space {
 	struct list_head vm_rebind_list;
 	/** @vm_rebind_lock: protects vm_rebound_list */
 	spinlock_t vm_rebind_lock;
+	/** @userptr_invalidated_list: list of invalidated userptr vmas */
+	struct list_head userptr_invalidated_list;
+	/** @userptr_invalidated_lock: protects userptr_invalidated_list */
+	spinlock_t userptr_invalidated_lock;
 	/** @va: tree of persistent vmas */
 	struct rb_root_cached va;
 	/** @non_priv_vm_bind_list: list of non-private object mappings */
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 8fc93f20f70d..59462812ef4e 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -245,6 +245,7 @@ vma_create(struct drm_i915_gem_object *obj,
 	INIT_LIST_HEAD(&vma->vm_bind_link);
 	INIT_LIST_HEAD(&vma->non_priv_vm_bind_link);
 	INIT_LIST_HEAD(&vma->vm_rebind_link);
+	INIT_LIST_HEAD(&vma->userptr_invalidated_link);
 	return vma;
 
 err_unlock:
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 4c386473923a..89f9854a6f69 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -308,6 +308,8 @@ struct i915_vma {
 	struct list_head non_priv_vm_bind_link;
 	/** @vm_rebind_link: link to vm_rebind_list and protected by vm_rebind_lock */
 	struct list_head vm_rebind_link; /* Link in vm_rebind_list */
+	/** @userptr_invalidated_link: link to the vm->userptr_invalidated_list */
+	struct list_head userptr_invalidated_link;
 
 	/** Timeline fence for vm_bind completion notification */
 	struct {
-- 
2.21.0.rc0.32.g243a4c7e27

