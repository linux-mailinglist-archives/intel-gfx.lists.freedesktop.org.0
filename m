Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7725EAB2E
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 17:34:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3247310E6E8;
	Mon, 26 Sep 2022 15:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E895410E6E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 15:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664206442; x=1695742442;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5iPPPVoysgj0jywFmM68udn7dRrhbYlvISm8jbBOxfQ=;
 b=IFlVdadkRQg6ZTBaLCJduXgXU4H0jyNbJ5oDJ0VXCIQ9mdn1fAqbPXj6
 VLNBpU+IpF2ZZYeSnJnCKag5bNIqlDvtj8r6uKKAOpUFj/Zp4ayMck3G3
 /zSg7FPgKI5WvMBC4LP4gh83viGYGZi4uM9bwlBCrUU78Jy1wGKj5syJa
 AMfPkozzN65UCqNDjqzlMtAcJ3xf+pAQsg5Y6hvRHfPGwf2oZXHam+r6x
 C7+F+lHryCOiJ9LTYV3YA99LbUdKXCvG8XVxEVySAvhPlgrSi0gQ8hE7T
 3nz4aL9bouplIzuQQbCLLT68PwthDL5D+U4sbEAyg4YwrDR7XwM1ZxlWA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="301960128"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="301960128"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 08:34:00 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="616445079"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="616445079"
Received: from vnyaykal-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.4.169])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 08:33:58 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Sep 2022 16:33:33 +0100
Message-Id: <20220926153333.102195-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Use i915_vm_put on ppgtt_create
 error paths
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 stable@vger.kernel.org, Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris.p.wilson@intel.com>

Now that the scratch page and page directories have a reference back to
the i915_address_space, we cannot do an immediate free of the ppgtt upon
error as those buffer objects will perform a later i915_vm_put in their
deferred frees.

The downside is that by replacing the onion unwind along the error
paths, the ppgtt cleanup must handle a partially constructed vm. This
includes ensuring that the vm->cleanup is set prior to the error path.

Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/6900
Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
Fixes: 4d8151ae5329 ("drm/i915: Don't free shared locks while shared")
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: <stable@vger.kernel.org> # v5.14+
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c | 16 ++++----
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 58 ++++++++++++++--------------
 drivers/gpu/drm/i915/gt/intel_gtt.c  |  3 ++
 3 files changed, 41 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 1bb766c79dcb..5aaacc53fa4c 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -247,6 +247,7 @@ static int gen6_ppgtt_init_scratch(struct gen6_ppgtt *ppgtt)
 	i915_gem_object_put(vm->scratch[1]);
 err_scratch0:
 	i915_gem_object_put(vm->scratch[0]);
+	vm->scratch[0] = NULL;
 	return ret;
 }
 
@@ -268,9 +269,10 @@ static void gen6_ppgtt_cleanup(struct i915_address_space *vm)
 	gen6_ppgtt_free_pd(ppgtt);
 	free_scratch(vm);
 
-	mutex_destroy(&ppgtt->flush);
+	if (ppgtt->base.pd)
+		free_pd(&ppgtt->base.vm, ppgtt->base.pd);
 
-	free_pd(&ppgtt->base.vm, ppgtt->base.pd);
+	mutex_destroy(&ppgtt->flush);
 }
 
 static void pd_vma_bind(struct i915_address_space *vm,
@@ -449,19 +451,17 @@ struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt)
 
 	err = gen6_ppgtt_init_scratch(ppgtt);
 	if (err)
-		goto err_free;
+		goto err_put;
 
 	ppgtt->base.pd = gen6_alloc_top_pd(ppgtt);
 	if (IS_ERR(ppgtt->base.pd)) {
 		err = PTR_ERR(ppgtt->base.pd);
-		goto err_scratch;
+		goto err_put;
 	}
 
 	return &ppgtt->base;
 
-err_scratch:
-	free_scratch(&ppgtt->base.vm);
-err_free:
-	kfree(ppgtt);
+err_put:
+	i915_vm_put(&ppgtt->base.vm);
 	return ERR_PTR(err);
 }
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index c7bd5d71b03e..2128b7a72a25 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -196,7 +196,10 @@ static void gen8_ppgtt_cleanup(struct i915_address_space *vm)
 	if (intel_vgpu_active(vm->i915))
 		gen8_ppgtt_notify_vgt(ppgtt, false);
 
