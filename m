Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB1772CDA3
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jun 2023 20:15:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3971F10E209;
	Mon, 12 Jun 2023 18:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A26E010E1FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jun 2023 18:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686593741; x=1718129741;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rG+IXRVHrv0ZqF4ypO4wL9IVS3D4g0WtdQA1KfW4044=;
 b=nPx+zHH9SehOaKcVchQhFBGYW/vwklvQ+yXUySqm2i8B/W7v/W/T9Cvr
 Ifj2l6cxVsobmGUKHpd8uGNxJBr0ViJCA4WR4g+FuS2XiekpSr3VGP4yr
 JSdaLKe+igNOkwCtt9y+jnE2hmCFJU+xbMuq9tzMbRMRhhA3OVxz0SyYx
 xLnsdhO+94o+/wuXeNDxWsGgqatZGTmuuftQDCAw8En/YK0aapYx8ZebF
 CJpT+GohIU5t8fCb3pd+pwVnhh/s0nH0Bw9silmykr4P/3xjZwQ4xpWfU
 ySJpVhZUrLSyuWkN4akp/VqAFLLsvd7cNcEEmYiQkiXrU7O6TiYqUk+v8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="337761463"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="337761463"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 11:15:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="661678777"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="661678777"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 11:15:40 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Jun 2023 11:15:26 -0700
Message-Id: <20230612181529.2222451-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230612181529.2222451-1-daniele.ceraolospurio@intel.com>
References: <20230612181529.2222451-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/4] drm/i915/gsc: fixes and updates for GSC memory
 allocation
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

A few fixes/updates are required around the GSC memory allocation and it
is easier to do them all at the same time. The changes are as follows:

1 - Switch the memory allocation to stolen memory. We need to avoid
accesses from GSC FW to normal memory after the suspend function has
completed and to do so we can either switch to using stolen or make sure
the GSC is gone to sleep before the end of the suspend function. Given
that the GSC waits for a bit before going idle even if there are no
pending operations, it is easier and quicker to just use stolen memory.

2 - Reduce the GSC allocation size to 4MBs, which is the POR requirement.
The 8MBs were needed only for early FW and I had misunderstood that as
being the expected POR size when I sent the original patch.

3 - Perma-map the GSC allocation. This isn't required immediately, but it
will be needed later to be able to quickly extract the GSC logs, which are
inside the allocation. Since the mapping code needs to be rewritten due to
switching to stolen, it makes sense to do the switch immediately to avoid
having to change it again later.

Note that the explicit setting of CACHE_NONE for Wa_22016122933 has been
dropped because that's the default setting for stolen memory on !LLC
platforms.

v2: only memset the memory we're not overwriting (Alan)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c | 29 ++-------
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c | 77 ++++++++++++++++++++---
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h |  1 +
 3 files changed, 75 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
index 60e9c6c9e775..e6fa7745ff77 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
@@ -3,6 +3,7 @@
  * Copyright © 2022 Intel Corporation
  */
 
