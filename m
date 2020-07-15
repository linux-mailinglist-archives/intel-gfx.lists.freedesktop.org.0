Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8760E220C6F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:53:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A59B6EB12;
	Wed, 15 Jul 2020 11:53:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C82A46EAD5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826136-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:51:10 +0100
Message-Id: <20200715115147.11866-29-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 29/66] drm/i915: Hold wakeref for the duration
 of the vma GGTT binding
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that we have pushed the binding itself outside of the vm->mutex, we
are clear of the potential wakeref inversions and can take the wakeref
around the actual duration of the HW interaction.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 39 ++++++++++++++++------------
 drivers/gpu/drm/i915/i915_vma.c      |  6 -----
 2 files changed, 22 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 59a4a3ab6bfd..a78ae2733fd6 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -434,27 +434,39 @@ static void i915_ggtt_clear_range(struct i915_address_space *vm,
 	intel_gtt_clear_range(start >> PAGE_SHIFT, length >> PAGE_SHIFT);
 }
 
-static void ggtt_bind_vma(struct i915_address_space *vm,
-			  struct i915_vm_pt_stash *stash,
-			  struct i915_vma *vma,
-			  enum i915_cache_level cache_level,
-			  u32 flags)
+static void __ggtt_bind_vma(struct i915_address_space *vm,
+			    struct i915_vm_pt_stash *stash,
+			    struct i915_vma *vma,
+			    enum i915_cache_level cache_level,
+			    u32 flags)
 {
 	struct drm_i915_gem_object *obj = vma->obj;
+	intel_wakeref_t wakeref;
 	u32 pte_flags;
 
-	if (i915_vma_is_bound(vma, ~flags & I915_VMA_BIND_MASK))
-		return;
-
 	/* Applicable to VLV (gen8+ do not support RO in the GGTT) */
 	pte_flags = 0;
 	if (i915_gem_object_is_readonly(obj))
 		pte_flags |= PTE_READ_ONLY;
 
-	vm->insert_entries(vm, vma, cache_level, pte_flags);
+	with_intel_runtime_pm(vm->gt->uncore->rpm, wakeref)
+		vm->insert_entries(vm, vma, cache_level, pte_flags);
+
 	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
 }
 
+static void ggtt_bind_vma(struct i915_address_space *vm,
+			  struct i915_vm_pt_stash *stash,
+			  struct i915_vma *vma,
+			  enum i915_cache_level cache_level,
+			  u32 flags)
+{
+	if (i915_vma_is_bound(vma, ~flags & I915_VMA_BIND_MASK))
+		return;
+
+	__ggtt_bind_vma(vm, stash, vma, cache_level, flags);
+}
+
 static void ggtt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
 {
 	vm->clear_range(vm, vma->node.start, vma->size);
@@ -571,19 +583,12 @@ static void aliasing_gtt_bind_vma(struct i915_address_space *vm,
 				  enum i915_cache_level cache_level,
 				  u32 flags)
 {
-	u32 pte_flags;
-
-	/* Currently applicable only to VLV */
-	pte_flags = 0;
-	if (i915_gem_object_is_readonly(vma->obj))
-		pte_flags |= PTE_READ_ONLY;
-
 	if (flags & I915_VMA_LOCAL_BIND)
 		ppgtt_bind_vma(&i915_vm_to_ggtt(vm)->alias->vm,
 			       stash, vma, cache_level, flags);
 
 	if (flags & I915_VMA_GLOBAL_BIND)
-		vm->insert_entries(vm, vma, cache_level, pte_flags);
+		__ggtt_bind_vma(vm, stash, vma, cache_level, flags);
 }
 
 static void aliasing_gtt_unbind_vma(struct i915_address_space *vm,
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 633f335ce892..e584a3355911 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -820,7 +820,6 @@ static int __wait_for_unbind(struct i915_vma *vma, unsigned int flags)
 int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 {
 	struct i915_vma_work *work = NULL;
-	intel_wakeref_t wakeref = 0;
 	unsigned int bound;
 	int err;
 
@@ -839,9 +838,6 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 			return err;
 	}
 
-	if (flags & PIN_GLOBAL)
-		wakeref = intel_runtime_pm_get(&vma->vm->i915->runtime_pm);
-
 	err = __wait_for_unbind(vma, flags);
 	if (err)
 		goto err_rpm;
@@ -951,8 +947,6 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 err_fence:
 	dma_fence_work_commit_imm(&work->base);
 err_rpm:
-	if (wakeref)
-		intel_runtime_pm_put(&vma->vm->i915->runtime_pm, wakeref);
 	if (vma->obj)
 		i915_gem_object_unpin_pages(vma->obj);
 	return err;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
