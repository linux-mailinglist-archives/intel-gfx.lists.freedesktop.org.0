Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 079AF5F4252
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 13:50:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF51E10E57C;
	Tue,  4 Oct 2022 11:49:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AF8210E57A;
 Tue,  4 Oct 2022 11:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664884175; x=1696420175;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=muDWXRL5wcosbi2PotngUDIHEMsIJpLwLS9VdTyE4Sw=;
 b=DU0Iu7366GOljJDPm7mzqd5i5jWMxhE/34LmzMSw+tAplV1lGexaNb4T
 iHGt+NGMKGNmorMsNHW1QJxQ2ivFaFcSVd1gyy82kh7s/q8QbBvVMCIcM
 8cWiZwMeXAm7/sfww/5UQIWlIxetNpP1z1WbEnqUy9sNz8I4IqR8NTA7h
 /yDHN/xvc/AKmQIQ0Xby1iZlb9Mwdp1qgAsjF9WNFqrS77nWkONZkufv5
 dVcedkS23m8Wax56uA6A+SlYBfyZqj5DmTD6BZSQdkDBNYRd0WpaUdj6S
 iPQv8uoQ1vCsXZWgqYMcAfOwxZYLlg1yTwNeCUHYn2+Re4P4IeTRAwdmO w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="300491014"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="300491014"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 04:49:34 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="654744577"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="654744577"
Received: from ngverso-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.149])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 04:49:31 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 12:49:14 +0100
Message-Id: <20221004114915.221708-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915: enable PS64 support for DG2
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
 Michal Mrozek <michal.mrozek@intel.com>, dri-devel@lists.freedesktop.org,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It turns out that on production DG2/ATS HW we should have support for
PS64. This feature allows to provide a 64K TLB hint at the PTE level,
which is a lot more flexible than the current method of enabling 64K GTT
pages for the entire page-table, since that leads to all kinds of
annoying restrictions, as documented in:

commit caa574ffc4aaf4f29b890223878c63e2e7772f62
Author: Matthew Auld <matthew.auld@intel.com>
Date:   Sat Feb 19 00:17:49 2022 +0530

    drm/i915/uapi: document behaviour for DG2 64K support

    On discrete platforms like DG2, we need to support a minimum page size
    of 64K when dealing with device local-memory. This is quite tricky for
    various reasons, so try to document the new implicit uapi for this.

With PS64, we can now drop the 2M GTT alignment restriction, and instead
only require 64K or larger when dealing with lmem. We still use the
compact-pt layout when possible, but only when we are certain that this
doesn't interfere with userspace.

Note that this is a change in uAPI behaviour, but hopefully shouldn't be
a concern (IGT is at least able to autodetect the alignment), since we
are only making the GTT alignment constraint less restrictive.

Based on a patch from CQ Tang.

v2: update the comment wrt scratch page
v3: (Nirmoy)
 - Fix the selftest to actually use the random size, plus some comment
   improvements, also drop the rem stuff.

