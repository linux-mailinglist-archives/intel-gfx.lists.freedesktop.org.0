Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A34F136FAE
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 15:44:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013C16EA26;
	Fri, 10 Jan 2020 14:44:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75AE76EA26
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 14:44:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19835489-1500050 
 for multiple; Fri, 10 Jan 2020 14:44:18 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 14:44:18 +0000
Message-Id: <20200110144418.1415639-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Hold rpm wakeref before taking
 ggtt->vm.mutex
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to hold the runtime-pm wakeref to update the global PTEs (as
they exist behind a PCI BAR). However, some systems invoke ACPI during
runtime resume and so require allocations, which is verboten inside the
vm->mutex. Ergo, we must not use intel_runtime_pm_get() inside the
mutex, but lift the call outside.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/958
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 28 +++++-----------------------
 drivers/gpu/drm/i915/i915_vma.c      | 13 +++++++++++++
 2 files changed, 18 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 795cd267e28e..6474c6190d3d 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -430,9 +430,7 @@ static int ggtt_bind_vma(struct i915_vma *vma,
 			 enum i915_cache_level cache_level,
 			 u32 flags)
 {
-	struct drm_i915_private *i915 = vma->vm->i915;
 	struct drm_i915_gem_object *obj = vma->obj;
-	intel_wakeref_t wakeref;
 	u32 pte_flags;
 
 	/* Applicable to VLV (gen8+ do not support RO in the GGTT) */
@@ -440,8 +438,7 @@ static int ggtt_bind_vma(struct i915_vma *vma,
 	if (i915_gem_object_is_readonly(obj))
 		pte_flags |= PTE_READ_ONLY;
 
-	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-		vma->vm->insert_entries(vma->vm, vma, cache_level, pte_flags);
+	vma->vm->insert_entries(vma->vm, vma, cache_level, pte_flags);
 
 	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
 
@@ -457,11 +454,7 @@ static int ggtt_bind_vma(struct i915_vma *vma,
 
 static void ggtt_unbind_vma(struct i915_vma *vma)
 {
-	struct drm_i915_private *i915 = vma->vm->i915;
-	intel_wakeref_t wakeref;
-
-	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-		vma->vm->clear_range(vma->vm, vma->node.start, vma->size);
+	vma->vm->clear_range(vma->vm, vma->node.start, vma->size);
 }
 
 static int ggtt_reserve_guc_top(struct i915_ggtt *ggtt)
@@ -569,7 +562,6 @@ static int aliasing_gtt_bind_vma(struct i915_vma *vma,
 				 enum i915_cache_level cache_level,
 				 u32 flags)
 {
-	struct drm_i915_private *i915 = vma->vm->i915;
 	u32 pte_flags;
 	int ret;
 
@@ -597,28 +589,18 @@ static int aliasing_gtt_bind_vma(struct i915_vma *vma,
 					 cache_level, pte_flags);
 	}
 
-	if (flags & I915_VMA_GLOBAL_BIND) {
-		intel_wakeref_t wakeref;
-
-		with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
-			vma->vm->insert_entries(vma->vm, vma,
-						cache_level, pte_flags);
-		}
-	}
+	if (flags & I915_VMA_GLOBAL_BIND)
+		vma->vm->insert_entries(vma->vm, vma, cache_level, pte_flags);
 
 	return 0;
 }
 
 static void aliasing_gtt_unbind_vma(struct i915_vma *vma)
 {
-	struct drm_i915_private *i915 = vma->vm->i915;
-
 	if (i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND)) {
 		struct i915_address_space *vm = vma->vm;
-		intel_wakeref_t wakeref;
 
-		with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-			vm->clear_range(vm, vma->node.start, vma->size);
+		vm->clear_range(vm, vma->node.start, vma->size);
 	}
 
 	if (test_and_clear_bit(I915_VMA_ALLOC_BIT, __i915_vma_flags(vma))) {
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 43d5c270bdb0..c702708131b8 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -858,6 +858,7 @@ static void vma_unbind_pages(struct i915_vma *vma)
 int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 {
 	struct i915_vma_work *work = NULL;
+	intel_wakeref_t wakeref = 0;
 	unsigned int bound;
 	int err;
 
@@ -883,6 +884,9 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 		}
 	}
 
+	if (flags & PIN_GLOBAL)
+		wakeref = intel_runtime_pm_get(&vma->vm->i915->runtime_pm);
+
 	/* No more allocations allowed once we hold vm->mutex */
 	err = mutex_lock_interruptible(&vma->vm->mutex);
 	if (err)
@@ -946,6 +950,8 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 err_fence:
 	if (work)
 		dma_fence_work_commit(&work->base);
+	if (wakeref)
+		intel_runtime_pm_put(&vma->vm->i915->runtime_pm, wakeref);
 err_pages:
 	vma_put_pages(vma);
 	return err;
@@ -1246,11 +1252,15 @@ int __i915_vma_unbind(struct i915_vma *vma)
 int i915_vma_unbind(struct i915_vma *vma)
 {
 	struct i915_address_space *vm = vma->vm;
+	intel_wakeref_t wakeref = 0;
 	int err;
 
 	if (!drm_mm_node_allocated(&vma->node))
 		return 0;
 
+	if (i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND))
+		wakeref = intel_runtime_pm_get(&vm->i915->runtime_pm);
+
 	err = mutex_lock_interruptible(&vm->mutex);
 	if (err)
 		return err;
@@ -1258,6 +1268,9 @@ int i915_vma_unbind(struct i915_vma *vma)
 	err = __i915_vma_unbind(vma);
 	mutex_unlock(&vm->mutex);
 
+	if (wakeref)
+		intel_runtime_pm_put(&vm->i915->runtime_pm, wakeref);
+
 	return err;
 }
 
-- 
2.25.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
