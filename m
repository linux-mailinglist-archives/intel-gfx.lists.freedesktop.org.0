Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD053F4A99
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 14:25:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1822389D86;
	Mon, 23 Aug 2021 12:25:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A948D89D86
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 12:25:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="280809472"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="280809472"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 05:25:49 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="492678336"
Received: from todonova-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.44.47])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 05:25:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com,
	daniel@ffwll.ch
Date: Mon, 23 Aug 2021 15:25:31 +0300
Message-Id: <934a2a0db05e835f6843befef6082e2034f23b3a.1629721467.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629721467.git.jani.nikula@intel.com>
References: <cover.1629721467.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/display: split out dpt out of
 intel_display.c
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

Let's try to reduce the size of intel_display.c, not increase it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/display/intel_display.c | 220 +-----------------
 drivers/gpu/drm/i915/display/intel_dpt.c     | 229 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpt.h     |  19 ++
 4 files changed, 250 insertions(+), 219 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dpt.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dpt.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 642a5b5a1b81..fd997dfa5e32 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -212,6 +212,7 @@ i915-y += \
 	display/intel_dpio_phy.o \
 	display/intel_dpll.o \
 	display/intel_dpll_mgr.o \
+	display/intel_dpt.o \
 	display/intel_dsb.o \
 	display/intel_fb.o \
 	display/intel_fbc.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a7cba75babd3..eea9553845b2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -84,6 +84,7 @@
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dp_link_training.h"
+#include "intel_dpt.h"
 #include "intel_fbc.h"
 #include "intel_fdi.h"
 #include "intel_fbdev.h"
@@ -127,182 +128,6 @@ static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
 static void intel_modeset_setup_hw_state(struct drm_device *dev,
 					 struct drm_modeset_acquire_ctx *ctx);
 