Reported-by: Michal Mrozek <michal.mrozek@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>
Cc: Jordan Justen <jordan.l.justen@intel.com>
Cc: Yang A Shi <yang.a.shi@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Acked-by: Michal Mrozek <michal.mrozek@intel.com>
---
 .../gpu/drm/i915/gem/selftests/huge_pages.c   | 157 +++++++++++++++++-
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  81 +++++----
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  21 +--
 drivers/gpu/drm/i915/gt/intel_gtt.h           |   1 +
 drivers/gpu/drm/i915/i915_drv.h               |   7 -
 drivers/gpu/drm/i915/i915_pci.c               |   2 -
 drivers/gpu/drm/i915/i915_vma.c               |   9 +-
 drivers/gpu/drm/i915/intel_device_info.h      |   1 -
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   9 +-
 include/uapi/drm/i915_drm.h                   |  36 ++--
 10 files changed, 218 insertions(+), 106 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index c570cf780079..0cb99e75b0bc 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -1161,7 +1161,8 @@ static int igt_write_huge(struct drm_i915_private *i915,
 	GEM_BUG_ON(!i915_gem_object_has_pinned_pages(obj));
 
 	size = obj->base.size;
-	if (obj->mm.page_sizes.sg & I915_GTT_PAGE_SIZE_64K)
+	if (obj->mm.page_sizes.sg & I915_GTT_PAGE_SIZE_64K &&
+	    !HAS_64K_PAGES(i915))
 		size = round_up(size, I915_GTT_PAGE_SIZE_2M);
 
 	n = 0;
@@ -1214,6 +1215,10 @@ static int igt_write_huge(struct drm_i915_private *i915,
 		 * size and ensure the vma offset is at the start of the pt
 		 * boundary, however to improve coverage we opt for testing both
 		 * aligned and unaligned offsets.
+		 *
+		 * With PS64 this is no longer the case, but to ensure we
+		 * sometimes get the compact layout for smaller objects, apply
+		 * the round_up anyway.
 		 */
 		if (obj->mm.page_sizes.sg & I915_GTT_PAGE_SIZE_64K)
 			offset_low = round_down(offset_low,
@@ -1411,6 +1416,7 @@ static int igt_ppgtt_sanity_check(void *arg)
 		{ SZ_2M + SZ_4K,	SZ_64K | SZ_4K	},
 		{ SZ_2M + SZ_4K,	SZ_2M  | SZ_4K	},
 		{ SZ_2M + SZ_64K,	SZ_2M  | SZ_64K },
+		{ SZ_2M + SZ_64K,	SZ_64K		},
 	};
 	int i, j;
 	int err;
@@ -1540,6 +1546,154 @@ static int igt_ppgtt_compact(void *arg)
 	return err;
 }
 
+static int igt_ppgtt_mixed(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	const unsigned long flags = PIN_OFFSET_FIXED | PIN_USER;
+	struct drm_i915_gem_object *obj, *on;
+	struct i915_gem_engines *engines;
+	struct i915_gem_engines_iter it;
+	struct i915_address_space *vm;
+	struct i915_gem_context *ctx;
+	struct intel_context *ce;
+	struct file *file;
+	I915_RND_STATE(prng);
+	LIST_HEAD(objects);
+	struct intel_memory_region *mr;
+	struct i915_vma *vma;
+	unsigned int count;
+	u32 i, addr;
+	int *order;
+	int n, err;
+
+	/*
+	 * Sanity check mixing 4K and 64K pages within the same page-table via
+	 * the new PS64 TLB hint.
+	 */
+
+	if (!HAS_64K_PAGES(i915)) {
+		pr_info("device lacks PS64, skipping\n");
+		return 0;
+	}
+
+	file = mock_file(i915);
+	if (IS_ERR(file))
+		return PTR_ERR(file);
+
+	ctx = hugepage_ctx(i915, file);
+	if (IS_ERR(ctx)) {
+		err = PTR_ERR(ctx);
+		goto out;
+	}
+	vm = i915_gem_context_get_eb_vm(ctx);
+
+	i = 0;
+	addr = 0;
+	do {
+		u32 sz;
+
+		sz = i915_prandom_u32_max_state(SZ_4M, &prng);
+		sz = max_t(u32, sz, SZ_4K);
+
+		mr = i915->mm.regions[INTEL_REGION_LMEM_0];
+		if (i & 1)
+			mr = i915->mm.regions[INTEL_REGION_SMEM];
+
+		obj = i915_gem_object_create_region(mr, sz, 0, 0);
+		if (IS_ERR(obj)) {
+			err = PTR_ERR(obj);
+			goto out_vm;
+		}
+
+		list_add_tail(&obj->st_link, &objects);
+
+		vma = i915_vma_instance(obj, vm, NULL);
+		if (IS_ERR(vma)) {
+			err = PTR_ERR(vma);
+			goto err_put;
+		}
+
+		addr = round_up(addr, mr->min_page_size);
+		err = i915_vma_pin(vma, 0, 0, addr | flags);
+		if (err)
+			goto err_put;
+
+		if (mr->type == INTEL_MEMORY_LOCAL &&
+		    (vma->resource->page_sizes_gtt & I915_GTT_PAGE_SIZE_4K)) {
+			err = -EINVAL;
+			goto err_put;
+		}
+
+		addr += obj->base.size;
+		i++;
+	} while (addr <= SZ_16M);
+
+	n = 0;
+	count = 0;
+	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
+		count++;
+		if (!intel_engine_can_store_dword(ce->engine))
+			continue;
+
+		n++;
+	}
+	i915_gem_context_unlock_engines(ctx);
+	if (!n)
+		goto err_put;
+
+	order = i915_random_order(count * count, &prng);
+	if (!order) {
+		err = -ENOMEM;
+		goto err_put;
+	}
+
+	i = 0;
+	addr = 0;
+	engines = i915_gem_context_lock_engines(ctx);
+	list_for_each_entry(obj, &objects, st_link) {
+		u32 rnd = i915_prandom_u32_max_state(UINT_MAX, &prng);
+
+		addr = round_up(addr, obj->mm.region->min_page_size);
+
+		ce = engines->engines[order[i] % engines->num_engines];
+		i = (i + 1) % (count * count);
+		if (!ce || !intel_engine_can_store_dword(ce->engine))
+			continue;
+
+		err = __igt_write_huge(ce, obj, obj->base.size, addr, 0, rnd);
+		if (err)
+			break;
+
+		err = __igt_write_huge(ce, obj, obj->base.size, addr,
+				       offset_in_page(rnd) / sizeof(u32), rnd + 1);
+		if (err)
+			break;
+
+		err = __igt_write_huge(ce, obj, obj->base.size, addr,
+				       (PAGE_SIZE / sizeof(u32)) - 1,
+				       rnd + 2);
+		if (err)
+			break;
+
+		addr += obj->base.size;
+
+		cond_resched();
+	}
+
+	i915_gem_context_unlock_engines(ctx);
+	kfree(order);
+err_put:
+	list_for_each_entry_safe(obj, on, &objects, st_link) {
+		list_del(&obj->st_link);
+		i915_gem_object_put(obj);
+	}
+out_vm:
+	i915_vm_put(vm);
+out:
+	fput(file);
+	return err;
+}
+
 static int igt_tmpfs_fallback(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
@@ -1803,6 +1957,7 @@ int i915_gem_huge_page_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_ppgtt_smoke_huge),
 		SUBTEST(igt_ppgtt_sanity_check),
 		SUBTEST(igt_ppgtt_compact),
