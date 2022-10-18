Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 157AC60256E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 09:19:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4213010EEC1;
	Tue, 18 Oct 2022 07:17:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF77D10EB7B;
 Tue, 18 Oct 2022 07:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666077408; x=1697613408;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HjBjAJxmqPvi9hqrQ7PfFLSXVAB3Tci8KDaF9YZVBK4=;
 b=BJVt7TemZNr/596ZP1YBD4qceQHveoizQFvCXkEet+M4mj+daa/2RS4Y
 L48z2lRPxmIQoXMowCelsqp19wBC2Yiv3KVKUhl2+VcyoC6uB4qIdkhfj
 QC6S8mklSi4BAZ3souYiUZqS5lppTrMv2FWLZxk8axOAQjaw7XIALHC69
 PbGyhGuE41YGQJwj06AQChyK0/+znGR7PlHP+4pFwZN3ecpmSksRFFrox
 H4DidqB8TEGp8KYioNb/jo+Pl89j/imOiQArlANRqg/IQmV03IAztHvZL
 gZhWDGkRaZknGp7Db+Nyp9iC7rBCP3ptCUsTulGBlBYEhNjwcbExN51gO g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="370221360"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="370221360"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 00:16:41 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="661783511"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="661783511"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 00:16:41 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 18 Oct 2022 00:16:28 -0700
Message-Id: <20221018071630.3831-16-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20221018071630.3831-1-niranjana.vishwanathapura@intel.com>
References: <20221018071630.3831-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 15/17] drm/i915/vm_bind: Handle persistent
 vmas in execbuf3
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

Handle persistent (VM_BIND) mappings during the request submission
in the execbuf3 path.

v2: Ensure requests wait for bindings to complete.
v3: Remove short term pinning with PIN_VALIDATE flag.
    Individualize fences before adding to dma_resv obj.

Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer3.c   | 208 +++++++++++++++++-
 1 file changed, 207 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c
index a9b4cc44bf66..8120e4c6b7da 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer3.c
@@ -3,6 +3,7 @@
  * Copyright © 2022 Intel Corporation
  */
 
+#include <linux/dma-fence-array.h>
 #include <linux/dma-resv.h>
 #include <linux/uaccess.h>
 
@@ -19,6 +20,7 @@
 #include "i915_gem_vm_bind.h"
 #include "i915_trace.h"
 
+#define __EXEC3_HAS_PIN			BIT_ULL(33)
 #define __EXEC3_ENGINE_PINNED		BIT_ULL(32)
 #define __EXEC3_INTERNAL_FLAGS		(~0ull << 32)
 
@@ -42,7 +44,9 @@
  * execlist. Hence, no support for implicit sync.
  *
  * The new execbuf3 ioctl only works in VM_BIND mode and the VM_BIND mode only
- * works with execbuf3 ioctl for submission.
+ * works with execbuf3 ioctl for submission. All BOs mapped on that VM (through
+ * VM_BIND call) at the time of execbuf3 call are deemed required for that
+ * submission.
  *
  * The execbuf3 ioctl directly specifies the batch addresses instead of as
  * object handles as in execbuf2 ioctl. The execbuf3 ioctl will also not
@@ -58,6 +62,13 @@
  * So, a lot of code supporting execbuf2 ioctl, like relocations, VA evictions,
  * vma lookup table, implicit sync, vma active reference tracking etc., are not
  * applicable for execbuf3 ioctl.