-struct i915_dpt {
-	struct i915_address_space vm;
-
-	struct drm_i915_gem_object *obj;
-	struct i915_vma *vma;
-	void __iomem *iomem;
-};
-
-#define i915_is_dpt(vm) ((vm)->is_dpt)
-
-static inline struct i915_dpt *
-i915_vm_to_dpt(struct i915_address_space *vm)
-{
-	BUILD_BUG_ON(offsetof(struct i915_dpt, vm));
-	GEM_BUG_ON(!i915_is_dpt(vm));
-	return container_of(vm, struct i915_dpt, vm);
-}
-
-#define dpt_total_entries(dpt) ((dpt)->vm.total >> PAGE_SHIFT)
-
-static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
-{
-	writeq(pte, addr);
-}
-
-static void dpt_insert_page(struct i915_address_space *vm,
-			    dma_addr_t addr,
-			    u64 offset,
-			    enum i915_cache_level level,
-			    u32 flags)
-{
-	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
-	gen8_pte_t __iomem *base = dpt->iomem;
-
-	gen8_set_pte(base + offset / I915_GTT_PAGE_SIZE,
-		     vm->pte_encode(addr, level, flags));
-}
-
-static void dpt_insert_entries(struct i915_address_space *vm,
-			       struct i915_vma *vma,
-			       enum i915_cache_level level,
-			       u32 flags)
-{
-	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
-	gen8_pte_t __iomem *base = dpt->iomem;
-	const gen8_pte_t pte_encode = vm->pte_encode(0, level, flags);
-	struct sgt_iter sgt_iter;
-	dma_addr_t addr;
-	int i;
-
-	/*
-	 * Note that we ignore PTE_READ_ONLY here. The caller must be careful
-	 * not to allow the user to override access to a read only page.
-	 */
-
-	i = vma->node.start / I915_GTT_PAGE_SIZE;
-	for_each_sgt_daddr(addr, sgt_iter, vma->pages)
-		gen8_set_pte(&base[i++], pte_encode | addr);
-}
-
-static void dpt_clear_range(struct i915_address_space *vm,
-			    u64 start, u64 length)
-{
-}
-
-static void dpt_bind_vma(struct i915_address_space *vm,
-			 struct i915_vm_pt_stash *stash,
-			 struct i915_vma *vma,
-			 enum i915_cache_level cache_level,
-			 u32 flags)
-{
-	struct drm_i915_gem_object *obj = vma->obj;
-	u32 pte_flags;
-
-	/* Applicable to VLV (gen8+ do not support RO in the GGTT) */
-	pte_flags = 0;
-	if (vma->vm->has_read_only && i915_gem_object_is_readonly(obj))
-		pte_flags |= PTE_READ_ONLY;
-	if (i915_gem_object_is_lmem(obj))
-		pte_flags |= PTE_LM;
-
-	vma->vm->insert_entries(vma->vm, vma, cache_level, pte_flags);
-
-	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
-
-	/*
-	 * Without aliasing PPGTT there's no difference between
-	 * GLOBAL/LOCAL_BIND, it's all the same ptes. Hence unconditionally
-	 * upgrade to both bound if we bind either to avoid double-binding.
-	 */
-	atomic_or(I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND, &vma->flags);
-}
-
-static void dpt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
-{
-	vm->clear_range(vm, vma->node.start, vma->size);
-}
-
-static void dpt_cleanup(struct i915_address_space *vm)
-{
-	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
-
-	i915_gem_object_put(dpt->obj);
-}
-
-static struct i915_address_space *
-intel_dpt_create(struct intel_framebuffer *fb)
-{
-	struct drm_gem_object *obj = &intel_fb_obj(&fb->base)->base;
-	struct drm_i915_private *i915 = to_i915(obj->dev);
-	struct drm_i915_gem_object *dpt_obj;
-	struct i915_address_space *vm;
-	struct i915_dpt *dpt;
-	size_t size;
-	int ret;
-
-	if (intel_fb_needs_pot_stride_remap(fb))
-		size = intel_remapped_info_size(&fb->remapped_view.gtt.remapped);
-	else
-		size = DIV_ROUND_UP_ULL(obj->size, I915_GTT_PAGE_SIZE);
-
-	size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
-
-	if (HAS_LMEM(i915))
-		dpt_obj = i915_gem_object_create_lmem(i915, size, 0);
-	else
-		dpt_obj = i915_gem_object_create_stolen(i915, size);
-	if (IS_ERR(dpt_obj))
-		return ERR_CAST(dpt_obj);
-
-	ret = i915_gem_object_set_cache_level(dpt_obj, I915_CACHE_NONE);
-	if (ret) {
-		i915_gem_object_put(dpt_obj);
-		return ERR_PTR(ret);
-	}
-
-	dpt = kzalloc(sizeof(*dpt), GFP_KERNEL);
-	if (!dpt) {
-		i915_gem_object_put(dpt_obj);
-		return ERR_PTR(-ENOMEM);
-	}
-
-	vm = &dpt->vm;
-
-	vm->gt = &i915->gt;
-	vm->i915 = i915;
-	vm->dma = i915->drm.dev;
-	vm->total = (size / sizeof(gen8_pte_t)) * I915_GTT_PAGE_SIZE;
-	vm->is_dpt = true;
-
-	i915_address_space_init(vm, VM_CLASS_DPT);
-
-	vm->insert_page = dpt_insert_page;
-	vm->clear_range = dpt_clear_range;
-	vm->insert_entries = dpt_insert_entries;
-	vm->cleanup = dpt_cleanup;
-
-	vm->vma_ops.bind_vma    = dpt_bind_vma;
-	vm->vma_ops.unbind_vma  = dpt_unbind_vma;
-	vm->vma_ops.set_pages   = ggtt_set_pages;
-	vm->vma_ops.clear_pages = clear_pages;
-
-	vm->pte_encode = gen8_ggtt_pte_encode;
-
-	dpt->obj = dpt_obj;
-
-	return &dpt->vm;
-}
-
-static void intel_dpt_destroy(struct i915_address_space *vm)
-{
-	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
-
-	i915_vm_close(&dpt->vm);
-}
-
 /* returns HPLL frequency in kHz */
 int vlv_get_hpll_vco(struct drm_i915_private *dev_priv)
 {
@@ -1880,49 +1705,6 @@ static void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	intel_wait_for_vblank(dev_priv, crtc->pipe);
 }
 