-	__gen8_ppgtt_cleanup(vm, ppgtt->pd, gen8_pd_top_count(vm), vm->top);
+	if (ppgtt->pd)
+		__gen8_ppgtt_cleanup(vm, ppgtt->pd,
+				     gen8_pd_top_count(vm), vm->top);
+
 	free_scratch(vm);
 }
 
@@ -803,8 +806,10 @@ static int gen8_init_scratch(struct i915_address_space *vm)
 		struct drm_i915_gem_object *obj;
 
 		obj = vm->alloc_pt_dma(vm, I915_GTT_PAGE_SIZE_4K);
-		if (IS_ERR(obj))
+		if (IS_ERR(obj)) {
+			ret = PTR_ERR(obj);
 			goto free_scratch;
+		}
 
 		ret = map_pt_dma(vm, obj);
 		if (ret) {
@@ -823,7 +828,8 @@ static int gen8_init_scratch(struct i915_address_space *vm)
 free_scratch:
 	while (i--)
 		i915_gem_object_put(vm->scratch[i]);
-	return -ENOMEM;
+	vm->scratch[0] = NULL;
+	return ret;
 }
 
 static int gen8_preallocate_top_level_pdp(struct i915_ppgtt *ppgtt)
@@ -901,6 +907,7 @@ gen8_alloc_top_pd(struct i915_address_space *vm)
 struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
 				     unsigned long lmem_pt_obj_flags)
 {
+	struct i915_page_directory *pd;
 	struct i915_ppgtt *ppgtt;
 	int err;
 
@@ -946,21 +953,7 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
 		ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
 	}
 
-	err = gen8_init_scratch(&ppgtt->vm);
-	if (err)
-		goto err_free;
-
-	ppgtt->pd = gen8_alloc_top_pd(&ppgtt->vm);
-	if (IS_ERR(ppgtt->pd)) {
-		err = PTR_ERR(ppgtt->pd);
-		goto err_free_scratch;
-	}
-
-	if (!i915_vm_is_4lvl(&ppgtt->vm)) {
-		err = gen8_preallocate_top_level_pdp(ppgtt);
-		if (err)
-			goto err_free_pd;
-	}
+	ppgtt->vm.pte_encode = gen8_pte_encode;
 
 	ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
 	ppgtt->vm.insert_entries = gen8_ppgtt_insert;
@@ -971,22 +964,31 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
 	ppgtt->vm.allocate_va_range = gen8_ppgtt_alloc;
 	ppgtt->vm.clear_range = gen8_ppgtt_clear;
 	ppgtt->vm.foreach = gen8_ppgtt_foreach;
+	ppgtt->vm.cleanup = gen8_ppgtt_cleanup;
 
-	ppgtt->vm.pte_encode = gen8_pte_encode;
+	err = gen8_init_scratch(&ppgtt->vm);
+	if (err)
+		goto err_put;
+
+	pd = gen8_alloc_top_pd(&ppgtt->vm);
+	if (IS_ERR(pd)) {
+		err = PTR_ERR(pd);
+		goto err_put;
+	}
+	ppgtt->pd = pd;
+
+	if (!i915_vm_is_4lvl(&ppgtt->vm)) {
+		err = gen8_preallocate_top_level_pdp(ppgtt);
+		if (err)
+			goto err_put;
+	}
 
 	if (intel_vgpu_active(gt->i915))
 		gen8_ppgtt_notify_vgt(ppgtt, true);
 
-	ppgtt->vm.cleanup = gen8_ppgtt_cleanup;
-
 	return ppgtt;
 
-err_free_pd:
-	__gen8_ppgtt_cleanup(&ppgtt->vm, ppgtt->pd,
-			     gen8_pd_top_count(&ppgtt->vm), ppgtt->vm.top);
-err_free_scratch:
-	free_scratch(&ppgtt->vm);
-err_free:
-	kfree(ppgtt);
+err_put:
+	i915_vm_put(&ppgtt->vm);
 	return ERR_PTR(err);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index b67831833c9a..2eaeba14319e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -405,6 +405,9 @@ void free_scratch(struct i915_address_space *vm)
 {
 	int i;
 
+	if (!vm->scratch[0])
+		return;
+
 	for (i = 0; i <= vm->top; i++)
 		i915_gem_object_put(vm->scratch[i]);
 }
-- 
2.37.3

