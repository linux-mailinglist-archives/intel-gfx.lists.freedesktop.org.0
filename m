Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 026315ED4B8
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 08:21:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C5B10E29D;
	Wed, 28 Sep 2022 06:20:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04D9610E271;
 Wed, 28 Sep 2022 06:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664345989; x=1695881989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZFHg9iVcSlMNBBPhr34/hcuB4wrFj0ShVBJN7K4kh90=;
 b=MjD7pLElTBT0lYuyDqtuN965nJpIsxYmZLzF+E6e8HrAbypXgnez8GpN
 uuCdkpC0lUb5ylVTdwZAEfPQS75/4M24sj83qEYM4UtqMHVfq/A/HBgAr
 tZ9R5Zw7HtGb5YpQlQw3gqq+k1wREss0ZywMfzDWC6amsoUk2NIdl0kCc
 k3crnf2AaB08x+bJ7PmEu7zF5rkXWzUvZQIHwv92PxGQsH8hH8lqMcVmI
 g2z71dpGVWPvo4ApLZXsqKNCxfNUz1CECqXjd+7losh0nAeCH5mOTE/Uo
 kbDF09+kJkhzMsJH14XWylmfj+1JhBq+6sM6h+NjHVIliQY18Z30vT3X5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="365563688"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="365563688"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 23:19:48 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="866849220"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="866849220"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 27 Sep 2022 23:19:48 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 27 Sep 2022 23:19:17 -0700
Message-Id: <20220928061918.6340-16-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20220928061918.6340-1-niranjana.vishwanathapura@intel.com>
References: <20220928061918.6340-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/16] drm/i915/vm_bind: userptr dma-resv changes
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

Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer3.c   | 99 +++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   | 17 ++++
 .../drm/i915/gem/i915_gem_vm_bind_object.c    | 16 +++
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  2 +
 drivers/gpu/drm/i915/gt/intel_gtt.h           |  4 +
 drivers/gpu/drm/i915/i915_vma_types.h         |  2 +
 6 files changed, 140 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c
index 1aeeff5e8540..f9e6ae0c8b8b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c
@@ -19,6 +19,7 @@
 #include "i915_gem_vm_bind.h"
 #include "i915_trace.h"
 
+#define __EXEC3_USERPTR_USED		BIT_ULL(34)
 #define __EXEC3_HAS_PIN			BIT_ULL(33)
 #define __EXEC3_ENGINE_PINNED		BIT_ULL(32)
 #define __EXEC3_INTERNAL_FLAGS		(~0ull << 32)
