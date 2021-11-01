Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 539DF442039
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 19:41:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 397476E288;
	Mon,  1 Nov 2021 18:41:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86CD46E3AC
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 18:41:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="317288659"
X-IronPort-AV: E=Sophos;i="5.87,200,1631602800"; d="scan'208";a="317288659"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 11:35:56 -0700
X-IronPort-AV: E=Sophos;i="5.87,200,1631602800"; d="scan'208";a="599123365"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 11:35:54 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Nov 2021 20:35:50 +0200
Message-Id: <20211101183551.3580546-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Factor out
 i915_ggtt_suspend_vm/i915_ggtt_resume_vm()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Factor out functions that are needed by the next patch to suspend/resume
the memory mappings for DPT FBs.

No functional change, except reordering during suspend the
ggtt->invalidate(ggtt) call wrt. atomic_set(&ggtt->vm.open, open) and
mutex_unlock(&ggtt->vm.mutex). This shouldn't matter due to the i915
suspend sequence being single threaded.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 71 +++++++++++++++++++++-------
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  2 +
 2 files changed, 56 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index f17383e76eb71..834dc1b6a0729 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -116,17 +116,26 @@ static bool needs_idle_maps(struct drm_i915_private *i915)
 	return false;
 }
 
-void i915_ggtt_suspend(struct i915_ggtt *ggtt)
+/**
+ * i915_ggtt_suspend_vm - Suspend the memory mappings for a GGTT or DPT VM
+ * @vm: The VM to suspend the mappings for
+ *
+ * Suspend the memory mappings for all objects mapped to HW via the GGTT or a
+ * DPT page table.
+ */
+void i915_ggtt_suspend_vm(struct i915_address_space *vm)
 {
 	struct i915_vma *vma, *vn;
 	int open;
 
-	mutex_lock(&ggtt->vm.mutex);
+	drm_WARN_ON(&vm->i915->drm, !vm->is_ggtt && !vm->is_dpt);
+
+	mutex_lock(&vm->mutex);
 
 	/* Skip rewriting PTE on VMA unbind. */
-	open = atomic_xchg(&ggtt->vm.open, 0);
+	open = atomic_xchg(&vm->open, 0);
 
-	list_for_each_entry_safe(vma, vn, &ggtt->vm.bound_list, vm_link) {
+	list_for_each_entry_safe(vma, vn, &vm->bound_list, vm_link) {
 		GEM_BUG_ON(!drm_mm_node_allocated(&vma->node));
 		i915_vma_wait_for_bind(vma);
 
@@ -139,11 +148,17 @@ void i915_ggtt_suspend(struct i915_ggtt *ggtt)
 		}
 	}
 
-	ggtt->vm.clear_range(&ggtt->vm, 0, ggtt->vm.total);
+	vm->clear_range(vm, 0, vm->total);
+
+	atomic_set(&vm->open, open);
+
+	mutex_unlock(&vm->mutex);
+}
+
+void i915_ggtt_suspend(struct i915_ggtt *ggtt)
+{
+	i915_ggtt_suspend_vm(&ggtt->vm);
 	ggtt->invalidate(ggtt);
-	atomic_set(&ggtt->vm.open, open);
-
-	mutex_unlock(&ggtt->vm.mutex);
 
 	intel_gt_check_and_clear_faults(ggtt->vm.gt);
 }
@@ -1253,37 +1268,59 @@ void i915_ggtt_disable_guc(struct i915_ggtt *ggtt)
 	ggtt->invalidate(ggtt);
 }
 
-void i915_ggtt_resume(struct i915_ggtt *ggtt)
+/**
+ * i915_ggtt_resume_vm - Restore the memory mappings for a GGTT or DPT VM
+ * @vm: The VM to restore the mappings for
+ *
+ * Restore the memory mappings for all objects mapped to HW via the GGTT or a
+ * DPT page table.
+ *
+ * Returns %true if restoring the mapping for any object that was in a write
+ * domain before suspend.
+ */
+bool i915_ggtt_resume_vm(struct i915_address_space *vm)
 {
 	struct i915_vma *vma;
-	bool flush = false;
+	bool write_domain_objs = false;
 	int open;
 
-	intel_gt_check_and_clear_faults(ggtt->vm.gt);
+	drm_WARN_ON(&vm->i915->drm, !vm->is_ggtt && !vm->is_dpt);
 
 	/* First fill our portion of the GTT with scratch pages */
-	ggtt->vm.clear_range(&ggtt->vm, 0, ggtt->vm.total);
+	vm->clear_range(vm, 0, vm->total);
 
 	/* Skip rewriting PTE on VMA unbind. */
-	open = atomic_xchg(&ggtt->vm.open, 0);
+	open = atomic_xchg(&vm->open, 0);
 
 	/* clflush objects bound into the GGTT and rebind them. */
-	list_for_each_entry(vma, &ggtt->vm.bound_list, vm_link) {
+	list_for_each_entry(vma, &vm->bound_list, vm_link) {
 		struct drm_i915_gem_object *obj = vma->obj;
 		unsigned int was_bound =
 			atomic_read(&vma->flags) & I915_VMA_BIND_MASK;
 
 		GEM_BUG_ON(!was_bound);
-		vma->ops->bind_vma(&ggtt->vm, NULL, vma,
+		vma->ops->bind_vma(vm, NULL, vma,
 				   obj ? obj->cache_level : 0,
 				   was_bound);
 		if (obj) { /* only used during resume => exclusive access */
-			flush |= fetch_and_zero(&obj->write_domain);
+			write_domain_objs |= fetch_and_zero(&obj->write_domain);
 			obj->read_domains |= I915_GEM_DOMAIN_GTT;
 		}
 	}
 
-	atomic_set(&ggtt->vm.open, open);
+	atomic_set(&vm->open, open);
+
+	return write_domain_objs;
+}
+
+void i915_ggtt_resume(struct i915_ggtt *ggtt)
+{
+	bool flush;
+
+	intel_gt_check_and_clear_faults(ggtt->vm.gt);
+
+	flush = i915_ggtt_resume_vm(&ggtt->vm);
+
 	ggtt->invalidate(ggtt);
 
 	if (flush)
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index bc67502633599..dfeaef680aacd 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -544,6 +544,8 @@ int i915_ppgtt_init_hw(struct intel_gt *gt);
 struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt,
 				     unsigned long lmem_pt_obj_flags);
 
+void i915_ggtt_suspend_vm(struct i915_address_space *vm);
+bool i915_ggtt_resume_vm(struct i915_address_space *vm);
 void i915_ggtt_suspend(struct i915_ggtt *gtt);
 void i915_ggtt_resume(struct i915_ggtt *ggtt);
 
-- 
2.27.0

