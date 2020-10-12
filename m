Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0383A28BB22
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:47:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2B116E4AA;
	Mon, 12 Oct 2020 14:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89A986E4E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:47:14 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 16:46:44 +0200
Message-Id: <20201012144706.555345-40-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
References: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 39/61] drm/i915: Use a single page table lock
 for each gtt.
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

We may create page table objects on the fly, but we may need to
wait with the ww lock held. Instead of waiting on a freed obj
lock, ensure we have the same lock for each object to keep
-EDEADLK working. This ensures that i915_vma_pin_ww can lock
the page tables when required.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c  |  8 +++++-
 drivers/gpu/drm/i915/gt/intel_gtt.c   | 38 ++++++++++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_gtt.h   |  5 ++++
 drivers/gpu/drm/i915/gt/intel_ppgtt.c |  3 ++-
 drivers/gpu/drm/i915/i915_vma.c       |  5 ++++
 5 files changed, 56 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 60bd2c8ed8b0..17ecaef1834d 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -615,7 +615,9 @@ static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
 	if (err)
 		goto err_ppgtt;
 
+	i915_gem_object_lock(ppgtt->vm.scratch[0], NULL);
 	err = i915_vm_pin_pt_stash(&ppgtt->vm, &stash);
+	i915_gem_object_unlock(ppgtt->vm.scratch[0]);
 	if (err)
 		goto err_stash;
 
@@ -702,6 +704,7 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
 
 	mutex_unlock(&ggtt->vm.mutex);
 	i915_address_space_fini(&ggtt->vm);
+	dma_resv_fini(&ggtt->vm.resv);
 
 	arch_phys_wc_del(ggtt->mtrr);
 
@@ -1078,6 +1081,7 @@ static int ggtt_probe_hw(struct i915_ggtt *ggtt, struct intel_gt *gt)
 	ggtt->vm.gt = gt;
 	ggtt->vm.i915 = i915;
 	ggtt->vm.dma = &i915->drm.pdev->dev;
+	dma_resv_init(&ggtt->vm.resv);
 
 	if (INTEL_GEN(i915) <= 5)
 		ret = i915_gmch_probe(ggtt);
@@ -1085,8 +1089,10 @@ static int ggtt_probe_hw(struct i915_ggtt *ggtt, struct intel_gt *gt)
 		ret = gen6_gmch_probe(ggtt);
 	else
 		ret = gen8_gmch_probe(ggtt);