+ *
+ * During each execbuf submission, request fence is added to all VM_BIND mapped
+ * objects with DMA_RESV_USAGE_BOOKKEEP. The DMA_RESV_USAGE_BOOKKEEP usage will
+ * prevent over sync (See enum dma_resv_usage). Note that DRM_I915_GEM_WAIT and
+ * DRM_I915_GEM_BUSY ioctls do not check for DMA_RESV_USAGE_BOOKKEEP usage and
+ * hence should not be used for end of batch check. Instead, the execbuf3
+ * timeline out fence should be used for end of batch check.
  */
 
 /**
@@ -127,6 +138,23 @@ eb_find_vma(struct i915_address_space *vm, u64 addr)
 	return i915_gem_vm_bind_lookup_vma(vm, va);
 }
 
+static void eb_scoop_unbound_vma_all(struct i915_address_space *vm)
+{
+	struct i915_vma *vma, *vn;
+
+	/**
+	 * Move all unbound vmas back into vm_bind_list so that they are
+	 * revalidated.
+	 */
+	spin_lock(&vm->vm_rebind_lock);
+	list_for_each_entry_safe(vma, vn, &vm->vm_rebind_list, vm_rebind_link) {
+		list_del_init(&vma->vm_rebind_link);
+		if (!list_empty(&vma->vm_bind_link))
+			list_move_tail(&vma->vm_bind_link, &vm->vm_bind_list);
+	}
+	spin_unlock(&vm->vm_rebind_lock);
+}
+
 static int eb_lookup_vma_all(struct i915_execbuffer *eb)
 {
 	unsigned int i, current_batch = 0;
@@ -141,14 +169,108 @@ static int eb_lookup_vma_all(struct i915_execbuffer *eb)
 		++current_batch;
 	}
 
+	eb_scoop_unbound_vma_all(eb->context->vm);
+
+	return 0;
+}
+
+static int eb_lock_vma_all(struct i915_execbuffer *eb)
+{
+	struct i915_address_space *vm = eb->context->vm;
+	struct i915_vma *vma;
+	int err;
+
+	err = i915_gem_object_lock(eb->context->vm->root_obj, &eb->ww);
+	if (err)
+		return err;
+
+	list_for_each_entry(vma, &vm->non_priv_vm_bind_list,
+			    non_priv_vm_bind_link) {
+		err = i915_gem_object_lock(vma->obj, &eb->ww);
+		if (err)
+			return err;
+	}
+
 	return 0;
 }
 
+static void eb_release_persistent_vma_all(struct i915_execbuffer *eb)
+{
+	struct i915_address_space *vm = eb->context->vm;
+	struct i915_vma *vma, *vn;
+
+	lockdep_assert_held(&vm->vm_bind_lock);
+
+	if (!(eb->args->flags & __EXEC3_HAS_PIN))
+		return;
+
+	assert_object_held(vm->root_obj);
+
+	list_for_each_entry_safe(vma, vn, &vm->vm_bind_list, vm_bind_link)
+		if (i915_vma_verify_bind_complete(vma))
+			list_move_tail(&vma->vm_bind_link, &vm->vm_bound_list);
+
+	eb->args->flags &= ~__EXEC3_HAS_PIN;
+}
+
 static void eb_release_vma_all(struct i915_execbuffer *eb)
 {
+	eb_release_persistent_vma_all(eb);
 	eb_unpin_engine(eb);
 }
 