-static struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
-{
-	struct drm_i915_private *i915 = vm->i915;
-	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
-	intel_wakeref_t wakeref;
-	struct i915_vma *vma;
-	void __iomem *iomem;
-
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
-	atomic_inc(&i915->gpu_error.pending_fb_pin);
-
-	vma = i915_gem_object_ggtt_pin(dpt->obj, NULL, 0, 4096,
-				       HAS_LMEM(i915) ? 0 : PIN_MAPPABLE);
-	if (IS_ERR(vma))
-		goto err;
-
-	iomem = i915_vma_pin_iomap(vma);
-	i915_vma_unpin(vma);
-	if (IS_ERR(iomem)) {
-		vma = iomem;
-		goto err;
-	}
-
-	dpt->vma = vma;
-	dpt->iomem = iomem;
-
-	i915_vma_get(vma);
-
-err:
-	atomic_dec(&i915->gpu_error.pending_fb_pin);
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
-
-	return vma;
-}
-
-static void intel_dpt_unpin(struct i915_address_space *vm)
-{
-	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
-
-	i915_vma_unpin_iomap(dpt->vma);
-	i915_vma_put(dpt->vma);
-}
-
 static bool
 intel_reuse_initial_plane_obj(struct drm_i915_private *i915,
 			      const struct intel_initial_plane_config *plane_config,
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
new file mode 100644
index 000000000000..22acd945a9e4
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -0,0 +1,229 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "intel_display_types.h"
+#include "intel_dpt.h"
+#include "intel_fb.h"
+#include "gt/gen8_ppgtt.h"
+
+struct i915_dpt {
+	struct i915_address_space vm;
+
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	void __iomem *iomem;
+};
+
+#define i915_is_dpt(vm) ((vm)->is_dpt)
+
+static inline struct i915_dpt *
+i915_vm_to_dpt(struct i915_address_space *vm)
+{
+	BUILD_BUG_ON(offsetof(struct i915_dpt, vm));
+	GEM_BUG_ON(!i915_is_dpt(vm));
+	return container_of(vm, struct i915_dpt, vm);
+}
+
+#define dpt_total_entries(dpt) ((dpt)->vm.total >> PAGE_SHIFT)
+
+static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
+{
+	writeq(pte, addr);
+}
+
+static void dpt_insert_page(struct i915_address_space *vm,
+			    dma_addr_t addr,
+			    u64 offset,
+			    enum i915_cache_level level,
+			    u32 flags)
+{
+	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
+	gen8_pte_t __iomem *base = dpt->iomem;
+
+	gen8_set_pte(base + offset / I915_GTT_PAGE_SIZE,
+		     vm->pte_encode(addr, level, flags));
+}
+
+static void dpt_insert_entries(struct i915_address_space *vm,
+			       struct i915_vma *vma,
+			       enum i915_cache_level level,
+			       u32 flags)
+{
+	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
+	gen8_pte_t __iomem *base = dpt->iomem;
+	const gen8_pte_t pte_encode = vm->pte_encode(0, level, flags);
+	struct sgt_iter sgt_iter;
+	dma_addr_t addr;
+	int i;
+
+	/*
+	 * Note that we ignore PTE_READ_ONLY here. The caller must be careful
+	 * not to allow the user to override access to a read only page.
+	 */
+
+	i = vma->node.start / I915_GTT_PAGE_SIZE;
+	for_each_sgt_daddr(addr, sgt_iter, vma->pages)
+		gen8_set_pte(&base[i++], pte_encode | addr);
+}
+
+static void dpt_clear_range(struct i915_address_space *vm,
+			    u64 start, u64 length)
+{
+}
+
+static void dpt_bind_vma(struct i915_address_space *vm,
+			 struct i915_vm_pt_stash *stash,
+			 struct i915_vma *vma,
+			 enum i915_cache_level cache_level,
+			 u32 flags)
+{
+	struct drm_i915_gem_object *obj = vma->obj;
+	u32 pte_flags;
+
+	/* Applicable to VLV (gen8+ do not support RO in the GGTT) */
+	pte_flags = 0;
+	if (vma->vm->has_read_only && i915_gem_object_is_readonly(obj))
+		pte_flags |= PTE_READ_ONLY;
+	if (i915_gem_object_is_lmem(obj))
+		pte_flags |= PTE_LM;
+
+	vma->vm->insert_entries(vma->vm, vma, cache_level, pte_flags);
+
+	vma->page_sizes.gtt = I915_GTT_PAGE_SIZE;
+
+	/*
+	 * Without aliasing PPGTT there's no difference between
+	 * GLOBAL/LOCAL_BIND, it's all the same ptes. Hence unconditionally
+	 * upgrade to both bound if we bind either to avoid double-binding.
+	 */
+	atomic_or(I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND, &vma->flags);
+}
+
+static void dpt_unbind_vma(struct i915_address_space *vm, struct i915_vma *vma)
+{
+	vm->clear_range(vm, vma->node.start, vma->size);
+}
+
+static void dpt_cleanup(struct i915_address_space *vm)
+{
+	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
+
+	i915_gem_object_put(dpt->obj);
+}
+
+struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
+{
+	struct drm_i915_private *i915 = vm->i915;
+	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
+	intel_wakeref_t wakeref;
+	struct i915_vma *vma;
+	void __iomem *iomem;
+
+	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+	atomic_inc(&i915->gpu_error.pending_fb_pin);
+
+	vma = i915_gem_object_ggtt_pin(dpt->obj, NULL, 0, 4096,
+				       HAS_LMEM(i915) ? 0 : PIN_MAPPABLE);
+	if (IS_ERR(vma))
+		goto err;
+
+	iomem = i915_vma_pin_iomap(vma);
+	i915_vma_unpin(vma);
+	if (IS_ERR(iomem)) {
+		vma = iomem;
+		goto err;
+	}
+
+	dpt->vma = vma;
+	dpt->iomem = iomem;
+
+	i915_vma_get(vma);
+
+err:
+	atomic_dec(&i915->gpu_error.pending_fb_pin);
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+
+	return vma;
+}
+
+void intel_dpt_unpin(struct i915_address_space *vm)
+{
+	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
+
+	i915_vma_unpin_iomap(dpt->vma);
+	i915_vma_put(dpt->vma);
+}
+
+struct i915_address_space *
+intel_dpt_create(struct intel_framebuffer *fb)
+{
+	struct drm_gem_object *obj = &intel_fb_obj(&fb->base)->base;
+	struct drm_i915_private *i915 = to_i915(obj->dev);
+	struct drm_i915_gem_object *dpt_obj;
+	struct i915_address_space *vm;
+	struct i915_dpt *dpt;
+	size_t size;
+	int ret;
+
+	if (intel_fb_needs_pot_stride_remap(fb))
+		size = intel_remapped_info_size(&fb->remapped_view.gtt.remapped);
+	else
+		size = DIV_ROUND_UP_ULL(obj->size, I915_GTT_PAGE_SIZE);
+
+	size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
+
+	if (HAS_LMEM(i915))
+		dpt_obj = i915_gem_object_create_lmem(i915, size, 0);
+	else
+		dpt_obj = i915_gem_object_create_stolen(i915, size);
+	if (IS_ERR(dpt_obj))
+		return ERR_CAST(dpt_obj);
+
+	ret = i915_gem_object_set_cache_level(dpt_obj, I915_CACHE_NONE);
+	if (ret) {
+		i915_gem_object_put(dpt_obj);
+		return ERR_PTR(ret);
+	}
+
+	dpt = kzalloc(sizeof(*dpt), GFP_KERNEL);
+	if (!dpt) {
+		i915_gem_object_put(dpt_obj);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	vm = &dpt->vm;
+
+	vm->gt = &i915->gt;
+	vm->i915 = i915;
+	vm->dma = i915->drm.dev;
+	vm->total = (size / sizeof(gen8_pte_t)) * I915_GTT_PAGE_SIZE;
+	vm->is_dpt = true;
+
+	i915_address_space_init(vm, VM_CLASS_DPT);
+
+	vm->insert_page = dpt_insert_page;
+	vm->clear_range = dpt_clear_range;
+	vm->insert_entries = dpt_insert_entries;
+	vm->cleanup = dpt_cleanup;
+
+	vm->vma_ops.bind_vma    = dpt_bind_vma;
+	vm->vma_ops.unbind_vma  = dpt_unbind_vma;
+	vm->vma_ops.set_pages   = ggtt_set_pages;
+	vm->vma_ops.clear_pages = clear_pages;
+
+	vm->pte_encode = gen8_ggtt_pte_encode;
+
+	dpt->obj = dpt_obj;
+
+	return &dpt->vm;
+}
+
+void intel_dpt_destroy(struct i915_address_space *vm)
+{
+	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
+
+	i915_vm_close(&dpt->vm);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.h b/drivers/gpu/drm/i915/display/intel_dpt.h
new file mode 100644
index 000000000000..45142b8f849f
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dpt.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __INTEL_DPT_H__
+#define __INTEL_DPT_H__
+
+struct i915_address_space;
+struct i915_vma;
+struct intel_framebuffer;
+
+void intel_dpt_destroy(struct i915_address_space *vm);
+struct i915_vma *intel_dpt_pin(struct i915_address_space *vm);
+void intel_dpt_unpin(struct i915_address_space *vm);
+struct i915_address_space *
+intel_dpt_create(struct intel_framebuffer *fb);
+
+#endif /* __INTEL_DPT_H__ */
-- 
2.20.1