-	if (ret)
+	if (ret) {
+		dma_resv_fini(&ggtt->vm.resv);
 		return ret;
+	}
 
 	if ((ggtt->vm.total - 1) >> 32) {
 		drm_err(&i915->drm,
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 3f1114b58b01..567a2f875088 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -13,16 +13,36 @@
 
 struct drm_i915_gem_object *alloc_pt_dma(struct i915_address_space *vm, int sz)
 {
+	struct drm_i915_gem_object *obj;
+
 	if (I915_SELFTEST_ONLY(should_fail(&vm->fault_attr, 1)))
 		i915_gem_shrink_all(vm->i915);
 
-	return i915_gem_object_create_internal(vm->i915, sz);
+	obj = i915_gem_object_create_internal(vm->i915, sz);
+	/* ensure all dma objects have the same reservation class */
+	if (!IS_ERR(obj))
+		obj->base.resv = &vm->resv;
+	return obj;
 }
 
 int pin_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
 {
 	int err;
 
+	i915_gem_object_lock(obj, NULL);
+	err = i915_gem_object_pin_pages(obj);
+	i915_gem_object_unlock(obj);
+	if (err)
+		return err;
+
+	i915_gem_object_make_unshrinkable(obj);
+	return 0;
+}
+
+int pin_pt_dma_locked(struct i915_address_space *vm, struct drm_i915_gem_object *obj)
+{
+	int err;
+
 	err = i915_gem_object_pin_pages(obj);
 	if (err)
 		return err;
@@ -56,6 +76,20 @@ void __i915_vm_close(struct i915_address_space *vm)
 	mutex_unlock(&vm->mutex);
 }
 
+/* lock the vm into the current ww, if we lock one, we lock all */
+int i915_vm_lock_objects(struct i915_address_space *vm,
+			 struct i915_gem_ww_ctx *ww)
+{
+	if (vm->scratch[0]->base.resv == &vm->resv) {
+		return i915_gem_object_lock(vm->scratch[0], ww);
+	} else {
+		struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);
+
+		/* We borrowed the scratch page from ggtt, take the top level object */
+		return i915_gem_object_lock(ppgtt->pd->pt.base, ww);
+	}
+}
+
 void i915_address_space_fini(struct i915_address_space *vm)
 {
 	drm_mm_takedown(&vm->mm);
@@ -69,6 +103,7 @@ static void __i915_vm_release(struct work_struct *work)
 
 	vm->cleanup(vm);
 	i915_address_space_fini(vm);
+	dma_resv_fini(&vm->resv);
 
 	kfree(vm);
 }
@@ -98,6 +133,7 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	mutex_init(&vm->mutex);
 	lockdep_set_subclass(&vm->mutex, subclass);
 	i915_gem_shrinker_taints_mutex(vm->i915, &vm->mutex);
+	dma_resv_init(&vm->resv);
 
 	GEM_BUG_ON(!vm->total);
 	drm_mm_init(&vm->mm, 0, vm->total);
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 8a33940a71f3..16063b2f0119 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -238,6 +238,7 @@ struct i915_address_space {
 	atomic_t open;
 
 	struct mutex mutex; /* protects vma and our lists */
+	struct dma_resv resv; /* reservation lock for all pd objects, and buffer pool */
 #define VM_CLASS_GGTT 0
 #define VM_CLASS_PPGTT 1
 
@@ -346,6 +347,9 @@ struct i915_ppgtt {
 
 #define i915_is_ggtt(vm) ((vm)->is_ggtt)
 
+int __must_check
+i915_vm_lock_objects(struct i915_address_space *vm, struct i915_gem_ww_ctx *ww);
+
 static inline bool
 i915_vm_is_4lvl(const struct i915_address_space *vm)
 {
@@ -522,6 +526,7 @@ struct i915_page_directory *alloc_pd(struct i915_address_space *vm);
 struct i915_page_directory *__alloc_pd(int npde);
 
 int pin_pt_dma(struct i915_address_space *vm, struct drm_i915_gem_object *obj);
+int pin_pt_dma_locked(struct i915_address_space *vm, struct drm_i915_gem_object *obj);
 
 void free_px(struct i915_address_space *vm,
 	     struct i915_page_table *pt, int lvl);
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index 46d9aceda64c..f3ac47702aee 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -262,7 +262,7 @@ int i915_vm_pin_pt_stash(struct i915_address_space *vm,
 
 	for (n = 0; n < ARRAY_SIZE(stash->pt); n++) {
 		for (pt = stash->pt[n]; pt; pt = pt->stash) {
-			err = pin_pt_dma(vm, pt->base);
+			err = pin_pt_dma_locked(vm, pt->base);
 			if (err)
 				return err;
 		}
@@ -304,6 +304,7 @@ void ppgtt_init(struct i915_ppgtt *ppgtt, struct intel_gt *gt)
 	ppgtt->vm.dma = &i915->drm.pdev->dev;
 	ppgtt->vm.total = BIT_ULL(INTEL_INFO(i915)->ppgtt_size);
 
+	dma_resv_init(&ppgtt->vm.resv);
 	i915_address_space_init(&ppgtt->vm, VM_CLASS_PPGTT);
 
 	ppgtt->vm.vma_ops.bind_vma    = ppgtt_bind_vma;
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index ed6cf4529d5d..4106b10ac651 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -882,6 +882,11 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 		wakeref = intel_runtime_pm_get(&vma->vm->i915->runtime_pm);
 
 	if (flags & vma->vm->bind_async_flags) {
+		/* lock VM */
+		err = i915_vm_lock_objects(vma->vm, ww);
+		if (err)
+			goto err_rpm;
+
 		work = i915_vma_work();
 		if (!work) {
 			err = -ENOMEM;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