+#include "gem/i915_gem_lmem.h"
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_gt.h"
@@ -115,38 +116,21 @@ static int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)
 {
 	struct intel_gt *gt = gsc_uc_to_gt(gsc);
 	struct drm_i915_private *i915 = gt->i915;
-	struct drm_i915_gem_object *obj;
-	void *src, *dst;
+	void *src;
 
 	if (!gsc->local)
 		return -ENODEV;
 
-	obj = gsc->local->obj;
-
-	if (obj->base.size < gsc->fw.size)
+	if (gsc->local->size < gsc->fw.size)
 		return -ENOSPC;
 
-	/*
-	 * Wa_22016122933: For MTL the shared memory needs to be mapped
-	 * as WC on CPU side and UC (PAT index 2) on GPU side
-	 */
-	if (IS_METEORLAKE(i915))
-		i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
-
-	dst = i915_gem_object_pin_map_unlocked(obj,
-					       i915_coherent_map_type(i915, obj, true));
-	if (IS_ERR(dst))
-		return PTR_ERR(dst);
-
 	src = i915_gem_object_pin_map_unlocked(gsc->fw.obj,
 					       i915_coherent_map_type(i915, gsc->fw.obj, true));
-	if (IS_ERR(src)) {
-		i915_gem_object_unpin_map(obj);
+	if (IS_ERR(src))
 		return PTR_ERR(src);
-	}
 
-	memset(dst, 0, obj->base.size);
-	memcpy(dst, src, gsc->fw.size);
+	memcpy_toio(gsc->local_vaddr, src, gsc->fw.size);
+	memset_io(gsc->local_vaddr + gsc->fw.size, 0, gsc->local->size - gsc->fw.size);
 
 	/*
 	 * Wa_22016122933: Making sure the data in dst is
@@ -155,7 +139,6 @@ static int gsc_fw_load_prepare(struct intel_gsc_uc *gsc)
 	intel_guc_write_barrier(&gt->uc.guc);
 
 	i915_gem_object_unpin_map(gsc->fw.obj);
-	i915_gem_object_unpin_map(obj);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
index c659cc01f32f..4fe639a80564 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
@@ -133,26 +133,85 @@ void intel_gsc_uc_init_early(struct intel_gsc_uc *gsc)
 	}
 }
 
+static int gsc_allocate_and_map_vma(struct intel_gsc_uc *gsc, u32 size)
+{
+	struct intel_gt *gt = gsc_uc_to_gt(gsc);
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	void __iomem *vaddr;
+	int ret = 0;
+
+	/*
+	 * The GSC FW doesn't immediately suspend after becoming idle, so there
+	 * is a chance that it could still be awake after we successfully
+	 * return from the  pci suspend function, even if there are no pending
+	 * operations.
+	 * The FW might therefore try to access memory for its suspend operation
+	 * after the kernel has completed the HW suspend flow; this can cause
+	 * issues if the FW is mapped in normal RAM memory, as some of the
+	 * involved HW units might've already lost power.
+	 * The driver must therefore avoid this situation and the recommended
+	 * way to do so is to use stolen memory for the GSC memory allocation,
+	 * because stolen memory takes a different path in HW and it is
+	 * guaranteed to always work as long as the GPU itself is awake (which
+	 * it must be if the GSC is awake).
+	 */
+	obj = i915_gem_object_create_stolen(gt->i915, size);
+	if (IS_ERR(obj))
+		return PTR_ERR(obj);
+
+	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
+	if (IS_ERR(vma)) {
+		ret = PTR_ERR(vma);
+		goto err;
+	}
+
+	vaddr = i915_vma_pin_iomap(vma);
+	i915_vma_unpin(vma);
+	if (IS_ERR(vaddr)) {
+		ret = PTR_ERR(vaddr);
+		goto err;
+	}
+
+	i915_vma_make_unshrinkable(vma);
+
+	gsc->local = vma;
+	gsc->local_vaddr = vaddr;
+
+	return 0;
+
+err:
+	i915_gem_object_put(obj);
+	return ret;
+}
+
+static void gsc_unmap_and_free_vma(struct intel_gsc_uc *gsc)
+{
+	struct i915_vma *vma = fetch_and_zero(&gsc->local);
+
+	if (!vma)
+		return;
+
+	gsc->local_vaddr = NULL;
+	i915_vma_unpin_iomap(vma);
+	i915_gem_object_put(vma->obj);
+}
+
 int intel_gsc_uc_init(struct intel_gsc_uc *gsc)
 {
 	static struct lock_class_key gsc_lock;
 	struct intel_gt *gt = gsc_uc_to_gt(gsc);
 	struct intel_engine_cs *engine = gt->engine[GSC0];
 	struct intel_context *ce;
-	struct i915_vma *vma;
 	int err;
 
 	err = intel_uc_fw_init(&gsc->fw);
 	if (err)
 		goto out;
 
-	vma = intel_guc_allocate_vma(&gt->uc.guc, SZ_8M);
-	if (IS_ERR(vma)) {
-		err = PTR_ERR(vma);
+	err = gsc_allocate_and_map_vma(gsc, SZ_4M);
+	if (err)
 		goto out_fw;
-	}
-
-	gsc->local = vma;
 
 	ce = intel_engine_create_pinned_context(engine, engine->gt->vm, SZ_4K,
 						I915_GEM_HWS_GSC_ADDR,
@@ -173,7 +232,7 @@ int intel_gsc_uc_init(struct intel_gsc_uc *gsc)
 	return 0;
 
 out_vma:
-	i915_vma_unpin_and_release(&gsc->local, 0);
+	gsc_unmap_and_free_vma(gsc);
 out_fw:
 	intel_uc_fw_fini(&gsc->fw);
 out:
@@ -197,7 +256,7 @@ void intel_gsc_uc_fini(struct intel_gsc_uc *gsc)
 	if (gsc->ce)
 		intel_engine_destroy_pinned_context(fetch_and_zero(&gsc->ce));
 
-	i915_vma_unpin_and_release(&gsc->local, 0);
+	gsc_unmap_and_free_vma(gsc);
 
 	intel_uc_fw_fini(&gsc->fw);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
index a2a0813b8a76..c01286dddbdb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.h
@@ -18,6 +18,7 @@ struct intel_gsc_uc {
 
 	/* GSC-specific additions */
 	struct i915_vma *local; /* private memory for GSC usage */
+	void __iomem *local_vaddr; /* pointer to access the private memory */
 	struct intel_context *ce; /* for submission to GSC FW via GSC engine */
 
 	/* for delayed load and proxy handling */
-- 
2.40.0