+		SUBTEST(igt_ppgtt_mixed),
 	};
 
 	if (!HAS_PPGTT(i915)) {
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 8dd60d5ef905..4daaa6f55668 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -476,6 +476,7 @@ xehpsdv_ppgtt_insert_huge(struct i915_address_space *vm,
 	const gen8_pte_t pte_encode = vm->pte_encode(0, cache_level, flags);
 	unsigned int rem = sg_dma_len(iter->sg);
 	u64 start = vma_res->start;
+	u64 end = start + vma_res->vma_size;
 
 	GEM_BUG_ON(!i915_vm_is_4lvl(vm));
 
@@ -489,9 +490,10 @@ xehpsdv_ppgtt_insert_huge(struct i915_address_space *vm,
 		gen8_pte_t encode = pte_encode;
 		unsigned int page_size;
 		gen8_pte_t *vaddr;
-		u16 index, max;
+		u16 index, max, nent, i;
 
 		max = I915_PDES;
+		nent = 1;
 
 		if (vma_res->bi.page_sizes.sg & I915_GTT_PAGE_SIZE_2M &&
 		    IS_ALIGNED(iter->dma, I915_GTT_PAGE_SIZE_2M) &&
@@ -503,25 +505,37 @@ xehpsdv_ppgtt_insert_huge(struct i915_address_space *vm,
 
 			vaddr = px_vaddr(pd);
 		} else {
-			if (encode & GEN12_PPGTT_PTE_LM) {
-				GEM_BUG_ON(__gen8_pte_index(start, 0) % 16);
-				GEM_BUG_ON(rem < I915_GTT_PAGE_SIZE_64K);
-				GEM_BUG_ON(!IS_ALIGNED(iter->dma,
-						       I915_GTT_PAGE_SIZE_64K));
-
-				index = __gen8_pte_index(start, 0) / 16;
-				page_size = I915_GTT_PAGE_SIZE_64K;
-
-				max /= 16;
-
-				vaddr = px_vaddr(pd);
-				vaddr[__gen8_pte_index(start, 1)] |= GEN12_PDE_64K;
+			index =  __gen8_pte_index(start, 0);
+			page_size = I915_GTT_PAGE_SIZE;
 
-				pt->is_compact = true;
-			} else {
-				GEM_BUG_ON(pt->is_compact);
-				index =  __gen8_pte_index(start, 0);
-				page_size = I915_GTT_PAGE_SIZE;
+			if (vma_res->bi.page_sizes.sg & I915_GTT_PAGE_SIZE_64K) {
+				/*
+				 * Device local-memory on these platforms should
+				 * always use 64K pages or larger (including GTT
+				 * alignment), therefore if we know the whole
+				 * page-table needs to be filled we can always
+				 * safely use the compact-layout. Otherwise fall
+				 * back to the TLB hint with PS64. If this is
+				 * system memory we only bother with PS64.
+				 */
+				if ((encode & GEN12_PPGTT_PTE_LM) &&
+				    end - start >= SZ_2M && !index) {
+					index = __gen8_pte_index(start, 0) / 16;
+					page_size = I915_GTT_PAGE_SIZE_64K;
+
+					max /= 16;
+
+					vaddr = px_vaddr(pd);
+					vaddr[__gen8_pte_index(start, 1)] |= GEN12_PDE_64K;
+
+					pt->is_compact = true;
+				} else if (IS_ALIGNED(iter->dma, I915_GTT_PAGE_SIZE_64K) &&
+					   rem >= I915_GTT_PAGE_SIZE_64K &&
+					   !(index % 16)) {
+					encode |= GEN12_PTE_PS64;
+					page_size = I915_GTT_PAGE_SIZE_64K;
+					nent = 16;
+				}
 			}
 
 			vaddr = px_vaddr(pt);
@@ -529,7 +543,12 @@ xehpsdv_ppgtt_insert_huge(struct i915_address_space *vm,
 
 		do {
 			GEM_BUG_ON(rem < page_size);
-			vaddr[index++] = encode | iter->dma;
+
+			for (i = 0; i < nent; i++) {
+				vaddr[index++] =
+					encode | (iter->dma + i *
+						  I915_GTT_PAGE_SIZE);
+			}
 
 			start += page_size;
 			iter->dma += page_size;
@@ -745,6 +764,8 @@ static void __xehpsdv_ppgtt_insert_entry_lm(struct i915_address_space *vm,
 	GEM_BUG_ON(!IS_ALIGNED(addr, SZ_64K));
 	GEM_BUG_ON(!IS_ALIGNED(offset, SZ_64K));
 
+	/* XXX: we don't strictly need to use this layout */
+
 	if (!pt->is_compact) {
 		vaddr = px_vaddr(pd);
 		vaddr[gen8_pd_index(idx, 1)] |= GEN12_PDE_64K;
@@ -935,22 +956,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
 		ppgtt->vm.alloc_pt_dma = alloc_pt_dma;
 
 	/*
-	 * On some platforms the hw has dropped support for 4K GTT pages
-	 * when dealing with LMEM, and due to the design of 64K GTT
-	 * pages in the hw, we can only mark the *entire* page-table as
-	 * operating in 64K GTT mode, since the enable bit is still on
-	 * the pde, and not the pte. And since we still need to allow
-	 * 4K GTT pages for SMEM objects, we can't have a "normal" 4K
-	 * page-table with scratch pointing to LMEM, since that's
-	 * undefined from the hw pov. The simplest solution is to just
-	 * move the 64K scratch page to SMEM on all platforms and call
-	 * it a day, since that should work for all configurations.
-	 *
-	 * Using SMEM instead of LMEM has the additional advantage of
-	 * not reserving high performance memory for a "never" used
-	 * filler page. It also removes the device access that would
-	 * be required to initialise the scratch page, reducing pressure
-	 * on an even scarcer resource.
+	 * Using SMEM here instead of LMEM has the advantage of not reserving
+	 * high performance memory for a "never" used filler page. It also
+	 * removes the device access that would be required to initialise the
+	 * scratch page, reducing pressure on an even scarcer resource.
 	 */
 	ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 2eaeba14319e..13e411187fd5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -269,11 +269,7 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	memset64(vm->min_alignment, I915_GTT_MIN_ALIGNMENT,
 		 ARRAY_SIZE(vm->min_alignment));
 
-	if (HAS_64K_PAGES(vm->i915) && NEEDS_COMPACT_PT(vm->i915) &&
-	    subclass == VM_CLASS_PPGTT) {
-		vm->min_alignment[INTEL_MEMORY_LOCAL] = I915_GTT_PAGE_SIZE_2M;
-		vm->min_alignment[INTEL_MEMORY_STOLEN_LOCAL] = I915_GTT_PAGE_SIZE_2M;
-	} else if (HAS_64K_PAGES(vm->i915)) {
+	if (HAS_64K_PAGES(vm->i915)) {
 		vm->min_alignment[INTEL_MEMORY_LOCAL] = I915_GTT_PAGE_SIZE_64K;
 		vm->min_alignment[INTEL_MEMORY_STOLEN_LOCAL] = I915_GTT_PAGE_SIZE_64K;
 	}
@@ -343,7 +339,8 @@ int setup_scratch_page(struct i915_address_space *vm)
 	 */
 	size = I915_GTT_PAGE_SIZE_4K;
 	if (i915_vm_is_4lvl(vm) &&
-	    HAS_PAGE_SIZES(vm->i915, I915_GTT_PAGE_SIZE_64K))
+	    HAS_PAGE_SIZES(vm->i915, I915_GTT_PAGE_SIZE_64K) &&
+	    !HAS_64K_PAGES(vm->i915))
 		size = I915_GTT_PAGE_SIZE_64K;
 
 	do {
@@ -385,18 +382,6 @@ int setup_scratch_page(struct i915_address_space *vm)
 		if (size == I915_GTT_PAGE_SIZE_4K)
 			return -ENOMEM;
 
-		/*
-		 * If we need 64K minimum GTT pages for device local-memory,
-		 * like on XEHPSDV, then we need to fail the allocation here,
-		 * otherwise we can't safely support the insertion of
-		 * local-memory pages for this vm, since the HW expects the
-		 * correct physical alignment and size when the page-table is
-		 * operating in 64K GTT mode, which includes any scratch PTEs,
-		 * since userspace can still touch them.
-		 */
-		if (HAS_64K_PAGES(vm->i915))
-			return -ENOMEM;
-
 		size = I915_GTT_PAGE_SIZE_4K;
 	} while (1);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index c0ca53cba9f0..062b78333fb2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -93,6 +93,7 @@ typedef u64 gen8_pte_t;
 #define GEN12_GGTT_PTE_LM	BIT_ULL(1)
 
 #define GEN12_PDE_64K BIT(6)
+#define GEN12_PTE_PS64 BIT(8)
 
 /*
  * Cacheability Control is a 4-bit value. The low three bits are stored in bits
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 90ed8e6db2fe..c9147e50fa5d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -902,13 +902,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  */
 #define HAS_64K_PAGES(dev_priv) (INTEL_INFO(dev_priv)->has_64k_pages)
 
-/*
- * Set this flag when platform doesn't allow both 64k pages and 4k pages in
- * the same PT. this flag means we need to support compact PT layout for the
- * ppGTT when using the 64K GTT pages.
- */
-#define NEEDS_COMPACT_PT(dev_priv) (INTEL_INFO(dev_priv)->needs_compact_pt)
-
 #define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ipc)
 
 #define HAS_REGION(i915, i) (RUNTIME_INFO(i915)->memory_regions & (i))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 38460a0bd7cb..40bb06c5cdc0 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1042,7 +1042,6 @@ static const struct intel_device_info xehpsdv_info = {
 	PLATFORM(INTEL_XEHPSDV),
 	NO_DISPLAY,
 	.has_64k_pages = 1,
-	.needs_compact_pt = 1,
 	.has_media_ratio_mode = 1,
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
@@ -1064,7 +1063,6 @@ static const struct intel_device_info xehpsdv_info = {
 	.has_64k_pages = 1, \
 	.has_guc_deprivilege = 1, \
 	.has_heci_pxp = 1, \
-	.needs_compact_pt = 1, \
 	.has_media_ratio_mode = 1, \
 	.__runtime.platform_engine_mask = \
 		BIT(RCS0) | BIT(BCS0) | \
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index f17c09ead7d7..c39488eb9eeb 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -776,12 +776,6 @@ i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	GEM_BUG_ON(!IS_ALIGNED(end, I915_GTT_PAGE_SIZE));
 
 	alignment = max(alignment, i915_vm_obj_min_alignment(vma->vm, vma->obj));
-	/*
-	 * for compact-pt we round up the reservation to prevent
-	 * any smaller pages being used within the same PDE
-	 */
-	if (NEEDS_COMPACT_PT(vma->vm->i915))
-		size = round_up(size, alignment);
 
 	/* If binding the object/GGTT view requires more space than the entire
 	 * aperture has, reject it early before evicting everything in a vain
@@ -820,7 +814,8 @@ i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 		 * forseeable future. See also i915_ggtt_offset().
 		 */
 		if (upper_32_bits(end - 1) &&
-		    vma->page_sizes.sg > I915_GTT_PAGE_SIZE) {
+		    vma->page_sizes.sg > I915_GTT_PAGE_SIZE &&
+		    !HAS_64K_PAGES(vma->vm->i915)) {
 			/*
 			 * We can't mix 64K and 4K PTEs in the same page-table
 			 * (2M block), and so to avoid the ugliness and
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index bc87d3156b14..58539660a1ec 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -146,7 +146,6 @@ enum intel_ppgtt_type {
 	/* Keep has_* in alphabetical order */ \
 	func(has_64bit_reloc); \
 	func(has_64k_pages); \
-	func(needs_compact_pt); \
 	func(gpu_reset_clobbers_display); \
 	func(has_reset_engine); \
 	func(has_3d_pipeline); \
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index ea2cf1080979..27c733b00976 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1114,15 +1114,8 @@ static int misaligned_case(struct i915_address_space *vm, struct intel_memory_re
 	expected_node_size = expected_vma_size;
 
 	if (HAS_64K_PAGES(vm->i915) && i915_gem_object_is_lmem(obj)) {
-		/*
-		 * The compact-pt should expand lmem node to 2MB for the ppGTT,
-		 * for all other cases we should only expect 64K.
-		 */
 		expected_vma_size = round_up(size, I915_GTT_PAGE_SIZE_64K);
-		if (NEEDS_COMPACT_PT(vm->i915) && !i915_is_ggtt(vm))
-			expected_node_size = round_up(size, I915_GTT_PAGE_SIZE_2M);
-		else
-			expected_node_size = round_up(size, I915_GTT_PAGE_SIZE_64K);
+		expected_node_size = round_up(size, I915_GTT_PAGE_SIZE_64K);
 	}
 
 	if (vma->size != expected_vma_size || vma->node.size != expected_node_size) {
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 629198f1d8d8..08d69e36fb66 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -3509,27 +3509,13 @@ struct drm_i915_gem_create_ext {
 	 *
 	 * The (page-aligned) allocated size for the object will be returned.
 	 *
-	 * DG2 64K min page size implications:
+	 * On platforms like DG2/ATS the kernel will always use 64K or larger
+	 * pages for I915_MEMORY_CLASS_DEVICE. The kernel also requires a
+	 * minimum of 64K GTT alignment for such objects.
 	 *
-	 * On discrete platforms, starting from DG2, we have to contend with GTT
-	 * page size restrictions when dealing with I915_MEMORY_CLASS_DEVICE
-	 * objects.  Specifically the hardware only supports 64K or larger GTT
-	 * page sizes for such memory. The kernel will already ensure that all
-	 * I915_MEMORY_CLASS_DEVICE memory is allocated using 64K or larger page
-	 * sizes underneath.
-	 *
-	 * Note that the returned size here will always reflect any required
-	 * rounding up done by the kernel, i.e 4K will now become 64K on devices
-	 * such as DG2. The kernel will always select the largest minimum
-	 * page-size for the set of possible placements as the value to use when
-	 * rounding up the @size.
-	 *
-	 * Special DG2 GTT address alignment requirement:
-	 *
-	 * The GTT alignment will also need to be at least 2M for such objects.
-	 *
-	 * Note that due to how the hardware implements 64K GTT page support, we
-	 * have some further complications:
+	 * NOTE: Previously the ABI here required a minimum GTT alignment of 2M
+	 * on DG2/ATS, due to how the hardware implemented 64K GTT page support,
+	 * where we had the following complications:
 	 *
 	 *   1) The entire PDE (which covers a 2MB virtual address range), must
 	 *   contain only 64K PTEs, i.e mixing 4K and 64K PTEs in the same
@@ -3538,12 +3524,10 @@ struct drm_i915_gem_create_ext {
 	 *   2) We still need to support 4K PTEs for I915_MEMORY_CLASS_SYSTEM
 	 *   objects.
 	 *
-	 * To keep things simple for userland, we mandate that any GTT mappings
-	 * must be aligned to and rounded up to 2MB. The kernel will internally
-	 * pad them out to the next 2MB boundary. As this only wastes virtual
-	 * address space and avoids userland having to copy any needlessly
-	 * complicated PDE sharing scheme (coloring) and only affects DG2, this
-	 * is deemed to be a good compromise.
+	 * However on actual production HW this was completely changed to now
+	 * allow setting a TLB hint at the PTE level (see PS64), which is a lot
+	 * more flexible than the above. With this the 2M restriction was
+	 * dropped where we now only require 64K.
 	 */
 	__u64 size;
 
-- 
2.37.3