+static int eb_reserve_fence_for_persistent_vma_all(struct i915_execbuffer *eb)
+{
+	struct i915_address_space *vm = eb->context->vm;
+	u64 num_fences = 1;
+	struct i915_vma *vma;
+	int ret;
+
+	/* Reserve enough slots to accommodate composite fences */
+	if (intel_context_is_parallel(eb->context))
+		num_fences = eb->num_batches;
+
+	ret = dma_resv_reserve_fences(vm->root_obj->base.resv, num_fences);
+	if (ret)
+		return ret;
+
+	list_for_each_entry(vma, &vm->non_priv_vm_bind_list,
+			    non_priv_vm_bind_link) {
+		ret = dma_resv_reserve_fences(vma->obj->base.resv, num_fences);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int eb_validate_persistent_vma_all(struct i915_execbuffer *eb)
+{
+	struct i915_address_space *vm = eb->context->vm;
+	struct i915_vma *vma;
+	int ret = 0;
+
+	lockdep_assert_held(&vm->vm_bind_lock);
+	assert_object_held(vm->root_obj);
+
+	ret = eb_reserve_fence_for_persistent_vma_all(eb);
+	if (ret)
+		return ret;
+
+	list_for_each_entry(vma, &vm->vm_bind_list, vm_bind_link) {
+		u64 pin_flags = vma->start | PIN_OFFSET_FIXED |
+				PIN_USER | PIN_VALIDATE;
+
+		ret = i915_vma_pin_ww(vma, &eb->ww, 0, 0, pin_flags);
+		if (ret)
+			break;
+
+		eb->args->flags |= __EXEC3_HAS_PIN;
+	}
+
+	return ret;
+}
+
 /*
  * Using two helper loops for the order of which requests / batches are created
  * and added the to backend. Requests are created in order from the parent to
@@ -160,13 +282,80 @@ static void eb_release_vma_all(struct i915_execbuffer *eb)
  */
 #define for_each_batch_create_order(_eb) \
 	for (unsigned int i = 0; i < (_eb)->num_batches; ++i)
+#define for_each_batch_add_order(_eb) \
+	for (int i = (_eb)->num_batches - 1; i >= 0; --i)
+
+static void __eb_persistent_add_shared_fence(struct drm_i915_gem_object *obj,
+					     struct dma_fence *fence)
+{
+	struct dma_fence *curr;
+	int idx;
+
+	dma_fence_array_for_each(curr, idx, fence)
+		dma_resv_add_fence(obj->base.resv, curr,
+				   DMA_RESV_USAGE_BOOKKEEP);
+
+	obj->write_domain = 0;
+	obj->read_domains |= I915_GEM_GPU_DOMAINS;
+	obj->mm.dirty = true;
+}
+
+static void eb_persistent_add_shared_fence(struct i915_execbuffer *eb)
+{
+	struct i915_address_space *vm = eb->context->vm;
+	struct dma_fence *fence;
+	struct i915_vma *vma;
+
+	fence = eb->composite_fence ? eb->composite_fence :
+		&eb->requests[0]->fence;
+
+	__eb_persistent_add_shared_fence(vm->root_obj, fence);
+	list_for_each_entry(vma, &vm->non_priv_vm_bind_list,
+			    non_priv_vm_bind_link)
+		__eb_persistent_add_shared_fence(vma->obj, fence);
+}
+
+static void eb_move_all_persistent_vma_to_active(struct i915_execbuffer *eb)
+{
+	/* Add fence to BOs dma-resv fence list */
+	eb_persistent_add_shared_fence(eb);
+}
 
 static int eb_move_to_gpu(struct i915_execbuffer *eb)
 {
+	struct i915_address_space *vm = eb->context->vm;
+	struct i915_vma *vma;
+	int err = 0;
+
+	lockdep_assert_held(&vm->vm_bind_lock);
+	assert_object_held(vm->root_obj);
+
+	eb_move_all_persistent_vma_to_active(eb);
+
+	list_for_each_entry(vma, &vm->vm_bind_list, vm_bind_link) {
+		for_each_batch_add_order(eb) {
+			if (!eb->requests[i])
+				continue;
+
+			err = i915_request_await_bind(eb->requests[i], vma);
+			if (err)
+				goto err_skip;
+		}
+	}
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
@@ -483,6 +672,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 
 	mutex_lock(&eb.context->vm->vm_bind_lock);
 
+lookup_vmas:
 	err = eb_lookup_vma_all(&eb);
 	if (err) {
 		eb_release_vma_all(&eb);
@@ -499,6 +689,22 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	/* only throttle once, even if we didn't need to throttle */
 	throttle = false;
 
+	err = eb_lock_vma_all(&eb);
+	if (err)
+		goto err_validate;
+
+	/**
+	 * No object unbinds possible once the objects are locked. So,
+	 * check for any unbinds here, which needs to be scooped up.
+	 */
+	if (!list_empty(&eb.context->vm->vm_rebind_list)) {
+		eb_release_vma_all(&eb);
+		i915_gem_ww_ctx_fini(&eb.ww);
+		goto lookup_vmas;
+	}
+
+	err = eb_validate_persistent_vma_all(&eb);
+
 err_validate:
 	if (err == -EDEADLK) {
 		eb_release_vma_all(&eb);
-- 
2.21.0.rc0.32.g243a4c7e27

