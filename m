Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 862EF395F6B
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 16:09:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B41146E4F8;
	Mon, 31 May 2021 14:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A90356E4F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 May 2021 14:09:48 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 May 2021 16:09:45 +0200
Message-Id: <20210531140945.305041-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Only set bind_async_flags when
 concurrent access wa is not active, v2.
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

We need to make the BSW workaround actually work. We correctly fixed
the mutex nesting, but forgot to kill the worker.

The worker is killed by clearing async_flags, and just running bind_vma
synchronously. This still needs the stash, because we cannot allocate
and pin with vm->mutex already held.

Changes since v1:
- Fix null pointer dereference when we forget to pass the work stash,
  it's still required to prealloc all on affected platforms.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c | 4 +++-
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 4 +++-
 drivers/gpu/drm/i915/i915_vma.c      | 4 ++--
 3 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 1aee5e6b1b23..de3aa79b788e 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -433,7 +433,9 @@ struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt)
 	ppgtt->base.vm.pd_shift = ilog2(SZ_4K * SZ_4K / sizeof(gen6_pte_t));
 	ppgtt->base.vm.top = 1;
 
-	ppgtt->base.vm.bind_async_flags = I915_VMA_LOCAL_BIND;
+	if (!intel_vm_no_concurrent_access_wa(gt->i915))
+		ppgtt->base.vm.bind_async_flags = I915_VMA_LOCAL_BIND;
+
 	ppgtt->base.vm.allocate_va_range = gen6_alloc_va_range;
 	ppgtt->base.vm.clear_range = gen6_ppgtt_clear_range;
 	ppgtt->base.vm.insert_entries = gen6_ppgtt_insert_entries;
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index e3a8924d2286..aa58b0e48ae1 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -732,7 +732,9 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt)
 			goto err_free_pd;
 	}
 
-	ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
+	if (!intel_vm_no_concurrent_access_wa(gt->i915))
+		ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
+
 	ppgtt->vm.insert_entries = gen8_ppgtt_insert;
 	ppgtt->vm.allocate_va_range = gen8_ppgtt_alloc;
 	ppgtt->vm.clear_range = gen8_ppgtt_clear;
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index b319fd3f91cc..d550ee911e68 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -436,7 +436,7 @@ int i915_vma_bind(struct i915_vma *vma,
 			work->pinned = i915_gem_object_get(vma->obj);
 		}
 	} else {
-		vma->ops->bind_vma(vma->vm, NULL, vma, cache_level, bind_flags);
+		vma->ops->bind_vma(vma->vm, work ? &work->stash : NULL, vma, cache_level, bind_flags);
 	}
 
 	atomic_or(bind_flags, &vma->flags);
@@ -895,7 +895,7 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	if (flags & PIN_GLOBAL)
 		wakeref = intel_runtime_pm_get(&vma->vm->i915->runtime_pm);
 
-	if (flags & vma->vm->bind_async_flags) {
+	if ((flags & vma->vm->bind_async_flags) || vma->vm->allocate_va_range) {
 		/* lock VM */
 		err = i915_vm_lock_objects(vma->vm, ww);
 		if (err)
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
