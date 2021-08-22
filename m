Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5F93F407D
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Aug 2021 18:30:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E787B89F6F;
	Sun, 22 Aug 2021 16:30:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 700D489F5B
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Aug 2021 16:30:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="302567450"
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="302567450"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2021 09:30:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,342,1620716400"; d="scan'208";a="596395775"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga001.fm.intel.com with ESMTP; 22 Aug 2021 09:30:28 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Matthew Auld <matthew.auld@intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Date: Sun, 22 Aug 2021 21:56:59 +0530
Message-Id: <20210822162706.819507-7-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
References: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 06/13] drm/i915/gtt/xehpsdv: move scratch page to
 system memory
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

From: Matthew Auld <matthew.auld@intel.com>

On some platforms the hw has dropped support for 4K GTT pages when
dealing with LMEM, and due to the design of 64K GTT pages in the hw, we
can only mark the *entire* page-table as operating in 64K GTT mode,
since the enable bit is still on the pde, and not the pte. And since we
we still need to allow 4K GTT pages for SMEM objects, we can't have a
"normal" 4K page-table with scratch pointing to LMEM, since that's
undefined from the hw pov. The simplest solution is to just move the 64K
scratch page to SMEM on such platforms and call it a day, since that
should work for all configurations.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c      |  1 +
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c      | 23 +++++++++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_ggtt.c      |  3 +++
 drivers/gpu/drm/i915/gt/intel_gtt.c       |  2 +-
 drivers/gpu/drm/i915/gt/intel_gtt.h       |  2 ++
 drivers/gpu/drm/i915/selftests/mock_gtt.c |  2 ++
 6 files changed, 30 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 1aee5e6b1b23..74306a77a2be 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -440,6 +440,7 @@ struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt)
 	ppgtt->base.vm.cleanup = gen6_ppgtt_cleanup;
 
 	ppgtt->base.vm.alloc_pt_dma = alloc_pt_dma;
+	ppgtt->base.vm.alloc_scratch_dma = alloc_pt_dma;
 	ppgtt->base.vm.pte_encode = ggtt->vm.pte_encode;
 
 	ppgtt->base.pd = __alloc_pd(I915_PDES);
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 6e0e52eeb87a..8c948f3b8cd8 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -774,10 +774,29 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt)
 	 */
 	ppgtt->vm.has_read_only = !IS_GRAPHICS_VER(gt->i915, 11, 12);
 
-	if (HAS_LMEM(gt->i915))
+	if (HAS_LMEM(gt->i915)) {
 		ppgtt->vm.alloc_pt_dma = alloc_pt_lmem;
-	else
+
+		/*
+		 * On some platforms the hw has dropped support for 4K GTT pages
+		 * when dealing with LMEM, and due to the design of 64K GTT
+		 * pages in the hw, we can only mark the *entire* page-table as
+		 * operating in 64K GTT mode, since the enable bit is still on
+		 * the pde, and not the pte. And since we still need to allow
+		 * 4K GTT pages for SMEM objects, we can't have a "normal" 4K
+		 * page-table with scratch pointing to LMEM, since that's
+		 * undefined from the hw pov. The simplest solution is to just
+		 * move the 64K scratch page to SMEM on such platforms and call
+		 * it a day, since that should work for all configurations.
+		 */
+		if (HAS_64K_PAGES(gt->i915))
+			ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
+		else
+			ppgtt->vm.alloc_scratch_dma = alloc_pt_lmem;
+	} else {
 		ppgtt->vm.alloc_pt_dma = alloc_pt_dma;
+		ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
+	}
 
 	err = gen8_init_scratch(&ppgtt->vm);
 	if (err)
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index de3ac58fceec..140439c8bdeb 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -910,6 +910,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 		size = gen8_get_total_gtt_size(snb_gmch_ctl);
 
 	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
+	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
 
 	ggtt->vm.total = (size / sizeof(gen8_pte_t)) * I915_GTT_PAGE_SIZE;
 	ggtt->vm.cleanup = gen6_gmch_remove;
@@ -1062,6 +1063,7 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
 	ggtt->vm.total = (size / sizeof(gen6_pte_t)) * I915_GTT_PAGE_SIZE;
 
 	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
+	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
 
 	ggtt->vm.clear_range = nop_clear_range;
 	if (!HAS_FULL_PPGTT(i915) || intel_scanout_needs_vtd_wa(i915))
@@ -1114,6 +1116,7 @@ static int i915_gmch_probe(struct i915_ggtt *ggtt)
 		(struct resource)DEFINE_RES_MEM(gmadr_base, ggtt->mappable_end);
 
 	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
+	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
 
 	if (needs_idle_maps(i915)) {
 		drm_notice(&i915->drm,
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index e9c01f72fc18..71b25cd67c9f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -297,7 +297,7 @@ int setup_scratch_page(struct i915_address_space *vm)
 	do {
 		struct drm_i915_gem_object *obj;
 
-		obj = vm->alloc_pt_dma(vm, size);
+		obj = vm->alloc_scratch_dma(vm, size);
 		if (IS_ERR(obj))
 			goto skip;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index bc7153018ebd..38a7445cafcf 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -262,6 +262,8 @@ struct i915_address_space {
 
 	struct drm_i915_gem_object *
 		(*alloc_pt_dma)(struct i915_address_space *vm, int sz);
+	struct drm_i915_gem_object *
+		(*alloc_scratch_dma)(struct i915_address_space *vm, int sz);
 
 	u64 (*pte_encode)(dma_addr_t addr,
 			  enum i915_cache_level level,
diff --git a/drivers/gpu/drm/i915/selftests/mock_gtt.c b/drivers/gpu/drm/i915/selftests/mock_gtt.c
index cc047ec594f9..32ca8962d0ab 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gtt.c
@@ -78,6 +78,7 @@ struct i915_ppgtt *mock_ppgtt(struct drm_i915_private *i915, const char *name)
 	i915_address_space_init(&ppgtt->vm, VM_CLASS_PPGTT);
 
 	ppgtt->vm.alloc_pt_dma = alloc_pt_dma;
+	ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
 
 	ppgtt->vm.clear_range = mock_clear_range;
 	ppgtt->vm.insert_page = mock_insert_page;
@@ -118,6 +119,7 @@ void mock_init_ggtt(struct drm_i915_private *i915, struct i915_ggtt *ggtt)
 	ggtt->vm.total = 4096 * PAGE_SIZE;
 
 	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
+	ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
 
 	ggtt->vm.clear_range = mock_clear_range;
 	ggtt->vm.insert_page = mock_insert_page;
-- 
2.26.2