@@ -141,6 +142,21 @@ static void eb_scoop_unbound_vma_all(struct i915_address_space *vm)
 {
 	struct i915_vma *vma, *vn;
 
+#ifdef CONFIG_MMU_NOTIFIER
+	/**
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
 	/**
 	 * Move all unbound vmas back into vm_bind_list so that they are
 	 * revalidated.
@@ -154,10 +170,47 @@ static void eb_scoop_unbound_vma_all(struct i915_address_space *vm)
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
+		/**
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
 	unsigned int i, current_batch = 0;
 	struct i915_vma *vma;
+	int err = 0;
 
 	for (i = 0; i < eb->num_batches; i++) {
 		vma = eb_find_vma(eb->context->vm, eb->batch_addresses[i]);
@@ -170,6 +223,10 @@ static int eb_lookup_vma_all(struct i915_execbuffer *eb)
 
 	eb_scoop_unbound_vma_all(eb->context->vm);
 
+	err = eb_lookup_persistent_userptr_vmas(eb);
+	if (err)
+		return err;
+
 	return 0;
 }
 
@@ -327,15 +384,57 @@ static void eb_move_all_persistent_vma_to_active(struct i915_execbuffer *eb)
 
 static int eb_move_to_gpu(struct i915_execbuffer *eb)
 {
+	int err = 0;
+
 	lockdep_assert_held(&eb->context->vm->vm_bind_lock);
 	assert_object_held(eb->context->vm->root_obj);
 
 	eb_move_all_persistent_vma_to_active(eb);
 
+#ifdef CONFIG_MMU_NOTIFIER
+	/* Check for further userptr invalidations */
+	spin_lock(&eb->context->vm->userptr_invalidated_lock);
+	if (!list_empty(&eb->context->vm->userptr_invalidated_list))
+		err = -EAGAIN;
+	spin_unlock(&eb->context->vm->userptr_invalidated_lock);
+
+	if (!err && (eb->args->flags & __EXEC3_USERPTR_USED)) {
+		struct i915_vma *vma;
+
+		lockdep_assert_held(&eb->context->vm->vm_bind_lock);
+		assert_object_held(eb->context->vm->root_obj);
+
+		read_lock(&eb->i915->mm.notifier_lock);
+		list_for_each_entry(vma, &eb->context->vm->vm_bind_list,
+				    vm_bind_link) {
+			if (!i915_gem_object_is_userptr(vma->obj))
+				continue;
+
+			err = i915_gem_object_userptr_submit_done(vma->obj);
+			if (err)
+				break;
+		}
+
+		read_unlock(&eb->i915->mm.notifier_lock);
+	}
+#endif
+
+	if (unlikely(err))
+		goto err_skip;
+
 	/* Unconditionally flush any chipset caches (for streaming writes). */
 	intel_gt_chipset_flush(eb->gt);
 
 	return 0;
+
+err_skip:
+	for_each_batch_create_order(eb) {
+		if (!eb->requests[i])
+			break;
+
+		i915_request_set_error_once(eb->requests[i], err);
+	}
+	return err;
 }
 
 static int eb_request_submit(struct i915_execbuffer *eb,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 8423df021b71..c0869f102f28 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -63,6 +63,7 @@ static bool i915_gem_userptr_invalidate(struct mmu_interval_notifier *mni,
 {
 	struct drm_i915_gem_object *obj = container_of(mni, struct drm_i915_gem_object, userptr.notifier);
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct i915_vma *vma;
 	long r;
 
 	if (!mmu_notifier_range_blockable(range))
@@ -85,6 +86,22 @@ static bool i915_gem_userptr_invalidate(struct mmu_interval_notifier *mni,
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
+		list_add_tail(&vma->userptr_invalidated_link,
+			      &vma->vm->userptr_invalidated_list);
+		spin_unlock(&vma->vm->userptr_invalidated_lock);
+	}
+	spin_unlock(&obj->vma.lock);
+
 	/* we will unbind on next submission, still have userptr pins */
 	r = dma_resv_wait_timeout(obj->base.resv, DMA_RESV_USAGE_BOOKKEEP, false,
 				  MAX_SCHEDULE_TIMEOUT);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
index d5c222aa3902..f69dcd1ce390 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_vm_bind_object.c
@@ -288,6 +288,12 @@ static int i915_gem_vm_bind_obj(struct i915_address_space *vm,
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
@@ -319,6 +325,16 @@ static int i915_gem_vm_bind_obj(struct i915_address_space *vm,
 		/* Make it evictable */
 		__i915_vma_unpin(vma);
 
+#ifdef CONFIG_MMU_NOTIFIER
+		if (i915_gem_object_is_userptr(obj)) {
+			read_lock(&vm->i915->mm.notifier_lock);
+			ret = i915_gem_object_userptr_submit_done(obj);
+			read_unlock(&vm->i915->mm.notifier_lock);
+			if (ret)
+				continue;
+		}
+#endif
+
 		list_add_tail(&vma->vm_bind_link, &vm->vm_bound_list);
 		i915_vm_bind_it_insert(vma, &vm->va);
 		if (!obj->priv_root)
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 6db31197fa87..401202391649 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -298,6 +298,8 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	GEM_BUG_ON(IS_ERR(vm->root_obj));
 	INIT_LIST_HEAD(&vm->vm_rebind_list);
 	spin_lock_init(&vm->vm_rebind_lock);
+	spin_lock_init(&vm->userptr_invalidated_lock);
+	INIT_LIST_HEAD(&vm->userptr_invalidated_list);
 }
 
 void *__px_vaddr(struct drm_i915_gem_object *p)
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index b73d35b4e05d..c3069ee42b5a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -277,6 +277,10 @@ struct i915_address_space {
 	struct list_head vm_rebind_list;
 	/* @vm_rebind_lock: protects vm_rebound_list */
 	spinlock_t vm_rebind_lock;
+	/* @userptr_invalidated_list: list of invalidated userptr vmas */
+	struct list_head userptr_invalidated_list;
+	/* @userptr_invalidated_lock: protects userptr_invalidated_list */
+	spinlock_t userptr_invalidated_lock;
 	/* @va: tree of persistent vmas */
 	struct rb_root_cached va;
 	struct list_head non_priv_vm_bind_list;
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 5b0f04bccb0a..cc29b36afc53 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -310,6 +310,8 @@ struct i915_vma {
 	struct list_head non_priv_vm_bind_link;
 	/* @vm_rebind_link: link to vm_rebind_list and protected by vm_rebind_lock */
 	struct list_head vm_rebind_link; /* Link in vm_rebind_list */
+	/*@userptr_invalidated_link: link to the vm->userptr_invalidated_list */
+	struct list_head userptr_invalidated_link;
 
 	/** Timeline fence for vm_bind completion notification */
 	struct {
-- 
2.21.0.rc0.32.g243a4c7e27

