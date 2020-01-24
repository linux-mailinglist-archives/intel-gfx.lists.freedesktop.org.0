Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0421479F8
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 10:06:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4D246FF9E;
	Fri, 24 Jan 2020 09:06:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA3EC6FF9E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 09:06:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 01:04:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="245655135"
Received: from nvishwa1-desk.sc.intel.com ([10.3.160.185])
 by orsmga002.jf.intel.com with ESMTP; 24 Jan 2020 01:04:48 -0800
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 00:53:55 -0800
Message-Id: <20200124085402.11644-2-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20200124085402.11644-1-niranjana.vishwanathapura@intel.com>
References: <20200124085402.11644-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 1/8] drm/i915/svm: Support partial binding in ppgtt
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
Cc: chris.p.wilson@intel.com, jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add support to partially bind objects in ppgtt.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>
Cc: Chris P Wilson <chris.p.wilson@intel.com>
Cc: Sudeep Dutt <sudeep.dutt@intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 37 +++++++++++++++++-----------
 drivers/gpu/drm/i915/gt/intel_gtt.h  | 21 +++++++++++++---
 drivers/gpu/drm/i915/i915_vma.c      |  1 -
 drivers/gpu/drm/i915/i915_vma.h      |  2 --
 4 files changed, 41 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 077b8f7cf6cb..d1f18b150600 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -382,15 +382,20 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 		vaddr[gen8_pd_index(idx, 0)] = pte_encode | iter->dma;
 
 		iter->dma += I915_GTT_PAGE_SIZE;
+		iter->rem -= I915_GTT_PAGE_SIZE;
+		if (!iter->rem) {
+			idx = 0;
+			break;
+		}
+
 		if (iter->dma >= iter->max) {
 			iter->sg = __sg_next(iter->sg);
-			if (!iter->sg) {
-				idx = 0;
-				break;
-			}
+			GEM_BUG_ON(!iter->sg);
 
 			iter->dma = sg_dma_address(iter->sg);
-			iter->max = iter->dma + iter->sg->length;
+			iter->max = iter->dma +
+				    min_t(u64, (u64)iter->sg->length,
+					  iter->rem);
 		}
 
 		if (gen8_pd_index(++idx, 0) == 0) {
@@ -418,7 +423,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 {
 	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
 	u64 start = vma->node.start;
-	dma_addr_t rem = iter->sg->length;
+	dma_addr_t rem = min_t(u64, (u64)iter->sg->length, iter->rem);
 
 	GEM_BUG_ON(!i915_vm_is_4lvl(vma->vm));
 
@@ -460,18 +465,22 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 		}
 
 		do {
-			GEM_BUG_ON(iter->sg->length < page_size);
+			GEM_BUG_ON(rem < page_size);
 			vaddr[index++] = encode | iter->dma;
 
 			start += page_size;
 			iter->dma += page_size;
+			iter->rem -= page_size;
+			if (!iter->rem)
+				break;
+
 			rem -= page_size;
 			if (iter->dma >= iter->max) {
 				iter->sg = __sg_next(iter->sg);
-				if (!iter->sg)
-					break;
+				GEM_BUG_ON(!iter->sg);
 
-				rem = iter->sg->length;
+				rem = min_t(u64, (u64)iter->sg->length,
+					    iter->rem);
 				iter->dma = sg_dma_address(iter->sg);
 				iter->max = iter->dma + rem;
 
@@ -497,9 +506,9 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 		if (maybe_64K != -1 &&
 		    (index == I915_PDES ||
 		     (i915_vm_has_scratch_64K(vma->vm) &&
-		      !iter->sg && IS_ALIGNED(vma->node.start +
-					      vma->node.size,
-					      I915_GTT_PAGE_SIZE_2M)))) {
+		      !iter->rem && IS_ALIGNED(vma->node.start +
+					       vma->node.size,
+					       I915_GTT_PAGE_SIZE_2M)))) {
 			vaddr = kmap_atomic_px(pd);
 			vaddr[maybe_64K] |= GEN8_PDE_IPS_64K;
 			kunmap_atomic(vaddr);
@@ -528,7 +537,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 		}
 
 		vma->page_sizes.gtt |= page_size;
-	} while (iter->sg);
+	} while (iter->rem);
 }
 
 static void gen8_ppgtt_insert(struct i915_address_space *vm,
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 7da7681c20b1..bb59f57b88e1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -27,6 +27,7 @@
 
 #include "gt/intel_reset.h"
 #include "i915_gem_fence_reg.h"
+#include "i915_scatterlist.h"
 #include "i915_selftest.h"
 #include "i915_vma_types.h"
 
@@ -577,11 +578,25 @@ void setup_private_pat(struct intel_uncore *uncore);
 static inline struct sgt_dma {
 	struct scatterlist *sg;
 	dma_addr_t dma, max;
+	u64 rem;
 } sgt_dma(struct i915_vma *vma) {
 	struct scatterlist *sg = vma->pages->sgl;
-	dma_addr_t addr = sg_dma_address(sg);
-
-	return (struct sgt_dma){ sg, addr, addr + sg->length };
+	dma_addr_t addr;
+	u64 offset = 0;
+
+	/* For partial binding, skip until specified offset */
+	if (vma->ggtt_view.type == I915_GGTT_VIEW_PARTIAL) {
+		offset = vma->ggtt_view.partial.offset << PAGE_SHIFT;
+		while (offset >= sg->length) {
+			offset -= sg->length;
+			sg = __sg_next(sg);
+		}
+	}
+
+	addr = sg_dma_address(sg);
+	return (struct sgt_dma) { sg, addr + offset,
+				  addr + min_t(u64, (u64)sg->length, vma->size),
+				  vma->size };
 }
 
 #endif
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 17d7c525ea5c..48af37355371 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -275,7 +275,6 @@ i915_vma_instance(struct drm_i915_gem_object *obj,
 {
 	struct i915_vma *vma;
 
-	GEM_BUG_ON(view && !i915_is_ggtt(vm));
 	GEM_BUG_ON(!atomic_read(&vm->open));
 
 	spin_lock(&obj->vma.lock);
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 02b31a62951e..044f3400575c 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -155,8 +155,6 @@ i915_vma_compare(struct i915_vma *vma,
 {
 	ptrdiff_t cmp;
 
-	GEM_BUG_ON(view && !i915_is_ggtt(vm));
-
 	cmp = ptrdiff(vma->vm, vm);
 	if (cmp)
 		return cmp;
-- 
2.21.0.rc0.32.g243a4c7e27

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
